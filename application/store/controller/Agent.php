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
 * 代理商管理
 * Class Agent
 * @package app\store\controller
 */
class Agent extends Controller
{
    /**
     * 绑定数据表
     * @var string
     */
    protected $table = 'Agent';

    /**
     * 代理商管理
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
        $this->title = '代理商管理';
        if(!empty($_REQUEST['create_time'])){
            $create_time = explode(' - ',$_REQUEST['create_time']);
            $query = $this->_query($this->table)->equal('status,agent_level')->like('name,tel,email')->whereTime('create_time','between',[$create_time[0],$create_time[1]]);
        }else{
            $query = $this->_query($this->table)->equal('status,agent_level')->like('name,tel,email');
        }
        $query->order('sort desc,id desc')->page();
    }

    /**
     * 代理商列表处理
     * @param array $data
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    protected function _index_page_filter(array &$data)
    {   
        $this->levels = Db::name('agent_level')->select();
        $mids = array_unique(array_column($data, 'mid'));
        $memberList = Db::name('StoreMember')->field('id,nickname,headimg')->whereIn('id', $mids)->select();
        $agent_level = array_unique(array_column($data, 'agent_level'));
        $agent_levels = Db::name('agent_level')->whereIn('type', $agent_level)->select();
        foreach ($data as &$vo) {
            list($vo['member'], $vo['agent_level_val']) = [[], []];
            foreach ($memberList as $member) if ($member['id'] === $vo['mid']) {
                $vo['member'] = $member;
            }
            foreach ($agent_levels as $agent_level_val) if ($agent_level_val['type'] === $vo['agent_level']) {
                $vo['agent_level_val'] = $agent_level_val;
            }
        }
    }

    /**
     * 添加代理
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
     * 编辑代理
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
     * 删除代理
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function remove()
    {
        $this->_delete($this->table);
    }

}
