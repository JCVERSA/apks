package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import defpackage.y45;

@MainThread
public final class ju {
    private final fs1 a;

    public ju(Context context, fs1 fs1Var) {
        y45.j(context, "context");
        y45.j(fs1Var, "adLoadController");
        this.a = fs1Var;
        p0.a(context);
    }

    public final void a() {
        this.a.a();
    }

    public final void a(v7 v7Var) {
        y45.j(v7Var, "adRequestData");
        this.a.a(v7Var);
    }

    public final void a(dn2 dn2Var) {
        this.a.a(dn2Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ju(Context context, en2 en2Var) {
        this(context, gs1.a(context, en2Var));
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
    }
}
