package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class m71 implements sa {
    private final Context a;
    private final a81 b;
    private final w71 c;
    private final pw1 d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public m71(Context context, o41 o41Var, w71 w71Var) {
        this(context, o41Var, w71Var, pw1.a.a());
        int i = pw1.l;
    }

    @Override
    public final boolean a() {
        this.c.getClass();
        ju1 ju1VarA = this.d.a(this.a);
        return !(ju1VarA != null && ju1VarA.v0()) || this.b.a(false).b() == n92.a.c;
    }

    public m71(Context context, o41 o41Var, w71 w71Var, pw1 pw1Var) {
        y45.j(context, "context");
        y45.j(o41Var, "nativeAssetsValidator");
        y45.j(w71Var, "nativeAdsConfiguration");
        y45.j(pw1Var, "sdkSettings");
        this.a = context;
        this.b = o41Var;
        this.c = w71Var;
        this.d = pw1Var;
    }
}
