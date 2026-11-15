package com.hisavana.admoblibrary.util;

import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.nativead.NativeAd;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.utils.AdLogUtil;
import defpackage.ia3;
import defpackage.ul4;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class PlatformUtil {
    public static Handler a;
    public static List<String> b = new ArrayList();
    public static String c = "";

    public class a extends NativeAdWrapper {
        public final BaseNative a;
        public final AdNativeInfo b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(NativeAd nativeAd, BaseNative baseNative, BaseNative baseNative2, AdNativeInfo adNativeInfo) {
            super(nativeAd, baseNative);
            this.a = baseNative2;
            this.b = adNativeInfo;
        }

        @Override
        public void destroy() {
            BaseNative baseNative = this.a;
            if (baseNative != null) {
                baseNative.destroySingleAd(this.b);
            }
            try {
                ((NativeAd) getNativeAd()).destroy();
            } catch (Throwable th) {
                AdLogUtil.Log().e("admob PlatformUtil", "destroy ad error:" + th.getMessage());
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
            return (((NativeAd) getNativeAd()).getIcon() == null || ((NativeAd) getNativeAd()).getIcon().getDrawable() == null) ? false : true;
        }

        @Override
        public boolean isImageValid() {
            return this.b.getImageList().size() > 0;
        }

        @Override
        public boolean isMaterielValid() {
            return true;
        }
    }

    public static TAdNativeInfo a(Object obj, int i, int i2, BaseNative baseNative) {
        AdNativeInfo.Image image;
        VideoController videoController;
        if (obj != null) {
            try {
                ArrayList arrayList = new ArrayList();
                if (obj instanceof NativeAd) {
                    AdNativeInfo adNativeInfo = new AdNativeInfo();
                    NativeAd nativeAd = (NativeAd) obj;
                    if (baseNative != null && baseNative.getNetwork() != null) {
                        adNativeInfo.setEcpmPrice(baseNative.getNetwork().getPrice().doubleValue());
                    }
                    adNativeInfo.setTriggerId(baseNative == null ? null : baseNative.getTriggerId());
                    adNativeInfo.setNativeAdWrapper(new a(nativeAd, baseNative, baseNative, adNativeInfo));
                    adNativeInfo.setAdId(DeviceUtil.p());
                    if (nativeAd.getHeadline() != null) {
                        adNativeInfo.setTitle(nativeAd.getHeadline().toString());
                    }
                    if (nativeAd.getBody() != null) {
                        adNativeInfo.setDescription(nativeAd.getBody().toString());
                    }
                    if (nativeAd.getCallToAction() != null) {
                        adNativeInfo.setAdCallToAction(nativeAd.getCallToAction().toString());
                    }
                    if (nativeAd.getStarRating() != null) {
                        adNativeInfo.setRating(nativeAd.getStarRating() + "");
                    }
                    if (nativeAd.getPrice() != null) {
                        adNativeInfo.setSaleprice(nativeAd.getPrice());
                    }
                    if (nativeAd.getIcon() != null) {
                        image = new AdNativeInfo.Image();
                        if (nativeAd.getIcon().getDrawable() != null) {
                            image.setDrawable(nativeAd.getIcon().getDrawable());
                            image.setUrl(nativeAd.getIcon().getUri() != null ? nativeAd.getIcon().getUri().toString() : "");
                        }
                    } else {
                        image = null;
                    }
                    adNativeInfo.setIcon(image);
                    if (nativeAd.getMediaContent() != null) {
                        try {
                            videoController = nativeAd.getMediaContent().getVideoController();
                        } catch (Exception unused) {
                            videoController = null;
                        }
                    } else {
                        videoController = null;
                    }
                    if (videoController != null && videoController.hasVideoContent()) {
                        AdNativeInfo.Image image2 = new AdNativeInfo.Image();
                        image2.setRatio(nativeAd.getMediaContent().getAspectRatio());
                        arrayList.add(image2);
                    } else if (nativeAd.getImages() != null && !nativeAd.getImages().isEmpty()) {
                        AdNativeInfo.Image image3 = new AdNativeInfo.Image();
                        if (nativeAd.getImages().get(0) != null) {
                            image3.setDrawable(nativeAd.getImages().get(0).getDrawable());
                        }
                        if (nativeAd.getImages().get(0) != null && nativeAd.getImages().get(0).getUri() != null) {
                            image3.setUrl(nativeAd.getImages().get(0).getUri().toString());
                        }
                        arrayList.add(image3);
                    }
                    adNativeInfo.setImageList(arrayList);
                    adNativeInfo.setAdType(i);
                    adNativeInfo.setTtl(i2);
                    adNativeInfo.setAdSource(baseNative.getAdSource());
                    adNativeInfo.setAdCreateId(adNativeInfo.getAdId());
                    adNativeInfo.setIconAd(baseNative.isIconAd());
                    adNativeInfo.setMediatorSourceName(baseNative.getMediatorSourceName());
                    adNativeInfo.setMediatorSourceUnitId(baseNative.getMediatorSourceUnitId());
                    return adNativeInfo;
                }
            } catch (Exception e) {
                AdLogUtil.Log().w("PlatformUtil", Log.getStackTraceString(e));
            }
        }
        return null;
    }

    public static String b() {
        if (!TextUtils.isEmpty(c)) {
            return c;
        }
        String string = Settings.Secure.getString(ul4.a().getContentResolver(), "android_id");
        if (!TextUtils.isEmpty(string)) {
            string = string.trim();
        }
        String strA = TextUtils.isEmpty(string) ? "" : ia3.a(string);
        c = strA;
        return strA;
    }

    public static AdRequest a() {
        AdRequest.Builder builder = new AdRequest.Builder();
        builder.setHttpTimeoutMillis(ComConstants.AD_TIMEOUT_MILLIS);
        return builder.build();
    }

    public static AdRequest a(int i) {
        AdRequest.Builder builder = new AdRequest.Builder();
        builder.setHttpTimeoutMillis(ComConstants.AD_TIMEOUT_MILLIS);
        if (i != 0) {
            Bundle bundle = new Bundle();
            if (i == 1) {
                bundle.putString("collapsible", "top");
            } else {
                bundle.putString("collapsible", "bottom");
            }
            bundle.putString("collapsible_request_id", UUID.randomUUID().toString());
            builder.addNetworkExtrasBundle(AdMobAdapter.class, bundle);
        }
        return builder.build();
    }
}
