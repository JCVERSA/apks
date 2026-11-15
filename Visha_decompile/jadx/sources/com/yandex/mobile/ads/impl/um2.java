package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.nativeads.NativeAdLoadListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class um2 implements vt {
    private final NativeAdLoadListener a;

    public static final class a extends Lambda implements c74 {
        final AdRequestError c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AdRequestError adRequestError) {
            super(0);
            this.c = adRequestError;
        }

        @Override
        public final Object invoke() {
            um2.this.a.onAdFailedToLoad(this.c);
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        final com.yandex.mobile.ads.nativeads.e c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(com.yandex.mobile.ads.nativeads.e eVar) {
            super(0);
            this.c = eVar;
        }

        @Override
        public final Object invoke() {
            um2.this.a.onAdLoaded(this.c);
            return zfb.a;
        }
    }

    public static final class c extends Lambda implements c74 {
        final com.yandex.mobile.ads.nativeads.e c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(com.yandex.mobile.ads.nativeads.e eVar) {
            super(0);
            this.c = eVar;
        }

        @Override
        public final Object invoke() {
            um2.this.a.onAdLoaded(this.c);
            return zfb.a;
        }
    }

    public um2(NativeAdLoadListener nativeAdLoadListener) {
        y45.j(nativeAdLoadListener, "nativeAdLoadListener");
        this.a = nativeAdLoadListener;
    }

    @Override
    public final void b(q61 q61Var) {
        y45.j(q61Var, "nativeAd");
        new CallbackStackTraceMarker(new c(new com.yandex.mobile.ads.nativeads.e(q61Var)));
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        new CallbackStackTraceMarker(new a(new AdRequestError(w3Var.b(), w3Var.d(), w3Var.a())));
    }

    @Override
    public final void a(q61 q61Var) {
        y45.j(q61Var, "nativeAd");
        new CallbackStackTraceMarker(new b(new com.yandex.mobile.ads.nativeads.e(q61Var)));
    }
}
