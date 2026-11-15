package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.instream.InstreamAdBreakEventListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class cm2 implements ot0 {
    private final InstreamAdBreakEventListener a;

    public static final class a extends Lambda implements c74 {
        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            cm2.this.a.onInstreamAdBreakCompleted();
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        final String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str) {
            super(0);
            this.c = str;
        }

        @Override
        public final Object invoke() {
            cm2.this.a.onInstreamAdBreakError(this.c);
            return zfb.a;
        }
    }

    public static final class c extends Lambda implements c74 {
        public c() {
            super(0);
        }

        @Override
        public final Object invoke() {
            cm2.this.a.onInstreamAdBreakPrepared();
            return zfb.a;
        }
    }

    public static final class d extends Lambda implements c74 {
        public d() {
            super(0);
        }

        @Override
        public final Object invoke() {
            cm2.this.a.onInstreamAdBreakStarted();
            return zfb.a;
        }
    }

    public cm2(InstreamAdBreakEventListener instreamAdBreakEventListener) {
        y45.j(instreamAdBreakEventListener, "adBreakEventListener");
        this.a = instreamAdBreakEventListener;
    }

    @Override
    public final void onInstreamAdBreakCompleted() {
        new CallbackStackTraceMarker(new a());
    }

    @Override
    public final void onInstreamAdBreakError(String str) {
        y45.j(str, "reason");
        new CallbackStackTraceMarker(new b(str));
    }

    @Override
    public final void onInstreamAdBreakPrepared() {
        new CallbackStackTraceMarker(new c());
    }

    @Override
    public final void onInstreamAdBreakStarted() {
        new CallbackStackTraceMarker(new d());
    }
}
