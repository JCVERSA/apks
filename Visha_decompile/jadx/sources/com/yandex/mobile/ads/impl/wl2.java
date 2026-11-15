package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.banner.ClosableBannerAdEventListener;
import com.yandex.mobile.ads.common.AdRequestError;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class wl2 implements ys {
    private final ClosableBannerAdEventListener a;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            ClosableBannerAdEventListener closableBannerAdEventListener = wl2.this.a;
            if (closableBannerAdEventListener != null) {
                closableBannerAdEventListener.closeBannerAd();
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
            ClosableBannerAdEventListener closableBannerAdEventListener = wl2.this.a;
            if (closableBannerAdEventListener != null) {
                closableBannerAdEventListener.onAdClicked();
            }
            return zfb.a;
        }
    }

    public static final class c extends Lambda implements c74 {
        final AdRequestError c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(AdRequestError adRequestError) {
            super(0);
            this.c = adRequestError;
        }

        @Override
        public final Object invoke() {
            ClosableBannerAdEventListener closableBannerAdEventListener = wl2.this.a;
            if (closableBannerAdEventListener != null) {
                closableBannerAdEventListener.onAdFailedToLoad(this.c);
            }
            return zfb.a;
        }
    }

    public static final class d extends Lambda implements c74 {
        public d() {
            super(0);
        }

        @Override
        public final Object invoke() {
            ClosableBannerAdEventListener closableBannerAdEventListener = wl2.this.a;
            if (closableBannerAdEventListener != null) {
                closableBannerAdEventListener.onAdLoaded();
            }
            return zfb.a;
        }
    }

    public static final class e extends Lambda implements c74 {
        final yl2 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(yl2 yl2Var) {
            super(0);
            this.c = yl2Var;
        }

        @Override
        public final Object invoke() {
            ClosableBannerAdEventListener closableBannerAdEventListener = wl2.this.a;
            if (closableBannerAdEventListener != null) {
                closableBannerAdEventListener.onImpression(this.c);
            }
            return zfb.a;
        }
    }

    public static final class f extends Lambda implements c74 {
        public f() {
            super(0);
        }

        @Override
        public final Object invoke() {
            ClosableBannerAdEventListener closableBannerAdEventListener = wl2.this.a;
            if (closableBannerAdEventListener != null) {
                closableBannerAdEventListener.onLeftApplication();
            }
            return zfb.a;
        }
    }

    public static final class g extends Lambda implements c74 {
        public g() {
            super(0);
        }

        @Override
        public final Object invoke() {
            ClosableBannerAdEventListener closableBannerAdEventListener = wl2.this.a;
            if (closableBannerAdEventListener != null) {
                closableBannerAdEventListener.onReturnedToApplication();
            }
            return zfb.a;
        }
    }

    public wl2(ClosableBannerAdEventListener closableBannerAdEventListener) {
        this.a = closableBannerAdEventListener;
    }

    @Override
    public final void closeBannerAd() {
        new CallbackStackTraceMarker(new a());
    }

    @Override
    public final void onAdClicked() {
        new CallbackStackTraceMarker(new b());
    }

    @Override
    public final void onAdLoaded() {
        new CallbackStackTraceMarker(new d());
    }

    @Override
    public final void onLeftApplication() {
        new CallbackStackTraceMarker(new f());
    }

    @Override
    public final void onReturnedToApplication() {
        new CallbackStackTraceMarker(new g());
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        y45.j(w3Var, "error");
        new CallbackStackTraceMarker(new c(new AdRequestError(w3Var.b(), w3Var.d(), w3Var.a())));
    }

    @Override
    public final void a(t4 t4Var) {
        new CallbackStackTraceMarker(new e(t4Var != null ? new yl2(t4Var) : null));
    }
}
