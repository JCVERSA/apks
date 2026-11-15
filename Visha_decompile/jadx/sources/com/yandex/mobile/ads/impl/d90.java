package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.feed.FeedAdLoadListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class d90 implements bt {
    private final FeedAdLoadListener a;

    public static final class a extends Lambda implements c74 {
        final AdRequestError c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AdRequestError adRequestError) {
            super(0);
            this.c = adRequestError;
        }

        @Override
        public final Object invoke() {
            FeedAdLoadListener feedAdLoadListener = d90.this.a;
            if (feedAdLoadListener != null) {
                feedAdLoadListener.onAdFailedToLoad(this.c);
            }
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        public b() {
            super(0);
        }

        @Override
        public final Object invoke() {
            FeedAdLoadListener feedAdLoadListener = d90.this.a;
            if (feedAdLoadListener != null) {
                feedAdLoadListener.onAdLoaded();
            }
            return zfb.a;
        }
    }

    public d90(FeedAdLoadListener feedAdLoadListener) {
        this.a = feedAdLoadListener;
    }

    @Override
    public final void onAdLoaded() {
        new CallbackStackTraceMarker(new b());
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        y45.j(w3Var, "error");
        new CallbackStackTraceMarker(new a(new AdRequestError(w3Var.b(), w3Var.d(), w3Var.a())));
    }
}
