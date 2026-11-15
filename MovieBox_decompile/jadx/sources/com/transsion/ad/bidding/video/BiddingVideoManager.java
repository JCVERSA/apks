package com.transsion.ad.bidding.video;

import com.hisavana.common.bean.AdditionalInfo;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.monopoly.model.AdPlans;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class BiddingVideoManager extends AbsAdBidding {

    public static final Companion f41022t = new Companion(null);

    private final ph.c f41023s = new ph.c();

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
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new BiddingVideoManager$Companion$preLoadAd$1(sceneId, map, null), 3, null);
        }

        private Companion() {
        }
    }

    @Override
    public void R(List biddingPlan, AdPlans adPlans, int i10) {
        Intrinsics.h(biddingPlan, "biddingPlan");
        Intrinsics.h(adPlans, "adPlans");
        q qVarB = q.f41040j.b(getMSceneId());
        if (qVarB != null) {
            qVarB.c(getMSceneId());
        }
        AdditionalInfo additionalInfoF = qVarB != null ? qVarB.f() : null;
        if (additionalInfoF == null) {
            xh.b.a.c(this, 6, "addHiSavanaProvider() --> 激励视频广告同步获取失败 --> additionalInfo == null", null, false, 4, null);
            return;
        }
        if (r0(adPlans)) {
            adPlans.setBidEcpmCent(additionalInfoF.getECPM());
        }
        biddingPlan.add(new BiddingIntermediateMaterialBean(adPlans.getBidEcpmCent(), adPlans, null, null, null, null, qVarB, Boolean.FALSE, getMSceneId(), null, null, 103, 1592, null));
    }

    @Override
    public int X() {
        return 3;
    }

    @Override
    public AbsBiddingBuyOutGemini e0() {
        return this.f41023s;
    }

    @Override
    public String getLogTag() {
        return "ad_v";
    }

    @Override
    public boolean o0() {
        Boolean boolI;
        q qVarB = q.f41040j.b(getMSceneId());
        if (qVarB == null || (boolI = qVarB.i()) == null) {
            return false;
        }
        return boolI.booleanValue();
    }

    @Override
    public void u0(String str) {
        q qVarB = q.f41040j.b(getMSceneId());
        if (qVarB != null) {
            qVarB.n(this);
        }
        if (qVarB != null) {
            qVarB.k();
        }
    }
}
