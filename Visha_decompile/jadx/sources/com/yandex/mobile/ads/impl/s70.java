package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.yandex.mobile.ads.impl.yh2.a;
import defpackage.af5;
import defpackage.y45;

public final class s70<T extends View & yh2.a> {
    private final T a;
    private final q70 b;
    private final af1 c;
    private final Handler d;
    private a e;

    @VisibleForTesting
    public static final class a<T extends View & yh2.a> implements Runnable {
        static final af5[] f = {ta.a(a.class, "exposureUpdateListenerReference", "getExposureUpdateListenerReference()Lcom/monetization/ads/base/webview/mraid/exposure/OnExposureUpdateListener;", 0), ta.a(a.class, "viewReference", "getViewReference()Landroid/view/View;", 0)};
        private final Handler b;
        private final q70 c;
        private final go1 d;
        private final go1 e;

        public a(Handler handler, View view, q70 q70Var, af1 af1Var) {
            y45.j(view, "view");
            y45.j(af1Var, "exposureUpdateListener");
            y45.j(handler, "handler");
            y45.j(q70Var, "exposureProvider");
            this.b = handler;
            this.c = q70Var;
            this.d = ho1.a(af1Var);
            this.e = ho1.a(view);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final void run() {
            go1 go1Var = this.e;
            af5[] af5VarArr = f;
            View view = (View) go1Var.getValue(this, af5VarArr[1]);
            af1 af1Var = (af1) this.d.getValue(this, af5VarArr[0]);
            if (view == null || af1Var == null) {
                return;
            }
            af1Var.a(this.c.a(view));
            this.b.postDelayed(this, 200L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public s70(Handler handler, View view, q70 q70Var, af1 af1Var) {
        y45.j(view, "view");
        y45.j(q70Var, "exposureProvider");
        y45.j(af1Var, "listener");
        y45.j(handler, "handler");
        this.a = view;
        this.b = q70Var;
        this.c = af1Var;
        this.d = handler;
    }

    public final void a() {
        if (this.e == null) {
            a aVar = new a(this.d, this.a, this.b, this.c);
            this.e = aVar;
            this.d.post(aVar);
        }
    }

    public final void b() {
        this.d.removeCallbacksAndMessages(null);
        this.e = null;
    }

    public s70(View view, q70 q70Var, af1 af1Var) {
        this(new Handler(Looper.getMainLooper()), view, q70Var, af1Var);
    }
}
