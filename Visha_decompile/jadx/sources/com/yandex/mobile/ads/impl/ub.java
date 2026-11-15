package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ub {
    private final Context a;

    public ub(Context context) {
        y45.j(context, "context");
        this.a = context;
    }

    public final void a(String str) {
        if (str != null) {
            vb vbVar = new vb(this.a);
            Context context = this.a;
            new sb(new tb(vbVar, context, new rb(context, vbVar), new ob()).a(), vbVar).a(str);
        }
    }
}
