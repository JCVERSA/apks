package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;

public final class z12 {
    private final Context a;
    private final zb2<go0> b;
    private final ic c;

    public z12(Context context, zb2<go0> zb2Var) {
        y45.j(context, "context");
        y45.j(zb2Var, "videoAdInfo");
        this.a = context;
        this.b = zb2Var;
        this.c = new ic(zb2Var.g());
    }

    public final gz a() {
        gz r00Var;
        int iOrdinal = new d22(this.c).a(this.b).ordinal();
        if (iOrdinal == 0) {
            r00Var = new r00(this.a);
        } else {
            if (iOrdinal != 1) {
                if (iOrdinal == 2) {
                    return new vz();
                }
                throw new NoWhenBranchMatchedException();
            }
            r00Var = new q00(this.a);
        }
        return r00Var;
    }
}
