package de;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import b7.c;
import com.cloud.hisavana.sdk.api.listener.e;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.tmc.ad.Constants;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.interfacz.AdShowListener;
import com.hisavana.common.utils.AdLogUtil;
import java.util.ArrayList;
import java.util.List;

public class a {

    public class C0707a extends NativeAdWrapper {

        public final BaseNative f59025a;

        public final AdNativeInfo f59026b;

        public final c f59027c;

        public final TaNativeInfo f59028d;

        public class C0708a extends e {

            public final AdShowListener f59029b;

            public C0708a(AdShowListener adShowListener) {
                this.f59029b = adShowListener;
            }

            @Override
            public void a(TaNativeInfo taNativeInfo) {
                C0707a c0707a = C0707a.this;
                c0707a.f59025a.adImpression(c0707a.f59026b);
                AdShowListener adShowListener = this.f59029b;
                if (adShowListener != null) {
                    adShowListener.onAdShow(C0707a.this.f59026b);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0707a(TaNativeInfo taNativeInfo, BaseNative baseNative, BaseNative baseNative2, AdNativeInfo adNativeInfo, c cVar, TaNativeInfo taNativeInfo2) {
            super(taNativeInfo, baseNative);
            this.f59025a = baseNative2;
            this.f59026b = adNativeInfo;
            this.f59027c = cVar;
            this.f59028d = taNativeInfo2;
        }

        @Override
        public void destroy() {
            BaseNative baseNative = this.f59025a;
            if (baseNative != null) {
                baseNative.destroySingleAd(this.f59026b);
            }
            try {
                ((TaNativeInfo) getNativeAd()).destroy();
            } catch (Throwable th2) {
                AdLogUtil.Log().w("Eagllwin", "destroy ad error:" + th2.getMessage());
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
        public void handleClick() {
            j7.a.b(this.f59028d);
            this.f59025a.adClicked(this.f59026b);
        }

        @Override
        public boolean isExpired() {
            return !this.f59027c.u((TaNativeInfo) getNativeAd());
        }

        @Override
        public boolean isIconValid() {
            return true;
        }

        @Override
        public boolean isImageValid() {
            return true;
        }

        @Override
        public boolean isMatchVulgarBrand() {
            return this.f59028d.isMatchVulgarBrand();
        }

        @Override
        public boolean isMaterielValid() {
            return this.f59025a.isIconAd() ? isIconValid() : isImageValid();
        }

        @Override
        public void registerViewForInteraction(View view, AdShowListener adShowListener) {
            BaseNative baseNative = this.f59025a;
            if (baseNative == null) {
                return;
            }
            baseNative.logTrigerShow(this.f59026b);
            j7.a.c(this.f59028d, view, new C0708a(adShowListener));
        }

        @Override
        public void trackRecommendClick(String str, String str2) {
            try {
                this.f59025a.trackRecommendClick(str, str2);
            } catch (Throwable unused) {
            }
        }

        @Override
        public void trackRecommendShow(List list) {
            try {
                this.f59025a.trackRecommendShow(list);
            } catch (Throwable unused) {
            }
        }
    }

    public static TAdNativeInfo a(TaNativeInfo taNativeInfo, int i10, int i11, BaseNative baseNative, c cVar) {
        AdNativeInfo.Image image;
        if (taNativeInfo != null && baseNative != null) {
            try {
                AdNativeInfo adNativeInfo = new AdNativeInfo();
                ArrayList arrayList = new ArrayList();
                adNativeInfo.setAdId(DeviceUtil.o());
                adNativeInfo.setTitle(taNativeInfo.getTitle());
                adNativeInfo.setDescription(taNativeInfo.getDescription());
                adNativeInfo.setAdCallToAction(taNativeInfo.getCtatext());
                adNativeInfo.setHisavanaSource(taNativeInfo.getHisavanaSource());
                if (taNativeInfo.getIconImage() == null || TextUtils.isEmpty(taNativeInfo.getIconImage().getImgUrl())) {
                    image = null;
                } else {
                    image = new AdNativeInfo.Image();
                    image.setUrl(taNativeInfo.getIconImage().getImgUrl());
                    image.setWidth(taNativeInfo.getIconImage().getW());
                    image.setHeight(taNativeInfo.getIconImage().getH());
                    image.setDrawable(taNativeInfo.getIconImage().getDrawable());
                    image.setCached(taNativeInfo.getIconImage().isCached());
                }
                adNativeInfo.setIcon(image);
                if (taNativeInfo.getImage() != null) {
                    AdNativeInfo.Image image2 = new AdNativeInfo.Image();
                    image2.setUrl(taNativeInfo.getImage().getImgUrl());
                    image2.setWidth(taNativeInfo.getImage().getW());
                    image2.setHeight(taNativeInfo.getImage().getH());
                    image2.setDrawable(taNativeInfo.getImage().getDrawable());
                    image2.setCached(taNativeInfo.getImage().isCached());
                    arrayList.add(image2);
                }
                adNativeInfo.setImageList(arrayList);
                adNativeInfo.setRating(taNativeInfo.getRating());
                double bidPrice = taNativeInfo.getBidPrice();
                if (bidPrice > 0.0d) {
                    adNativeInfo.setEcpmPrice(bidPrice);
                }
                adNativeInfo.setAdType(i10);
                adNativeInfo.setTtl(i11);
                adNativeInfo.setAdSource(baseNative.getAdSource());
                adNativeInfo.setMaterialStyle(taNativeInfo.getMaterialStyle());
                adNativeInfo.setAdCreateId(taNativeInfo.getAdCreateId() == null ? "0" : taNativeInfo.getAdCreateId().toString());
                adNativeInfo.setOfflineAd(taNativeInfo.isOfflineAd());
                adNativeInfo.setPullNewestLive(taNativeInfo.getPullNewestLive());
                adNativeInfo.setPackageName(taNativeInfo.getPackageName());
                adNativeInfo.setAppInfo(taNativeInfo.getAppInfo());
                adNativeInfo.setIconAd(baseNative.isIconAd());
                adNativeInfo.setPullNewestLive(taNativeInfo.getPullNewestLive());
                if (taNativeInfo.getAdItem() != null && taNativeInfo.getPullNewestLive() == 3 && !TextUtils.isEmpty(taNativeInfo.getAdItem().getDeepLinkUrl()) && !taNativeInfo.getAdItem().getDeepLinkUrl().contains(Constants.GP_DEEPLINK)) {
                    adNativeInfo.setDeepLink(taNativeInfo.getAdItem().getDeepLinkUrl());
                }
                adNativeInfo.setTriggerId(baseNative.getTriggerId());
                adNativeInfo.setInternalAd(taNativeInfo.isDefaultAd());
                try {
                    adNativeInfo.setSourceSize(taNativeInfo.getSourceSize());
                } catch (Throwable unused) {
                }
                try {
                    adNativeInfo.setAdFormat(taNativeInfo.getAdFormat());
                } catch (Throwable unused2) {
                }
                try {
                    adNativeInfo.setUseRecommend(taNativeInfo.isUseRecommend());
                } catch (Throwable unused3) {
                }
                try {
                    adNativeInfo.setSspWebRecommendInfos(taNativeInfo.getRecommendInfos());
                } catch (Throwable unused4) {
                }
                adNativeInfo.setNativeAdWrapper(new C0707a(taNativeInfo, baseNative, baseNative, adNativeInfo, cVar, taNativeInfo));
                return adNativeInfo;
            } catch (Exception e10) {
                AdLogUtil.Log().w("PlatformUtil", Log.getStackTraceString(e10));
            }
        }
        return null;
    }
}
