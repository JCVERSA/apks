package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.nativeads.SliderAdLoadListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class hn2 implements ku {
    private final SliderAdLoadListener a;

    public static final class a extends Lambda implements c74 {
        final AdRequestError c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AdRequestError adRequestError) {
            super(0);
            this.c = adRequestError;
        }

        @Override
        public final Object invoke() {
            hn2.this.a.onSliderAdFailedToLoad(this.c);
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        final com.yandex.mobile.ads.nativeads.i c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(com.yandex.mobile.ads.nativeads.i iVar) {
            super(0);
            this.c = iVar;
        }

        @Override
        public final Object invoke() {
            hn2.this.a.onSliderAdLoaded(this.c);
            return zfb.a;
        }
    }

    public hn2(SliderAdLoadListener sliderAdLoadListener) {
        y45.j(sliderAdLoadListener, "loadListener");
        this.a = sliderAdLoadListener;
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        new CallbackStackTraceMarker(new a(new AdRequestError(w3Var.b(), w3Var.d(), w3Var.a())));
    }

    @Override
    public final void a(b02 b02Var) {
        y45.j(b02Var, "sliderAd");
        new CallbackStackTraceMarker(new b(new com.yandex.mobile.ads.nativeads.i(b02Var, new com.yandex.mobile.ads.nativeads.g())));
    }
}
