package com.transsion.ad.bidding.nativead;

import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

public final class BiddingListManager {

    private n0 f40974b;

    private BiddingNativeManager f40975c;

    private WeakReference f40978f;

    private Function2 f40979g;

    private boolean f40981i;

    private Map f40973a = new LinkedHashMap();

    private int f40976d = -1;

    private int f40977e = -1;

    private final List f40980h = new ArrayList();

    private String f40982j = "";

    private String f40983k = "";

    private boolean f40984l = true;

    private final long f40985m = 300;

    private final Handler f40986n = new Handler(Looper.getMainLooper());

    private Runnable f40987o = new Runnable() {
        @Override
        public final void run() {
            BiddingListManager.n(this.f41001a);
        }
    };

    public static final class a extends RecyclerView.r {
        a() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i10);
            if (BiddingListManager.this.f40984l) {
                RecyclerView.m layoutManager = recyclerView.getLayoutManager();
                LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
                if (linearLayoutManager != null) {
                    BiddingListManager.this.E(linearLayoutManager.findLastVisibleItemPosition());
                }
                GridLayoutManager gridLayoutManager = layoutManager instanceof GridLayoutManager ? (GridLayoutManager) layoutManager : null;
                if (gridLayoutManager != null) {
                    BiddingListManager.this.E(gridLayoutManager.findLastVisibleItemPosition());
                }
                if (i10 != 0) {
                    BiddingListManager.this.f40981i = false;
                    return;
                }
                BiddingListManager.this.f40981i = true;
                if (BiddingListManager.this.t() >= BiddingListManager.this.u() && BiddingListManager.this.s() == -1) {
                    BiddingListManager.this.x();
                } else {
                    if (BiddingListManager.this.t() < BiddingListManager.this.u() || BiddingListManager.this.t() - BiddingListManager.this.s() < BiddingListManager.this.v()) {
                        return;
                    }
                    BiddingListManager.this.x();
                }
            }
        }
    }

    public static final void n(BiddingListManager biddingListManager) {
        biddingListManager.q();
    }

    private final String p() {
        String simpleName = BiddingListManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final void q() {
        BiddingNativeManager biddingNativeManager = this.f40975c;
        if ((biddingNativeManager != null ? biddingNativeManager.k0() : null) != null) {
            w();
            return;
        }
        if (this.f40975c != null) {
            xh.a.f75336a.l("ad_n", p() + " --> null != delegate", 3, false);
            return;
        }
        BiddingNativeManager biddingNativeManager2 = new BiddingNativeManager();
        this.f40975c = biddingNativeManager2;
        this.f40980h.add(biddingNativeManager2);
        n0 n0Var = this.f40974b;
        if (n0Var != null) {
            k.d(n0Var, null, null, new BiddingListManager$getDelegate$1$1(biddingNativeManager2, this, null), 3, null);
        }
    }

    public final int u() {
        return com.transsion.ad.scene.a.o(com.transsion.ad.scene.a.f41152a, this.f40982j, 0, 2, null);
    }

    public final int v() {
        return com.transsion.ad.scene.a.q(com.transsion.ad.scene.a.f41152a, this.f40982j, 0, 2, null);
    }

    public final void w() {
        BiddingNativeManager biddingNativeManager = this.f40975c;
        if (biddingNativeManager != null) {
            int i10 = this.f40976d + 1;
            if (i10 - this.f40977e < v()) {
                return;
            }
            this.f40977e = i10;
            n0 n0Var = this.f40974b;
            if (n0Var != null) {
                k.d(n0Var, null, null, new BiddingListManager$insert$1$1(this, biddingNativeManager, null), 3, null);
            }
            xh.a.f75336a.l("ad_n", p() + " --> insert() --> 触发插入广告 --- mLastItemPosition = " + this.f40976d + " -- mLastAdPosition = " + this.f40977e, 3, false);
            this.f40975c = null;
        }
    }

    public final void x() {
        this.f40986n.removeCallbacks(this.f40987o);
        this.f40986n.postDelayed(this.f40987o, this.f40985m);
    }

    public final void A(n0 n0Var) {
        this.f40974b = n0Var;
    }

    public final void B(Map ctxMap) {
        Intrinsics.h(ctxMap, "ctxMap");
        this.f40973a = ctxMap;
    }

    public final void C(boolean z10) {
        this.f40984l = z10;
    }

    public final void D(Function2 function2) {
        this.f40979g = function2;
    }

    public final void E(int i10) {
        this.f40976d = i10;
    }

    public final void F(RecyclerView recyclerView) {
        this.f40978f = new WeakReference(recyclerView);
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(new a());
        }
    }

    public final void G(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        this.f40982j = sceneId;
    }

    public final void H(String sceneSubId) {
        Intrinsics.h(sceneSubId, "sceneSubId");
        this.f40983k = sceneSubId;
    }

    public final void o() {
        y();
        this.f40986n.removeCallbacksAndMessages(null);
        WeakReference weakReference = this.f40978f;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f40979g = null;
    }

    public final Function2 r() {
        return this.f40979g;
    }

    public final int s() {
        return this.f40977e;
    }

    public final int t() {
        return this.f40976d;
    }

    public final void y() {
        xh.a.f75336a.l("ad_n", p() + " --> refresh() --> 资源回收 --> delegateList.forEach{it.destroy()} -- sceneId = " + this.f40982j, 3, false);
        Iterator it = this.f40980h.iterator();
        while (it.hasNext()) {
            ((BiddingNativeManager) it.next()).U();
        }
        this.f40976d = -1;
        this.f40977e = -1;
        BiddingNativeManager biddingNativeManager = this.f40975c;
        if (biddingNativeManager != null) {
            biddingNativeManager.U();
        }
        this.f40975c = null;
    }

    public final void z(Function2 function2) {
        this.f40979g = function2;
    }
}
