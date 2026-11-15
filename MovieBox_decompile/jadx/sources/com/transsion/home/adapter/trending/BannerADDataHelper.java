package com.transsion.home.adapter.trending;

import android.widget.ImageView;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.mediation.ad.TMediaView;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.base.r;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.wrapperad.R$id;
import kotlin.jvm.functions.Function2;

public final class BannerADDataHelper {

    private static BiddingNativeManager f43483c;

    private static Function2 f43484d;

    private static NativeWrapperAdView f43485e;

    private static boolean f43486f;

    private static boolean f43487g;

    public static final BannerADDataHelper f43481a = new BannerADDataHelper();

    private static int f43482b = 1;

    private static final a f43488h = new a();

    public static final int f43489i = 8;

    public static final class a extends oh.a {
        a() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            wf.a.C0922a.f(wf.a.f74274a, "BannerADDataHelper", "--> onBiddingError() --> p0 = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), false, 4, null);
            Function2 function2 = BannerADDataHelper.f43484d;
            if (function2 != null) {
                function2.invoke(null, Integer.valueOf(BannerADDataHelper.f43482b));
            }
            BannerADDataHelper.f43486f = false;
            BannerADDataHelper.f43487g = true;
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            wf.a.C0922a.f(wf.a.f74274a, "BannerADDataHelper", "--> onBiddingLoad() --> " + biddingIntermediateMaterialBean, false, 4, null);
            Function2 function2 = BannerADDataHelper.f43484d;
            if (function2 != null) {
                function2.invoke(biddingIntermediateMaterialBean, Integer.valueOf(BannerADDataHelper.f43482b));
            }
            BannerADDataHelper.f43486f = false;
            BannerADDataHelper.f43487g = false;
        }

        @Override
        public void n(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.n(biddingIntermediateMaterialBean);
            BannerADDataHelper.f43487g = true;
        }

        @Override
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            BannerADDataHelper.f43487g = true;
        }
    }

    private BannerADDataHelper() {
    }

    public final void i(NativeWrapperAdView nativeWrapperAdView, r rVar, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        f43485e = nativeWrapperAdView;
        if (nativeWrapperAdView != null) {
            nativeWrapperAdView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        if (nativeWrapperAdView != null) {
            nativeWrapperAdView.bindNativeView(f43483c, rVar, biddingIntermediateMaterialBean);
        }
    }

    public final void j() {
        BiddingNativeManager biddingNativeManager = f43483c;
        if (biddingNativeManager != null) {
            biddingNativeManager.U();
        }
        f43483c = null;
    }

    public final void k(Function2 function2) {
    }

    public final void l() {
        TMediaView tMediaView;
        NativeWrapperAdView nativeWrapperAdView = f43485e;
        if (nativeWrapperAdView == null || (tMediaView = (TMediaView) nativeWrapperAdView.findViewById(R$id.ad_media)) == null) {
            return;
        }
        tMediaView.performClick();
    }

    public final boolean m() {
        return true;
    }

    public final void n() {
        f43485e = null;
    }
}
