package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebSettings;
import defpackage.y45;

@SuppressLint({"ViewConstructor"})
public final class pd0 extends wg0 {
    private final vj2 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pd0(Context context, o8<?> o8Var, o3 o3Var) {
        super(context, o8Var, o3Var);
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        this.o = new vj2(this);
    }

    @Override
    @SuppressLint({"AddJavascriptInterface"})
    public final void a(Context context, o3 o3Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        addJavascriptInterface(b(context), "AdPerformActionsJSI");
    }

    @Override
    public final void h() {
        this.o.a(l());
    }

    @Override
    public final void a(Context context) {
        y45.j(context, "context");
        super.a(context);
        WebSettings settings = getSettings();
        y45.i(settings, "getSettings(...)");
        settings.setDatabasePath(getContext().getDatabasePath("com.monetization.ads.db").getAbsolutePath());
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setCacheMode(-1);
    }
}
