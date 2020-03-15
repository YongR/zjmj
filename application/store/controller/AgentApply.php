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
 * Class AgentApply
 * @package app\store\controller
 */
class AgentApply extends Controller
{
    /**
     * 绑定数据表
     * @var string
     */
    protected $table = 'AgentApply';

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
        $this->title = '代理商申请管理';
        if(!empty($_REQUEST['create_time'])){
            $create_time = explode(' - ',$_REQUEST['create_time']);
            $query = $this->_query($this->table)->equal('status')->like('name,tel,email')->whereTime('create_time','between',[$create_time[0],$create_time[1]]);
        }else{
            $query = $this->_query($this->table)->equal('status')->like('name,tel,email');
        }
        $query->order('status asc,id deac')->page();
    }

    /**
     * 代理商申请列表处理
     * @param array $data
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function _index_page_filter(array &$data)
    {   
        $mids = array_unique(array_column($data, 'mid'));
        $memberList = Db::name('StoreMember')->field('id,nickname,headimg')->whereIn('id', $mids)->select();
        foreach ($data as &$vo) {
            list($vo['member']) = [[]];
            foreach ($memberList as $member) if ($member['id'] === $vo['mid']) {
                $vo['member'] = $member;
            }
        }
    }

    /**
     * 添加代理申请
     * @auth true
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function add()
    {
        $this->title = '添加代理';
        $this->_form($this->table, 'form');
    }

    /**
     * 编辑代理申请
     * @auth true
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function edit()
    {
        $this->title = '编辑代理';
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
        }elseif($result && !empty($_REQUEST['id']) && $this->request->isPost()){
            $this->_save($this->table, ['deal_time' => date('Y-m-d H:i:s',time())]);
        }
    }

    /**
     * 待审核
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function forbid()
    {
        $this->_save($this->table, ['status' => '0','deal_time' => date('Y-m-d H:i:s',time())]);
    }

    /**
     * 审核通过
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function resume()
    {
        $this->_save($this->table, ['status' => '1','deal_time' => date('Y-m-d H:i:s',time())]);
    }

    /**
     * 删除代理申请
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function remove()
    {
        $this->_delete($this->table);
    }

}
