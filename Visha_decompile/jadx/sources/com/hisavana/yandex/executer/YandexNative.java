package com.hisavana.yandex.executer;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.yandex.check.ExistsCheck;
import com.hisavana.yandex.util.YandexPlatformUtil;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.common.ImpressionData;
import com.yandex.mobile.ads.common.InitializationListener;
import com.yandex.mobile.ads.nativeads.NativeAd;
import com.yandex.mobile.ads.nativeads.NativeAdEventListener;
import com.yandex.mobile.ads.nativeads.NativeAdRequestConfiguration;
import com.yandex.mobile.ads.nativeads.NativeBulkAdLoadListener;
import com.yandex.mobile.ads.nativeads.NativeBulkAdLoader;
import defpackage.ul4;
import java.util.Iterator;
import java.util.List;

public class YandexNative extends BaseNative {
    private final String TAG;
    private NativeBulkAdLoader mAdLoader;
    private List<NativeAd> mAds;

    public YandexNative(Context context, Network network, int i) {
        super(context, network, i);
        this.TAG = "YandexNative";
    }

    public void lambda$onNativeAdStartLoad$0() {
        try {
            NativeBulkAdLoader nativeBulkAdLoader = this.mAdLoader;
            if (nativeBulkAdLoader != null) {
                nativeBulkAdLoader.loadAds(new NativeAdRequestConfiguration.Builder(this.mNetwork.getCodeSeatId()).build(), this.mAdCount);
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        NativeBulkAdLoader nativeBulkAdLoader = this.mAdLoader;
        if (nativeBulkAdLoader != null) {
            nativeBulkAdLoader.setNativeBulkAdLoadListener(null);
            this.mAdLoader = null;
        }
    }

    @Override
    public void initNative() {
        if (this.mAdLoader == null) {
            NativeBulkAdLoader nativeBulkAdLoader = new NativeBulkAdLoader(ul4.a());
            this.mAdLoader = nativeBulkAdLoader;
            nativeBulkAdLoader.setNativeBulkAdLoadListener(new NativeBulkAdLoadListener() {
                @Override
                public void onAdsFailedToLoad(@NonNull AdRequestError adRequestError) {
                    AdLogUtil adLogUtilLog = AdLogUtil.Log();
                    StringBuilder sb = new StringBuilder();
                    sb.append("yandex native onAdFailedToLoad");
                    sb.append(YandexNative.this.getLogString());
                    sb.append("----->> error info:");
                    sb.append(adRequestError == null ? "" : adRequestError.toString());
                    adLogUtilLog.d("YandexNative", sb.toString());
                    YandexNative.this.adFailedToLoad(adRequestError == null ? TAdErrorCode.ERROR_AD_REQUEST_FAILED : new TAdErrorCode(adRequestError.getCode(), adRequestError.getDescription()));
                }

                @Override
                public void onAdsLoaded(@NonNull List<NativeAd> list) {
                    AdLogUtil.Log().d("YandexNative", "Native is onAdsLoaded:" + YandexNative.this.getLogString());
                    YandexNative.this.mAds = list;
                    Iterator<NativeAd> it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            TAdNativeInfo nativeInfo = YandexPlatformUtil.getNativeInfo(it.next(), ((BaseNative) YandexNative.this).mAdt, YandexNative.this.getTtl(), YandexNative.this);
                            if (YandexNative.this.filter(nativeInfo) == 0) {
                                ((BaseNative) YandexNative.this).mNatives.add(nativeInfo);
                            } else {
                                AdUtil.release(nativeInfo);
                            }
                        } catch (Exception e) {
                            AdLogUtil.Log().w("YandexNative", e.getMessage());
                        }
                    }
                    if (((BaseNative) YandexNative.this).mNatives.isEmpty()) {
                        YandexNative.this.adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_FAILED);
                    } else {
                        YandexNative yandexNative = YandexNative.this;
                        yandexNative.adLoaded(((BaseNative) yandexNative).mNatives);
                    }
                }
            });
        }
    }

    @Override
    public void onNativeAdStartLoad() {
        if (this.mAdLoader == null) {
            adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_FAILED);
        } else {
            ExistsCheck.initYandex(new InitializationListener() {
                @Override
                public final void onInitializationCompleted() {
                    this.a.lambda$onNativeAdStartLoad$0();
                }
            });
        }
    }

    public void registerImpression(@NonNull final AdNativeInfo adNativeInfo) {
        if (adNativeInfo.getNativeAdWrapper() != null) {
            Object nativeAd = adNativeInfo.getNativeAdWrapper().getNativeAd();
            if (nativeAd instanceof NativeAd) {
                ((NativeAd) nativeAd).setNativeAdEventListener(new NativeAdEventListener() {
                    @Override
                    public void onAdClicked() {
                        AdLogUtil.Log().d("YandexNative", "YandexNative is clicked" + YandexNative.this.getLogString());
                        YandexNative.this.adClicked(adNativeInfo);
                    }

                    @Override
                    public void onImpression(@Nullable ImpressionData impressionData) {
                        AdLogUtil adLogUtilLog = AdLogUtil.Log();
                        StringBuilder sb = new StringBuilder();
                        sb.append("YandexNative is onAdImpression");
                        sb.append(impressionData == null ? "" : impressionData.getRawData());
                        sb.append(YandexNative.this.getLogString());
                        adLogUtilLog.d("YandexNative", sb.toString());
                        YandexNative.this.adImpression(adNativeInfo);
                    }

                    @Override
                    public void onLeftApplication() {
                    }

                    @Override
                    public void onReturnedToApplication() {
                    }
                });
            }
        }
    }

    @Override
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, AdNativeInfo adNativeInfo) {
        logTrigerShow(adNativeInfo);
        setNativeCloseListener(viewGroup, adNativeInfo);
    }

    @Override
    public void unregisterView(AdNativeInfo adNativeInfo) {
    }
}
