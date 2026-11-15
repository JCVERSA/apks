package com.transsion.subroom.activity;

import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import kotlin.jvm.internal.Intrinsics;

public final class MainDialogAdManager extends oh.a {

    private MainActivity f52567d;

    private BiddingInterstitialManager f52568e;

    private final void A() {
        BiddingInterstitialManager biddingInterstitialManager = this.f52568e;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.U();
        }
        this.f52568e = null;
    }

    @Override
    public void i(TAdErrorCode tAdErrorCode) {
        super.i(tAdErrorCode);
        A();
    }

    @Override
    public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.j(biddingIntermediateMaterialBean);
        BiddingInterstitialManager biddingInterstitialManager = this.f52568e;
        if (biddingInterstitialManager != null) {
            AbsAdBidding.O0(biddingInterstitialManager, this.f52567d, biddingIntermediateMaterialBean, false, 4, null);
        }
    }

    @Override
    public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.m(biddingIntermediateMaterialBean);
        A();
    }

    @Override
    public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        super.p(biddingIntermediateMaterialBean);
        A();
    }

    public final void z(MainActivity activity) {
        Intrinsics.h(activity, "activity");
        if (!rh.c.f71230a.a() && this.f52568e == null) {
            this.f52567d = activity;
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(activity), null, null, new MainDialogAdManager$loadAd$1(this, null), 3, null);
        }
    }
}
