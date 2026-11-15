package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class ug0 {
    private final v9 a;

    public ug0(Context context, o3 o3Var) {
        this(context, o3Var, new v9(context, o3Var));
    }

    public final void a(String str, o8 o8Var, u1 u1Var) {
        y45.j(str, "url");
        y45.j(o8Var, "adResponse");
        y45.j(u1Var, "handler");
        List<String> listT = o8Var.t();
        if (listT != null) {
            Iterator<T> it = listT.iterator();
            while (it.hasNext()) {
                this.a.a((String) it.next(), z62.d);
            }
        }
        this.a.a(str, o8Var, u1Var);
    }

    public ug0(Context context, o3 o3Var, v9 v9Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(v9Var, "adTracker");
        this.a = v9Var;
    }
}
