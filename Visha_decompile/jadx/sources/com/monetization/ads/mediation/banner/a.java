package com.monetization.ads.mediation.banner;

import android.content.Context;
import android.view.View;
import com.monetization.ads.mediation.base.MediatedAdRequestError;
import com.monetization.ads.mediation.base.model.MediatedAdObject;
import com.yandex.mobile.ads.impl.aj;
import com.yandex.mobile.ads.impl.go1;
import com.yandex.mobile.ads.impl.ho1;
import com.yandex.mobile.ads.impl.ok0;
import com.yandex.mobile.ads.impl.qx0;
import com.yandex.mobile.ads.impl.rx0;
import com.yandex.mobile.ads.impl.sp0;
import com.yandex.mobile.ads.impl.ta;
import com.yandex.mobile.ads.impl.tx0;
import com.yandex.mobile.ads.impl.w3;
import defpackage.af5;
import defpackage.c74;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class a implements MediatedBannerAdapter.MediatedBannerAdapterListener {
    static final af5[] f = {ta.a(a.class, "loadController", "getLoadController()Lcom/monetization/ads/banner/BannerAdLoadController;", 0)};
    private final rx0<MediatedBannerAdapter, MediatedBannerAdapter.MediatedBannerAdapterListener> a;
    private final d b;
    private final ok0 c;
    private final go1 d;
    private boolean e;

    public final class C0192a implements d.a {
        public C0192a() {
        }

        @Override
        public final void a() {
            aj ajVarA = a.this.a();
            if (ajVarA != null) {
                a.this.a.c(ajVarA.l());
            }
            if (a.this.a.b()) {
                a.c(a.this);
            }
        }
    }

    public static final class b extends Lambda implements c74 {
        final View c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(View view) {
            super(0);
            this.c = view;
        }

        @Override
        public final Object invoke() {
            a.this.a(this.c);
            return zfb.a;
        }
    }

    public static final class c extends Lambda implements e74 {
        public c() {
            super(1);
        }

        public final void a(String str) {
            y45.j(str, "errorDescription");
            a.this.onAdFailedToLoad(new MediatedAdRequestError(1, "Ad is blocked by quality verification with reasons:  " + str));
        }

        @Override
        public final Object invoke(Object obj) {
            a((String) obj);
            return zfb.a;
        }
    }

    public a(aj ajVar, rx0 rx0Var, d dVar) {
        this(ajVar, rx0Var, dVar, new ok0(rx0Var));
    }

    public static final void c(a aVar) {
        aj ajVarA = aVar.a();
        if (ajVarA != null) {
            aVar.a.b(ajVarA.l(), kotlin.collections.a.l());
            ajVarA.a(aVar.c.a());
        }
    }

    @Override
    public final void onAdClicked() {
        aj ajVarA = a();
        if (ajVarA != null) {
            ajVarA.j().a();
            this.a.a(ajVarA.l(), kotlin.collections.a.l());
        }
    }

    @Override
    public final void onAdFailedToLoad(MediatedAdRequestError mediatedAdRequestError) {
        y45.j(mediatedAdRequestError, "adRequestError");
        aj ajVarA = a();
        if (ajVarA != null) {
            Context contextL = ajVarA.l();
            w3 w3Var = new w3(mediatedAdRequestError.getCode(), mediatedAdRequestError.getDescription(), mediatedAdRequestError.getDescription(), null);
            if (this.e) {
                this.a.a(contextL, w3Var, this);
            } else {
                this.a.b(contextL, w3Var, this);
            }
        }
    }

    @Override
    public final void onAdImpression() {
        aj ajVarA;
        if (this.a.b() || (ajVarA = a()) == null) {
            return;
        }
        this.a.b(ajVarA.l(), kotlin.collections.a.l());
        ajVarA.a(this.c.a());
    }

    @Override
    public final void onAdLeftApplication() {
        aj ajVarA = a();
        if (ajVarA != null) {
            ajVarA.onLeftApplication();
        }
    }

    @Override
    public final void onAdLoaded(View view) {
        tx0 tx0VarA;
        y45.j(view, "view");
        aj ajVarA = a();
        if (ajVarA != null) {
            qx0<T> qx0VarA = this.a.a();
            MediatedAdObject mediatedAdObjectA = (qx0VarA == 0 || (tx0VarA = qx0VarA.a()) == null) ? null : tx0VarA.a();
            if (mediatedAdObjectA != null) {
                ajVarA.a(mediatedAdObjectA.getAd(), mediatedAdObjectA.getInfo(), new b(view), new c());
            } else {
                sp0.a(new Object[0]);
                a(view);
            }
        }
    }

    public final aj a() {
        return (aj) this.d.getValue(this, f[0]);
    }

    public a(aj ajVar, rx0<MediatedBannerAdapter, MediatedBannerAdapter.MediatedBannerAdapterListener> rx0Var, d dVar, ok0 ok0Var) {
        y45.j(ajVar, "loadController");
        y45.j(rx0Var, "mediatedAdController");
        y45.j(dVar, "mediatedContentViewPublisher");
        y45.j(ok0Var, "impressionDataProvider");
        this.a = rx0Var;
        this.b = dVar;
        this.c = ok0Var;
        this.d = ho1.a(ajVar);
    }

    public final void a(View view) {
        aj ajVarA = a();
        if (ajVarA != null) {
            Context context = view.getContext();
            y45.i(context, "getContext(...)");
            if (!this.e) {
                this.e = true;
                this.a.c(context, kotlin.collections.a.l());
            } else {
                this.a.b(context);
            }
            C0192a c0192a = new C0192a();
            ajVarA.j().c();
            this.b.a(view, c0192a);
            ajVarA.u();
        }
    }
}
