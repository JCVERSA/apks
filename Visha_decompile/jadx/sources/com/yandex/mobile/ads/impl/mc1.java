package com.yandex.mobile.ads.impl;

import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.monetization.ads.nativeads.creator.videowrapper.NativeWrapperVideoLoader$loadWrapperInVideo$2", f = "NativeWrapperVideoLoader.kt", l = {36}, m = "invokeSuspend")
final class mc1 extends SuspendLambda implements s74 {
    lb2 b;
    int c;
    final lb2 d;
    final pc1 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mc1(lb2 lb2Var, pc1 pc1Var, defpackage.wh1<? super mc1> wh1Var) {
        super(2, wh1Var);
        this.d = lb2Var;
        this.e = pc1Var;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        return new mc1(this.d, this.e, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return new mc1(this.d, this.e, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        lb2 lb2Var;
        Object objF = z45.f();
        int i = this.c;
        if (i == 0) {
            kotlin.c.b(obj);
            lb2 lb2Var2 = this.d;
            if (lb2Var2 == null) {
                return null;
            }
            pc1 pc1Var = this.e;
            List<zb2<kb1>> listC = lb2Var2.c();
            this.b = lb2Var2;
            this.c = 1;
            pc1Var.getClass();
            Object objG = defpackage.cl0.g(qu.a(), new oc1(pc1Var, listC, null), this);
            if (objG == objF) {
                return objF;
            }
            obj = objG;
            lb2Var = lb2Var2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            lb2Var = this.b;
            kotlin.c.b(obj);
        }
        return lb2.a(lb2Var, (List) obj);
    }
}
