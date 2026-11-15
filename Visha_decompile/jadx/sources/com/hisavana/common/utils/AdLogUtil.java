package com.hisavana.common.utils;

import defpackage.ja1;

public class AdLogUtil extends ja1 {
    private static final String TAG = "ADSDK_M";
    private static final AdLogUtil adLogUtil = new AdLogUtil();

    public static AdLogUtil Log() {
        return adLogUtil;
    }

    @Override
    public String getGlobalTag() {
        return TAG;
    }
}
