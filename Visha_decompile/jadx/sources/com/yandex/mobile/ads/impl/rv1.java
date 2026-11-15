package com.yandex.mobile.ads.impl;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

@defpackage.nt1(c = "com.monetization.ads.core.initializer.SdkInitializer", f = "SdkInitializer.kt", l = {189}, m = "requestAdvertisingInfo")
final class rv1 extends ContinuationImpl {
    ov1 b;
    g5 c;
    f5 d;
    Object e;
    final ov1 f;
    int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rv1(ov1 ov1Var, defpackage.wh1<? super rv1> wh1Var) {
        super(wh1Var);
        this.f = ov1Var;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.e = obj;
        this.g |= Integer.MIN_VALUE;
        return ov1.b(this.f, this);
    }
}
