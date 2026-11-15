package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.zn0;
import defpackage.y45;

public final class zn0 implements so0 {
    private final Handler a;
    private sl0 b;

    public zn0() {
        this(new Handler(Looper.getMainLooper()));
    }

    public static final void a(zn0 zn0Var) {
        y45.j(zn0Var, "this$0");
        sl0 sl0Var = zn0Var.b;
        if (sl0Var != null) {
            sl0Var.onInstreamAdPrepared();
        }
    }

    public static final void b(zn0 zn0Var) {
        y45.j(zn0Var, "this$0");
        sl0 sl0Var = zn0Var.b;
        if (sl0Var != null) {
            sl0Var.onInstreamAdCompleted();
        }
    }

    @Override
    public final void onInstreamAdPrepared() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                zn0.a(this.b);
            }
        });
    }

    public zn0(Handler handler) {
        y45.j(handler, "handler");
        this.a = handler;
    }

    @Override
    public final void a() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                zn0.b(this.b);
            }
        });
    }

    @Override
    public final void b() {
        final String str = "Video player returned error";
        y45.j("Video player returned error", "reason");
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                zn0.a(this.b, str);
            }
        });
    }

    public static final void a(zn0 zn0Var, String str) {
        y45.j(zn0Var, "this$0");
        y45.j(str, "$reason");
        sl0 sl0Var = zn0Var.b;
        if (sl0Var != null) {
            sl0Var.onError(str);
        }
    }

    public final void a(fm2 fm2Var) {
        this.b = fm2Var;
    }
}
