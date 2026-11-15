package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.base.MediatedAdRequestError;
import com.monetization.ads.mediation.base.model.MediatedAdObject;
import com.monetization.ads.mediation.rewarded.MediatedReward;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapter;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapterListener;
import defpackage.af5;
import defpackage.c74;
import defpackage.e74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference1Impl;

public final class js1 implements MediatedRewardedAdapterListener {
    static final af5[] e = {xq8.f(new MutablePropertyReference1Impl(js1.class, "contentController", "getContentController()Lcom/monetization/ads/rewarded/content/RewardedAdContentController;", 0)), ta.a(js1.class, "loadController", "getLoadController()Lcom/monetization/ads/fullscreen/FullScreenLoadController;", 0)};
    private final rx0<MediatedRewardedAdapter, MediatedRewardedAdapterListener> a;
    private final ok0 b;
    private final go1 c;
    private final go1 d;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            js1.a(js1.this);
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements e74 {
        public b() {
            super(1);
        }

        public final void a(String str) {
            y45.j(str, "errorDescription");
            js1.this.onRewardedAdFailedToLoad(new MediatedAdRequestError(1, "Ad is blocked by quality verification with reasons:  " + str));
        }

        @Override
        public final Object invoke(Object obj) {
            a((String) obj);
            return zfb.a;
        }
    }

    public js1(jd0 jd0Var, rx0 rx0Var) {
        this(jd0Var, rx0Var, new ok0(rx0Var));
    }

    public static final void a(js1 js1Var) {
        jd0 jd0Var = (jd0) js1Var.d.getValue(js1Var, e[1]);
        if (jd0Var != null) {
            js1Var.a.c(jd0Var.l(), kotlin.collections.a.l());
            jd0Var.u();
        }
    }

    @Override
    public final void onAdImpression() {
        bs1 bs1VarA;
        if (this.a.b() || (bs1VarA = a()) == null) {
            return;
        }
        this.a.b(bs1VarA.e(), kotlin.collections.a.l());
        bs1VarA.a(this.b.a());
    }

    @Override
    public final void onRewarded(MediatedReward mediatedReward) {
        bs1 bs1VarA = a();
        if (bs1VarA != null) {
            this.a.a(bs1VarA.e(), bs1VarA.d());
            bs1VarA.r();
        }
    }

    @Override
    public final void onRewardedAdClicked() {
        l7 l7VarJ;
        bs1 bs1VarA = a();
        if (bs1VarA != null) {
            Context contextE = bs1VarA.e();
            jd0 jd0Var = (jd0) this.d.getValue(this, e[1]);
            if (jd0Var != null && (l7VarJ = jd0Var.j()) != null) {
                l7VarJ.a();
            }
            this.a.a(contextE, kotlin.collections.a.l());
        }
    }

    @Override
    public final void onRewardedAdDismissed() {
        l7 l7VarJ;
        bs1 bs1VarA = a();
        if (bs1VarA != null) {
            bs1VarA.p();
        }
        jd0 jd0Var = (jd0) this.d.getValue(this, e[1]);
        if (jd0Var == null || (l7VarJ = jd0Var.j()) == null) {
            return;
        }
        l7VarJ.b();
    }

    @Override
    public final void onRewardedAdFailedToLoad(MediatedAdRequestError mediatedAdRequestError) {
        y45.j(mediatedAdRequestError, "error");
        jd0 jd0Var = (jd0) this.d.getValue(this, e[1]);
        if (jd0Var != null) {
            this.a.b(jd0Var.l(), new w3(mediatedAdRequestError.getCode(), mediatedAdRequestError.getDescription(), mediatedAdRequestError.getDescription(), null), this);
        }
    }

    @Override
    public final void onRewardedAdLeftApplication() {
        bs1 bs1VarA = a();
        if (bs1VarA != null) {
            bs1VarA.onLeftApplication();
        }
    }

    @Override
    public final void onRewardedAdLoaded() {
        tx0 tx0VarA;
        go1 go1Var = this.d;
        af5[] af5VarArr = e;
        jd0 jd0Var = (jd0) go1Var.getValue(this, af5VarArr[1]);
        if (jd0Var != null) {
            qx0<T> qx0VarA = this.a.a();
            MediatedAdObject mediatedAdObjectA = (qx0VarA == 0 || (tx0VarA = qx0VarA.a()) == null) ? null : tx0VarA.a();
            if (mediatedAdObjectA != null) {
                jd0Var.a(mediatedAdObjectA.getAd(), mediatedAdObjectA.getInfo(), new a(), new b());
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
    public final void onRewardedAdShown() {
        bs1 bs1VarA;
        bs1 bs1VarA2 = a();
        if (bs1VarA2 != null) {
            bs1VarA2.q();
            this.a.c(bs1VarA2.e());
        }
        if (!this.a.b() || (bs1VarA = a()) == null) {
            return;
        }
        this.a.b(bs1VarA.e(), kotlin.collections.a.l());
        bs1VarA.a(this.b.a());
    }

    public js1(jd0<bs1> jd0Var, rx0<MediatedRewardedAdapter, MediatedRewardedAdapterListener> rx0Var, ok0 ok0Var) {
        y45.j(jd0Var, "loadController");
        y45.j(rx0Var, "mediatedAdController");
        y45.j(ok0Var, "impressionDataProvider");
        this.a = rx0Var;
        this.b = ok0Var;
        this.c = ho1.a(null);
        this.d = ho1.a(jd0Var);
    }

    public final bs1 a() {
        return (bs1) this.c.getValue(this, e[0]);
    }

    public final void a(bs1 bs1Var) {
        this.c.setValue(this, e[0], bs1Var);
    }
}
