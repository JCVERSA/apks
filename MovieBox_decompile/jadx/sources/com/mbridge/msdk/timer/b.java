package com.mbridge.msdk.timer;

import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;

public class b {

    static class C0529b {

        static b f37663a = new b();
    }

    public static b getInstance() {
        return C0529b.f37663a;
    }

    public void addInterstitialList(String str, String str2) {
        try {
            com.mbridge.msdk.timer.a.a().a(str, str2);
        } catch (Exception e10) {
            o0.b("TimerController", "addInterstitialList error:" + e10.getMessage());
        }
    }

    public void addRewardList(String str, String str2) {
        try {
            com.mbridge.msdk.timer.a.a().b(str, str2);
        } catch (Exception e10) {
            o0.b("TimerController", "addRewardList error:" + e10.getMessage());
        }
    }

    public void start() {
        g gVarD = h.b().d(c.m().b());
        if (gVarD == null) {
            gVarD = h.b().a();
        }
        int iH = gVarD.h();
        if (iH > 0) {
            com.mbridge.msdk.timer.a.a().b(iH * 1000);
        }
    }

    private b() {
    }
}
