package com.transsion.wrapperad.view;

import android.content.Context;
import android.os.Handler;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.v;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;

public final class NativeSlideshowView$loadBottomAd$1 extends oh.a {

    final NativeSlideshowView f56070d;

    NativeSlideshowView$loadBottomAd$1(NativeSlideshowView nativeSlideshowView) {
        this.f56070d = nativeSlideshowView;
    }

    public static final void y(NativeSlideshowView nativeSlideshowView) {
        NativeWrapperAdView nativeWrapperAdView = nativeSlideshowView.vTop;
        if (nativeWrapperAdView != null) {
            nativeWrapperAdView.setVisibility(8);
        }
        NativeWrapperAdView nativeWrapperAdView2 = nativeSlideshowView.vBottom;
        if (nativeWrapperAdView2 != null) {
            nativeWrapperAdView2.setVisibility(0);
        }
        BiddingNativeManager biddingNativeManager = nativeSlideshowView.topNative;
        if (biddingNativeManager != null) {
            biddingNativeManager.U();
        }
        nativeSlideshowView.topNative = null;
    }

    @Override
    public void i(TAdErrorCode tAdErrorCode) {
        super.i(tAdErrorCode);
        this.f56070d.i(true);
    }

    @Override
    public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        super.j(biddingIntermediateMaterialBean);
        Context context = this.f56070d.getContext();
        if (context != null) {
            NativeSlideshowView nativeSlideshowView = this.f56070d;
            Context context2 = nativeSlideshowView.getContext();
            AppCompatActivity appCompatActivity = context2 instanceof AppCompatActivity ? (AppCompatActivity) context2 : null;
            if (appCompatActivity != null && (lifecycleCoroutineScopeA = v.a(appCompatActivity)) != null) {
                kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new NativeSlideshowView$loadBottomAd$1$onBiddingLoad$1$1(context, nativeSlideshowView, biddingIntermediateMaterialBean, null), 3, null);
            }
        }
        Handler handler = this.f56070d.mHandler;
        final NativeSlideshowView nativeSlideshowView2 = this.f56070d;
        handler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                NativeSlideshowView$loadBottomAd$1.y(nativeSlideshowView2);
            }
        }, 300L);
        NativeSlideshowView.j(this.f56070d, false, 1, null);
    }
}
