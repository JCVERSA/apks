package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import defpackage.y45;

public final class pn {
    private final Handler a;
    private final zd<TextView> b;

    public pn(Context context) {
        this(context, new Handler(Looper.getMainLooper()), rn.a(context));
    }

    public final void a() {
        this.a.removeCallbacksAndMessages(null);
        this.b.cancel();
    }

    public final void a(TextView textView) {
        y45.j(textView, "callToActionView");
        this.a.postDelayed(new o22(textView, this.b), 2000L);
    }

    public pn(Context context, Handler handler, zd<TextView> zdVar) {
        y45.j(context, "context");
        y45.j(handler, "handler");
        y45.j(zdVar, "callToActionAnimator");
        this.a = handler;
        this.b = zdVar;
    }
}
