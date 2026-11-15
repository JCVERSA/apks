package com.monetization.ads.mediation.interstitial;

import android.content.Context;
import com.monetization.ads.mediation.base.MediatedAdRequestError;
import com.monetization.ads.mediation.base.model.MediatedAdObject;
import com.yandex.mobile.ads.impl.go1;
import com.yandex.mobile.ads.impl.ho1;
import com.yandex.mobile.ads.impl.jd0;
import com.yandex.mobile.ads.impl.l7;
import com.yandex.mobile.ads.impl.ok0;
import com.yandex.mobile.ads.impl.qx0;
import com.yandex.mobile.ads.impl.rx0;
import com.yandex.mobile.ads.impl.sp0;
import com.yandex.mobile.ads.impl.ta;
import com.yandex.mobile.ads.impl.tx0;
import com.yandex.mobile.ads.impl.w3;
import com.yandex.mobile.ads.impl.zd0;
import defpackage.af5;
import defpackage.c74;
import defpackage.e74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

public final class a<T extends zd0<T>> implements MediatedInterstitialAdapter.MediatedInterstitialAdapterListener {
    static final af5[] e = {xq8.f(new MutablePropertyReference1Impl(a.class, "contentController", "getContentController()Lcom/monetization/ads/fullscreen/FullscreenContentController;", 0)), ta.a(a.class, "loadController", "getLoadController()Lcom/monetization/ads/fullscreen/FullScreenLoadController;", 0)};
    private final rx0<MediatedInterstitialAdapter, MediatedInterstitialAdapter.MediatedInterstitialAdapterListener> a;
    private final ok0 b;
    private final go1 c;
    private final go1 d;

    public static final class C0193a extends Lambda implements c74 {
        final a<T> b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0193a(a<T> aVar) {
            super(0);
            this.b = aVar;
        }

        @Override
        public final Object invoke() {
            a.a(this.b);
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements e74 {
        final a<T> b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(a<T> aVar) {
            super(1);
            this.b = aVar;
        }

        public final void a(String str) {
            y45.j(str, "errorDescription");
            this.b.onInterstitialFailedToLoad(new MediatedAdRequestError(1, "Ad is blocked by quality verification with reasons:  " + str));
        }

        @Override
        public final Object invoke(Object obj) {
            a((String) obj);
            return zfb.a;
        }
    }

    public a(jd0 jd0Var, rx0 rx0Var) {
        this(jd0Var, rx0Var, new ok0(rx0Var));
    }

    public final void a(zd0<T> zd0Var) {
        this.c.setValue(this, e[0], zd0Var);
    }

    @Override
    public final void onAdImpression() {
        zd0 zd0Var;
        if (this.a.b() || (zd0Var = (zd0) this.c.getValue(this, e[0])) == null) {
            return;
        }
        this.a.b(zd0Var.e(), kotlin.collections.a.l());
        zd0Var.a(this.b.a());
    }

    @Override
    public final void onInterstitialClicked() {
        l7 l7VarJ;
        go1 go1Var = this.c;
        af5[] af5VarArr = e;
        zd0 zd0Var = (zd0) go1Var.getValue(this, af5VarArr[0]);
        if (zd0Var != null) {
            Context contextE = zd0Var.e();
            jd0 jd0Var = (jd0) this.d.getValue(this, af5VarArr[1]);
            if (jd0Var != null && (l7VarJ = jd0Var.j()) != null) {
                l7VarJ.a();
            }
            this.a.a(contextE, kotlin.collections.a.l());
        }
    }

    @Override
    public final void onInterstitialDismissed() {
        l7 l7VarJ;
        go1 go1Var = this.c;
        af5[] af5VarArr = e;
        zd0 zd0Var = (zd0) go1Var.getValue(this, af5VarArr[0]);
        if (zd0Var != null) {
            zd0Var.p();
        }
        jd0 jd0Var = (jd0) this.d.getValue(this, af5VarArr[1]);
        if (jd0Var == null || (l7VarJ = jd0Var.j()) == null) {
            return;
        }
        l7VarJ.b();
    }

    @Override
    public final void onInterstitialFailedToLoad(MediatedAdRequestError mediatedAdRequestError) {
        y45.j(mediatedAdRequestError, "adRequestError");
        jd0 jd0Var = (jd0) this.d.getValue(this, e[1]);
        if (jd0Var != null) {
            this.a.b(jd0Var.l(), new w3(mediatedAdRequestError.getCode(), mediatedAdRequestError.getDescription(), mediatedAdRequestError.getDescription(), null), this);
        }
    }

    @Override
    public final void onInterstitialLeftApplication() {
        zd0 zd0Var = (zd0) this.c.getValue(this, e[0]);
        if (zd0Var != null) {
            zd0Var.onLeftApplication();
        }
    }

    @Override
    public final void onInterstitialLoaded() {
        tx0 tx0VarA;
        go1 go1Var = this.d;
        af5[] af5VarArr = e;
        jd0 jd0Var = (jd0) go1Var.getValue(this, af5VarArr[1]);
        if (jd0Var != null) {
            qx0<T> qx0VarA = this.a.a();
            MediatedAdObject mediatedAdObjectA = (qx0VarA == 0 || (tx0VarA = qx0VarA.a()) == null) ? null : tx0VarA.a();
            if (mediatedAdObjectA != null) {
                jd0Var.a(mediatedAdObjectA.getAd(), mediatedAdObjectA.getInfo(), new C0193a(this), new b(this));
                return;
            }
            sp0.a(new Object[0]);
            jd0 jd0Var2 = (jd0) this.d.getValue(this, af5VarArr[1]);
            if (jd0Var2 != null) {
                this.a.c(jd0Var2.l(), kotlin.collections.a.l());
                jd0Var2.u();
            }
        }
    }

    @Override
    public final void onInterstitialShown() {
        zd0 zd0Var;
        go1 go1Var = this.c;
        af5[] af5VarArr = e;
        zd0 zd0Var2 = (zd0) go1Var.getValue(this, af5VarArr[0]);
        if (zd0Var2 != null) {
            zd0Var2.q();
            this.a.c(zd0Var2.e());
        }
        if (!this.a.b() || (zd0Var = (zd0) this.c.getValue(this, af5VarArr[0])) == null) {
            return;
        }
        this.a.b(zd0Var.e(), kotlin.collections.a.l());
        zd0Var.a(this.b.a());
    }

    public static final void a(a aVar) {
        jd0 jd0Var = (jd0) aVar.d.getValue(aVar, e[1]);
        if (jd0Var != null) {
            aVar.a.c(jd0Var.l(), kotlin.collections.a.l());
            jd0Var.u();
        }
    }

    public a(jd0<T> jd0Var, rx0<MediatedInterstitialAdapter, MediatedInterstitialAdapter.MediatedInterstitialAdapterListener> rx0Var, ok0 ok0Var) {
        y45.j(jd0Var, "loadController");
        y45.j(rx0Var, "mediatedAdController");
        y45.j(ok0Var, "impressionDataProvider");
        this.a = rx0Var;
        this.b = ok0Var;
        this.c = ho1.a(null);
        this.d = ho1.a(jd0Var);
    }
}
