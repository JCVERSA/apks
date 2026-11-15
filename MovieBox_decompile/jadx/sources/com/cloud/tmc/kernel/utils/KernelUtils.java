package com.cloud.tmc.kernel.utils;

public class KernelUtils {
    public static final String TAG = "TmcKernel";

    public static boolean isDebug() {
        return AppDynamicBuildConfig.isAppDebugAble();
    }
}
