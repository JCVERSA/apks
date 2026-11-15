package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class ue1 {
    private final le1 a;
    private final me1 b;
    private final ve1 c;
    private final Context d;

    public ue1(Context context, ya2 ya2Var, le1 le1Var, me1 me1Var, ve1 ve1Var) {
        y45.j(context, "context");
        y45.j(ya2Var, "verificationNotExecutedListener");
        y45.j(le1Var, "omSdkAdSessionProvider");
        y45.j(me1Var, "omSdkInitializer");
        y45.j(ve1Var, "omSdkUsageValidator");
        this.a = le1Var;
        this.b = me1Var;
        this.c = ve1Var;
        this.d = context.getApplicationContext();
    }

    public final te1 a(List<wa2> list) {
        y45.j(list, "verifications");
        ve1 ve1Var = this.c;
        Context context = this.d;
        y45.i(context, "context");
        if (!ve1Var.a(context)) {
            return null;
        }
        me1 me1Var = this.b;
        Context context2 = this.d;
        y45.i(context2, "context");
        me1Var.a(context2);
        vn2 vn2VarA = this.a.a(list);
        if (vn2VarA == null) {
            return null;
        }
        dw0 dw0VarA = dw0.a(vn2VarA);
        y45.i(dw0VarA, "createMediaEvents(...)");
        p3 p3VarA = p3.a(vn2VarA);
        y45.i(p3VarA, "createAdEvents(...)");
        return new te1(vn2VarA, dw0VarA, p3VarA);
    }
}
