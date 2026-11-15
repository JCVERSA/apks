package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.instream.InstreamAdListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class fm2 implements sl0 {
    private final InstreamAdListener a;

    public static final class a extends Lambda implements c74 {
        final String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str) {
            super(0);
            this.c = str;
        }

        @Override
        public final Object invoke() {
            fm2.this.a.onError(this.c);
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        public b() {
            super(0);
        }

        @Override
        public final Object invoke() {
            fm2.this.a.onInstreamAdCompleted();
            return zfb.a;
        }
    }

    public static final class c extends Lambda implements c74 {
        public c() {
            super(0);
        }

        @Override
        public final Object invoke() {
            fm2.this.a.onInstreamAdPrepared();
            return zfb.a;
        }
    }

    public fm2(InstreamAdListener instreamAdListener) {
        y45.j(instreamAdListener, "instreamAdListener");
        this.a = instreamAdListener;
    }

    @Override
    public final void onError(String str) {
        y45.j(str, "reason");
        new CallbackStackTraceMarker(new a(str));
    }

    @Override
    public final void onInstreamAdCompleted() {
        new CallbackStackTraceMarker(new b());
    }

    @Override
    public final void onInstreamAdPrepared() {
        new CallbackStackTraceMarker(new c());
    }
}
