package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class e8 {
    private final x7 a = new x7();

    static {
        TimeUnit.SECONDS.toMillis(10L);
    }

    public final m00 a(Context context, int i) {
        Integer numG;
        y45.j(context, "context");
        this.a.getClass();
        y45.j(context, "context");
        int i2 = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        return new m00(1.0f, i, (ju1VarA == null || (numG = ju1VarA.g()) == null) ? 0 : numG.intValue());
    }
}
