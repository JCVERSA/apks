package com.transsion.playercommon.vishaapis.appconfig.helper;

import android.content.Context;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.appconfig.AppGlobalConfigData;
import com.transsion.playercommon.data.AiSubtitleConfig;
import com.transsion.playercommon.vishaapis.appconfig.AppControlManager;
import com.transsion.playercommon.vishaapis.appconfig.AppControlService;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.k29;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.vb;

public class AIConfigHelper {
    private static final String CACHE_APP_CONFIG_AI_SUBTITLE = "cache_app_config";
    private static final String TAG = "AIConfigHelper";
    private static String mAiSubtitleConfig;
    private AppGlobalConfigData mGlobalConfigData;

    public static String getAISubtitleConfig() {
        Log.d(TAG, "getAISubtitleConfig: " + mAiSubtitleConfig);
        return mAiSubtitleConfig;
    }

    public static void requestAISubtitleConfig(Context context) {
        mAiSubtitleConfig = MMKV.p().m(CACHE_APP_CONFIG_AI_SUBTITLE, "");
        ((AppControlService) AppControlManager.getInstance().getApi(AppControlService.class)).getAISubtitleConfig().d0(k29.c()).M(vb.a()).subscribe(new pd7() {
            @Override
            public void onComplete() {
            }

            @Override
            public void onError(Throwable th) {
                LogUtils.j(AIConfigHelper.TAG, "requestAISubtitle onError " + th.toString());
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
            }

            @Override
            public void onNext(BaseResponse<AiSubtitleConfig> baseResponse) {
                AiSubtitleConfig data = baseResponse.getData();
                if (data != null) {
                    LogUtils.j(AIConfigHelper.TAG, "requestAISubtitle: " + data);
                    AIConfigHelper.mAiSubtitleConfig = data.getSubJson();
                    MMKV.p().w(AIConfigHelper.CACHE_APP_CONFIG_AI_SUBTITLE, data.getSubJson());
                }
            }
        });
    }
}
