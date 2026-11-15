package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;

public final class b90 {
    private final ht0 a;
    private final Handler b;
    private final LinkedHashMap c;
    private boolean d;

    public static final class a implements Runnable {
        final a90 c;

        public a(a90 a90Var) {
            this.c = a90Var;
        }

        @Override
        public final void run() {
            LinkedHashMap linkedHashMap = b90.this.c;
            a90 a90Var = this.c;
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                View view = (View) entry.getKey();
                int iIntValue = ((Number) entry.getValue()).intValue();
                if (wh2.a(view) >= 1) {
                    a90Var.a(iIntValue);
                }
            }
            b90.this.b.postDelayed(this, 200L);
        }
    }

    public b90() {
        this(new ht0(), new Handler(Looper.getMainLooper()));
    }

    public final void a(View view, int i) {
        y45.j(view, "feedAdView");
        this.c.put(view, Integer.valueOf(i));
    }

    public b90(ht0 ht0Var, Handler handler) {
        y45.j(ht0Var, "mainThreadExecutor");
        y45.j(handler, "handler");
        this.a = ht0Var;
        this.b = handler;
        this.c = new LinkedHashMap();
    }

    public final void a(View view) {
        y45.j(view, "feedAdView");
        this.c.remove(view);
    }

    public final void a(a90 a90Var) {
        y45.j(a90Var, "listener");
        if (this.d) {
            return;
        }
        this.d = true;
        this.a.a(new a(a90Var));
    }

    public final void a() {
        this.c.clear();
        this.b.removeCallbacksAndMessages(null);
        this.d = false;
    }
}
