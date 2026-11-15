package com.transsion.playercommon.vishaapis.appconfig.helper;

import com.blankj.utilcode.util.LogUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.appconfig.SmartEditApiKeyBean;
import com.transsion.playercommon.vishaapis.appconfig.AppControlManager;
import com.transsion.playercommon.vishaapis.appconfig.AppControlService;
import com.transsion.playercommon.vishaapis.appconfig.helper.SmartEditConfigHelper;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.ek4;
import defpackage.k29;
import defpackage.pd7;
import defpackage.pp3;
import defpackage.rc2;

public class SmartEditConfigHelper {
    private static final String CACHE_APP_CONFIG_SMART_EDIT_API_KEYS = "cache_app_config_smart_edit_api_keys";
    private static final String CACHE_APP_CONFIG_SMART_EDIT_ENABLE = "cache_app_config_smart_edit_enable";
    private static final String TAG = "SmartEditConfigHelper";
    private static String acoustIdKey = null;
    private static String lastFmKey = null;
    private static String smartEditApiKeys = "";
    private static Boolean smartEditEnable = Boolean.TRUE;

    public static String getAcoustIdKey() {
        return acoustIdKey;
    }

    public static String getLastFmKey() {
        return lastFmKey;
    }

    public static Boolean getSmartEditEnable() {
        return !pp3.E ? Boolean.FALSE : smartEditEnable;
    }

    public static void lambda$requestSmartEditApiKeys$0() {
        smartEditEnable = Boolean.valueOf(MMKV.p().e(CACHE_APP_CONFIG_SMART_EDIT_ENABLE, true));
        String strM = MMKV.p().m(CACHE_APP_CONFIG_SMART_EDIT_API_KEYS, "");
        smartEditApiKeys = strM;
        SmartEditApiKeyBean smartEditApiKeyBean = (SmartEditApiKeyBean) ek4.d(strM, SmartEditApiKeyBean.class);
        if (smartEditApiKeyBean != null) {
            acoustIdKey = smartEditApiKeyBean.getAcoustIdKey();
            lastFmKey = smartEditApiKeyBean.getLastFmKey();
        }
    }

    public static void requestSmartEditApiKeys() {
        if (pp3.E) {
            TaskExecutor.c(new Runnable() {
                @Override
                public final void run() {
                    SmartEditConfigHelper.lambda$requestSmartEditApiKeys$0();
                }
            });
            ((AppControlService) AppControlManager.getInstance().getApi(AppControlService.class)).getApiKeysConfig().d0(k29.c()).M(k29.c()).subscribe(new pd7() {
                @Override
                public void onComplete() {
                }

                @Override
                public void onError(Throwable th) {
                    LogUtils.j(SmartEditConfigHelper.TAG, "requestSmartEditApiKeys onError " + th.toString());
                }

                @Override
                public void onSubscribe(rc2 rc2Var) {
                }

                @Override
                public void onNext(BaseResponse<SmartEditApiKeyBean> baseResponse) {
                    SmartEditApiKeyBean data = baseResponse.getData();
                    if (data != null) {
                        LogUtils.j(SmartEditConfigHelper.TAG, "requestSmartEditApiKeys: " + data.toString());
                        SmartEditConfigHelper.smartEditApiKeys = ek4.i(data);
                        MMKV.p().w(SmartEditConfigHelper.CACHE_APP_CONFIG_SMART_EDIT_API_KEYS, SmartEditConfigHelper.smartEditApiKeys);
                        SmartEditConfigHelper.acoustIdKey = data.getAcoustIdKey();
                        SmartEditConfigHelper.lastFmKey = data.getLastFmKey();
                    }
                }
            });
        }
    }

    public static void saveSmartEditEnable(Boolean bool) {
        smartEditEnable = bool;
        MMKV.p().y(CACHE_APP_CONFIG_SMART_EDIT_ENABLE, bool.booleanValue());
    }
}
