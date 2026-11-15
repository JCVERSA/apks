package com.hisavana.adxlibrary.excuter;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import b7.c;
import c7.b;
import com.cloud.hisavana.sdk.api.listener.d;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.common.bean.SSPWebRecommendInfo;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.transsion.push.PushConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class AdxNative extends BaseNative {

    public c f32315a;

    public AdNativeInfo f32316b;

    public SSPWebPageReqInfo f32317c;

    public class a extends d {
        public a() {
        }

        @Override
        public void onAdActivate(AdActiveInfo adActiveInfo) {
            AdxNative.this.adActivate(adActiveInfo);
        }

        @Override
        public void onAdClosed(TaNativeInfo taNativeInfo) {
            super.onAdClosed();
            AdxNative.this.adClosed(AdxNative.this.a(taNativeInfo));
        }

        @Override
        public void onAdLoaded(List list) {
            AdLogUtil.Log().d("AdxNative", "onAdLoaded multi");
            int i10 = 0;
            int i11 = 0;
            while (i10 < list.size()) {
                TaNativeInfo taNativeInfo = (TaNativeInfo) list.get(i10);
                int i12 = ((BaseNative) AdxNative.this).mAdt;
                int ttl = AdxNative.this.getTtl();
                AdxNative adxNative = AdxNative.this;
                TAdNativeInfo tAdNativeInfoA = de.a.a(taNativeInfo, i12, ttl, adxNative, adxNative.f32315a);
                int iFilter = AdxNative.this.filter(tAdNativeInfoA);
                if (iFilter == 0) {
                    ((BaseNative) AdxNative.this).mNatives.add(tAdNativeInfoA);
                } else {
                    AdUtil.release(tAdNativeInfoA);
                }
                i10++;
                i11 = iFilter;
            }
            AdxNative adxNative2 = AdxNative.this;
            List<TAdNativeInfo> listA = adxNative2.a((List<TAdNativeInfo>) ((BaseNative) adxNative2).mNatives);
            if (listA != null && !listA.isEmpty()) {
                AdxNative.this.b((List<TaNativeInfo>) list);
                AdxNative.this.adLoaded(listA);
                return;
            }
            AdxNative.this.adFailedToLoad(new TAdErrorCode(i11, "ad filter"));
            AdLogUtil.Log().w("AdxNative", "ad not pass filter check or no icon or image filter:" + i11);
        }

        @Override
        public void onError(TaErrorCode taErrorCode) {
            AdLogUtil.Log().w("AdxNative", "onAdLoaded error +" + taErrorCode.getErrorCode() + ":::" + taErrorCode.getErrorMessage());
            AdxNative.this.adFailedToLoad(new TAdErrorCode(taErrorCode.getErrorCode(), taErrorCode.getErrorMessage()));
        }

        @Override
        public void onNativeAdClick(TaNativeInfo taNativeInfo) {
            TAdNativeInfo tAdNativeInfoA = AdxNative.this.a(taNativeInfo);
            if (tAdNativeInfoA instanceof AdNativeInfo) {
                AdxNative.this.adClicked((AdNativeInfo) tAdNativeInfoA);
            } else {
                AdxNative.this.adClicked(null);
            }
        }

        @Override
        public void onNativeAdShow(TaNativeInfo taNativeInfo) {
            super.onAdShow();
            TAdNativeInfo tAdNativeInfoA = AdxNative.this.a(taNativeInfo);
            if (tAdNativeInfoA instanceof AdNativeInfo) {
                AdxNative.this.adImpression((AdNativeInfo) tAdNativeInfoA);
            } else {
                AdxNative.this.adImpression(null);
            }
        }
    }

    public AdxNative(Context context, Network network, int i10) {
        super(context, network, i10);
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        c cVar = this.f32315a;
        if (cVar != null) {
            cVar.c();
            this.f32315a = null;
        }
        this.f32316b = null;
        AdLogUtil.Log().d("AdxNative", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    public c getNativeAd() {
        return this.f32315a;
    }

    @Override
    public void initNative() {
        if (this.mNetwork != null) {
            this.mNatives.clear();
            c cVar = new c(this.mNetwork.getCodeSeatId());
            this.f32315a = cVar;
            cVar.z(this.mAdCount);
            b.f16688b = this.mNetwork.getApplicationId();
            a aVar = new a();
            this.f32315a.r(d7.a.a().a());
            this.f32315a.p(aVar);
            this.f32315a.q(this.mNetwork.getCodeSeatId());
        }
    }

    @Override
    public boolean isOfflineAd() {
        List<TAdNativeInfo> list = this.mNatives;
        return (list == null || list.isEmpty() || !this.mNatives.get(0).isOfflineAd()) ? false : true;
    }

    @Override
    public void onNativeAdStartLoad() {
        String codeSeatId;
        c cVar = this.f32315a;
        if (cVar != null && cVar.g() != null) {
            d7.a aVarG = this.f32315a.g();
            aVarG.k(this.requestType);
            aVarG.l("hisa-" + this.mTriggerId);
            aVarG.j("hisa-" + this.mRequestId);
            aVarG.i(getSupportHisavanaFlag() >= 2);
            this.f32315a.r(aVarG);
            this.f32315a.m(this.isContainVulgarContent);
            this.f32315a.A(this.mAdt == 6);
            this.f32315a.l(this.mGameName, this.mGameScene, this.mExtInfo);
            this.f32315a.n(this.mCurrActivityFullscreen);
            this.f32315a.B(this.f32317c);
            this.f32315a.v();
            this.f32317c = null;
        }
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("adx native load mPlacementId:");
        Network network = this.mNetwork;
        if (network != null) {
            codeSeatId = network.getCodeSeatId();
        } else {
            codeSeatId = " num:" + this.mAdCount;
        }
        sb2.append(codeSeatId);
        adLogUtilLog.d("AdxNative", sb2.toString());
    }

    @Override
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, AdNativeInfo adNativeInfo) {
        this.f32316b = adNativeInfo;
        logTrigerShow(adNativeInfo);
        if (viewGroup == null || this.f32315a == null) {
            onAdShowError(TAdErrorCode.ERROR_SHOW_EXCEPTION);
            AdLogUtil.Log().e("AdxNative", "registerViewForInteraction error, mNativeAd is null");
            return;
        }
        unregisterView(adNativeInfo);
        try {
            TaNativeInfo taNativeInfo = (TaNativeInfo) adNativeInfo.getNativeAdWrapper().getNativeAd();
            double secondPrice = adNativeInfo.getSecondPrice();
            if (secondPrice != 0.0d) {
                taNativeInfo.setSecondPrice(secondPrice);
            }
            this.f32315a.x(viewGroup, list, taNativeInfo);
        } catch (Exception e10) {
            AdLogUtil.Log().e("AdxNative", Log.getStackTraceString(e10));
            onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, e10.getMessage()));
        }
    }

    @Override
    public void setRecommendReqInfo(SSPWebPageReqInfo sSPWebPageReqInfo) {
        this.f32317c = sSPWebPageReqInfo;
    }

    @Override
    public void trackRecommendClick(String str, String str2) {
        try {
            this.f32315a.C(str, str2);
        } catch (Exception unused) {
        }
    }

    @Override
    public void trackRecommendShow(List<SSPWebRecommendInfo> list) {
        try {
            this.f32315a.D(list);
        } catch (Exception unused) {
        }
    }

    @Override
    public void unregisterView(AdNativeInfo adNativeInfo) {
    }

    public final void b(List<TaNativeInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (TaNativeInfo taNativeInfo : list) {
            if (taNativeInfo != null) {
                Bundle bundle = new Bundle();
                bundle.putString(TrackingKey.AD_TITLE, taNativeInfo.getTitle());
                bundle.putString(TrackingKey.AD_URL, "");
                bundle.putString(TrackingKey.DESCRIPTION, taNativeInfo.getDescription());
                if (taNativeInfo.getImage() != null) {
                    bundle.putString("image_url", taNativeInfo.getImage().getImgUrl());
                }
                if (taNativeInfo.getIconImage() != null) {
                    bundle.putString("icon_url", taNativeInfo.getIconImage().getImgUrl());
                }
                bundle.putString("endcard_url", "");
                bundle.putString("app_name", "");
                bundle.putString("package_name", "");
                bundle.putString("download_url", "");
                HashMap map = new HashMap();
                for (String str : bundle.keySet()) {
                    String str2 = (String) bundle.get(str);
                    if (str2 != null) {
                        map.put(str, str2);
                    }
                }
                arrayList.add(map);
            }
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString(TrackingKey.NATIVE_INFO_LIST, GsonUtil.d(arrayList));
        setTrackingBundle(bundle2);
    }

    public final List<TAdNativeInfo> a(List<TAdNativeInfo> list) {
        if (list == null || getAdType() != 6) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (TAdNativeInfo tAdNativeInfo : list) {
            if (!TextUtils.isEmpty(tAdNativeInfo.getFilterSource()) && !arrayList2.contains(tAdNativeInfo.getFilterSource())) {
                arrayList2.add(tAdNativeInfo.getFilterSource());
                arrayList.add(tAdNativeInfo);
            }
        }
        return arrayList;
    }

    public final TAdNativeInfo a(TaNativeInfo taNativeInfo) {
        List<TAdNativeInfo> list = this.mNatives;
        if (list != null && !list.isEmpty()) {
            for (TAdNativeInfo tAdNativeInfo : this.mNatives) {
                if (tAdNativeInfo != null && tAdNativeInfo.getNativeAdWrapper() != null && ((TaNativeInfo) tAdNativeInfo.getNativeAdWrapper().getNativeAd()) == taNativeInfo) {
                    return tAdNativeInfo;
                }
            }
        }
        return null;
    }
}
