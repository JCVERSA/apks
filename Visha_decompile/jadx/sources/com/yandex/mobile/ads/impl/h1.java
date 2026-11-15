package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Intent;
import android.view.Window;
import android.widget.RelativeLayout;
import defpackage.y45;

public final class h1 implements n1 {
    @Override
    public final m1 a(Activity activity, RelativeLayout relativeLayout, v1 v1Var, e1 e1Var, Intent intent, Window window, c1 c1Var) {
        y45.j(activity, "activity");
        y45.j(relativeLayout, "rootLayout");
        y45.j(v1Var, "listener");
        y45.j(e1Var, "eventController");
        y45.j(intent, "intent");
        y45.j(window, "window");
        if (c1Var == null) {
            return null;
        }
        o8<?> o8VarC = c1Var.c();
        o3 o3VarB = c1Var.b();
        q61 q61VarE = c1Var.e();
        gv1 gv1VarG = c1Var.g();
        o8<?> o8Var = o8VarC != null ? o8VarC : null;
        String str = o8Var != null ? (String) o8Var.I() : null;
        if (gv1VarG != null && str != null && str.length() != 0) {
            fd0 fd0Var = new fd0(o8VarC, str, gv1VarG);
            return new g1(activity, relativeLayout, v1Var, window, fd0Var, new lf1(activity, fd0Var.a(), v1Var), new wc0(activity), new id0(fd0Var.a().n()));
        }
        if (q61VarE != null) {
            return new k1(activity, relativeLayout, window, q61VarE, o8VarC, v1Var, e1Var, o3VarB, c1Var.f(), new wc0(activity), new id0(o3VarB.b()));
        }
        return null;
    }
}
