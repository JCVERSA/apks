package com.transsion.wrapperad.h5;

import android.app.Activity;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.wrapperadapi.H5AdStateEnum;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class H5InterstitialAdProvider {

    private static vw.a f55989b;

    private static BiddingInterstitialManager f55990c;

    public static final H5InterstitialAdProvider f55988a = new H5InterstitialAdProvider();

    private static final a f55991d = new a();

    public static final class a extends oh.a {
        a() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            vw.a aVar = H5InterstitialAdProvider.f55989b;
            if (aVar != null) {
                aVar.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null);
            }
            H5InterstitialAdProvider.f55988a.e();
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            BiddingInterstitialManager biddingInterstitialManager;
            super.j(biddingIntermediateMaterialBean);
            Activity activityB = com.blankj.utilcode.util.a.b();
            if (activityB == null || (biddingInterstitialManager = H5InterstitialAdProvider.f55990c) == null) {
                return;
            }
            AbsAdBidding.O0(biddingInterstitialManager, activityB, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.m(biddingIntermediateMaterialBean);
            vw.a aVar = H5InterstitialAdProvider.f55989b;
            if (aVar != null) {
                aVar.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_REWARDED.getValue(), "展示成功");
            }
            H5InterstitialAdProvider.f55988a.e();
        }

        @Override
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            vw.a aVar = H5InterstitialAdProvider.f55989b;
            if (aVar != null) {
                aVar.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), "展示失败");
            }
            H5InterstitialAdProvider.f55988a.e();
        }
    }

    private H5InterstitialAdProvider() {
    }

    public final void e() {
        BiddingInterstitialManager biddingInterstitialManager = f55990c;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.U();
        }
        f55990c = null;
    }

    public final void f(String str, vw.a callback) {
        Intrinsics.h(callback, "callback");
        if (f55990c == null) {
            f55990c = new BiddingInterstitialManager();
        }
        f55989b = callback;
        k.d(o0.a(y0.b()), null, null, new H5InterstitialAdProvider$h5OpenAd$1(str, null), 3, null);
    }
}
