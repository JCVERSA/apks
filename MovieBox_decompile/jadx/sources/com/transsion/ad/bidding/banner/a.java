package com.transsion.ad.bidding.banner;

import android.content.Context;
import com.hisavana.common.bean.AdditionalInfo;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini;
import com.transsion.ad.monopoly.model.AdPlans;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class a extends AbsAdBidding {

    private BiddingHiSavanaBannerProvider f40785s;

    private BiddingBuyOutBannerView f40786t;

    private AdditionalInfo f40787u;

    public final void P0() {
        BiddingBuyOutBannerView biddingBuyOutBannerView = this.f40786t;
        if (biddingBuyOutBannerView != null) {
            biddingBuyOutBannerView.showAd();
        }
    }

    @Override
    public void R(List biddingPlan, AdPlans adPlans, int i10) {
        Intrinsics.h(biddingPlan, "biddingPlan");
        Intrinsics.h(adPlans, "adPlans");
        if (this.f40787u != null) {
            if (r0(adPlans)) {
                AdditionalInfo additionalInfo = this.f40787u;
                adPlans.setBidEcpmCent(additionalInfo != null ? additionalInfo.getECPM() : null);
            }
            biddingPlan.add(new BiddingIntermediateMaterialBean(adPlans.getBidEcpmCent(), adPlans, null, null, this.f40785s, null, null, Boolean.FALSE, getMSceneId(), null, null, 103, 1644, null));
        }
    }

    @Override
    public boolean T() {
        return true;
    }

    @Override
    public void U() {
        super.U();
        BiddingBuyOutBannerView biddingBuyOutBannerView = this.f40786t;
        if (biddingBuyOutBannerView != null) {
            biddingBuyOutBannerView.destroy();
        }
        this.f40786t = null;
        BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider = this.f40785s;
        if (biddingHiSavanaBannerProvider != null) {
            biddingHiSavanaBannerProvider.b();
        }
        this.f40785s = null;
        this.f40787u = null;
    }

    @Override
    public int X() {
        return 1;
    }

    @Override
    public AbsBiddingBuyOutGemini e0() {
        return null;
    }

    @Override
    public String getLogTag() {
        return "ad_b";
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0032  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.util.AttributeSet, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean] */
    @Override
    public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        ?? r10 = 0;
        Unit unit = null;
        if ((biddingIntermediateMaterialBean != 0 ? biddingIntermediateMaterialBean.getHiSavanaBannerProvider() : null) == null) {
            Context contextC0 = c0();
            if (contextC0 != null) {
                BiddingBuyOutBannerView biddingBuyOutBannerView = new BiddingBuyOutBannerView(contextC0, r10, 2, r10);
                this.f40786t = biddingBuyOutBannerView;
                biddingBuyOutBannerView.setEcpmObject(biddingIntermediateMaterialBean);
                BiddingBuyOutBannerView biddingBuyOutBannerView2 = this.f40786t;
                if (biddingBuyOutBannerView2 != null) {
                    biddingBuyOutBannerView2.setSceneId(getMSceneId());
                }
                BiddingBuyOutBannerView biddingBuyOutBannerView3 = this.f40786t;
                if (biddingBuyOutBannerView3 != null) {
                    biddingBuyOutBannerView3.setListener(this);
                    unit = Unit.f64096a;
                }
                if (unit == null) {
                    xh.b.a.c(this, 6, "getContext() is null", null, false, 12, null);
                }
            } else {
                xh.b.a.c(this, 6, "getContext() is null", null, false, 12, null);
            }
            if (biddingIntermediateMaterialBean != 0) {
                biddingIntermediateMaterialBean.setBannerView(this.f40786t);
            }
        } else {
            BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider = this.f40785s;
            biddingIntermediateMaterialBean.setBannerView(biddingHiSavanaBannerProvider != null ? biddingHiSavanaBannerProvider.d() : 0);
        }
        super.j(biddingIntermediateMaterialBean);
    }

    @Override
    public boolean o0() {
        return false;
    }

    @Override
    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadSuccess(additionalInfo);
        this.f40787u = additionalInfo;
    }

    @Override
    public void u0(String str) {
        if (this.f40785s == null) {
            BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider = new BiddingHiSavanaBannerProvider();
            this.f40785s = biddingHiSavanaBannerProvider;
            biddingHiSavanaBannerProvider.m(getMSceneId());
            BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider2 = this.f40785s;
            if (biddingHiSavanaBannerProvider2 != null) {
                biddingHiSavanaBannerProvider2.k(d0());
            }
            BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider3 = this.f40785s;
            if (biddingHiSavanaBannerProvider3 != null) {
                biddingHiSavanaBannerProvider3.j(c0());
            }
            BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider4 = this.f40785s;
            if (biddingHiSavanaBannerProvider4 != null) {
                biddingHiSavanaBannerProvider4.l(this);
            }
        }
        BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider5 = this.f40785s;
        if (biddingHiSavanaBannerProvider5 != null) {
            biddingHiSavanaBannerProvider5.h();
        }
        BiddingHiSavanaBannerProvider biddingHiSavanaBannerProvider6 = this.f40785s;
        if (biddingHiSavanaBannerProvider6 != null) {
            biddingHiSavanaBannerProvider6.c(getMSceneId());
        }
    }
}
