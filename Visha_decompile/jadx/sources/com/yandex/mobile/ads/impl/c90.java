package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public class c90 extends ck<String> {
    private final ka0 w;

    public c90(Context context, o3 o3Var, g5 g5Var, ka0 ka0Var) {
        this(context, o3Var, g5Var, ka0Var, su.a());
    }

    @Override
    public final ak<String> a(String str, String str2) {
        y45.j(str, "url");
        y45.j(str2, "query");
        Context contextL = l();
        o3 o3VarF = f();
        ka0 ka0Var = this.w;
        sx1.a.getClass();
        return new z80(contextL, o3VarF, str, str2, this, this, ka0Var, sx1.a.a(contextL), new qg0(), new d8());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c90(Context context, o3 o3Var, g5 g5Var, ka0 ka0Var, defpackage.nk1 nk1Var) {
        super(context, g5Var, o3Var, nk1Var);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(nk1Var, "coroutineScope");
        this.w = ka0Var;
    }
}
