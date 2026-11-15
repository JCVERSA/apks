package com.yandex.mobile.ads.impl;

import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.monetization.ads.base.dns.DnsPrefetcher$prefetchUrlList$2", f = "DnsPrefetcher.kt", l = {}, m = "invokeSuspend")
final class s30 extends SuspendLambda implements s74 {
    private Object b;
    final List<String> c;
    final r30 d;

    @defpackage.nt1(c = "com.monetization.ads.base.dns.DnsPrefetcher$prefetchUrlList$2$1$1", f = "DnsPrefetcher.kt", l = {}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        final r30 b;
        final String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(r30 r30Var, String str, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.b = r30Var;
            this.c = str;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new a(this.b, this.c, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return new a(this.b, this.c, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            kotlin.c.b(obj);
            this.b.a(this.c);
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s30(r30 r30Var, List list, defpackage.wh1 wh1Var) {
        super(2, wh1Var);
        this.c = list;
        this.d = r30Var;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        s30 s30Var = new s30(this.d, this.c, wh1Var);
        s30Var.b = obj;
        return s30Var;
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((s30) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        kotlin.c.b(obj);
        defpackage.nk1 nk1Var = (defpackage.nk1) this.b;
        List<String> list = this.c;
        r30 r30Var = this.d;
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            defpackage.el0.d(nk1Var, null, null, new a(r30Var, (String) it.next(), null), 3, null);
        }
        return zfb.a;
    }
}
