package com.yandex.mobile.ads.impl;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

@defpackage.nt1(c = "com.monetization.ads.nativeads.creator.videowrapper.NativeWrapperVideoLoader", f = "NativeWrapperVideoLoader.kt", l = {54}, m = "loadWrapperVideoAdsInfo")
final class nc1 extends ContinuationImpl {
    pc1 b;
    Object c;
    final pc1 d;
    int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nc1(pc1 pc1Var, defpackage.wh1<? super nc1> wh1Var) {
        super(wh1Var);
        this.d = pc1Var;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return pc1.a(this.d, null, this);
    }
}
