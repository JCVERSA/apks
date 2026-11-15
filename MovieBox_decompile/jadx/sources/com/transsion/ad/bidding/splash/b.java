package com.transsion.ad.bidding.splash;

import com.hisavana.common.bean.AdditionalInfo;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.monopoly.model.AdPlans;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class b extends AbsAdBidding {

    private final ph.b f41013s = new ph.b();

    public static final void Q0(b bVar) {
        bVar.U();
    }

    @Override
    public void R(List biddingPlan, AdPlans adPlans, int i10) {
        Intrinsics.h(biddingPlan, "biddingPlan");
        Intrinsics.h(adPlans, "adPlans");
        a aVarA = a.f41007l.a(getMSceneId());
        if (aVarA != null) {
            aVarA.c(getMSceneId());
        }
        AdditionalInfo additionalInfoF = aVarA != null ? aVarA.f() : null;
        if (additionalInfoF == null) {
            xh.b.a.c(this, 6, "addHiSavanaProvider() --> 开屏广告同步获取失败 --> additionalInfo == null", null, false, 4, null);
            return;
        }
        if (r0(adPlans)) {
            adPlans.setBidEcpmCent(additionalInfoF.getECPM());
        }
        biddingPlan.add(new BiddingIntermediateMaterialBean(adPlans.getBidEcpmCent(), adPlans, null, null, null, null, aVarA, Boolean.FALSE, getMSceneId(), null, null, 103, 1592, null));
    }

    @Override
    public int X() {
        return 5;
    }

    @Override
    public AbsBiddingBuyOutGemini e0() {
        return this.f41013s;
    }

    @Override
    public String getLogTag() {
        return "ad_s";
    }

    @Override
    public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.m(biddingIntermediateMaterialBean);
        h0().post(new Runnable() {
            @Override
            public final void run() {
                com.transsion.ad.bidding.splash.b.Q0(this.f69656a);
            }
        });
    }

    @Override
    public boolean o0() {
        return false;
    }

    @Override
    public void u0(String str) {
        a aVarA = a.f41007l.a(getMSceneId());
        if (aVarA != null) {
            aVarA.n(this);
        }
        if (aVarA != null) {
            aVarA.k();
        }
    }
}
