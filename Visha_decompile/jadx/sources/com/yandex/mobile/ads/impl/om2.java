package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.interstitial.InterstitialAdLoadListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class om2 implements pt {
    private final InterstitialAdLoadListener a;

    public static final class a extends Lambda implements c74 {
        final AdRequestError c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AdRequestError adRequestError) {
            super(0);
            this.c = adRequestError;
        }

        @Override
        public final Object invoke() {
            InterstitialAdLoadListener interstitialAdLoadListener = om2.this.a;
            if (interstitialAdLoadListener != null) {
                interstitialAdLoadListener.onAdFailedToLoad(this.c);
            }
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        final mm2 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(mm2 mm2Var) {
            super(0);
            this.c = mm2Var;
        }

        @Override
        public final Object invoke() {
            InterstitialAdLoadListener interstitialAdLoadListener = om2.this.a;
            if (interstitialAdLoadListener != null) {
                interstitialAdLoadListener.onAdLoaded(this.c);
            }
            return zfb.a;
        }
    }

    public om2(InterstitialAdLoadListener interstitialAdLoadListener) {
        this.a = interstitialAdLoadListener;
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        y45.j(w3Var, "error");
        new CallbackStackTraceMarker(new a(new AdRequestError(w3Var.b(), w3Var.d(), w3Var.a())));
    }

    @Override
    public final void a(nt ntVar) {
        y45.j(ntVar, "interstitialAd");
        new CallbackStackTraceMarker(new b(new mm2(ntVar, new jl2())));
    }
}
