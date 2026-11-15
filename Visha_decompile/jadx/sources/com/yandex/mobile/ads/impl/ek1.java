package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ek1 implements u82 {
    private final tp1 a;
    private final f42 b;
    private final s82 c;
    private String d;

    public ek1(Context context, tp1 tp1Var, f42 f42Var, s82 s82Var) {
        y45.j(context, "context");
        y45.j(tp1Var, "reporter");
        y45.j(f42Var, "targetUrlHandler");
        y45.j(s82Var, "urlModifier");
        this.a = tp1Var;
        this.b = f42Var;
        this.c = s82Var;
    }

    @Override
    public final void a(String str) {
        y45.j(str, "url");
        String strA = this.c.a(str);
        if (str.length() != 0) {
            str = strA;
        }
        this.d = str;
        String str2 = null;
        if (str == null) {
            y45.B("targetUrl");
            str = null;
        }
        if (str.length() == 0) {
            sp0.b(new Object[0]);
            return;
        }
        f42 f42Var = this.b;
        tp1 tp1Var = this.a;
        String str3 = this.d;
        if (str3 == null) {
            y45.B("targetUrl");
        } else {
            str2 = str3;
        }
        f42Var.a(tp1Var, str2);
    }
}
