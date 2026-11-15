package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.rewarded.RewardedAdLoadListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class dn2 implements iu {
    private final RewardedAdLoadListener a;

    public static final class a extends Lambda implements c74 {
        final AdRequestError c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AdRequestError adRequestError) {
            super(0);
            this.c = adRequestError;
        }

        @Override
        public final Object invoke() {
            RewardedAdLoadListener rewardedAdLoadListener = dn2.this.a;
            if (rewardedAdLoadListener != null) {
                rewardedAdLoadListener.onAdFailedToLoad(this.c);
            }
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        final bn2 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(bn2 bn2Var) {
            super(0);
            this.c = bn2Var;
        }

        @Override
        public final Object invoke() {
            RewardedAdLoadListener rewardedAdLoadListener = dn2.this.a;
            if (rewardedAdLoadListener != null) {
                rewardedAdLoadListener.onAdLoaded(this.c);
            }
            return zfb.a;
        }
    }

    public dn2(RewardedAdLoadListener rewardedAdLoadListener) {
        this.a = rewardedAdLoadListener;
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        y45.j(w3Var, "error");
        new CallbackStackTraceMarker(new a(new AdRequestError(w3Var.b(), w3Var.d(), w3Var.a())));
    }

    @Override
    public final void a(gu guVar) {
        y45.j(guVar, "rewarded");
        new CallbackStackTraceMarker(new b(new bn2(guVar, new jl2())));
    }
}
