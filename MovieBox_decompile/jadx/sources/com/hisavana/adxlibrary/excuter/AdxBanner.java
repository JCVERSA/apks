package com.hisavana.adxlibrary.excuter;

import android.content.Context;
import c7.b;
import com.cloud.hisavana.sdk.api.adx.TBannerView;
import com.cloud.hisavana.sdk.api.listener.d;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.push.PushConstants;

public class AdxBanner extends BaseBanner<TBannerView> {

    public TBannerView f32311a;

    public class a extends d {
        public a() {
        }

        @Override
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxBanner.this.adActivate(adActiveInfo);
        }

        @Override
        public void onAdClicked() {
            AdLogUtil.Log().d("AdxBanner", "banner is click" + AdxBanner.this.getLogString());
            AdxBanner.this.adClicked(null);
        }

        @Override
        public void onAdClosed(TBannerView tBannerView) {
            AdLogUtil.Log().d("AdxBanner", "banner onAdClosed" + AdxBanner.this.getLogString());
            AdxBanner.this.adClosed();
        }

        @Override
        public void onAdLoaded() {
            AdLogUtil.Log().d("AdxBanner", "banner is Loaded" + AdxBanner.this.getLogString());
            if (AdxBanner.this.f32311a != null) {
                double bidPrice = AdxBanner.this.f32311a.getBidPrice();
                if (bidPrice > 0.0d) {
                    AdxBanner.this.setEcpmPrice(bidPrice);
                }
            }
            AdxBanner.this.adLoaded();
        }

        @Override
        public void onAdShow() {
            AdLogUtil.Log().d("AdxBanner", "banner onAdShow" + AdxBanner.this.getLogString());
            AdxBanner.this.adImpression(null);
        }

        @Override
        public void onAdShowError(TaErrorCode taErrorCode) {
            AdLogUtil.Log().d("AdxBanner", "banner onAdShowError" + AdxBanner.this.getLogString());
            AdxBanner.this.onAdShowError(taErrorCode != null ? new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()) : TAdErrorCode.ERROR_SHOW_EXCEPTION);
        }

        @Override
        public void onError(TaErrorCode taErrorCode) {
            AdLogUtil.Log().w("AdxBanner", "banner is Load error:" + taErrorCode.getErrorCode() + " msg:" + taErrorCode.getErrorMessage() + AdxBanner.this.getLogString());
            AdxBanner.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
        }
    }

    public AdxBanner(Context context, Network network, int i10) {
        super(context, network);
        AdLogUtil.Log().d("AdxBanner", "bannerSize:=" + i10 + getLogString());
    }

    @Override
    public boolean canShow() {
        TBannerView tBannerView = this.f32311a;
        return tBannerView != null ? tBannerView.isReady() : super.canShow();
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        AdLogUtil.Log().d("AdxBanner", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    public boolean isAdxAd() {
        TBannerView tBannerView = this.f32311a;
        return tBannerView != null && tBannerView.getAdSource() == 2;
    }

    @Override
    public boolean isEwAd() {
        TBannerView tBannerView = this.f32311a;
        return tBannerView != null && tBannerView.getAdSource() == 1;
    }

    @Override
    public boolean isExpired() {
        TBannerView tBannerView = this.f32311a;
        if (tBannerView != null) {
            return !tBannerView.isReady() || super.isExpired();
        }
        return super.isExpired();
    }

    @Override
    public boolean isInternalAd() {
        TBannerView tBannerView = this.f32311a;
        return tBannerView != null && tBannerView.isDefaultAd();
    }

    @Override
    public boolean isMatchVulgarBrand() {
        TBannerView tBannerView = this.f32311a;
        return tBannerView != null && tBannerView.isMatchVulgarBrand();
    }

    @Override
    public boolean isOfflineAd() {
        TBannerView tBannerView = this.f32311a;
        return tBannerView != null && tBannerView.getFillAdType() == 1;
    }

    @Override
    public void onBannerDestroy() {
        TBannerView tBannerView = this.f32311a;
        if (tBannerView != null) {
            tBannerView.destroy();
            this.f32311a = null;
        }
    }

    @Override
    public void onBannerLoad() {
        TBannerView tBannerView = this.f32311a;
        if (tBannerView == null || tBannerView.getRequest() == null) {
            return;
        }
        AdLogUtil.Log().d("AdxBanner", "onBannerLoad " + this.f32311a.getRequest());
        d7.a request = this.f32311a.getRequest();
        request.k(this.requestType);
        request.l("hisa-" + this.mTriggerId);
        request.j("hisa-" + this.mRequestId);
        request.i(getSupportHisavanaFlag() >= 2);
        this.f32311a.setRequest(request);
        this.f32311a.setContainVulgarContent(this.isContainVulgarContent);
        this.f32311a.setAdLoadScenes(this.mGameName, this.mGameScene, this.mExtInfo);
        this.f32311a.setCurrActivityFullscreen(this.mCurrActivityFullscreen);
        this.f32311a.loadAd();
    }

    @Override
    public void showBanner() {
        TBannerView tBannerView = this.f32311a;
        if (tBannerView == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e("AdxBanner", "showBanner show error");
            return;
        }
        if (this.secondPrice != 0.0d && tBannerView.getRequest() != null) {
            d7.a request = this.f32311a.getRequest();
            request.h(this.secondPrice);
            this.f32311a.setRequest(request);
        }
        this.f32311a.show();
    }

    @Override
    public TBannerView getBanner() {
        Network network;
        AdLogUtil.Log().d("AdxBanner", "getBanner " + this.requestType);
        if (this.f32311a == null && (network = this.mNetwork) != null) {
            b.f16688b = network.getApplicationId();
            this.f32311a = new TBannerView(e.a(), this.mNetwork.getCodeSeatId());
            a aVar = new a();
            this.f32311a.setRequest(d7.a.a().a());
            this.f32311a.setListener(aVar);
            this.f32311a.setPlacementId(this.mNetwork.getCodeSeatId());
            this.f32311a.setHideAdCloseView(this.isHideAdCloseView);
            this.f32311a.setCloseDirectlyWithoutJumping(this.isCloseDirectly);
        }
        return this.f32311a;
    }
}
