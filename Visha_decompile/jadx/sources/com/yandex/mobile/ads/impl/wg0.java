package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.webkit.JavascriptInterface;
import androidx.annotation.VisibleForTesting;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Objects;

public abstract class wg0 extends yf1 implements eh0 {
    private final o8<?> k;
    private final gg1 l;
    private dh0 m;
    private final LinkedHashMap n;

    public static final class a {
        private final gg1 a;

        public a(Context context, gg1 gg1Var) {
            y45.j(context, "context");
            y45.j(gg1Var, "partnerCodeAdRenderer");
            this.a = gg1Var;
            new WeakReference(context);
        }

        @JavascriptInterface
        public final String getBannerInfo() {
            return "{\"isDelicate\": false}";
        }

        @JavascriptInterface
        public final void onAdRender(int i, String str) {
            this.a.a(i, str);
        }
    }

    public wg0(Context context, o8 o8Var, o3 o3Var) {
        this(context, o8Var, o3Var, new hg1());
    }

    @Override
    public final void a(int i, String str) {
        sp0.d(new Object[0]);
        b(i, str);
        super.a();
    }

    @SuppressLint({"AddJavascriptInterface"})
    public abstract void a(Context context, o3 o3Var);

    @VisibleForTesting(otherwise = 4)
    public final a b(Context context) {
        y45.j(context, "context");
        return new a(context, this.l);
    }

    @Override
    @VisibleForTesting(otherwise = 4)
    public String c() {
        String strC = super.c();
        String strB = rj2.b();
        if (!y45.e("partner-code", this.k.k())) {
            strB = null;
        }
        if (strB == null) {
            strB = "";
        }
        return strC + strB;
    }

    @Override
    public final void d() {
        this.l.a();
        super.d();
    }

    @Override
    public final dh0 j() {
        return this.m;
    }

    public final o8<?> k() {
        return this.k;
    }

    public final LinkedHashMap l() {
        return this.n;
    }

    public final boolean m() {
        return y45.e("partner-code", this.k.k());
    }

    @Override
    @VisibleForTesting(otherwise = 4)
    public final void onConfigurationChanged(Configuration configuration) {
        y45.j(configuration, "newConfig");
        Objects.toString(configuration);
        sp0.d(new Object[0]);
        y45.j("AdPerformActionsJSI", "jsName");
        Object obj = this.a.get("AdPerformActionsJSI");
        if (obj != null && (obj instanceof a)) {
            sp0.d(new Object[0]);
        }
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void setHtmlWebViewListener(dh0 dh0Var) {
        this.l.a(dh0Var);
        this.m = dh0Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wg0(Context context, o8<?> o8Var, o3 o3Var, hg1 hg1Var) {
        super(context);
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(hg1Var, "partnerCodeAdRendererFactory");
        this.k = o8Var;
        hg1Var.getClass();
        this.l = hg1.a(this);
        this.n = new LinkedHashMap();
        a(context, o3Var);
    }

    @VisibleForTesting(otherwise = 4)
    public void b(int i, String str) {
        if (str == null || str.length() == 0 || y45.e(str, "undefined")) {
            return;
        }
        this.n.put("test-tag", str);
    }

    @Override
    public final void a() {
        if (y45.e("partner-code", this.k.k())) {
            this.l.b();
        } else {
            super.a();
        }
    }
}
