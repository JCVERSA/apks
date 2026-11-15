package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.common.BidderTokenLoadListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

public final class ul2 implements at {
    private final BidderTokenLoadListener a;

    public static final class a extends Lambda implements c74 {
        final String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str) {
            super(0);
            this.c = str;
        }

        @Override
        public final Object invoke() {
            ul2.this.a.onBidderTokenLoaded(this.c);
            return zfb.a;
        }
    }

    public ul2(BidderTokenLoadListener bidderTokenLoadListener) {
        y45.j(bidderTokenLoadListener, "bidderTokenLoadListener");
        this.a = bidderTokenLoadListener;
    }

    @Override
    public final void onBidderTokenLoaded(String str) {
        y45.j(str, "bidderToken");
        new CallbackStackTraceMarker(new a(str));
    }

    @Override
    public final void a() {
        y45.j("Cannot load bidder token. Token generation failed", "failureReason");
        new CallbackStackTraceMarker(new tl2(this));
    }
}
