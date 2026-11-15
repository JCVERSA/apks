package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Intent;
import android.view.Window;
import android.widget.RelativeLayout;
import defpackage.y45;

public final class s1 implements n1 {
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
        return new r1(activity, c1Var, new u0(c1Var.b().q().c()));
    }
}
