package com.hisavana.fblibrary.excuter;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.AudienceNetworkAds;
import com.hisavana.common.base.BaseAd;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.fblibrary.excuter.check.ExistsCheck;
import com.hisavana.fblibrary.excuter.util.PltatformUtil;
import defpackage.ul4;
import java.lang.ref.WeakReference;

public class FanBanner extends BaseBanner<AdView> {
    public AdView a;
    public int b;
    public AdSize c;
    public AdListener d;

    public class a implements AdListener {
        public a() {
        }

        @Override
        public void onAdClicked(Ad ad) {
            AdLogUtil.Log().d("FanBanner", "banner onAdClicked" + FanBanner.this.getLogString());
            FanBanner.this.adClicked(null);
        }

        @Override
        public void onAdLoaded(Ad ad) {
            AdLogUtil.Log().d("FanBanner", "banner onAdLoaded" + FanBanner.this.getLogString());
            FanBanner.this.adLoaded();
        }

        @Override
        public void onError(Ad ad, AdError adError) {
            AdLogUtil.Log().w("FanBanner", "banner onError:" + adError.getErrorCode() + FanBanner.this.getLogString());
            FanBanner.this.adFailedToLoad(new TAdErrorCode(adError.getErrorCode(), adError.getErrorMessage()));
        }

        @Override
        public void onLoggingImpression(Ad ad) {
            AdLogUtil.Log().d("FanBanner", "banner onLoggingImpression" + FanBanner.this.getLogString());
            FanBanner.this.adImpression(null);
        }
    }

    public FanBanner(Context context, Network network, int i) {
        super(context, network);
        this.mContext = new WeakReference<>(context);
        this.b = i;
        AdLogUtil.Log().d("FanBanner", "bannerSize:=" + i + getLogString());
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        AdLogUtil.Log().d("FanBanner", "destroyAd " + getLogString());
    }

    @Override
    public boolean isExpired() {
        AdView adView = this.a;
        if (adView != null) {
            return adView.isAdInvalidated() || super.isExpired();
        }
        return super.isExpired();
    }

    @Override
    public boolean isSupportRtBidding() {
        return true;
    }

    @Override
    public boolean isSupportStopRequest() {
        return true;
    }

    @Override
    public void loadAd() {
        a();
    }

    @Override
    public void onBannerDestroy() {
        AdView adView = this.a;
        if (adView != null) {
            adView.destroy();
            this.a = null;
        }
    }

    @Override
    public void onBannerLoad() {
        post(PltatformUtil.handler, new Runnable() {

            public class a implements AudienceNetworkAds.InitListener {
                public final long a;

                public a(long j) {
                    this.a = j;
                }

                @Override
                public void onInitialized(AudienceNetworkAds.InitResult initResult) {
                    AdLogUtil.Log().d("FanBanner", "onInitialized " + (System.currentTimeMillis() - this.a));
                    if (initResult == null || !initResult.isSuccess() || FanBanner.this.a == null || ((BaseAd) FanBanner.this).mNetwork == null) {
                        FanBanner.this.adFailedToLoad(new TAdErrorCode(30001, initResult == null ? "" : initResult.getMessage()));
                        return;
                    }
                    if (TextUtils.isEmpty(((BaseAd) FanBanner.this).mNetwork.getBidInfo() != null ? ((BaseAd) FanBanner.this).mNetwork.getBidInfo().getPayload() : null)) {
                        FanBanner.this.a.loadAd(FanBanner.this.a.buildLoadAdConfig().withAdListener(FanBanner.this.d).build());
                        return;
                    }
                    AdLogUtil.Log().d("FanBanner", "load banner with bid info");
                    FanBanner.this.a.loadAd(FanBanner.this.a.buildLoadAdConfig().withAdListener(FanBanner.this.d).withBid(((BaseAd) FanBanner.this).mNetwork.getBidInfo().getPayload()).build());
                    ((BaseAd) FanBanner.this).mNetwork.setBidInfo(null);
                }
            }

            @Override
            public void run() {
                try {
                    ExistsCheck.initFan(ul4.a(), new a(System.currentTimeMillis()));
                } catch (Exception e) {
                    AdLogUtil.Log().e("FanBanner", "onBannerLoad " + Log.getStackTraceString(e));
                }
            }
        });
    }

    @Override
    public void showBanner() {
        AdView adView = this.a;
        if (adView != null) {
            adView.setVisibility(0);
        } else {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e("FanBanner", "showBanner error,adView is null");
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002a  */
    @Override
    public AdView getBanner() {
        if (this.a == null) {
            Network network = this.mNetwork;
            if (network == null || TextUtils.isEmpty(network.getCodeSeatId())) {
                return null;
            }
            int i = this.b;
            if (i == 0) {
                this.c = AdSize.BANNER_HEIGHT_50;
            } else if (i == 1) {
                this.c = AdSize.BANNER_HEIGHT_90;
            } else if (i == 2) {
                this.c = AdSize.RECTANGLE_HEIGHT_250;
            } else if (i != 3) {
                this.c = AdSize.BANNER_HEIGHT_50;
            } else {
                this.c = AdSize.BANNER_HEIGHT_90;
            }
            this.a = new AdView(ul4.a(), this.mNetwork.getCodeSeatId(), this.c);
            this.d = new a();
        }
        return this.a;
    }

    public final void a() {
        super.loadAd();
    }
}
