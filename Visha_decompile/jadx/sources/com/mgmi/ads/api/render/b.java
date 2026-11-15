package com.mgmi.ads.api.render;

import android.text.TextUtils;
import com.mgmi.model.VASTAd;
import defpackage.ard;
import defpackage.x5d;
import defpackage.yld;

public class b {
    private x5d a;

    public void a() {
    }

    public static void a(VASTAd vASTAd) {
        if (vASTAd != null) {
            try {
                if (TextUtils.isEmpty(vASTAd.getVoiceSrc()) || yld.b(vASTAd.getVoiceSrc()) != null) {
                    return;
                }
                yld.d(ard.b(com.mgmi.ads.api.c.a()) + "/pevoice", 10, vASTAd.getVoiceSrc(), new yld.e() {
                    @Override
                    public void a(int i, String str) {
                    }

                    @Override
                    public void a(String str) {
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }
}
