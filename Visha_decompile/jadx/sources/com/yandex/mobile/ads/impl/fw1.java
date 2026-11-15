package com.yandex.mobile.ads.impl;

import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.af5;
import defpackage.fd7;
import defpackage.y45;

public final class fw1 extends fd7 {
    final dw1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fw1(cw1 cw1Var, dw1 dw1Var) {
        super(cw1Var);
        this.a = dw1Var;
    }

    @Override
    public final void afterChange(af5 af5Var, hx0 hx0Var, hx0 hx0Var2) {
        CustomizableMediaView customizableMediaViewD;
        ex0 ex0VarC;
        y45.j(af5Var, "property");
        hx0 hx0Var3 = hx0Var2;
        hx0 hx0Var4 = hx0Var;
        if (y45.e(hx0Var3, hx0Var4) || (customizableMediaViewD = dw1.d(this.a)) == null || (ex0VarC = dw1.c(this.a)) == null) {
            return;
        }
        hx0Var4.a(customizableMediaViewD);
        customizableMediaViewD.post(new ew1(hx0Var3, customizableMediaViewD, ex0VarC));
    }
}
