package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class dt0 {
    private final bt0 a;
    private final tg1 b;
    private ct0 c;

    public dt0(Context context, String str) {
        this(context, str, new bt0(context, str), new tg1(context), null);
    }

    private final ct0 a() {
        he0 he0VarA = this.a.a();
        if (he0VarA != null) {
            boolean zA = this.b.a();
            boolean zB = this.b.b();
            if (zA || zB) {
                return he0VarA.a();
            }
        }
        return null;
    }

    public final ct0 b() {
        ct0 ct0Var = this.c;
        return ct0Var != null ? ct0Var : a();
    }

    public final void c() {
        this.c = a();
        this.c = a();
    }

    public dt0(Context context, String str, bt0 bt0Var, tg1 tg1Var, ct0 ct0Var) {
        y45.j(context, "context");
        y45.j(str, "locationServicesClassName");
        y45.j(bt0Var, "locationServices");
        y45.j(tg1Var, "permissionExtractor");
        this.a = bt0Var;
        this.b = tg1Var;
        this.c = ct0Var;
    }
}
