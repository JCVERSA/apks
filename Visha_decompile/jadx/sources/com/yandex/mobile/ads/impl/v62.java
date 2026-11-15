package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import defpackage.y45;

public final class v62 {
    private final j0 a;
    private final o71 b;
    private final x62 c;
    private w62 d;
    private n71 e;

    public interface a {
        void a();

        void b();
    }

    public v62() {
        this(new j0(), new o71(), new x62());
    }

    public final void a(View view, a91 a91Var) {
        i0 i0Var;
        y45.j(view, "nativeAdView");
        y45.j(a91Var, "trackingListener");
        Context context = view.getContext();
        y45.i(context, "getContext(...)");
        w62 w62Var = this.d;
        if (w62Var != null) {
            w62Var.a(context);
        }
        Activity activity = null;
        this.d = null;
        n71 n71Var = this.e;
        if (n71Var != null) {
            n71Var.b();
        }
        this.e = null;
        j0 j0Var = this.a;
        Context context2 = view.getContext();
        y45.i(context2, "getContext(...)");
        j0Var.getClass();
        y45.j(context2, "context");
        int i = 0;
        while (context2 instanceof ContextWrapper) {
            int i2 = i + 1;
            if (i >= 10) {
                break;
            }
            if (context2 instanceof Activity) {
                activity = (Activity) context2;
                break;
            } else {
                context2 = ((ContextWrapper) context2).getBaseContext();
                i = i2;
            }
        }
        if (activity != null) {
            this.c.getClass();
            y45.j(activity, "activityContext");
            y45.j(a91Var, "trackingListener");
            i0 i0Var2 = i0.g;
            if (i0Var2 == null) {
                synchronized (i0.f) {
                    i0Var = i0.g;
                    if (i0Var == null) {
                        i0Var = new i0();
                        i0.g = i0Var;
                    }
                }
                i0Var2 = i0Var;
            }
            w62 w62Var2 = new w62(activity, a91Var, i0Var2);
            this.d = w62Var2;
            w62Var2.c(activity);
        }
        this.b.getClass();
        y45.j(view, "nativeAdView");
        y45.j(a91Var, "trackingListener");
        n71 n71Var2 = new n71(view, a91Var, new j71());
        this.e = n71Var2;
        n71Var2.a();
    }

    public v62(j0 j0Var, o71 o71Var, x62 x62Var) {
        y45.j(j0Var, "activityContextProvider");
        y45.j(o71Var, "windowAttachListenerFactory");
        y45.j(x62Var, "activityLifecycleListenerFactory");
        this.a = j0Var;
        this.b = o71Var;
        this.c = x62Var;
    }

    public final void a(Context context) {
        y45.j(context, "context");
        w62 w62Var = this.d;
        if (w62Var != null) {
            w62Var.a(context);
        }
        this.d = null;
        n71 n71Var = this.e;
        if (n71Var != null) {
            n71Var.b();
        }
        this.e = null;
    }
}
