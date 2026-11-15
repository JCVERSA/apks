package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.kernel.proxy.performanceanalyse.BuildConfigProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;

public final class BuildConfigProxyImp implements BuildConfigProxy {
    @Override
    public Boolean isDebug() {
        return Boolean.valueOf(AppDynamicBuildConfig.isAppDebugAble());
    }
}
