package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.ld1;
import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import org.json.JSONArray;
import org.json.JSONObject;

public final class ld1 {
    private final pz0 a;
    private final Object b;

    @defpackage.nt1(c = "com.monetization.ads.base.mediation.bidding.NetworksHeaderBiddingDataLoader$loadNetworksBiddingDataInternal$3", f = "NetworksHeaderBiddingDataLoader.kt", l = {}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        final CountDownLatch c;
        final ArrayList<JSONObject> d;
        final el e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(CountDownLatch countDownLatch, ArrayList<JSONObject> arrayList, el elVar, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.c = countDownLatch;
            this.d = arrayList;
            this.e = elVar;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return ld1.this.new a(this.c, this.d, this.e, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ((a) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            kotlin.c.b(obj);
            return ld1.a(ld1.this, this.c, this.d, this.e);
        }
    }

    public ld1(gy0 gy0Var) {
        this(gy0Var, new pz0(gy0Var));
    }

    public static final JSONArray a(ld1 ld1Var, CountDownLatch countDownLatch, ArrayList arrayList, el elVar) {
        JSONArray jSONArray;
        ld1Var.getClass();
        try {
            if (!countDownLatch.await(1000L, TimeUnit.MILLISECONDS)) {
                sp0.b(new Object[0]);
            }
            elVar.b();
            synchronized (ld1Var.b) {
                jSONArray = new JSONArray((Collection) arrayList);
            }
            return jSONArray;
        } catch (InterruptedException unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }

    public ld1(gy0 gy0Var, pz0 pz0Var) {
        y45.j(gy0Var, "mediatedAdapterReporter");
        y45.j(pz0Var, "mediationNetworkBiddingDataLoader");
        this.a = pz0Var;
        this.b = new Object();
    }

    @MainThread
    public final Object a(Context context, gz1 gz1Var, List<lz0> list, defpackage.wh1<? super JSONArray> wh1Var) {
        final ArrayList arrayList = new ArrayList(list.size());
        final CountDownLatch countDownLatch = new CountDownLatch(list.size());
        el elVar = new el();
        Iterator<lz0> it = list.iterator();
        while (it.hasNext()) {
            this.a.a(context, gz1Var, it.next(), elVar, new pz0.a() {
                @Override
                public final void a(JSONObject jSONObject) {
                    ld1.a(this.a, countDownLatch, arrayList, jSONObject);
                }
            });
        }
        return defpackage.cl0.g(qu.a(), new a(countDownLatch, arrayList, elVar, null), wh1Var);
    }

    public static final void a(ld1 ld1Var, CountDownLatch countDownLatch, ArrayList arrayList, JSONObject jSONObject) {
        y45.j(ld1Var, "this$0");
        y45.j(countDownLatch, "$resultsCollectingLatch");
        y45.j(arrayList, "$networksBiddingDataList");
        if (jSONObject != null) {
            synchronized (ld1Var.b) {
                arrayList.add(jSONObject);
            }
        }
        countDownLatch.countDown();
    }
}
