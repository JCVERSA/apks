package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import defpackage.y45;
import java.lang.ref.WeakReference;

public final class j21 implements rp {
    private final View a;
    private final z82 b;
    private final Handler c;
    private boolean d;

    public static final class a implements Runnable {
        private final WeakReference<View> b;

        public a(View view) {
            y45.j(view, "view");
            this.b = new WeakReference<>(view);
        }

        @Override
        public final void run() {
            View view = this.b.get();
            if (view != null) {
                view.setVisibility(0);
            }
        }
    }

    public j21(FrameLayout frameLayout, z82 z82Var, Handler handler) {
        y45.j(frameLayout, "closeButton");
        y45.j(z82Var, "useCustomCloseHandler");
        y45.j(handler, "handler");
        this.a = frameLayout;
        this.b = z82Var;
        this.c = handler;
        d().setVisibility(8);
    }

    @Override
    public final void a() {
    }

    @Override
    public final void b() {
    }

    @Override
    public final void c() {
        if (this.d) {
            return;
        }
        this.c.postDelayed(new a(this.a), 200L);
    }

    @Override
    public final View d() {
        return this.a;
    }

    @Override
    public final void invalidate() {
    }

    @Override
    public final void a(boolean z) {
        this.d = true;
        this.c.removeCallbacksAndMessages(null);
        z82 z82Var = this.b;
        View view = this.a;
        z82Var.getClass();
        y45.j(view, "closeButton");
        view.setVisibility(z ? 8 : 0);
    }
}
