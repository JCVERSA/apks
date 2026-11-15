package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class on0 implements ff1 {
    private final Context a;
    private final vn0 b;
    private final y82 c;

    public on0(Context context, vn0 vn0Var, y82 y82Var) {
        y45.j(context, "context");
        y45.j(vn0Var, "instreamInteractionTracker");
        y45.j(y82Var, "urlViewerLauncher");
        this.a = context;
        this.b = vn0Var;
        this.c = y82Var;
    }

    @Override
    public final void a(String str) {
        y45.j(str, "url");
        if (this.c.a(this.a, str)) {
            this.b.a();
        }
    }
}
