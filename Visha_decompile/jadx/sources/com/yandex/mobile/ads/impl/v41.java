package com.yandex.mobile.ads.impl;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

@defpackage.nt1(c = "com.monetization.ads.nativeads.creator.videowrapper.NativeAdBlockVideoWrapperLoader", f = "NativeAdBlockVideoWrapperLoader.kt", l = {56}, m = "loadVideoWrapperAsset")
final class v41 extends ContinuationImpl {
    ig b;
    Object c;
    final w41 d;
    int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v41(w41 w41Var, defpackage.wh1<? super v41> wh1Var) {
        super(wh1Var);
        this.d = w41Var;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return w41.a(this.d, (ig) null, this);
    }
}
