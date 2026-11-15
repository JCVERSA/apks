package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.os.Bundle;
import defpackage.y45;

public final class v1 implements j1 {
    private final Activity a;
    private final t8 b;

    public v1(Activity activity, t8 t8Var) {
        y45.j(activity, "activity");
        this.a = activity;
        this.b = t8Var;
    }

    @Override
    public final void a() {
        this.a.finish();
    }

    @Override
    public final void a(int i, Bundle bundle) {
        t8 t8Var = this.b;
        if (t8Var != null) {
            t8Var.a(i, bundle);
        }
    }

    @Override
    public final void a(int i) {
        try {
            this.a.setRequestedOrientation(i);
        } catch (Exception unused) {
            sp0.a(new Object[0]);
        }
    }
}
