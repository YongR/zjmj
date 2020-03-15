<?php

// +----------------------------------------------------------------------
// | ThinkAdmin
// +----------------------------------------------------------------------
// | 版权所有 2020~
// +----------------------------------------------------------------------
// | 
// +----------------------------------------------------------------------
// | 开源协议 ( https://mit-license.org )
// +----------------------------------------------------------------------
// | gitee 代码仓库：https://gitee.com/yr92/zjmj
// | github 代码仓库：https://github.com/YongR/zjmj
// +----------------------------------------------------------------------

namespace app\store\controller;

use library\Controller;
use think\Db;

/**
 * 代理商申请管理
 * Class AgentCashApply
 * @package app\store\controller
 */
class AgentCashApply extends Controller
{
    /**
     * 绑定数据表
     * @var string
     */
    protected $table = 'AgentCashApply';

    /**
     * 代理商申请管理
     * @auth true
     * @menu true
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function index()
    {   
        $this->title = '提现申请管理';
        if(!empty($_REQUEST['create_time'])){
            $create_time = explode(' - ',$_REQUEST['create_time']);
            $query = $this->_query($this->table)->equal('status,mid,agent_id,system_user')->like('name,tel,bank_name,bank_account,wechat')->whereTime('create_time','between',[$create_time[0],$create_time[1]]);
        }else{
            $query = $this->_query($this->table)->equal('status,mid,agent_id,system_user')->like('name,tel,bank_name,bank_account,wechat');
        }
        $query->order('status asc,id deac')->page();
    }

    /**
     * 代理商提现申请列表处理
     * @param array $data
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function _index_page_filter(array &$data)
    {   
        $mids = array_unique(array_column($data, 'mid'));
        $sids = array_unique(array_column($data, 'system_user'));
        $memberList = Db::name('StoreMember')->field('id,nickname,headimg')->whereIn('id', $mids)->select();
        $systemUsers = Db::name('systemUser')->field('id,username')->whereIn('id', $sids)->select();
        foreach ($data as &$vo) {
            list($vo['member'],$vo['systemuser']) = [[],[]];
            foreach ($memberList as $member) if ($member['id'] === $vo['mid']) {
                $vo['member'] = $member;
            }
            foreach ($systemUsers as $systemuser) if ($systemuser['id'] === $vo['system_user']) {
                $vo['systemuser'] = $systemuser;
            }
        }
    }

    /**
     * 添加代理提现申请
     * @auth true
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function add()
    {
        $this->title = '添加提现';
        $this->_form($this->table, 'form');
    }

    /**
     * 编辑代理提现申请
     * @auth true
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function edit()
    {
        $this->title = '编辑提现';
        $this->_form($this->table, 'form');
    }

    /**
    * 表单结果处理
     * @param array $result
     * @throws \ReflectionException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
    */
    protected function _form_result($result)
    {   
        if ($result && empty($_REQUEST['id']) && $this->request->isPost()) {
            $this->success('添加成功！', 'javascript:history.back()');
        }
    }

    /**
     * 提现通过
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function resume()
    {
        //支付宝账号转账成功后
        
        //完成提现后  修改提现时间,提现状态,后台操作管理员id
        if(!empty($_SESSION['fw']['user']['id'])){
            $this->_save($this->table, ['status' => '1','pass_time' => date('Y-m-d H:i:s',time()),'system_user' => $_SESSION['fw']['user']['id']]);
        }
    }

    /**
     * 删除代理提现申请
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function remove()
    {
        $this->_delete($this->table);
    }

}
