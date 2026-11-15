package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Intent;
import android.view.Window;
import android.widget.RelativeLayout;
import defpackage.y45;
import java.util.LinkedHashMap;

public final class o1 {
    public static final a b = new a(0);
    private static volatile o1 c;
    private final LinkedHashMap a;

    public static final class a {
        private a() {
        }

        public final o1 a() {
            o1 o1Var = o1.c;
            if (o1Var == null) {
                synchronized (this) {
                    o1Var = o1.c;
                    if (o1Var == null) {
                        o1Var = new o1(0);
                        o1.c = o1Var;
                    }
                }
            }
            return o1Var;
        }

        public a(int i) {
            this();
        }
    }

    private o1() {
        this.a = new LinkedHashMap();
        a("window_type_browser", new y0());
        a("window_type_activity_result", new s1());
    }

    public final synchronized m1 a(Activity activity, RelativeLayout relativeLayout, v1 v1Var, e1 e1Var, Intent intent, Window window, c1 c1Var) {
        n1 n1Var;
        y45.j(activity, "activity");
        y45.j(relativeLayout, "rootLayout");
        y45.j(v1Var, "listener");
        y45.j(e1Var, "eventController");
        y45.j(intent, "intent");
        y45.j(window, "window");
        String stringExtra = intent.getStringExtra("window_type");
        if (stringExtra == null || (n1Var = (n1) this.a.get(stringExtra)) == null) {
            return null;
        }
        return n1Var.a(activity, relativeLayout, v1Var, e1Var, intent, window, c1Var);
    }

    public final synchronized void a(String str, n1 n1Var) {
        y45.j(str, "windowType");
        y45.j(n1Var, "creator");
        if (!this.a.containsKey(str)) {
            this.a.put(str, n1Var);
        }
    }

    public o1(int i) {
        this();
    }
}
