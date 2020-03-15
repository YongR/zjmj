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
use library\File;

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
     * @throws \OSS\Core\OssException
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function index()
    {
        $this->applyCsrfToken();
        if ($this->request->isGet()) {
            $this->title = '商城参数配置';
            $this->query = ExtendService::queryChinaSmsBalance();
            // $file = File::instance('local');
            // $this->wechat_mch_ssl_cer = sysconf('wechat_mch_ssl_cer');
            // $this->wechat_mch_ssl_key = sysconf('wechat_mch_ssl_key');
            $this->wechat_mch_ssl_p12 = sysconf('wechat_mch_ssl_p12');
            // if (file_exists($this->wechat_mch_ssl_cer)) $this->wechat_mch_ssl_cer = '';
            // if (file_exists($this->wechat_mch_ssl_key)) $this->wechat_mch_ssl_key = '';
            // if (!file_exists($this->wechat_mch_ssl_p12)){
            //     $this->wechat_mch_ssl_p12 = '';
            // }
            $this->fetch();
        } else {
            // if ($this->request->post('wechat_mch_ssl_type') === 'p12') {
            //     if (!($sslp12 = $this->request->post('wechat_mch_ssl_p12'))) {
            //         $mchid = $this->request->post('wechat_mch_id');
            //         $content = File::instance('local')->get($sslp12, true);
            //         if (!openssl_pkcs12_read($content, $certs, $mchid)) {
            //             $this->error('商户MCH_ID与支付P12证书不匹配！');
            //         }
            //     }
            // }
            foreach ($this->request->post() as $k => $v) sysconf($k, $v);
            sysoplog('商城参数配置', '修改商城参数配置成功');
            $this->success('商城参数配置成功！');
        }
    }

}
