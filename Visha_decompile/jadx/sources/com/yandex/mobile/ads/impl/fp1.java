package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import defpackage.y45;

public final class fp1 implements sl.b {
    final gp1 a;
    final yb1 b;
    final hp1 c;

    public fp1(gp1 gp1Var, yb1 yb1Var, hp1 hp1Var) {
        this.a = gp1Var;
        this.b = yb1Var;
        this.c = hp1Var;
    }

    @Override
    public final void a(Bitmap bitmap) {
        y45.j(bitmap, "bitmap");
        ep1 ep1Var = this.a.d;
        yb1 yb1Var = this.b;
        hp1 hp1Var = this.c;
        ep1Var.getClass();
        ep1.a(yb1Var, hp1Var, bitmap);
    }
}
