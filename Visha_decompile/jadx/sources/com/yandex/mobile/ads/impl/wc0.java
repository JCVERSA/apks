package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class wc0 {
    private final Context a;

    public wc0(Context context) {
        y45.j(context, "context");
        this.a = context.getApplicationContext();
    }

    public final boolean a() {
        int i = pw1.l;
        pw1 pw1VarA = pw1.a.a();
        Context context = this.a;
        y45.i(context, "context");
        ju1 ju1VarA = pw1VarA.a(context);
        return ju1VarA != null && ju1VarA.d0();
    }
}
