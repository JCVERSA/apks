package com.hisavana.pangle.util;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.mbridge.msdk.mbbid.out.BidResponsed;

public class PlatformUtil {
    public static TAdNativeInfo getTAdNativeInfo(PAGNativeAd pAGNativeAd, int i10, int i11, final BaseNative baseNative) {
        AdNativeInfo.Image image;
        if (pAGNativeAd != null) {
            try {
                if (pAGNativeAd.getNativeAdData() != null && baseNative != null) {
                    final PAGNativeAdData nativeAdData = pAGNativeAd.getNativeAdData();
                    final AdNativeInfo adNativeInfo = new AdNativeInfo();
                    if (baseNative.getNetwork() != null) {
                        adNativeInfo.setEcpmPrice(baseNative.getNetwork().getPrice().doubleValue());
                    }
                    adNativeInfo.setTriggerId(baseNative.getTriggerId());
                    adNativeInfo.setNativeAdWrapper(new NativeAdWrapper<PAGNativeAd>(pAGNativeAd, baseNative) {
                        @Override
                        public void destroy() {
                            BaseNative baseNative2 = baseNative;
                            if (baseNative2 != null) {
                                baseNative2.destroySingleAd(adNativeInfo);
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
                            return (nativeAdData.getIcon() == null || TextUtils.isEmpty(nativeAdData.getIcon().getImageUrl())) ? false : true;
                        }

                        @Override
                        public boolean isImageValid() {
                            return true;
                        }

                        @Override
                        public boolean isMaterielValid() {
                            return true;
                        }
                    });
                    adNativeInfo.setAdId(DeviceUtil.o());
                    if (!TextUtils.isEmpty(nativeAdData.getTitle())) {
                        adNativeInfo.setTitle(nativeAdData.getTitle());
                    }
                    if (!TextUtils.isEmpty(nativeAdData.getDescription())) {
                        adNativeInfo.setDescription(nativeAdData.getDescription());
                    }
                    if (!TextUtils.isEmpty(nativeAdData.getButtonText())) {
                        adNativeInfo.setAdCallToAction(nativeAdData.getButtonText());
                    }
                    if (nativeAdData.getIcon() == null || nativeAdData.getIcon().getImageUrl() == null) {
                        image = null;
                    } else {
                        image = new AdNativeInfo.Image();
                        image.setUrl(nativeAdData.getIcon().getImageUrl());
                    }
                    adNativeInfo.setIcon(image);
                    double d10 = Double.parseDouble(pAGNativeAd.getExtraInfo(BidResponsed.KEY_PRICE).toString());
                    if (d10 > 0.0d) {
                        adNativeInfo.setEcpmPrice(d10 * 100.0d);
                    }
                    adNativeInfo.setAdType(i10);
                    adNativeInfo.setTtl(i11);
                    adNativeInfo.setAdSource(baseNative.getAdSource());
                    adNativeInfo.setAdCreateId(adNativeInfo.getAdId());
                    return adNativeInfo;
                }
            } catch (Exception e10) {
                AdLogUtil.Log().w("PlatformUtil", Log.getStackTraceString(e10));
            }
        }
        return null;
    }
}
