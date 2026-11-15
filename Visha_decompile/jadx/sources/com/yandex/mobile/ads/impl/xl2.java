package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.nativeads.ClosableNativeAdEventListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class xl2 implements st {
    private final ClosableNativeAdEventListener a;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            xl2.this.a.closeNativeAd();
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        public b() {
            super(0);
        }

        @Override
        public final Object invoke() {
            xl2.this.a.onAdClicked();
            return zfb.a;
        }
    }

    public static final class c extends Lambda implements c74 {
        final yl2 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(yl2 yl2Var) {
            super(0);
            this.c = yl2Var;
        }

        @Override
        public final Object invoke() {
            xl2.this.a.onImpression(this.c);
            return zfb.a;
        }
    }

    public static final class d extends Lambda implements c74 {
        public d() {
            super(0);
        }

        @Override
        public final Object invoke() {
            xl2.this.a.onLeftApplication();
            return zfb.a;
        }
    }

    public static final class e extends Lambda implements c74 {
        public e() {
            super(0);
        }

        @Override
        public final Object invoke() {
            xl2.this.a.onReturnedToApplication();
            return zfb.a;
        }
    }

    public xl2(ClosableNativeAdEventListener closableNativeAdEventListener) {
        y45.j(closableNativeAdEventListener, "adEventListener");
        this.a = closableNativeAdEventListener;
    }

    @Override
    public final void closeNativeAd() {
        new CallbackStackTraceMarker(new a());
    }

    @Override
    public final void onAdClicked() {
        new CallbackStackTraceMarker(new b());
    }

    @Override
    public final void onLeftApplication() {
        new CallbackStackTraceMarker(new d());
    }

    @Override
    public final void onReturnedToApplication() {
        new CallbackStackTraceMarker(new e());
    }

    @Override
    public final void a(t4 t4Var) {
        new CallbackStackTraceMarker(new c(t4Var != null ? new yl2(t4Var) : null));
    }
}
