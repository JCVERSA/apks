package com.yandex.mobile.ads.impl;

import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.monetization.ads.nativeads.creator.videowrapper.NativeWrapperVideoLoader$loadWrapperWithVideoAdsInfo$2", f = "NativeWrapperVideoLoader.kt", l = {48}, m = "invokeSuspend")
final class oc1 extends SuspendLambda implements s74 {
    int b;
    private Object c;
    final List<zb2<kb1>> d;
    final pc1 e;

    @defpackage.nt1(c = "com.monetization.ads.nativeads.creator.videowrapper.NativeWrapperVideoLoader$loadWrapperWithVideoAdsInfo$2$1$1", f = "NativeWrapperVideoLoader.kt", l = {44}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        int b;
        final pc1 c;
        final zb2<kb1> d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(pc1 pc1Var, zb2<kb1> zb2Var, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.c = pc1Var;
            this.d = zb2Var;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new a(this.c, this.d, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return new a(this.c, this.d, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                pc1 pc1Var = this.c;
                List listE = defpackage.x71.e(this.d);
                this.b = 1;
                obj = pc1.a(pc1Var, listE, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oc1(pc1 pc1Var, List list, defpackage.wh1 wh1Var) {
        super(2, wh1Var);
        this.d = list;
        this.e = pc1Var;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        oc1 oc1Var = new oc1(this.e, this.d, wh1Var);
        oc1Var.c = obj;
        return oc1Var;
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((oc1) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.b;
        if (i == 0) {
            kotlin.c.b(obj);
            defpackage.nk1 nk1Var = (defpackage.nk1) this.c;
            List<zb2<kb1>> list = this.d;
            pc1 pc1Var = this.e;
            ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                zb2 zb2Var = (zb2) it.next();
                arrayList.add(zb2Var.g().o() ? defpackage.el0.b(nk1Var, null, null, new a(pc1Var, zb2Var, null), 3, null) : defpackage.kb1.a(defpackage.x71.e(zb2Var)));
            }
            this.b = 1;
            obj = defpackage.x30.a(arrayList, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
        }
        return defpackage.z71.x((Iterable) obj);
    }
}
