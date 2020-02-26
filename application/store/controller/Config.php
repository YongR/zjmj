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

use app\store\service\ExtendService;
use library\Controller;

/**
 * 商城参数配置
 * Class Config
 * @package app\store\controller
 */
class Config extends Controller
{

    /**
     * 商城参数配置
     * @auth true
     * @menu true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function index()
    {
        $this->title = '商城参数配置';
        $this->applyCsrfToken('save');
        $this->query = ExtendService::queryChinaSmsBalance();
        $this->query2 = ExtendService::queryGlobeSmsBalance();
        $this->fetch();
    }

    /**
     * 保存商城参数
     * @auth true
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function save()
    {
        if ($this->request->isPost()) {
            $this->applyCsrfToken('save');
            foreach ($this->request->post() as $k => $v) sysconf($k, $v);
            $this->success('商城短信配置保存成功！');
        }
    }

}
