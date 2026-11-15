package com.transsion.playercommon.vishaapis.appconfig.helper;

import com.blankj.utilcode.util.LogUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.appconfig.AppGlobalConfigData;
import com.transsion.playercommon.cloudctrlconfigrequest.CloudCtrlConfigHelper;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.vishaapis.appconfig.AppControlManager;
import com.transsion.playercommon.vishaapis.appconfig.AppControlService;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.di1;
import defpackage.i44;
import defpackage.k29;
import defpackage.mb8;
import defpackage.n88;
import defpackage.pd7;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.rc2;
import defpackage.w6c;

public class AppGlobalConfigHelper {
    private static final String CACHE_KEY_GLOBAL_DATA_VERSION = "gcf_data_version";
    private static final String TAG = "AppGlobalConfigHelper";

    public static void getAppGlobalConfig(long j, String str, String str2, String str3, final String str4) {
        ((AppControlService) AppControlManager.getInstance().getApi(AppControlService.class)).getAppGlobalConfig(j, str, str2, str3, str4).d0(k29.c()).M(k29.c()).subscribe(new pd7() {
            private void cacheDataVersion(BaseResponse<AppGlobalConfigData> baseResponse) {
                if (r0a.g(baseResponse.getData().getDataVersion())) {
                    return;
                }
                MMKV.p().w(AppGlobalConfigHelper.CACHE_KEY_GLOBAL_DATA_VERSION, baseResponse.getData().getDataVersion());
            }

            private boolean isSameVersion(BaseResponse<AppGlobalConfigData> baseResponse) {
                return (r0a.g(str4) || baseResponse.getData().getDataVersion() == null || !baseResponse.getData().getDataVersion().equals(str4)) ? false : true;
            }

            private void processResponseData(BaseResponse<AppGlobalConfigData> baseResponse) throws Throwable {
                if (baseResponse.getData() != null) {
                    AppGlobalConfigData data = baseResponse.getData();
                    LogUtils.w(AppGlobalConfigHelper.TAG, "response:" + data.toString());
                    mb8.c().g(data.getPlayerSpeedConfig());
                    JumpConfigHelper.saveJumpBean(data.getExternalJump());
                    if (data.getLocalVideoPlayControl() != null) {
                        w6c.r(MainApp.f(), "ytb_forbid_listen", data.getLocalVideoPlayControl().forbidListenVideo.booleanValue());
                        w6c.r(MainApp.f(), "ytb_forbid_play", data.getLocalVideoPlayControl().forbidPlayVideo.booleanValue());
                    }
                    n88.b().d(data.getBspPlayerConfigBean());
                    CloudCtrlConfigHelper.b().e(data.getCloudCtrlBean());
                    i44.d().g(data.getFormatCopyright());
                    if (data.getControllerLimitBean() != null) {
                        di1.f().m(MainApp.f(), data.getControllerLimitBean());
                    }
                    if (!pp3.E || data.getSmartEditEnable() == null) {
                        return;
                    }
                    SmartEditConfigHelper.saveSmartEditEnable(data.getSmartEditEnable());
                }
            }

            @Override
            public void onComplete() {
            }

            @Override
            public void onError(Throwable th) {
                LogUtils.m(AppGlobalConfigHelper.TAG, "onError:" + th);
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
            }

            @Override
            public void onNext(BaseResponse<AppGlobalConfigData> baseResponse) throws Throwable {
                LogUtils.w(AppGlobalConfigHelper.TAG, "onNext:" + baseResponse);
                if (baseResponse == null || isSameVersion(baseResponse)) {
                    return;
                }
                cacheDataVersion(baseResponse);
                processResponseData(baseResponse);
            }
        });
    }

    public static String getCacheDataVersion() {
        try {
            return MMKV.p().m(CACHE_KEY_GLOBAL_DATA_VERSION, "");
        } catch (IllegalStateException unused) {
            return "";
        }
    }
}
