package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import defpackage.y45;

@SuppressLint({"ViewConstructor"})
public final class vb extends yf1 {
    private final wb k;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public vb(Context context) {
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

    public final void setAdtuneWebViewListener(xb xbVar) {
        y45.j(xbVar, "adtuneOptOutWebViewListener");
        this.k.a(xbVar);
    }

    public vb(Context context, au0 au0Var) {
        gf1 gf1Var = new gf1(context);
        this(context, au0Var, gf1Var, new wb(gf1Var));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vb(Context context, au0 au0Var, gf1 gf1Var, wb wbVar) {
        super(context);
        y45.j(context, "context");
        y45.j(au0Var, "manufacturerChecker");
        y45.j(gf1Var, "optOutRepository");
        y45.j(wbVar, "adtuneOptOutWebViewController");
        this.k = wbVar;
        if (au0Var.a()) {
            setLayerType(2, null);
        }
        setVisibility(0);
        setHtmlWebViewErrorListener(wbVar);
    }
}
