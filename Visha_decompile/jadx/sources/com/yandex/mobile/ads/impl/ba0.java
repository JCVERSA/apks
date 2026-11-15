package com.yandex.mobile.ads.impl;

import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

public final class ba0 {
    private final l90 a;

    @defpackage.nt1(c = "com.monetization.ads.feed.data.preloader.FeedItemPreloadDataSource$prepareLoadedAd$2", f = "FeedItemPreloadDataSource.kt", l = {}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        final gs0 b;
        final ba0 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(gs0 gs0Var, ba0 ba0Var, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.b = gs0Var;
            this.c = ba0Var;
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
            b02 b02VarB = this.b.b();
            List<b30> listC = b02VarB.c();
            if (listC == null) {
                listC = Collections.emptyList();
            }
            y45.g(listC);
            ba0 ba0Var = this.c;
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = listC.iterator();
            while (it.hasNext()) {
                vk1 vk1VarA = ba0Var.a.a((b30) it.next(), b02VarB);
                if (vk1VarA != null) {
                    arrayList.add(vk1VarA);
                }
            }
            return new n90(this.b.b(), this.b.a(), arrayList);
        }
    }

    public ba0(l90 l90Var) {
        y45.j(l90Var, "divKitViewPreloader");
        this.a = l90Var;
    }

    public final Object a(gs0 gs0Var, defpackage.wh1<? super n90> wh1Var) {
        return defpackage.cl0.g(defpackage.mc2.a(), new a(gs0Var, this, null), wh1Var);
    }
}
