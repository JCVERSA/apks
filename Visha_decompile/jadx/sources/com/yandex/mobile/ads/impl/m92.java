package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import com.yandex.mobile.ads.impl.m92;
import defpackage.y45;

public final class m92 {
    private static final String c = "The Yandex Mobile Ads SDK needs to be updated to the latest version. Details in the logs";
    private final Handler a;
    private final Context b;

    public m92(Context context) {
        this(context, new Handler(Looper.getMainLooper()));
    }

    public final void a() {
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                m92.a(this.b);
            }
        });
    }

    public static final void a(m92 m92Var) {
        y45.j(m92Var, "this$0");
        Toast.makeText(m92Var.b, c, 1).show();
    }

    public m92(Context context, Handler handler) {
        y45.j(context, "context");
        y45.j(handler, "handler");
        this.a = handler;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.b = applicationContext;
    }
}
