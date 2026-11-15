package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class rk0 {
    public static qk0 a(Context context, qk0.a aVar, tk0 tk0Var, s4 s4Var, pk0 pk0Var) {
        y45.j(context, "context");
        y45.j(aVar, "impressionListener");
        y45.j(tk0Var, "impressionReporter");
        y45.j(s4Var, "adIdStorageManager");
        y45.j(pk0Var, "eventsObservable");
        qk0 qk0Var = new qk0(context, aVar, tk0Var, s4Var, new sk0(tk0Var));
        pk0Var.b(qk0Var);
        pk0Var.a(qk0Var);
        pk0Var.c(qk0Var);
        pk0Var.a((r11) qk0Var);
        return qk0Var;
    }
}
