package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class k50 {
    private final d32 a = new d32();

    public final String a(Context context, String str) {
        String strA;
        y45.j(context, "context");
        y45.j(str, "rawQuery");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(context);
        return (ju1VarA == null || !ju1VarA.c0() || (strA = this.a.a(context, str)) == null) ? str : strA;
    }
}
