package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.MainThread;
import com.monetization.ads.mediation.base.prefetch.MediatedAdapterPrefetchListener;
import com.monetization.ads.mediation.base.prefetch.MediatedAdapterPrefetcher;
import com.monetization.ads.mediation.base.prefetch.model.MediatedPrefetchAdapterData;
import defpackage.y45;
import defpackage.z45;
import java.util.HashMap;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class jk1 {
    private final ik1 a;

    public static final class a implements MediatedAdapterPrefetchListener {
        final lz0 b;
        final defpackage.cr0 c;

        public a(lz0 lz0Var, CancellableContinuationImpl cancellableContinuationImpl) {
            this.b = lz0Var;
            this.c = cancellableContinuationImpl;
        }

        @Override
        public final void onPrefetchFailed(Integer num, String str) {
            ik1 ik1Var = jk1.this.a;
            String strE = this.b.e();
            ik1Var.getClass();
            y45.j(strE, "adapter");
            hk1 hk1Var = new hk1(strE, null, null, new sk1(tk1.d, str, num), null);
            if (this.c.isActive()) {
                this.c.resumeWith(Result.m279constructorimpl(hk1Var));
            }
        }

        @Override
        public final void onPrefetched(MediatedPrefetchAdapterData mediatedPrefetchAdapterData) {
            y45.j(mediatedPrefetchAdapterData, "mediatedPrefetchAdapterData");
            ik1 ik1Var = jk1.this.a;
            String strE = this.b.e();
            ik1Var.getClass();
            y45.j(strE, "adapter");
            y45.j(mediatedPrefetchAdapterData, "adapterData");
            hk1 hk1Var = new hk1(strE, new lk1(mediatedPrefetchAdapterData.getNetworkWinner().getNetworkName(), mediatedPrefetchAdapterData.getNetworkWinner().getNetworkAdUnit()), new uk1(mediatedPrefetchAdapterData.getRevenue().getValue()), new sk1(tk1.c, null, null), mediatedPrefetchAdapterData.getNetworkAdInfo());
            if (this.c.isActive()) {
                this.c.resumeWith(Result.m279constructorimpl(hk1Var));
            }
        }
    }

    public jk1() {
        this(new ik1());
    }

    @MainThread
    public final Object a(Context context, gz1 gz1Var, lz0 lz0Var, MediatedAdapterPrefetcher mediatedAdapterPrefetcher, defpackage.wh1<? super hk1> wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        try {
            Context contextA = p0.a();
            if (contextA != null) {
                context = contextA;
            }
            HashMap map = new HashMap(lz0Var.i());
            if (gz1Var != null) {
                map.put("width", String.valueOf(gz1Var.getWidth()));
                map.put("height", String.valueOf(gz1Var.getHeight()));
            }
            mediatedAdapterPrefetcher.prefetchAd(context, map, new a(lz0Var, cancellableContinuationImpl));
        } catch (Exception unused) {
            if (cancellableContinuationImpl.isActive()) {
                mediatedAdapterPrefetcher.onInvalidate();
                Result.Companion companion = Result.INSTANCE;
                ik1 ik1Var = this.a;
                String strE = lz0Var.e();
                ik1Var.getClass();
                y45.j(strE, "adapter");
                cancellableContinuationImpl.resumeWith(Result.m279constructorimpl(new hk1(strE, null, null, new sk1(tk1.d, null, null), null)));
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            defpackage.pt1.c(wh1Var);
        }
        return result;
    }

    public jk1(ik1 ik1Var) {
        y45.j(ik1Var, "prefetchedMediationInfoFactory");
        this.a = ik1Var;
    }
}
