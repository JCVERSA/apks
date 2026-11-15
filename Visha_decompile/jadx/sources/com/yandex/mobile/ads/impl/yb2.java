package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class yb2 {
    public static String a(long j, zc2 zc2Var, mb2 mb2Var) {
        y45.j(zc2Var, "adPodInfo");
        y45.j(mb2Var, "videoAd");
        int iA = zc2Var.a();
        String strG = mb2Var.g();
        if (strG == null) {
            strG = String.valueOf(wi0.a());
        }
        return "ad_break_#" + j + "|position_" + iA + "|video_ad_#" + strG;
    }
}
