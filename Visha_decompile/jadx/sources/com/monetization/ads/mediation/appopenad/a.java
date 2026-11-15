package com.monetization.ads.mediation.appopenad;

import com.monetization.ads.mediation.base.MediatedAdRequestError;
import com.yandex.mobile.ads.impl.jd0;
import com.yandex.mobile.ads.impl.ok0;
import com.yandex.mobile.ads.impl.rx0;
import com.yandex.mobile.ads.impl.w3;
import com.yandex.mobile.ads.impl.zd0;
import defpackage.y45;
import java.lang.ref.WeakReference;

public final class a<T extends zd0<T>> implements MediatedAppOpenAdAdapter.MediatedAppOpenAdAdapterListener {
    private final rx0<MediatedAppOpenAdAdapter, MediatedAppOpenAdAdapter.MediatedAppOpenAdAdapterListener> a;
    private final WeakReference<jd0<T>> b;
    private WeakReference<zd0<T>> c;
    private final ok0 d;

    public a(jd0<T> jd0Var, rx0<MediatedAppOpenAdAdapter, MediatedAppOpenAdAdapter.MediatedAppOpenAdAdapterListener> rx0Var) {
        y45.j(jd0Var, "loadController");
        y45.j(rx0Var, "mediatedAdController");
        this.a = rx0Var;
        this.b = new WeakReference<>(jd0Var);
        this.c = new WeakReference<>(null);
        this.d = new ok0(rx0Var);
    }

    public final void a(zd0<T> zd0Var) {
        y45.j(zd0Var, "controller");
        this.c = new WeakReference<>(zd0Var);
    }

    @Override
    public final void onAdImpression() {
        zd0<T> zd0Var;
        if (this.a.b() || (zd0Var = this.c.get()) == null) {
            return;
        }
        this.a.b(zd0Var.e(), kotlin.collections.a.l());
        zd0Var.a(this.d.a());
    }

    @Override
    public final void onAppOpenAdClicked() {
        zd0<T> zd0Var = this.c.get();
        if (zd0Var != null) {
            this.a.a(zd0Var.e(), kotlin.collections.a.l());
        }
    }

    @Override
    public final void onAppOpenAdDismissed() {
        zd0<T> zd0Var = this.c.get();
        if (zd0Var != null) {
            zd0Var.p();
        }
    }

    @Override
    public final void onAppOpenAdFailedToLoad(MediatedAdRequestError mediatedAdRequestError) {
        y45.j(mediatedAdRequestError, "error");
        jd0<T> jd0Var = this.b.get();
        if (jd0Var != null) {
            this.a.b(jd0Var.l(), new w3(mediatedAdRequestError.getCode(), mediatedAdRequestError.getDescription(), mediatedAdRequestError.getDescription(), null), this);
        }
    }

    @Override
    public final void onAppOpenAdLeftApplication() {
        zd0<T> zd0Var = this.c.get();
        if (zd0Var != null) {
            zd0Var.onLeftApplication();
        }
    }

    @Override
    public final void onAppOpenAdLoaded() {
        jd0<T> jd0Var = this.b.get();
        if (jd0Var != null) {
            this.a.c(jd0Var.l(), kotlin.collections.a.l());
            jd0Var.u();
        }
    }

    @Override
    public final void onAppOpenAdShown() {
        zd0<T> zd0Var;
        zd0<T> zd0Var2 = this.c.get();
        if (zd0Var2 != null) {
            zd0Var2.q();
            this.a.c(zd0Var2.e());
        }
        if (!this.a.b() || (zd0Var = this.c.get()) == null) {
            return;
        }
        this.a.b(zd0Var.e(), kotlin.collections.a.l());
        zd0Var.a(this.d.a());
    }
}
