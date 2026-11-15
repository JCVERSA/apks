package com.yandex.mobile.ads.impl;

import com.transsion.audiotagger.tag.id3.ID3v22Frames;
import defpackage.y45;
import defpackage.zfb;

public final class l2 {
    private static final Object c = new Object();
    private final ps0 a;
    private volatile i2 b;

    public l2(ps0 ps0Var) {
        y45.j(ps0Var, "localStorage");
        this.a = ps0Var;
    }

    public static void a(l2 l2Var, Boolean bool, g2 g2Var, Long l, Integer num, int i) {
        if ((i & 1) != 0) {
            bool = null;
        }
        if ((i & 2) != 0) {
            g2Var = null;
        }
        if ((i & 4) != 0) {
            l = null;
        }
        if ((i & 8) != 0) {
            num = null;
        }
        l2Var.getClass();
        synchronized (c) {
            try {
                boolean zBooleanValue = bool != null ? bool.booleanValue() : l2Var.b().d();
                if (g2Var == null) {
                    g2Var = l2Var.b().c();
                }
                i2 i2Var = new i2(zBooleanValue, g2Var, l != null ? l.longValue() : l2Var.b().b(), num != null ? num.intValue() : l2Var.b().a());
                l2Var.a.b("AdBlockerDetected", i2Var.d());
                l2Var.a.a("AdBlockerRequestPolicy", i2Var.c().name());
                l2Var.a.a("AdBlockerLastUpdate", i2Var.b());
                l2Var.a.a(i2Var.a(), "AdBlockerFailedRequestsCount");
                l2Var.b = i2Var;
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final i2 b() {
        i2 i2Var;
        i2 i2Var2 = this.b;
        if (i2Var2 != null) {
            return i2Var2;
        }
        synchronized (c) {
            try {
                i2Var = this.b;
                if (i2Var == null) {
                    boolean zA = this.a.a("AdBlockerDetected", false);
                    String strD = this.a.d("AdBlockerRequestPolicy");
                    if (strD == null) {
                        strD = ID3v22Frames.FRAME_ID_V2_IS_COMPILATION;
                    }
                    i2Var = new i2(zA, g2.valueOf(strD), this.a.b("AdBlockerLastUpdate"), this.a.b(0, "AdBlockerFailedRequestsCount"));
                    this.b = i2Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i2Var;
    }

    public final void c() {
        synchronized (c) {
            a(this, null, null, null, Integer.valueOf(b().a() + 1), 7);
            zfb zfbVar = zfb.a;
        }
    }

    public final void a() {
        synchronized (c) {
            a(this, null, null, null, 0, 7);
            zfb zfbVar = zfb.a;
        }
    }
}
