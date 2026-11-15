package com.cloud.tmc.miniapp;

import android.content.Context;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.network.IConfigStrategyProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import kotlin.jvm.internal.Intrinsics;

public final class ConfigImpl implements IConfigStrategyProxy {
    private final String TAG = "ConfigImpl";

    @Override
    public boolean checkAddHomeHost(Context context, String str) {
        return Intrinsics.c(str, context != null ? context.getPackageName() : null);
    }

    @Override
    public String getAbilitiesCdnUrl() {
        return AppDynamicBuildConfig.getMINI_CDN_URL() + "SDK/AbilityConfig.json";
    }

    @Override
    public String getConfigKey(Context context) {
        Intrinsics.h(context, "context");
        String str = "config_" + AppUtils.INSTANCE.getConfigKey(context);
        TmcLogger.d(this.TAG, "getConfigKey: " + str);
        return str;
    }

    @Override
    public String getMiniAppVersion(String version) {
        Intrinsics.h(version, "version");
        return version;
    }

    @Override
    public String getMyByteAppRecommendListCdnUrl() {
        return AppDynamicBuildConfig.getMINI_CDN_URL() + "SDK/myByteAppRecommendListV2.json";
    }

    @Override
    public String getOfflineConfigDefaultValue() {
        return "{\"enable\":false,\"initLoad\":false,\"networkLoad\":false,\"ahaSoFormatConvert\":false,\"checkVersion\":false,\"enablePrefetchCdnAppInfo\":false,\"forceRefreshPrefetchCdnAppInfo\":false}";
    }

    @Override
    public String getOfflineConfigKey() {
        return "offlineDownload_OnlineV2";
    }

    @Override
    public String getPreStrategyCdnUrl() {
        return MiniAppLaunch.INSTANCE.getConfigCdnUrl(AppDynamicBuildConfig.getMINI_CDN_URL() + "SDK/preStrategyConfig.json");
    }

    @Override
    public String getPreStrategyConfigFilePath() {
        return "preStrategyConfig.json";
    }

    public final String getTAG() {
        return this.TAG;
    }
}
