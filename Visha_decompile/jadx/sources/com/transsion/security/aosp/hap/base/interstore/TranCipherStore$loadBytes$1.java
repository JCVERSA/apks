package com.transsion.security.aosp.hap.base.interstore;

import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
@nt1(c = "com.transsion.security.aosp.hap.base.interstore.TranCipherStore", f = "TranCipherStore.kt", l = {53}, m = "loadBytes")
public final class TranCipherStore$loadBytes$1 extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;
    final TranCipherStore this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TranCipherStore$loadBytes$1(TranCipherStore tranCipherStore, wh1<? super TranCipherStore$loadBytes$1> wh1Var) {
        super(wh1Var);
        this.this$0 = tranCipherStore;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.c(null, this);
    }
}
