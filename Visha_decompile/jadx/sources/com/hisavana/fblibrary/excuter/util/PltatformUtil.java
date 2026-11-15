package com.hisavana.fblibrary.excuter.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.facebook.ads.Ad;
import com.facebook.ads.AdSettings;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeBannerAd;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.AdLogUtil;
import defpackage.o9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class PltatformUtil {
    public static Handler handler;

    public class a extends NativeAdWrapper {
        public final BaseNative a;
        public final AdNativeInfo b;
        public final NativeAd c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(NativeAd nativeAd, BaseNative baseNative, BaseNative baseNative2, AdNativeInfo adNativeInfo, NativeAd nativeAd2) {
            super(nativeAd, baseNative);
            this.a = baseNative2;
            this.b = adNativeInfo;
            this.c = nativeAd2;
        }

        @Override
        public void destroy() {
            BaseNative baseNative = this.a;
            if (baseNative != null) {
                baseNative.destroySingleAd(this.b);
            }
            try {
                ((NativeAd) getNativeAd()).destroy();
                getAdImpl().destroyAd();
            } catch (Throwable th) {
                AdLogUtil.Log().w("facebook", "destroy ad error:" + th.getMessage());
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
        public boolean isExpired() {
            return this.c.isAdInvalidated();
        }

        @Override
        public boolean isIconValid() {
            return ((NativeAd) getNativeAd()).getAdIcon() != null;
        }

        @Override
        public boolean isImageValid() {
            return ((NativeAd) getNativeAd()).getAdCoverImage() != null;
        }

        @Override
        public boolean isMaterielValid() {
            return true;
        }
    }

    public class b extends NativeAdWrapper {
        public final NativeBannerAd a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(NativeBannerAd nativeBannerAd, BaseNative baseNative, NativeBannerAd nativeBannerAd2) {
            super(nativeBannerAd, baseNative);
            this.a = nativeBannerAd2;
        }

        @Override
        public void destroy() {
            ((NativeBannerAd) getNativeAd()).destroy();
        }

        @Override
        public Bundle getTrackBundle() {
            if (getAdImpl() != null) {
                return getAdImpl().mBundle;
            }
            return null;
        }

        @Override
        public boolean isExpired() {
            return this.a.isAdInvalidated();
        }

        @Override
        public boolean isIconValid() {
            return ((NativeBannerAd) getNativeAd()).getAdIcon() != null;
        }

        @Override
        public boolean isImageValid() {
            return false;
        }

        @Override
        public boolean isMaterielValid() {
            return true;
        }
    }

    public static void addTestDevice(Context context) {
        if (AdSettings.isTestMode(context)) {
            return;
        }
        String strK = o9.e().k("deviceIdHash", null);
        if (TextUtils.isEmpty(strK)) {
            return;
        }
        AdSettings.addTestDevice(strK);
    }

    public static void addTestDevices(Collection<String> collection) {
        AdSettings.addTestDevices(collection);
    }

    public static void clearTestDevices() {
        AdSettings.clearTestDevices();
    }

    @SuppressLint({"RestrictedApi"})
    public static void findFbMediaViewAndIconView(ViewGroup viewGroup, List<View> list) {
        Preconditions.b(list);
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof MediaView) {
                list.add(childAt);
            } else if (childAt instanceof ViewGroup) {
                findFbMediaViewAndIconView((ViewGroup) childAt, list);
            }
        }
    }

    public static TAdNativeInfo getTAdNativeInfo(Ad ad, int i, int i2, BaseNative baseNative) {
        AdNativeInfo.Image image;
        AdNativeInfo.Image image2;
        if (ad != null) {
            try {
                ArrayList arrayList = new ArrayList();
                if (ad instanceof NativeAd) {
                    AdNativeInfo adNativeInfo = new AdNativeInfo();
                    NativeAd nativeAd = (NativeAd) ad;
                    adNativeInfo.setAdId(nativeAd.getId());
                    adNativeInfo.setTitle(nativeAd.getAdvertiserName());
                    adNativeInfo.setDescription(nativeAd.getAdBodyText());
                    adNativeInfo.setSocialContext(nativeAd.getAdSocialContext());
                    adNativeInfo.setSponsoredTranslation(nativeAd.getSponsoredTranslation());
                    adNativeInfo.setAdCallToAction(nativeAd.getAdCallToAction());
                    if (baseNative != null && baseNative.getNetwork() != null) {
                        adNativeInfo.setEcpmPrice(baseNative.getNetwork().getPrice().doubleValue());
                    }
                    if (nativeAd.getAdIcon() != null) {
                        image2 = new AdNativeInfo.Image();
                        image2.setWidth(nativeAd.getAdIcon().getWidth());
                        image2.setHeight(nativeAd.getAdIcon().getHeight());
                    } else {
                        image2 = null;
                    }
                    adNativeInfo.setIcon(image2);
                    if (nativeAd.getAdCoverImage() != null) {
                        AdNativeInfo.Image image3 = new AdNativeInfo.Image();
                        image3.setWidth(nativeAd.getAdCoverImage().getWidth());
                        image3.setHeight(nativeAd.getAdCoverImage().getHeight());
                        image3.setUrl(nativeAd.getAdCoverImage().getUrl());
                        arrayList.add(image3);
                    }
                    adNativeInfo.setImageList(arrayList);
                    adNativeInfo.setTriggerId(baseNative == null ? null : baseNative.getTriggerId());
                    adNativeInfo.setNativeAdWrapper(new a(nativeAd, baseNative, baseNative, adNativeInfo, nativeAd));
                    adNativeInfo.setAdType(i);
                    adNativeInfo.setTtl(i2);
                    if (baseNative != null) {
                        adNativeInfo.setAdSource(baseNative.getAdSource());
                    }
                    return adNativeInfo;
                }
                if (ad instanceof NativeBannerAd) {
                    AdNativeInfo adNativeInfo2 = new AdNativeInfo();
                    NativeBannerAd nativeBannerAd = (NativeBannerAd) ad;
                    adNativeInfo2.setAdId(nativeBannerAd.getId());
                    adNativeInfo2.setTitle(nativeBannerAd.getAdvertiserName());
                    adNativeInfo2.setDescription(nativeBannerAd.getAdBodyText());
                    adNativeInfo2.setSocialContext(nativeBannerAd.getAdSocialContext());
                    adNativeInfo2.setSponsoredTranslation(nativeBannerAd.getSponsoredTranslation());
                    adNativeInfo2.setAdCallToAction(nativeBannerAd.getAdCallToAction());
                    if (nativeBannerAd.getAdIcon() != null) {
                        image = new AdNativeInfo.Image();
                        image.setWidth(nativeBannerAd.getAdIcon().getWidth());
                        image.setHeight(nativeBannerAd.getAdIcon().getHeight());
                    } else {
                        image = null;
                    }
                    adNativeInfo2.setIcon(image);
                    adNativeInfo2.setImageList(arrayList);
                    adNativeInfo2.setTriggerId(baseNative == null ? null : baseNative.getTriggerId());
                    adNativeInfo2.setNativeAdWrapper(new b(nativeBannerAd, baseNative, nativeBannerAd));
                    adNativeInfo2.setAdType(i);
                    adNativeInfo2.setTtl(i2);
                    adNativeInfo2.setAdSource(baseNative == null ? 2 : baseNative.getAdSource());
                    return adNativeInfo2;
                }
            } catch (Exception e) {
                AdLogUtil.Log().w("PlatformUtil", Log.getStackTraceString(e));
            }
        }
        return null;
    }

    public static boolean isTestMode(Context context) {
        return AdSettings.isTestMode(context);
    }

    public static void setDebugBuild(boolean z) {
        AdSettings.setDebugBuild(z);
    }
}
