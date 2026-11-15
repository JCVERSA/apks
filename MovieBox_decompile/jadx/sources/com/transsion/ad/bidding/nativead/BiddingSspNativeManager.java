package com.transsion.ad.bidding.nativead;

import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.monopoly.manager.AdPlansStorageManager;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.view.native_ad.BiddingBuyOutNativeView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class BiddingSspNativeManager extends AbsAdBidding {

    public static final Companion f40994x = new Companion(null);

    private boolean f40998v;

    private List f40995s = new ArrayList();

    private Set f40996t = new LinkedHashSet();

    private Set f40997u = new LinkedHashSet();

    private final a f40999w = new a();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void b(Companion companion, String str, Map map, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                map = null;
            }
            companion.a(str, map);
        }

        public final void a(String sceneId, Map map) {
            Intrinsics.h(sceneId, "sceneId");
            k.d(o0.a(y0.b()), null, null, new BiddingSspNativeManager$Companion$preload$1(sceneId, map, null), 3, null);
        }

        private Companion() {
        }
    }

    public static final class a extends com.cloud.hisavana.sdk.api.listener.d {
        a() {
        }

        @Override
        public void onNativeAdClick(TaNativeInfo taNativeInfo) {
            String codeSeatId;
            Object next;
            AdsDTO adItem;
            TaNativeInfo sspNativeInfo;
            super.onNativeAdClick(taNativeInfo);
            Iterator it = BiddingSspNativeManager.this.f40995s.iterator();
            do {
                codeSeatId = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    sspNativeInfo = ((BiddingIntermediateMaterialBean) next).getSspNativeInfo();
                }
            } while (!Intrinsics.c(sspNativeInfo != null ? sspNativeInfo.getUuid() : null, taNativeInfo != null ? taNativeInfo.getUuid() : null));
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) next;
            if (biddingIntermediateMaterialBean != null) {
                ai.c cVar = ai.c.f362a;
                String strM0 = BiddingSspNativeManager.this.m0();
                String mSceneId = BiddingSspNativeManager.this.getMSceneId();
                AdPlans plans = biddingIntermediateMaterialBean.getPlans();
                String id2 = plans != null ? plans.getId() : null;
                if (taNativeInfo != null && (adItem = taNativeInfo.getAdItem()) != null) {
                    codeSeatId = adItem.getCodeSeatId();
                }
                cVar.a((128 & 1) != 0 ? "" : strM0, mSceneId, id2, 0, codeSeatId, BiddingSspNativeManager.this.X(), (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, com.transsion.ad.monopoly.plan.b.f41119a.b(biddingIntermediateMaterialBean.getPlans()), (128 & 512) != 0 ? null : biddingIntermediateMaterialBean.getEcpm(), (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : BiddingSspNativeManager.this.l0());
                BiddingSspNativeManager.this.l(biddingIntermediateMaterialBean);
            }
        }

        @Override
        public void onNativeAdShow(TaNativeInfo taNativeInfo) {
            String codeSeatId;
            Object next;
            AdsDTO adItem;
            TaNativeInfo sspNativeInfo;
            super.onNativeAdShow(taNativeInfo);
            Iterator it = BiddingSspNativeManager.this.f40995s.iterator();
            do {
                codeSeatId = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    sspNativeInfo = ((BiddingIntermediateMaterialBean) next).getSspNativeInfo();
                }
            } while (!Intrinsics.c(sspNativeInfo != null ? sspNativeInfo.getUuid() : null, taNativeInfo != null ? taNativeInfo.getUuid() : null));
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) next;
            if (biddingIntermediateMaterialBean != null) {
                ai.c cVar = ai.c.f362a;
                String strM0 = BiddingSspNativeManager.this.m0();
                String mSceneId = BiddingSspNativeManager.this.getMSceneId();
                AdPlans plans = biddingIntermediateMaterialBean.getPlans();
                String id2 = plans != null ? plans.getId() : null;
                if (taNativeInfo != null && (adItem = taNativeInfo.getAdItem()) != null) {
                    codeSeatId = adItem.getCodeSeatId();
                }
                cVar.f((128 & 1) != 0 ? "" : strM0, mSceneId, id2, 0, codeSeatId, BiddingSspNativeManager.this.X(), (128 & 64) != 0 ? false : false, (128 & 128) != 0 ? MapsKt.h() : null, com.transsion.ad.monopoly.plan.b.f41119a.b(biddingIntermediateMaterialBean.getPlans()), (128 & 512) != 0 ? null : biddingIntermediateMaterialBean.getEcpm(), (128 & 1024) != 0 ? null : null, (128 & 2048) != 0 ? null : BiddingSspNativeManager.this.l0());
                BiddingSspNativeManager.this.n(biddingIntermediateMaterialBean);
            }
        }
    }

    @Override
    public void R(List biddingPlan, AdPlans adPlans, int i10) {
        BiddingHiSspNativeProvider biddingHiSspNativeProviderB;
        AdPlans adPlans2 = adPlans;
        Intrinsics.h(biddingPlan, "biddingPlan");
        Intrinsics.h(adPlans2, "adPlans");
        BiddingHiSspNativeProvider biddingHiSspNativeProviderB2 = BiddingHiSspNativeProvider.f40965h.b(getMSceneId());
        List<TaNativeInfo> listI = biddingHiSspNativeProviderB2 != null ? biddingHiSspNativeProviderB2.i(com.transsion.ad.scene.a.f41152a.g(getMSceneId()), this.f40998v) : null;
        if (listI != null) {
            for (TaNativeInfo taNativeInfo : listI) {
                if (r0(adPlans2)) {
                    adPlans2.setBidEcpmCent(Double.valueOf(taNativeInfo.getBidPrice()));
                }
                if (!com.transsion.ad.strategy.c.f41178a.d(d0()) || !taNativeInfo.isMatchVulgarBrand()) {
                    biddingPlan.add(new BiddingIntermediateMaterialBean(adPlans.getBidEcpmCent(), adPlans, null, taNativeInfo, null, null, null, Boolean.FALSE, getMSceneId(), null, null, 103, 1652, null));
                }
                adPlans2 = adPlans;
            }
        }
        this.f40995s.clear();
        this.f40995s.addAll(biddingPlan);
        if (listI == null || !(!listI.isEmpty()) || (biddingHiSspNativeProviderB = BiddingHiSspNativeProvider.f40965h.b(getMSceneId())) == null) {
            return;
        }
        biddingHiSspNativeProviderB.h(this.f40999w);
    }

    public final void S0(BiddingBuyOutNativeView biddingBuyOutNativeView) {
        this.f40997u.add(biddingBuyOutNativeView);
    }

    public final void T0(TNativeView tNativeView) {
        this.f40996t.add(tNativeView);
    }

    @Override
    public void U() {
        super.U();
        BiddingHiSspNativeProvider biddingHiSspNativeProviderB = BiddingHiSspNativeProvider.f40965h.b(getMSceneId());
        if (biddingHiSspNativeProviderB != null) {
            biddingHiSspNativeProviderB.r(this.f40999w);
        }
        for (TNativeView tNativeView : this.f40996t) {
            if (tNativeView != null) {
                tNativeView.destroy();
            }
        }
        this.f40996t.clear();
        for (BiddingBuyOutNativeView biddingBuyOutNativeView : this.f40997u) {
            if (biddingBuyOutNativeView != null) {
                biddingBuyOutNativeView.destroy();
            }
        }
        this.f40997u.clear();
        Iterator it = this.f40995s.iterator();
        while (it.hasNext()) {
            TaNativeInfo sspNativeInfo = ((BiddingIntermediateMaterialBean) it.next()).getSspNativeInfo();
            if (sspNativeInfo != null) {
                sspNativeInfo.destroy();
            }
        }
    }

    public final void U0(boolean z10) {
        this.f40998v = z10;
    }

    @Override
    public int X() {
        return 2;
    }

    @Override
    public Object Y(Continuation continuation) {
        return AdPlansStorageManager.f41107a.d(getMSceneId(), d0(), getLogTag(), new AdPlanSourceManager.AdPlanEnum[0], continuation);
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
    public boolean o0() {
        return false;
    }

    @Override
    public void u0(String str) {
        BiddingHiSspNativeProvider biddingHiSspNativeProviderB = BiddingHiSspNativeProvider.f40965h.b(getMSceneId());
        if (biddingHiSspNativeProviderB != null) {
            biddingHiSspNativeProviderB.n();
        }
    }
}
