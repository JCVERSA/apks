package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Looper;
import defpackage.y45;

public final class td1 {
    private final pd1 a;

    public td1() {
        this(new pd1());
    }

    public final e31 a(Context context, o3 o3Var, tk0 tk0Var, j62 j62Var, String str, s9 s9Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(tk0Var, "impressionReporter");
        y45.j(j62Var, "trackingChecker");
        y45.j(str, "viewControllerDescription");
        y45.j(s9Var, "adStructureType");
        od1 od1VarA = this.a.a(tk0Var, s9Var);
        Looper mainLooper = Looper.getMainLooper();
        y45.i(mainLooper, "getMainLooper(...)");
        e31.a aVar = new e31.a(mainLooper, od1VarA);
        v9 v9Var = new v9(context, o3Var);
        int i = pw1.l;
        return new e31(context, o3Var, od1VarA, j62Var, str, s9Var, aVar, v9Var, pw1.a.a(), new r62());
    }

    public td1(pd1 pd1Var) {
        y45.j(pd1Var, "noticeReportControllerCreator");
        this.a = pd1Var;
    }
}
