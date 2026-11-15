package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.instream.InstreamAdLoadListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class gm2 implements jt {
    private final InstreamAdLoadListener a;

    public static final class a extends Lambda implements c74 {
        final String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str) {
            super(0);
            this.c = str;
        }

        @Override
        public final Object invoke() {
            gm2.this.a.onInstreamAdFailedToLoad(this.c);
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        final am2 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(am2 am2Var) {
            super(0);
            this.c = am2Var;
        }

        @Override
        public final Object invoke() {
            gm2.this.a.onInstreamAdLoaded(this.c);
            return zfb.a;
        }
    }

    public gm2(InstreamAdLoadListener instreamAdLoadListener) {
        y45.j(instreamAdLoadListener, "yandexAdLoadListener");
        this.a = instreamAdLoadListener;
    }

    @Override
    public final void onInstreamAdFailedToLoad(String str) {
        y45.j(str, "reason");
        new CallbackStackTraceMarker(new a(str));
    }

    @Override
    public final void a(et etVar) {
        y45.j(etVar, "instreamAd");
        new CallbackStackTraceMarker(new b(new am2(etVar)));
    }
}
