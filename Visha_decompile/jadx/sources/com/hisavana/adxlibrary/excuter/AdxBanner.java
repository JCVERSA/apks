package com.hisavana.adxlibrary.excuter;

import android.content.Context;
import com.cloud.hisavana.sdk.api.adx.TBannerView;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.transsion.push.PushConstants;
import defpackage.n6;
import defpackage.r6;
import defpackage.ul4;
import defpackage.w6;

public class AdxBanner extends BaseBanner<TBannerView> {
    public TBannerView a;

    public class a extends n6 {
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
            if (AdxBanner.this.a != null) {
                double bidPrice = AdxBanner.this.a.getBidPrice();
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

    public AdxBanner(Context context, Network network, int i) {
        super(context, network);
        AdLogUtil.Log().d("AdxBanner", "bannerSize:=" + i + getLogString());
    }

    @Override
    public boolean canShow() {
        TBannerView tBannerView = this.a;
        if (tBannerView == null) {
            return super.canShow();
        }
        try {
            return tBannerView.getAdReadyStatusWithoutTracking() == 0;
        } catch (Throwable th) {
            AdLogUtil.Log().e("AdxBanner", "canShow failed: " + th.getMessage());
            return false;
        }
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        AdLogUtil.Log().d("AdxBanner", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    @Override
    public boolean isAdxAd() {
        TBannerView tBannerView = this.a;
        return tBannerView != null && tBannerView.getAdSource() == 2;
    }

    @Override
    public boolean isEwAd() {
        TBannerView tBannerView = this.a;
        return tBannerView != null && tBannerView.getAdSource() == 1;
    }

    @Override
    public boolean isExpired() {
        if (super.isExpired()) {
            return true;
        }
        TBannerView tBannerView = this.a;
        if (tBannerView == null) {
            setExpireReason(1115);
            return true;
        }
        try {
            int adReadyStatusWithoutTracking = tBannerView.getAdReadyStatusWithoutTracking();
            setExpireReason(adReadyStatusWithoutTracking);
            return adReadyStatusWithoutTracking != 0;
        } catch (Throwable th) {
            AdLogUtil.Log().e("AdxBanner", "isExpired failed: " + th.getMessage());
            setExpireReason(1115);
            return true;
        }
    }

    @Override
    public boolean isInternalAd() {
        TBannerView tBannerView = this.a;
        return tBannerView != null && tBannerView.isDefaultAd();
    }

    @Override
    public boolean isMatchVulgarBrand() {
        TBannerView tBannerView = this.a;
        return tBannerView != null && tBannerView.isMatchVulgarBrand();
    }

    @Override
    public boolean isOfflineAd() {
        TBannerView tBannerView = this.a;
        return tBannerView != null && tBannerView.getFillAdType() == 1;
    }

    @Override
    public void onBannerDestroy() {
        TBannerView tBannerView = this.a;
        if (tBannerView != null) {
            tBannerView.destroy();
            this.a = null;
        }
    }

    @Override
    public void onBannerLoad() {
        TBannerView tBannerView = this.a;
        if (tBannerView == null || tBannerView.getRequest() == null) {
            return;
        }
        AdLogUtil.Log().d("AdxBanner", "onBannerLoad " + this.a.getRequest());
        w6 request = this.a.getRequest();
        request.k(this.requestType);
        request.l("hisa-" + this.mTriggerId);
        request.j("hisa-" + this.mRequestId);
        request.i(getSupportHisavanaFlag() >= 2);
        this.a.setRequest(request);
        this.a.setContainVulgarContent(this.isContainVulgarContent);
        this.a.setAdLoadScenes(this.mGameName, this.mGameScene, this.mExtInfo);
        this.a.setCurrActivityFullscreen(this.mCurrActivityFullscreen);
        this.a.loadAd();
    }

    @Override
    public void showBanner() {
        TBannerView tBannerView = this.a;
        if (tBannerView == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e("AdxBanner", "showBanner show error");
            return;
        }
        if (this.secondPrice != 0.0d && tBannerView.getRequest() != null) {
            w6 request = this.a.getRequest();
            request.h(this.secondPrice);
            this.a.setRequest(request);
        }
        this.a.show();
    }

    @Override
    public TBannerView getBanner() {
        Network network;
        AdLogUtil.Log().d("AdxBanner", "getBanner " + this.requestType);
        if (this.a == null && (network = this.mNetwork) != null) {
            r6.b = network.getApplicationId();
            this.a = new TBannerView(ul4.a(), this.mNetwork.getCodeSeatId());
            a aVar = new a();
            this.a.setRequest(w6.a().a());
            this.a.setListener(aVar);
            this.a.setPlacementId(this.mNetwork.getCodeSeatId());
            this.a.setHideAdCloseView(this.isHideAdCloseView);
            this.a.setCloseDirectlyWithoutJumping(this.isCloseDirectly);
        }
        return this.a;
    }
}
