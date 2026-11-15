package com.bytedance.sdk.openadsdk.api.factory;

public class SDKTypeConfig {
    private static ISDKTypeFactory Sj;

    public static ISDKTypeFactory getSdkTypeFactory() {
        return Sj;
    }

    public static void setSdkTypeFactory(ISDKTypeFactory iSDKTypeFactory) {
        Sj = iSDKTypeFactory;
    }
}
