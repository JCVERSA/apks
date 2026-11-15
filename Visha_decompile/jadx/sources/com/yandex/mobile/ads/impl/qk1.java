package com.yandex.mobile.ads.impl;

import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.monetization.ads.base.mediation.prefetch.PrefetchedMediationNetworksDataLoader$loadNetworksMediationDataInternal$prefetchedMediationAdapterInfos$1", f = "PrefetchedMediationNetworksDataLoader.kt", l = {60}, m = "invokeSuspend")
final class qk1 extends SuspendLambda implements s74 {
    int b;
    final List<defpackage.d72> c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public qk1(List<? extends defpackage.d72> list, defpackage.wh1<? super qk1> wh1Var) {
        super(2, wh1Var);
        this.c = list;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        return new qk1(this.c, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return new qk1(this.c, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.b;
        if (i == 0) {
            kotlin.c.b(obj);
            List<defpackage.d72> list = this.c;
            this.b = 1;
            obj = defpackage.x30.a(list, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
        }
        return defpackage.i81.l0((Iterable) obj);
    }
}
