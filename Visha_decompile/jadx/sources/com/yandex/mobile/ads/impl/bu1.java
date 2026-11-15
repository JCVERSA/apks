package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import defpackage.y45;
import java.util.Map;

public final class bu1 {
    private final Context a;
    private final bv1 b;
    private final o3 c;
    private final o8<String> d;
    private final np0 e;
    private final oj f;
    private final cj g;
    private final l21 h;
    private final zg0 i;
    private final rj j;
    private final yi k;
    private a l;

    public static final class a {
        private final xi a;
        private final xg0 b;
        private final b c;

        public a(xi xiVar, xg0 xg0Var, b bVar) {
            y45.j(xiVar, "contentController");
            y45.j(xg0Var, "htmlWebViewAdapter");
            y45.j(bVar, "webViewListener");
            this.a = xiVar;
            this.b = xg0Var;
            this.c = bVar;
        }

        public final xi a() {
            return this.a;
        }

        public final xg0 b() {
            return this.b;
        }

        public final b c() {
            return this.c;
        }
    }

    public static final class b implements dh0 {
        private final Context a;
        private final bv1 b;
        private final o3 c;
        private final o8<String> d;
        private final bu1 e;
        private final xi f;
        private kv1<bu1> g;
        private final ug0 h;
        private final ju1 i;
        private WebView j;
        private Map<String, String> k;
        private boolean l;

        public b(Context context, bv1 bv1Var, o3 o3Var, o8<String> o8Var, bu1 bu1Var, xi xiVar, kv1<bu1> kv1Var, ug0 ug0Var, ju1 ju1Var) {
            y45.j(context, "context");
            y45.j(bv1Var, "sdkEnvironmentModule");
            y45.j(o3Var, "adConfiguration");
            y45.j(o8Var, "adResponse");
            y45.j(bu1Var, "bannerHtmlAd");
            y45.j(xiVar, "contentController");
            y45.j(kv1Var, "creationListener");
            y45.j(ug0Var, "htmlClickHandler");
            this.a = context;
            this.b = bv1Var;
            this.c = o3Var;
            this.d = o8Var;
            this.e = bu1Var;
            this.f = xiVar;
            this.g = kv1Var;
            this.h = ug0Var;
            this.i = ju1Var;
        }

        @Override
        public final void a(boolean z) {
        }

        public final Map<String, String> b() {
            return this.k;
        }

        public final WebView c() {
            return this.j;
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "adFetchRequestError");
            this.g.a(w3Var);
        }

        @Override
        public final void a(yf1 yf1Var, Map map) {
            y45.j(yf1Var, "webView");
            y45.j(map, "trackingParameters");
            this.j = yf1Var;
            this.k = map;
            this.g.a(this.e);
        }

        @Override
        public final void a(String str) {
            y45.j(str, "clickUrl");
            ju1 ju1Var = this.i;
            if (ju1Var == null || !ju1Var.S() || this.l) {
                Context context = this.a;
                bv1 bv1Var = this.b;
                this.h.a(str, this.d, new u1(context, this.d, this.f.i(), bv1Var, this.c));
                this.l = false;
            }
        }

        @Override
        public final void a() {
            this.l = true;
        }
    }

    public bu1(Context context, bv1 bv1Var, o3 o3Var, o8 o8Var, np0 np0Var, aj ajVar, cj cjVar, l21 l21Var, zg0 zg0Var, rj rjVar, yi yiVar) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(np0Var, "adView");
        y45.j(ajVar, "bannerShowEventListener");
        y45.j(cjVar, "sizeValidator");
        y45.j(l21Var, "mraidCompatibilityDetector");
        y45.j(zg0Var, "htmlWebViewAdapterFactoryProvider");
        y45.j(rjVar, "bannerWebViewFactory");
        y45.j(yiVar, "bannerAdContentControllerFactory");
        this.a = context;
        this.b = bv1Var;
        this.c = o3Var;
        this.d = o8Var;
        this.e = np0Var;
        this.f = ajVar;
        this.g = cjVar;
        this.h = l21Var;
        this.i = zg0Var;
        this.j = rjVar;
        this.k = yiVar;
    }

    public final void a(gz1 gz1Var, String str, qe2 qe2Var, kv1<bu1> kv1Var) throws tj2 {
        y45.j(gz1Var, "configurationSizeInfo");
        y45.j(str, "htmlResponse");
        y45.j(qe2Var, "videoEventController");
        y45.j(kv1Var, "creationListener");
        qj qjVarA = this.j.a(this.d, gz1Var);
        this.h.getClass();
        boolean zA = l21.a(str);
        yi yiVar = this.k;
        Context context = this.a;
        o8<String> o8Var = this.d;
        o3 o3Var = this.c;
        np0 np0Var = this.e;
        oj ojVar = this.f;
        yiVar.getClass();
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(np0Var, "adView");
        y45.j(ojVar, "bannerShowEventListener");
        xi xiVar = new xi(context, o8Var, o3Var, np0Var, ojVar, new it0());
        pk0 pk0VarJ = xiVar.j();
        Context context2 = this.a;
        bv1 bv1Var = this.b;
        o3 o3Var2 = this.c;
        o8<String> o8Var2 = this.d;
        ug0 ug0Var = new ug0(context2, o3Var2);
        int i = pw1.l;
        b bVar = new b(context2, bv1Var, o3Var2, o8Var2, this, xiVar, kv1Var, ug0Var, pw1.a.a().a(context2));
        this.i.getClass();
        xg0 xg0VarA = (zA ? new q21() : new mk()).a(qjVarA, bVar, qe2Var, pk0VarJ);
        this.l = new a(xiVar, xg0VarA, bVar);
        xg0VarA.a(str);
    }

    public final void a() {
        a aVar = this.l;
        if (aVar != null) {
            aVar.b().invalidate();
            aVar.a().c();
        }
        this.l = null;
    }

    public final void a(yt1 yt1Var) {
        y45.j(yt1Var, "showEventListener");
        a aVar = this.l;
        if (aVar == null) {
            yt1Var.a(w7.i());
            return;
        }
        xi xiVarA = aVar.a();
        WebView webViewC = aVar.c().c();
        Map<String, String> mapB = aVar.c().b();
        if (webViewC instanceof qj) {
            qj qjVar = (qj) webViewC;
            gz1 gz1VarO = qjVar.o();
            gz1 gz1VarR = this.c.r();
            if (gz1VarO != null && gz1VarR != null && iz1.a(this.a, this.d, gz1VarO, this.g, gz1VarR)) {
                this.e.setVisibility(0);
                np0 np0Var = this.e;
                du1 du1Var = new du1(np0Var, xiVarA, new it0(), new du1.a(np0Var));
                Context context = this.a;
                np0 np0Var2 = this.e;
                gz1 gz1VarO2 = qjVar.o();
                int i = zg2.b;
                y45.j(context, "context");
                y45.j(webViewC, "contentView");
                if (np0Var2 != null && np0Var2.indexOfChild(webViewC) == -1) {
                    RelativeLayout.LayoutParams layoutParamsA = m8.a(context, gz1VarO2);
                    np0Var2.setVisibility(0);
                    webViewC.setVisibility(0);
                    np0Var2.addView(webViewC, layoutParamsA);
                    wh2.a(webViewC, du1Var);
                }
                xiVarA.a(mapB);
                yt1Var.a();
                return;
            }
        }
        yt1Var.a(w7.b());
    }
}
