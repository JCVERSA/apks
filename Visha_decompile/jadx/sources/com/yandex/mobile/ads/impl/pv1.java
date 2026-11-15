package com.yandex.mobile.ads.impl;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.mozilla.classfile.ByteCode;

@defpackage.nt1(c = "com.monetization.ads.core.initializer.SdkInitializer", f = "SdkInitializer.kt", l = {ByteCode.DRETURN}, m = "detectAdBlocker")
final class pv1 extends ContinuationImpl {
    g5 b;
    f5 c;
    Object d;
    final ov1 e;
    int f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pv1(ov1 ov1Var, defpackage.wh1<? super pv1> wh1Var) {
        super(wh1Var);
        this.e = ov1Var;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f |= Integer.MIN_VALUE;
        return ov1.a(this.e, this);
    }
}
