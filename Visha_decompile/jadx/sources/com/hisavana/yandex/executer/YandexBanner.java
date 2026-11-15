package com.hisavana.yandex.executer;

import android.content.Context;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.yandex.check.ExistsCheck;
import com.yandex.mobile.ads.banner.BannerAdEventListener;
import com.yandex.mobile.ads.banner.BannerAdSize;
import com.yandex.mobile.ads.banner.BannerAdView;
import com.yandex.mobile.ads.common.AdRequest;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.common.ImpressionData;
import com.yandex.mobile.ads.common.InitializationListener;
import java.lang.ref.WeakReference;

public class YandexBanner extends BaseBanner<View> {
    private final String TAG;
    private BannerAdView bannerAdView;

    public YandexBanner(Context context, Network network) {
        super(context, network);
        this.TAG = "YandexBanner";
    }

    public void lambda$onBannerLoad$0() {
        try {
            BannerAdView bannerAdView = this.bannerAdView;
            if (bannerAdView != null) {
                bannerAdView.loadAd(new AdRequest.Builder().build());
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public View getBanner() {
        WeakReference<Context> weakReference = this.mContext;
        if (weakReference == null || this.mNetwork == null) {
            AdLogUtil.Log().w("YandexBanner", "banner load error:" + getLogString() + ", network :" + this.mNetwork);
            return null;
        }
        Context context = weakReference.get();
        if (context == null) {
            return null;
        }
        if (this.bannerAdView == null) {
            BannerAdView bannerAdView = new BannerAdView(context);
            this.bannerAdView = bannerAdView;
            bannerAdView.setAdUnitId(this.mNetwork.getCodeSeatId());
            this.bannerAdView.setBannerAdEventListener(new BannerAdEventListener() {
                @Override
                public void onAdClicked() {
                    AdLogUtil.Log().d("YandexBanner", "onAdClicked" + YandexBanner.this.getLogString());
                    YandexBanner.this.adClicked(null);
                }

                @Override
                public void onAdFailedToLoad(@NonNull AdRequestError adRequestError) {
                    AdLogUtil adLogUtilLog = AdLogUtil.Log();
                    StringBuilder sb = new StringBuilder();
                    sb.append("yandex banner onAdFailedToLoad");
                    sb.append(YandexBanner.this.getLogString());
                    sb.append("----->> error info:");
                    sb.append(adRequestError == null ? "" : adRequestError.toString());
                    adLogUtilLog.d("YandexBanner", sb.toString());
                    YandexBanner.this.adFailedToLoad(adRequestError == null ? TAdErrorCode.ERROR_SHOW_EXCEPTION : new TAdErrorCode(adRequestError.getCode(), adRequestError.getDescription()));
                }

                @Override
                public void onAdLoaded() {
                    AdLogUtil.Log().d("YandexBanner", "banner onAdLoaded" + YandexBanner.this.getLogString());
                    YandexBanner.this.adLoaded();
                }

                @Override
                public void onImpression(@Nullable ImpressionData impressionData) {
                    AdLogUtil adLogUtilLog = AdLogUtil.Log();
                    StringBuilder sb = new StringBuilder();
                    sb.append("onImpression");
                    sb.append(YandexBanner.this.getLogString());
                    sb.append(", impressionData:");
                    sb.append(impressionData == null ? "" : impressionData.getRawData());
                    adLogUtilLog.d("YandexBanner", sb.toString());
                    YandexBanner.this.adImpression(null);
                }

                @Override
                public void onLeftApplication() {
                    AdLogUtil.Log().d("YandexBanner", "onLeftApplication" + YandexBanner.this.getLogString());
                }

                @Override
                public void onReturnedToApplication() {
                    AdLogUtil.Log().d("YandexBanner", "onReturnedToApplication" + YandexBanner.this.getLogString());
                }
            });
        }
        try {
            if (this.mBannerAdWidth <= 0) {
                this.mBannerAdWidth = (int) (context.getResources().getDisplayMetrics().widthPixels / context.getResources().getDisplayMetrics().density);
            }
            int i = this.mBannerAdMaxHeight;
            if (i <= 0) {
                this.bannerAdView.setAdSize(BannerAdSize.stickySize(context, this.mBannerAdWidth));
            } else {
                this.bannerAdView.setAdSize(BannerAdSize.inlineSize(context, this.mBannerAdWidth, i));
            }
        } catch (Exception e) {
            AdLogUtil.Log().w("YandexBanner", "load error: " + Log.getStackTraceString(e));
        }
        return this.bannerAdView;
    }

    @Override
    public void onBannerDestroy() {
        BannerAdView bannerAdView = this.bannerAdView;
        if (bannerAdView != null) {
            bannerAdView.setBannerAdEventListener(null);
            this.bannerAdView.destroy();
            this.bannerAdView = null;
        }
    }

    @Override
    public void onBannerLoad() {
        if (this.bannerAdView != null) {
            ExistsCheck.initYandex(new InitializationListener() {
                @Override
                public final void onInitializationCompleted() {
                    this.a.lambda$onBannerLoad$0();
                }
            });
            return;
        }
        AdLogUtil.Log().w("YandexBanner", "load error: bannerAdView is " + this.bannerAdView + getLogString());
        adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_FAILED);
    }

    @Override
    public void showBanner() {
    }
}
