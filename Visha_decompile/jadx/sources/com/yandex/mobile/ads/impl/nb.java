package com.yandex.mobile.ads.impl;

import android.app.Dialog;
import android.os.Handler;
import defpackage.y45;
import java.util.concurrent.TimeUnit;

public final class nb {
    private static final long f = TimeUnit.SECONDS.toMillis(5);
    private final Dialog a;
    private final bc b;
    private final x50 c;
    private final ff1 d;
    private final Handler e;

    public final class b implements Runnable {
        public b() {
        }

        @Override
        public final void run() {
            n10.a(nb.this.a);
        }
    }

    public nb(Dialog dialog, bc bcVar, x50 x50Var, ff1 ff1Var, Handler handler) {
        y45.j(dialog, "dialog");
        y45.j(bcVar, "adtuneWebView");
        y45.j(x50Var, "eventListenerController");
        y45.j(ff1Var, "openUrlHandler");
        y45.j(handler, "handler");
        this.a = dialog;
        this.b = bcVar;
        this.c = x50Var;
        this.d = ff1Var;
        this.e = handler;
    }

    public static final void d(nb nbVar) {
        nbVar.e.removeCallbacksAndMessages(null);
    }

    public final class a implements ec {
        public a() {
        }

        @Override
        public final void a(String str) {
            y45.j(str, "url");
            nb.this.d.a(str);
        }

        @Override
        public final void b() {
            nb.this.c.a();
            n10.a(nb.this.a);
        }

        @Override
        public final void a() {
            nb.d(nb.this);
        }
    }

    public final void a(String str, String str2) {
        y45.j(str, "url");
        y45.j(str2, "optOutUrl");
        this.b.setAdtuneWebViewListener(new a());
        this.b.setOptOutUrl(str2);
        this.b.loadUrl(str);
        this.e.postDelayed(new b(), f);
        this.a.show();
    }
}
