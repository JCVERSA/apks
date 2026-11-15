package com.transsion.cloud.share;

import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@nt1(c = "com.transsion.cloud.share.KtShareLinkHandleManager", f = "KtShareLinkHandleManager.kt", l = {525}, m = "fetchFileShareInfo")
public final class KtShareLinkHandleManager$fetchFileShareInfo$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    Object result;
    final KtShareLinkHandleManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KtShareLinkHandleManager$fetchFileShareInfo$1(KtShareLinkHandleManager ktShareLinkHandleManager, wh1<? super KtShareLinkHandleManager$fetchFileShareInfo$1> wh1Var) {
        super(wh1Var);
        this.this$0 = ktShareLinkHandleManager;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.f(null, null, null, null, this);
    }
}
