package com.transsion.wrapperad.h5;

import android.app.Activity;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.wrapperadapi.H5AdStateEnum;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class H5VideoAdProvider {

    private static vw.a f55993b;

    private static boolean f55994c;

    private static BiddingVideoManager f55995d;

    public static final H5VideoAdProvider f55992a = new H5VideoAdProvider();

    private static final a f55996e = new a();

    public static final class a extends oh.a {
        a() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            vw.a aVar = H5VideoAdProvider.f55993b;
            if (aVar != null) {
                aVar.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null);
            }
            H5VideoAdProvider.f55992a.g();
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            BiddingVideoManager biddingVideoManager;
            super.j(biddingIntermediateMaterialBean);
            Activity activityB = com.blankj.utilcode.util.a.b();
            if (activityB == null || (biddingVideoManager = H5VideoAdProvider.f55995d) == null) {
                return;
            }
            AbsAdBidding.O0(biddingVideoManager, activityB, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.m(biddingIntermediateMaterialBean);
            if (H5VideoAdProvider.f55994c) {
                vw.a aVar = H5VideoAdProvider.f55993b;
                if (aVar != null) {
                    aVar.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_REWARDED.getValue(), "展示成功且有奖励");
                }
            } else {
                vw.a aVar2 = H5VideoAdProvider.f55993b;
                if (aVar2 != null) {
                    aVar2.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), "展示成功无奖励");
                }
            }
            H5VideoAdProvider.f55992a.g();
        }

        @Override
        public void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.o(biddingIntermediateMaterialBean);
            H5VideoAdProvider.f55994c = true;
        }

        @Override
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            vw.a aVar = H5VideoAdProvider.f55993b;
            if (aVar != null) {
                aVar.onAdStateCallback(H5AdStateEnum.MB_H5_AD_STATE_ON_FAIL.getValue(), "展示失败");
            }
            H5VideoAdProvider.f55992a.g();
        }
    }

    private H5VideoAdProvider() {
    }

    public final void g() {
        BiddingVideoManager biddingVideoManager = f55995d;
        if (biddingVideoManager != null) {
            biddingVideoManager.U();
        }
        f55995d = null;
    }

    public final void h(String str, vw.a callback) {
        Intrinsics.h(callback, "callback");
        if (f55995d == null) {
            f55995d = new BiddingVideoManager();
        }
        f55993b = callback;
        f55994c = false;
        k.d(o0.a(y0.b()), null, null, new H5VideoAdProvider$h5OpenAd$1(str, null), 3, null);
    }
}
