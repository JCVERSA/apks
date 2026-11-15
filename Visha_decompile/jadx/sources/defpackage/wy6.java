package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.NativeAdWrapper;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.interfacz.AdShowListener;
import com.hisavana.common.utils.AdLogUtil;
import java.util.ArrayList;
import java.util.List;

public abstract class wy6 {

    public class a extends NativeAdWrapper {
        public final BaseNative a;
        public final AdNativeInfo b;
        public final tca c;
        public final TaNativeInfo d;

        public class C0456a extends v7 {
            public final AdShowListener b;

            public C0456a(AdShowListener adShowListener) {
                this.b = adShowListener;
            }

            @Override
            public void a(TaNativeInfo taNativeInfo) {
                a aVar = a.this;
                aVar.a.adImpression(aVar.b);
                AdShowListener adShowListener = this.b;
                if (adShowListener != null) {
                    adShowListener.onAdShow(a.this.b);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(TaNativeInfo taNativeInfo, BaseNative baseNative, BaseNative baseNative2, AdNativeInfo adNativeInfo, tca tcaVar, TaNativeInfo taNativeInfo2) {
            super(taNativeInfo, baseNative);
            this.a = baseNative2;
            this.b = adNativeInfo;
            this.c = tcaVar;
            this.d = taNativeInfo2;
        }

        @Override
        public void destroy() {
            BaseNative baseNative = this.a;
            if (baseNative != null) {
                baseNative.destroySingleAd(this.b);
            }
            try {
                ((TaNativeInfo) getNativeAd()).destroy();
            } catch (Throwable th) {
                AdLogUtil.Log().w("Eagllwin", "destroy ad error:" + th.getMessage());
            }
        }

        @Override
        public String getAdData() {
            return GsonUtil.d(this.d.getAdItem());
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
            oi5.b(this.d);
            this.a.adClicked(this.b);
        }

        @Override
        public void handleShow() {
            oi5.e(this.d);
            this.a.adImpression(this.b);
        }

        @Override
        public boolean isExpired() {
            int iU = this.c.u((TaNativeInfo) getNativeAd());
            setExpireReason(iU);
            return iU != 0;
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
            return this.d.isMatchVulgarBrand();
        }

        @Override
        public boolean isMaterielValid() {
            return this.a.isIconAd() ? isIconValid() : isImageValid();
        }

        @Override
        public void registerViewForInteraction(View view, AdShowListener adShowListener) {
            BaseNative baseNative = this.a;
            if (baseNative == null) {
                return;
            }
            baseNative.logTrigerShow(this.b);
            oi5.f(this.d, view, new C0456a(adShowListener));
        }

        @Override
        public void trackRecommendClick(String str, String str2) {
            try {
                this.a.trackRecommendClick(str, str2);
            } catch (Throwable unused) {
            }
        }

        @Override
        public void trackRecommendShow(List list) {
            try {
                this.a.trackRecommendShow(list);
            } catch (Throwable unused) {
            }
        }
    }

    public static TAdNativeInfo a(TaNativeInfo taNativeInfo, int i, int i2, BaseNative baseNative, tca tcaVar) {
        AdNativeInfo.Image image;
        if (taNativeInfo != null && baseNative != null) {
            try {
                AdNativeInfo adNativeInfo = new AdNativeInfo();
                ArrayList arrayList = new ArrayList();
                adNativeInfo.setAdId(DeviceUtil.p());
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
                adNativeInfo.setAdType(i);
                adNativeInfo.setTtl(i2);
                adNativeInfo.setAdSource(baseNative.getAdSource());
                adNativeInfo.setMaterialStyle(taNativeInfo.getMaterialStyle());
                adNativeInfo.setAdCreateId(taNativeInfo.getAdCreateId() == null ? "0" : taNativeInfo.getAdCreateId().toString());
                adNativeInfo.setOfflineAd(taNativeInfo.isOfflineAd());
                adNativeInfo.setPullNewestLive(taNativeInfo.getPullNewestLive());
                adNativeInfo.setPackageName(taNativeInfo.getPackageName());
                adNativeInfo.setAppInfo(taNativeInfo.getAppInfo());
                adNativeInfo.setIconAd(baseNative.isIconAd());
                adNativeInfo.setPullNewestLive(taNativeInfo.getPullNewestLive());
                adNativeInfo.setDeepLink(taNativeInfo.getAdItem().getDeepLinkUrl());
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
                adNativeInfo.setFromLocal(taNativeInfo.getAdItem() != null && taNativeInfo.getAdItem().isFromLocal());
                adNativeInfo.setNativeAdWrapper(new a(taNativeInfo, baseNative, baseNative, adNativeInfo, tcaVar, taNativeInfo));
                return adNativeInfo;
            } catch (Exception e) {
                AdLogUtil.Log().w("PlatformUtil", Log.getStackTraceString(e));
            }
        }
        return null;
    }
}
