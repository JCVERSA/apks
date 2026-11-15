package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.SystemClock;
import androidx.annotation.MainThread;
import com.monetization.ads.mediation.banner.MediatedBannerSize;
import com.monetization.ads.mediation.base.MediatedBidderTokenLoadListener;
import com.monetization.ads.mediation.base.MediatedBidderTokenLoader;
import com.yandex.mobile.ads.impl.pz0;
import defpackage.y45;
import java.util.HashMap;
import java.util.concurrent.Executor;
import org.json.JSONObject;

public final class pz0 {
    private final Executor a;
    private final cy0<com.monetization.ads.mediation.base.a> b;
    private final oz0 c;
    private final nz0 d;
    private final ux0 e;

    public interface a {
        void a(JSONObject jSONObject);
    }

    public static final class b implements MediatedBidderTokenLoadListener {
        final lz0 a;
        final pz0 b;
        final Context c;
        final tx0 d;
        final a e;
        final el f;
        final long g;

        public b(lz0 lz0Var, pz0 pz0Var, Context context, tx0 tx0Var, a aVar, el elVar, long j) {
            this.a = lz0Var;
            this.b = pz0Var;
            this.c = context;
            this.d = tx0Var;
            this.e = aVar;
            this.f = elVar;
            this.g = j;
        }

        @Override
        public final void onBidderTokenFailedToLoad(String str) {
            y45.j(str, "failureReason");
            pz0.a(this.b, this.c, this.a, this.d, str, null, this.e);
        }

        @Override
        public final void onBidderTokenLoaded(String str, MediatedBannerSize mediatedBannerSize) {
            y45.j(str, "bidderToken");
            if (str.length() == 0) {
                pz0.a(this.b, this.c, this.a, this.d, this.a.e() + " provided empty token", null, this.e);
                return;
            }
            if (this.f.a()) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - this.g;
                pz0.a(this.b, this.c, this.a, this.d, this.a.e() + " didn't provide bidder token after timeout", Long.valueOf(jElapsedRealtime), this.e);
                return;
            }
            oz0 oz0Var = this.b.c;
            lz0 lz0Var = this.a;
            oz0Var.getClass();
            JSONObject jSONObjectA = oz0.a(lz0Var, str, mediatedBannerSize);
            if (jSONObjectA == null) {
                pz0.a(this.b, this.c, this.a, this.d, "Can't create bidding data json object for network.", null, this.e);
            } else {
                pz0.a(this.b, this.c, this.a, this.d, jSONObjectA, this.e);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public pz0(gy0 gy0Var) {
        this(gy0Var, ms0.a.a().c(), new cy0(gy0Var), new oz0(), new nz0(gy0Var), new ux0());
        int i = ms0.f;
    }

    public static final void a(pz0 pz0Var, Context context, lz0 lz0Var, tx0 tx0Var, String str, Long l, a aVar) {
        pz0Var.d.a(context, lz0Var, tx0Var, str, l);
        aVar.a(null);
    }

    public static final void a(pz0 pz0Var, Context context, lz0 lz0Var, tx0 tx0Var, JSONObject jSONObject, a aVar) {
        pz0Var.d.a(context, lz0Var, tx0Var);
        aVar.a(jSONObject);
    }

    public pz0(gy0 gy0Var, Executor executor, cy0<com.monetization.ads.mediation.base.a> cy0Var, oz0 oz0Var, nz0 nz0Var, ux0 ux0Var) {
        y45.j(gy0Var, "mediatedAdapterReporter");
        y45.j(executor, "loadingExecutor");
        y45.j(cy0Var, "mediatedAdapterCreator");
        y45.j(oz0Var, "mediationNetworkBiddingDataJsonCreator");
        y45.j(nz0Var, "bidderTokenLoadingReporter");
        y45.j(ux0Var, "mediatedAdDataFactory");
        this.a = executor;
        this.b = cy0Var;
        this.c = oz0Var;
        this.d = nz0Var;
        this.e = ux0Var;
    }

    @MainThread
    public final void a(final Context context, gz1 gz1Var, final lz0 lz0Var, final el elVar, final a aVar) {
        tx0 tx0Var;
        y45.j(context, "context");
        y45.j(lz0Var, "mediationNetwork");
        y45.j(elVar, "timeoutHolder");
        y45.j(aVar, "listener");
        final com.monetization.ads.mediation.base.a aVarA = this.b.a(context, lz0Var, (Class<com.monetization.ads.mediation.base.a>) com.monetization.ads.mediation.base.a.class);
        if (aVarA != null) {
            this.e.getClass();
            y45.j(aVarA, "mediatedAdapter");
            tx0Var = new tx0(aVarA);
        } else {
            tx0Var = null;
        }
        if (!(aVarA instanceof MediatedBidderTokenLoader)) {
            if (aVarA == null) {
                aVar.a(null);
                return;
            } else {
                this.d.a(context, lz0Var, tx0Var, "Can't create bidder token loader.", null);
                aVar.a(null);
                return;
            }
        }
        try {
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            final HashMap map = new HashMap(lz0Var.i());
            if (gz1Var != null) {
                map.put("width", String.valueOf(gz1Var.getWidth()));
                map.put("height", String.valueOf(gz1Var.getHeight()));
            }
            final tx0 tx0Var2 = tx0Var;
            this.a.execute(new Runnable() {
                @Override
                public final void run() {
                    pz0.a(aVarA, context, map, lz0Var, this, tx0Var2, aVar, elVar, jElapsedRealtime);
                }
            });
        } catch (Throwable th) {
            this.d.a(context, lz0Var, tx0Var, th.toString(), null);
            aVar.a(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(com.monetization.ads.mediation.base.a aVar, Context context, HashMap map, lz0 lz0Var, pz0 pz0Var, tx0 tx0Var, a aVar2, el elVar, long j) {
        y45.j(context, "$context");
        y45.j(map, "$extras");
        y45.j(lz0Var, "$mediationNetwork");
        y45.j(pz0Var, "this$0");
        y45.j(aVar2, "$listener");
        y45.j(elVar, "$timeoutHolder");
        ((MediatedBidderTokenLoader) aVar).loadBidderToken(context, map, new b(lz0Var, pz0Var, context, tx0Var, aVar2, elVar, j));
    }
}
