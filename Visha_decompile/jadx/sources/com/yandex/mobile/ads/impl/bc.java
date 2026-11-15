package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import defpackage.y45;

@SuppressLint({"ViewConstructor"})
public final class bc extends yf1 {
    private final cc k;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public bc(Context context) {
        this(context, new au0());
        y45.j(context, "context");
    }

    @Override
    public final void a(Context context, String str) {
        y45.j(context, "context");
        y45.j(str, "url");
        this.k.a(str);
    }

    @Override
    public final void h() {
    }

    public final void setAdtuneWebViewListener(ec ecVar) {
        y45.j(ecVar, "adtuneWebViewListener");
        this.k.a(ecVar);
    }

    public final void setOptOutUrl(String str) {
        this.k.b(str);
    }

    public bc(Context context, au0 au0Var) {
        ub ubVar = new ub(context);
        this(context, au0Var, ubVar, new cc(ubVar));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bc(Context context, au0 au0Var, ub ubVar, cc ccVar) {
        super(context);
        y45.j(context, "context");
        y45.j(au0Var, "manufacturerChecker");
        y45.j(ubVar, "optOutRenderer");
        y45.j(ccVar, "adtuneWebViewController");
        this.k = ccVar;
        if (au0Var.a()) {
            setLayerType(2, null);
        }
        setVisibility(0);
        setHtmlWebViewErrorListener(ccVar);
    }
}
