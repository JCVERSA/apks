package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import defpackage.y45;

@MainThread
public final class qt {
    private final yp0 a;

    public qt(Context context, en2 en2Var) {
        this(context, en2Var, new zp0());
    }

    public final void a() {
        this.a.a();
    }

    public final void a(v7 v7Var) {
        y45.j(v7Var, "adRequestData");
        this.a.a(v7Var);
    }

    public qt(Context context, en2 en2Var, zp0 zp0Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(zp0Var, "itemsLoadControllerFactory");
        zp0Var.getClass();
        this.a = zp0.a(context, en2Var);
        p0.a(context);
    }

    public final void a(om2 om2Var) {
        this.a.a(om2Var);
    }
}
