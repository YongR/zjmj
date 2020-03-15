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
 * Class AgentLevel
 * @package app\store\controller
 */
class AgentLevel extends Controller
{
    /**
     * 绑定数据表
     * @var string
     */
    protected $table = 'AgentLevel';

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
        $this->title = '代理商等级';
        $query = $this->_query($this->table)->like('name');
        $query->order('type asc,id desc')->page();
    }

    /**
     * 添加代理等级
     * @auth true
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function add()
    {
        $this->title = '添加代理等级';
        $this->_form($this->table, 'form');
    }

    /**
     * 编辑代理等级
     * @auth true
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function edit()
    {
        $this->title = '编辑代理等级';
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
     * 删除代理等级
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function remove()
    {
        $this->_delete($this->table);
    }

}
