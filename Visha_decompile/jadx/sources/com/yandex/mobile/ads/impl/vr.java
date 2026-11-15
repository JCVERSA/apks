package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.s86;
import defpackage.wn8;
import defpackage.y45;

public final class vr implements jj {
    @Override
    public final int a(Context context, int i, kf1 kf1Var) {
        int iB;
        y45.j(context, "context");
        y45.j(kf1Var, "orientation");
        float f = wn8.f(100.0f, wh2.a(context, kf1Var) * 0.15f);
        if (i > 655) {
            iB = s86.b((((double) i) / 728.0d) * 90.0d);
        } else if (i > 632) {
            iB = 81;
        } else if (i > 526) {
            iB = s86.b((((double) i) / 468.0d) * 60.0d);
        } else {
            iB = i > 432 ? 68 : s86.b((((double) i) / 320.0d) * 50.0d);
        }
        return wn8.d(wn8.g(iB, (int) f), 50);
    }
}
