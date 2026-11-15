package com.yandex.mobile.ads.impl;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

@defpackage.nt1(c = "com.monetization.ads.feed.domain.FeedItemListUseCase", f = "FeedItemListUseCase.kt", l = {54}, m = "loadMore")
final class u90 extends ContinuationImpl {
    t90 b;
    Object c;
    final t90 d;
    int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u90(t90 t90Var, defpackage.wh1<? super u90> wh1Var) {
        super(wh1Var);
        this.d = t90Var;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.c = obj;
        this.e |= Integer.MIN_VALUE;
        return t90.a(this.d, this);
    }
}
