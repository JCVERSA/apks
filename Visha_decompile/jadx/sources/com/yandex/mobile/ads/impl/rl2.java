package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.appopenad.AppOpenAdLoadListener;
import com.yandex.mobile.ads.common.AdRequestError;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class rl2 implements ws {
    private final AppOpenAdLoadListener a;

    public static final class a extends Lambda implements c74 {
        final AdRequestError c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AdRequestError adRequestError) {
            super(0);
            this.c = adRequestError;
        }

        @Override
        public final Object invoke() {
            AppOpenAdLoadListener appOpenAdLoadListener = rl2.this.a;
            if (appOpenAdLoadListener != null) {
                appOpenAdLoadListener.onAdFailedToLoad(this.c);
            }
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        final pl2 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(pl2 pl2Var) {
            super(0);
            this.c = pl2Var;
        }

        @Override
        public final Object invoke() {
            AppOpenAdLoadListener appOpenAdLoadListener = rl2.this.a;
            if (appOpenAdLoadListener != null) {
                appOpenAdLoadListener.onAdLoaded(this.c);
            }
            return zfb.a;
        }
    }

    public rl2(AppOpenAdLoadListener appOpenAdLoadListener) {
        this.a = appOpenAdLoadListener;
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        y45.j(w3Var, "error");
        new CallbackStackTraceMarker(new a(new AdRequestError(w3Var.b(), w3Var.d(), w3Var.a())));
    }

    @Override
    public final void a(us usVar) {
        y45.j(usVar, "appOpenAd");
        new CallbackStackTraceMarker(new b(new pl2(usVar, new jl2())));
    }
}
