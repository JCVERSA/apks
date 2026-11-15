package com.transsion.ad.bidding.nativead;

import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.mediation.ad.TAdNativeView;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.view.native_ad.BiddingBuyOutNativeView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class BiddingNativeManager extends AbsAdBidding {

    public static final Companion f40990v = new Companion(null);

    private Set f40991s = new LinkedHashSet();

    private Set f40992t = new LinkedHashSet();

    private List f40993u = new ArrayList();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(String sceneId, Map map) {
            Intrinsics.h(sceneId, "sceneId");
            k.d(o0.a(y0.b()), null, null, new BiddingNativeManager$Companion$preload$1(sceneId, map, null), 3, null);
        }

        private Companion() {
        }
    }

    public final void P0(BiddingBuyOutNativeView biddingBuyOutNativeView) {
        this.f40992t.add(biddingBuyOutNativeView);
    }

    public final void Q0(TAdNativeView tAdNativeView) {
        this.f40991s.add(tAdNativeView);
    }

    @Override
    public void R(List biddingPlan, AdPlans adPlans, int i10) {
        Intrinsics.h(biddingPlan, "biddingPlan");
        Intrinsics.h(adPlans, "adPlans");
        BiddingHiSavanaNativeProvider biddingHiSavanaNativeProviderB = BiddingHiSavanaNativeProvider.f40957j.b(getMSceneId());
        if (biddingHiSavanaNativeProviderB != null) {
            biddingHiSavanaNativeProviderB.h(getMSceneId());
        }
        TAdNativeInfo tAdNativeInfoI = biddingHiSavanaNativeProviderB != null ? biddingHiSavanaNativeProviderB.i() : null;
        if (com.transsion.ad.strategy.c.f41178a.d(d0()) && tAdNativeInfoI != null && tAdNativeInfoI.isMatchVulgarBrand()) {
            tAdNativeInfoI.release();
            return;
        }
        if (tAdNativeInfoI != null) {
            if (r0(adPlans)) {
                adPlans.setBidEcpmCent(Double.valueOf(tAdNativeInfoI.getEcpmPrice()));
            }
            biddingPlan.add(new BiddingIntermediateMaterialBean(adPlans.getBidEcpmCent(), adPlans, tAdNativeInfoI, null, null, null, null, Boolean.FALSE, getMSceneId(), null, null, 103, 1656, null));
        }
    }

    public final boolean R0() {
        AdPlanSourceManager adPlanSourceManager = AdPlanSourceManager.f41117a;
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanK0 = k0();
        return adPlanSourceManager.d(biddingIntermediateMaterialBeanK0 != null ? biddingIntermediateMaterialBeanK0.getPlans() : null);
    }

    public final boolean S0() {
        return k0() != null;
    }

    @Override
    public void U() {
        TAdNativeInfo nativeInfo;
        BiddingHiSavanaNativeProvider biddingHiSavanaNativeProviderB = BiddingHiSavanaNativeProvider.f40957j.b(getMSceneId());
        if (biddingHiSavanaNativeProviderB != null) {
            biddingHiSavanaNativeProviderB.u(this);
        }
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBeanK0 = k0();
        if (biddingIntermediateMaterialBeanK0 != null && (nativeInfo = biddingIntermediateMaterialBeanK0.getNativeInfo()) != null) {
            nativeInfo.release();
        }
        Iterator it = this.f40993u.iterator();
        while (it.hasNext()) {
            TAdNativeInfo nativeInfo2 = ((BiddingIntermediateMaterialBean) it.next()).getNativeInfo();
            if (nativeInfo2 != null) {
                nativeInfo2.release();
            }
        }
        for (BiddingBuyOutNativeView biddingBuyOutNativeView : this.f40992t) {
            if (biddingBuyOutNativeView != null) {
                biddingBuyOutNativeView.destroy();
            }
        }
        this.f40992t.clear();
        for (TAdNativeView tAdNativeView : this.f40991s) {
            if (tAdNativeView != null) {
                tAdNativeView.release();
            }
        }
        this.f40991s.clear();
        super.U();
    }

    @Override
    public int X() {
        return 2;
    }

    @Override
    public AbsBiddingBuyOutGemini e0() {
        return null;
    }

    @Override
    public String getLogTag() {
        return "ad_n";
    }

    @Override
    public void k(List list) {
        super.k(list);
        Iterator it = this.f40993u.iterator();
        while (it.hasNext()) {
            TAdNativeInfo nativeInfo = ((BiddingIntermediateMaterialBean) it.next()).getNativeInfo();
            if (nativeInfo != null) {
                nativeInfo.release();
            }
        }
        this.f40993u.clear();
        if (list != null) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                this.f40993u.add((BiddingIntermediateMaterialBean) it2.next());
            }
        }
    }

    @Override
    public boolean o0() {
        BiddingHiSavanaNativeProvider biddingHiSavanaNativeProviderB = BiddingHiSavanaNativeProvider.f40957j.b(getMSceneId());
        if (biddingHiSavanaNativeProviderB != null) {
            return biddingHiSavanaNativeProviderB.m();
        }
        return false;
    }

    @Override
    public void u0(String str) {
        BiddingHiSavanaNativeProvider biddingHiSavanaNativeProviderB = BiddingHiSavanaNativeProvider.f40957j.b(getMSceneId());
        if (biddingHiSavanaNativeProviderB != null) {
            biddingHiSavanaNativeProviderB.g(this);
        }
        if (biddingHiSavanaNativeProviderB != null) {
            biddingHiSavanaNativeProviderB.o("addHiSavanaLoad()");
        }
    }
}
