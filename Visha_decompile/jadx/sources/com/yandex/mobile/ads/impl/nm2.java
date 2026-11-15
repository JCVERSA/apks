package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.interstitial.InterstitialAdEventListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class nm2 implements ot {
    private final InterstitialAdEventListener a;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            InterstitialAdEventListener interstitialAdEventListener = nm2.this.a;
            if (interstitialAdEventListener != null) {
                interstitialAdEventListener.onAdClicked();
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
            InterstitialAdEventListener interstitialAdEventListener = nm2.this.a;
            if (interstitialAdEventListener != null) {
                interstitialAdEventListener.onAdDismissed();
            }
            return zfb.a;
        }
    }

    public static final class c extends Lambda implements c74 {
        final il2 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(il2 il2Var) {
            super(0);
            this.c = il2Var;
        }

        @Override
        public final Object invoke() {
            InterstitialAdEventListener interstitialAdEventListener = nm2.this.a;
            if (interstitialAdEventListener != null) {
                interstitialAdEventListener.onAdFailedToShow(this.c);
            }
            return zfb.a;
        }
    }

    public static final class d extends Lambda implements c74 {
        final yl2 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(yl2 yl2Var) {
            super(0);
            this.c = yl2Var;
        }

        @Override
        public final Object invoke() {
            InterstitialAdEventListener interstitialAdEventListener = nm2.this.a;
            if (interstitialAdEventListener != null) {
                interstitialAdEventListener.onAdImpression(this.c);
            }
            return zfb.a;
        }
    }

    public static final class e extends Lambda implements c74 {
        public e() {
            super(0);
        }

        @Override
        public final Object invoke() {
            InterstitialAdEventListener interstitialAdEventListener = nm2.this.a;
            if (interstitialAdEventListener != null) {
                interstitialAdEventListener.onAdShown();
            }
            return zfb.a;
        }
    }

    public nm2(InterstitialAdEventListener interstitialAdEventListener) {
        this.a = interstitialAdEventListener;
    }

    @Override
    public final void onAdClicked() {
        new CallbackStackTraceMarker(new a());
    }

    @Override
    public final void onAdDismissed() {
        new CallbackStackTraceMarker(new b());
    }

    @Override
    public final void onAdShown() {
        new CallbackStackTraceMarker(new e());
    }

    @Override
    public final void a(ky1 ky1Var) {
        y45.j(ky1Var, "adError");
        new CallbackStackTraceMarker(new c(new il2(ky1Var.a())));
    }

    @Override
    public final void a(t4 t4Var) {
        new CallbackStackTraceMarker(new d(t4Var != null ? new yl2(t4Var) : null));
    }
}
