package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class br implements c10 {
    private final c10[] a;

    public br(c10... c10VarArr) {
        y45.j(c10VarArr, "designConstraints");
        this.a = c10VarArr;
    }

    @Override
    public final boolean a(Context context) {
        y45.j(context, "context");
        for (c10 c10Var : this.a) {
            if (!c10Var.a(context)) {
                return false;
            }
        }
        return true;
    }
}
