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
 * 代理商分红管理
 * Class AgentBonus
 * @package app\store\controller
 */
class AgentBonus extends Controller
{
    /**
     * 绑定数据表
     * @var string
     */
    protected $table = 'AgentBonus';

    /**
     * 代理商分红管理
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
        $this->title = '代理商分红管理';
        if(!empty($_REQUEST['create_time'])){
            $create_time = explode(' - ',$_REQUEST['create_time']);
            $query = $this->_query($this->table)->equal('order_no,agent_id')->whereTime('create_time','between',[$create_time[0],$create_time[1]]);
        }else{
            $query = $this->_query($this->table)->equal('order_no,agent_id');
        }
        $query->order('id desc')->page();
    }

    /**
     * 代理商分红列表处理
     * @param array $data
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function _index_page_filter(array &$data)
    {   
        $mids = array_unique(array_column($data, 'mid'));
        $buyer_id = array_unique(array_column($data, 'buyer_id'));
        $agent_id = array_unique(array_column($data, 'agent_id'));
        $memberList = Db::name('StoreMember')->field('id,nickname')->whereIn('id', $mids)->select();
        $buyerList = Db::name('StoreMember')->field('id,nickname')->whereIn('id', $buyer_id)->select();
        $agentList = Db::name('Agent')->field('id,name')->whereIn('id', $agent_id)->select();
        foreach ($data as &$vo) {
            list($vo['member'], $vo['buyerval'], $vo['agentval']) = [[], [],[]];
            foreach ($memberList as $member) if ($member['id'] === $vo['mid']) {
                $vo['member'] = $member;
            }
            foreach ($buyerList as $buyerval) if ($buyerval['id'] === $vo['buyer_id']) {
                $vo['buyerval'] = $buyerval;
            }
            foreach ($agentList as $agentval) if ($agentval['id'] === $vo['agent_id']) {
                $vo['agentval'] = $agentval;
            }
        }
    }

    /**
     * 添加代理分红
     * @auth true
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function add()
    {
        $this->title = '添加代理分红';
        $this->_form($this->table, 'form');
    }

    /**
     * 编辑代理分红
     * @auth true
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function edit()
    {
        $this->title = '编辑代理分红';
        $this->_form($this->table, 'form');
    }

    /**
     * 表单数据处理
     * @param array $vo
     * @throws \ReflectionException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function _form_filter(&$vo)
    {
        //代理等级
        $this->agent_levels = Db::name('agent_level')->order('id desc')->select();
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
     * 待审核
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function forbid()
    {
        $this->_save($this->table, ['status' => '0']);
    }

    /**
     * 审核通过
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function resume()
    {
        $this->_save($this->table, ['status' => '1']);
    }

    /**
     * 删除代理分红
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function remove()
    {
        $this->_delete($this->table);
    }

}
