package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class va1 {
    private final h00 a;

    /* JADX WARN: Illegal instructions before constructor call */
    public va1(Context context, o3 o3Var, o8 o8Var) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, o3Var, o8Var, new h00(applicationContext, o8Var, o3Var));
    }

    public final sa1 a(zb2<kb1> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        int i = f70.d;
        sa1 sa1VarA = f70.a.a().a(zb2Var);
        if (sa1VarA != null && !sa1VarA.e()) {
            return sa1VarA;
        }
        i70 i70VarA = this.a.a();
        f70.a.a().a(zb2Var, i70VarA);
        return i70VarA;
    }

    public va1(Context context, o3 o3Var, o8<?> o8Var, h00 h00Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(h00Var, "exoPlayerCreator");
        this.a = h00Var;
    }
}
