package com.hisavana.yandex.util;

import android.os.Bundle;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.yandex.executer.YandexNative;
import com.yandex.mobile.ads.nativeads.NativeAd;
import com.yandex.mobile.ads.nativeads.NativeAdAssets;

public class YandexPlatformUtil {
    public static TAdNativeInfo getNativeInfo(NativeAd nativeAd, int i, int i2, final YandexNative yandexNative) {
        if (nativeAd == null || yandexNative == null) {
            return null;
        }
        final AdNativeInfo adNativeInfo = new AdNativeInfo();
        adNativeInfo.setTriggerId(yandexNative.getTriggerId());
        adNativeInfo.setAdId(DeviceUtil.p());
        if (yandexNative.getNetwork() != null) {
            adNativeInfo.setEcpmPrice(yandexNative.getNetwork().getPrice().doubleValue());
        }
        adNativeInfo.setNativeAdWrapper(new NativeAdWrapper<NativeAd>(nativeAd, yandexNative) {
            @Override
            public void destroy() {
                yandexNative.destroySingleAd(adNativeInfo);
                try {
                    getAdImpl().destroyAd();
                } catch (Throwable th) {
                    AdLogUtil.Log().w("yandex PlatformUtil", "destroy ad error:" + th.getMessage());
                }
            }

            @Override
            public Bundle getTrackBundle() {
                if (getAdImpl() != null) {
                    return getAdImpl().mBundle;
                }
                return null;
            }

            @Override
            public boolean isIconValid() {
                return true;
            }

            @Override
            public boolean isImageValid() {
                return true;
            }
        });
        NativeAdAssets adAssets = nativeAd.getAdAssets();
        if (adAssets != null) {
            adNativeInfo.setTitle(adAssets.getTitle());
            adNativeInfo.setDescription(adAssets.getBody());
            adNativeInfo.setAdCallToAction(adAssets.getCallToAction());
            adNativeInfo.setRating(adAssets.getRating() == null ? "" : adAssets.getRating().toString());
            adNativeInfo.setSaleprice(adAssets.getPrice());
        }
        adNativeInfo.setAdType(i);
        adNativeInfo.setTtl(i2);
        adNativeInfo.setAdSource(yandexNative.getAdSource());
        adNativeInfo.setAdCreateId(adNativeInfo.getAdId());
        return adNativeInfo;
    }
}
