package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Intent;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import defpackage.y45;

public final class y0 implements n1 {
    @Override
    public final m1 a(Activity activity, RelativeLayout relativeLayout, v1 v1Var, e1 e1Var, Intent intent, Window window, c1 c1Var) {
        y45.j(activity, "activity");
        y45.j(relativeLayout, "rootLayout");
        y45.j(v1Var, "listener");
        y45.j(e1Var, "eventController");
        y45.j(intent, "intent");
        y45.j(window, "window");
        String stringExtra = intent.getStringExtra("extra_browser_url");
        if (stringExtra != null && stringExtra.length() > 0) {
            try {
                try {
                    h3 h3Var = new h3(activity);
                    y45.j(activity, "context");
                    LinearLayout linearLayout = new LinearLayout(activity);
                    linearLayout.setId(1);
                    linearLayout.setOrientation(0);
                    linearLayout.setBackgroundColor(f8.b());
                    return new x0(activity, relativeLayout, v1Var, window, stringExtra, h3Var, linearLayout, h8.c(activity), h8.d(activity), new y82(new x82()));
                } catch (Throwable unused) {
                    throw new tj2();
                }
            } catch (tj2 unused2) {
            }
        }
        return null;
    }
}
