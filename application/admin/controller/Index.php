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

namespace app\admin\controller;

use library\Controller;
use library\service\AdminService;
use library\service\MenuService;
use library\tools\Data;
use think\Console;
use think\Db;
use think\exception\HttpResponseException;

/**
 * 系统公共操作
 * Class Index
 * @package app\admin\controller
 */
class Index extends Controller
{

    /**
     * 显示后台首页
     * @login true
     * @throws \ReflectionException
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function index()
    {
        $this->title = '系统管理后台';
        $auth = AdminService::instance()->apply(true);
        $this->menus = MenuService::instance()->getTree();
        if (empty($this->menus) && !$auth->isLogin()) {
            $this->redirect('@admin/login');
        } else {
            $this->fetch();
        }
    }

    /**
     * 后台环境信息
     */
    public function main()
    {
        $this->think_ver = \think\App::VERSION;
        $this->mysql_ver = Db::query('select version() as ver')[0]['ver'];
        $this->fetch();
    }

    /**
     * 修改密码
     * @login true
     * @param integer $id
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function pass($id)
    {
        $this->applyCsrfToken();
        if (intval($id) !== intval(session('user.id'))) {
            $this->error('只能修改当前用户的密码！');
        }
        if (!AdminService::instance()->isLogin()) {
            $this->error('需要登录才能操作哦！');
        }
        if ($this->request->isGet()) {
            $this->verify = true;
            $this->_form('SystemUser', 'admin@user/pass', 'id', [], ['id' => $id]);
        } else {
            $data = $this->_input([
                'password'    => $this->request->post('password'),
                'repassword'  => $this->request->post('repassword'),
                'oldpassword' => $this->request->post('oldpassword'),
            ], [
                'oldpassword' => 'require',
                'password'    => 'require|min:4',
                'repassword'  => 'require|confirm:password',
            ], [
                'oldpassword.require' => '旧密码不能为空！',
                'password.require'    => '登录密码不能为空！',
                'password.min'        => '登录密码长度不能少于4位有效字符！',
                'repassword.require'  => '重复密码不能为空！',
                'repassword.confirm'  => '重复密码与登录密码不匹配，请重新输入！',
            ]);
            $user = Db::name('SystemUser')->where(['id' => $id])->find();
            if (md5($data['oldpassword']) !== $user['password']) {
                $this->error('旧密码验证失败，请重新输入！');
            }
            if (Data::save('SystemUser', ['id' => $user['id'], 'password' => md5($data['password'])])) {
                $this->success('密码修改成功，下次请使用新密码登录！', '');
            } else {
                $this->error('密码修改失败，请稍候再试！');
            }
        }
    }

    /**
     * 修改用户资料
     * @login true
     * @param integer $id 会员ID
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\exception\PDOException
     */
    public function info($id = 0)
    {
        if (!AdminService::instance()->isLogin()) {
            $this->error('需要登录才能操作哦！');
        }
        $this->applyCsrfToken();
        if (intval($id) === intval(session('user.id'))) {
            $this->_form('SystemUser', 'admin@user/form', 'id', [], ['id' => $id]);
        } else {
            $this->error('只能修改登录用户的资料！');
        }
    }

    /**
     * 清理运行缓存
     * @auth true
     */
    public function clearRuntime()
    {
        try {
            Console::call('clear');
            Console::call('xclean:session');
            $this->success('清理运行缓存成功！');
        } catch (HttpResponseException $exception) {
            throw $exception;
        } catch (\Exception $e) {
            $this->error("清理运行缓存失败，{$e->getMessage()}");
        }
    }

    /**
     * 压缩发布系统
     * @auth true
     */
    public function buildOptimize()
    {
        try {
            Console::call('optimize:route');
            Console::call('optimize:schema');
            Console::call('optimize:autoload');
            Console::call('optimize:config');
            $this->success('压缩发布成功！');
        } catch (HttpResponseException $exception) {
            throw $exception;
        } catch (\Exception $e) {
            $this->error("压缩发布失败，{$e->getMessage()}");
        }
    }

}
