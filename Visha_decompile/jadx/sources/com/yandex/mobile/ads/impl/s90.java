package com.yandex.mobile.ads.impl;

import defpackage.u74;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.monetization.ads.feed.domain.FeedItemListUseCase$feedStateStateFlow$1", f = "FeedItemListUseCase.kt", l = {}, m = "invokeSuspend")
final class s90 extends SuspendLambda implements u74 {
    ea0 b;
    List c;

    public s90(defpackage.wh1<? super s90> wh1Var) {
        super(3, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        s90 s90Var = new s90((defpackage.wh1) obj3);
        s90Var.b = (ea0) obj;
        s90Var.c = (List) obj2;
        return s90Var.invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        kotlin.c.b(obj);
        return new la0(this.b, this.c);
    }
}
