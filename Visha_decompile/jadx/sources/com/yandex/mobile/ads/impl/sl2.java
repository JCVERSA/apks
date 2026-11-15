package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.banner.BannerAdEventListener;
import com.yandex.mobile.ads.common.AdRequestError;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class sl2 implements ys {
    private final BannerAdEventListener a;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            BannerAdEventListener bannerAdEventListener = sl2.this.a;
            if (bannerAdEventListener != null) {
                bannerAdEventListener.onAdClicked();
            }
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        final AdRequestError c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(AdRequestError adRequestError) {
            super(0);
            this.c = adRequestError;
        }

        @Override
        public final Object invoke() {
            BannerAdEventListener bannerAdEventListener = sl2.this.a;
            if (bannerAdEventListener != null) {
                bannerAdEventListener.onAdFailedToLoad(this.c);
            }
            return zfb.a;
        }
    }

    public static final class c extends Lambda implements c74 {
        public c() {
            super(0);
        }

        @Override
        public final Object invoke() {
            BannerAdEventListener bannerAdEventListener = sl2.this.a;
            if (bannerAdEventListener != null) {
                bannerAdEventListener.onAdLoaded();
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
            BannerAdEventListener bannerAdEventListener = sl2.this.a;
            if (bannerAdEventListener != null) {
                bannerAdEventListener.onImpression(this.c);
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
            BannerAdEventListener bannerAdEventListener = sl2.this.a;
            if (bannerAdEventListener != null) {
                bannerAdEventListener.onLeftApplication();
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
            BannerAdEventListener bannerAdEventListener = sl2.this.a;
            if (bannerAdEventListener != null) {
                bannerAdEventListener.onReturnedToApplication();
            }
            return zfb.a;
        }
    }

    public sl2(BannerAdEventListener bannerAdEventListener) {
        this.a = bannerAdEventListener;
    }

    @Override
    public final void closeBannerAd() {
    }

    @Override
    public final void onAdClicked() {
        new CallbackStackTraceMarker(new a());
    }

    @Override
    public final void onAdLoaded() {
        new CallbackStackTraceMarker(new c());
    }

    @Override
    public final void onLeftApplication() {
        new CallbackStackTraceMarker(new e());
    }

    @Override
    public final void onReturnedToApplication() {
        new CallbackStackTraceMarker(new f());
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        y45.j(w3Var, "error");
        new CallbackStackTraceMarker(new b(new AdRequestError(w3Var.b(), w3Var.d(), w3Var.a())));
    }

    @Override
    public final void a(t4 t4Var) {
        new CallbackStackTraceMarker(new d(t4Var != null ? new yl2(t4Var) : null));
    }
}
