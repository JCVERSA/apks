package com.yandex.mobile.ads.impl;

import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.monetization.ads.nativeads.creator.NativeAdCreationManager$NativeAdCreationRunnable$ResourcesLoaderListener$onLoaded$1", f = "NativeAdCreationManager.kt", l = {}, m = "invokeSuspend")
final class h51 extends SuspendLambda implements s74 {
    final i51 b;
    final s41 c;
    final sj0 d;
    final i51.a e;
    final i51.a.C0319a f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h51(i51 i51Var, s41 s41Var, sj0 sj0Var, i51.a aVar, i51.a.C0319a c0319a, defpackage.wh1<? super h51> wh1Var) {
        super(2, wh1Var);
        this.b = i51Var;
        this.c = s41Var;
        this.d = sj0Var;
        this.e = aVar;
        this.f = c0319a;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        return new h51(this.b, this.c, this.d, this.e, this.f, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((h51) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        kotlin.c.b(obj);
        this.b.e.a(this.b.d, this.c, this.d, this.e.d, this.f.a);
        return zfb.a;
    }
}
