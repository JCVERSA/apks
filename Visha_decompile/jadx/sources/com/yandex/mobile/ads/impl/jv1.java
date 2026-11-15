package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.j1a;
import defpackage.y45;

public final class jv1<T> {
    private final o3 a;
    private final j9 b;
    private final iv1<T> c;

    public jv1(o3 o3Var, j9 j9Var, iv1<T> iv1Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(j9Var, "sizeValidator");
        y45.j(iv1Var, "sdkHtmlAdCreateController");
        this.a = o3Var;
        this.b = j9Var;
        this.c = iv1Var;
    }

    public final void a() {
        this.c.a();
    }

    public final void a(Context context, o8<String> o8Var, kv1<T> kv1Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(kv1Var, "creationListener");
        String strI = o8Var.I();
        gz1 gz1VarM = o8Var.M();
        boolean zA = this.b.a(context, gz1VarM);
        gz1 gz1VarR = this.a.r();
        if (!zA) {
            kv1Var.a(w7.k());
            return;
        }
        if (gz1VarR == null) {
            kv1Var.a(w7.m());
            return;
        }
        if (!iz1.a(context, o8Var, gz1VarM, this.b, gz1VarR)) {
            kv1Var.a(w7.a(gz1VarR.c(context), gz1VarR.a(context), gz1VarM.getWidth(), gz1VarM.getHeight(), wh2.c(context), wh2.b(context)));
            return;
        }
        if (strI == null || j1a.o0(strI)) {
            kv1Var.a(w7.k());
        } else {
            if (!oa.a(context)) {
                kv1Var.a(w7.z());
                return;
            }
            try {
                this.c.a(o8Var, gz1VarR, strI, kv1Var);
            } catch (tj2 unused) {
                kv1Var.a(w7.y());
            }
        }
    }
}
