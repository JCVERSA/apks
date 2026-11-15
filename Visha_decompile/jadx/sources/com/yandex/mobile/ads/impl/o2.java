package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class o2 {
    private static final long c = TimeUnit.HOURS.toMillis(1);
    private final pw1 a;
    private final Context b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public o2(Context context) {
        this(context, pw1.a.a());
        int i = pw1.l;
    }

    public final long a() {
        ju1 ju1VarA = this.a.a(this.b);
        Long lC = ju1VarA != null ? ju1VarA.c() : null;
        return lC != null ? lC.longValue() : c;
    }

    public o2(Context context, pw1 pw1Var) {
        y45.j(context, "context");
        y45.j(pw1Var, "sdkSettings");
        this.a = pw1Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.b = applicationContext;
    }
}
