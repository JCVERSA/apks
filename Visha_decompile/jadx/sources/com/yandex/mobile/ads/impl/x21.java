package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.Map;

public class x21 extends lk {
    private final m21 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x21(yf1 yf1Var, dh0 dh0Var, a aVar, m21 m21Var) {
        super(yf1Var);
        y45.j(yf1Var, "parentHtmlWebView");
        y45.j(dh0Var, "htmlWebViewListener");
        y45.j(aVar, "htmlWebViewMraidListener");
        y45.j(m21Var, "mraidController");
        this.b = m21Var;
        m21Var.a(aVar);
    }

    @Override
    public final void a(String str) {
        y45.j(str, "htmlResponse");
        this.b.a(str);
    }

    public final m21 b() {
        return this.b;
    }

    @Override
    public final void invalidate() {
        super.invalidate();
        this.b.a();
    }

    public static final class a implements u21 {
        private final WeakReference<dh0> a;

        public a(dh0 dh0Var) {
            this(dh0Var, new WeakReference(dh0Var));
        }

        @Override
        public final void a(yf1 yf1Var, Map map) {
            y45.j(yf1Var, "webView");
            y45.j(map, "trackingParameters");
            dh0 dh0Var = this.a.get();
            if (dh0Var != null) {
                dh0Var.a(yf1Var, map);
            }
        }

        public a(dh0 dh0Var, WeakReference<dh0> weakReference) {
            y45.j(dh0Var, "htmlWebViewListener");
            y45.j(weakReference, "htmlWebViewListenerRef");
            this.a = weakReference;
        }

        @Override
        public final void a(String str) {
            y45.j(str, "url");
            dh0 dh0Var = this.a.get();
            if (dh0Var != null) {
                dh0Var.a(str);
            }
        }

        @Override
        public final void a() {
            dh0 dh0Var = this.a.get();
            if (dh0Var != null) {
                dh0Var.a();
            }
        }
    }

    @Override
    public final void a(dh0 dh0Var) {
        y45.j(dh0Var, "htmlWebViewListener");
        super.a(new r21(this.b, dh0Var));
    }
}
