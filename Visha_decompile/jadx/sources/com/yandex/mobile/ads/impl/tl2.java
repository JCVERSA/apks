package com.yandex.mobile.ads.impl;

import defpackage.c74;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

final class tl2 extends Lambda implements c74 {
    final ul2 b;
    final String c = "Cannot load bidder token. Token generation failed";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tl2(ul2 ul2Var) {
        super(0);
        this.b = ul2Var;
    }

    @Override
    public final Object invoke() {
        this.b.a.onBidderTokenFailedToLoad(this.c);
        return zfb.a;
    }
}
