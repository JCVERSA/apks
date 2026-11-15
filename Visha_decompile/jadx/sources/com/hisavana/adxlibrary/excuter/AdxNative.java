package com.hisavana.adxlibrary.excuter;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
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
import defpackage.n6;
import defpackage.r6;
import defpackage.tca;
import defpackage.w6;
import defpackage.wy6;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class AdxNative extends BaseNative {
    public tca a;
    public AdNativeInfo b;
    public SSPWebPageReqInfo c;

    public class a extends n6 {
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
            int i = 0;
            int i2 = 0;
            while (i < list.size()) {
                TaNativeInfo taNativeInfo = (TaNativeInfo) list.get(i);
                int i3 = ((BaseNative) AdxNative.this).mAdt;
                int ttl = AdxNative.this.getTtl();
                AdxNative adxNative = AdxNative.this;
                TAdNativeInfo tAdNativeInfoA = wy6.a(taNativeInfo, i3, ttl, adxNative, adxNative.a);
                int iFilter = AdxNative.this.filter(tAdNativeInfoA);
                if (iFilter == 0) {
                    ((BaseNative) AdxNative.this).mNatives.add(tAdNativeInfoA);
                } else {
                    AdUtil.release(tAdNativeInfoA);
                }
                i++;
                i2 = iFilter;
            }
            AdxNative adxNative2 = AdxNative.this;
            List<TAdNativeInfo> listA = adxNative2.a((List<TAdNativeInfo>) ((BaseNative) adxNative2).mNatives);
            if (listA != null && !listA.isEmpty()) {
                AdxNative.this.b((List<TaNativeInfo>) list);
                AdxNative.this.adLoaded(listA);
                return;
            }
            AdxNative.this.adFailedToLoad(new TAdErrorCode(i2, "ad filter"));
            AdLogUtil.Log().w("AdxNative", "ad not pass filter check or no icon or image filter:" + i2);
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

    public AdxNative(Context context, Network network, int i) {
        super(context, network, i);
    }

    @Override
    public void destroyAd() {
        super.destroyAd();
        tca tcaVar = this.a;
        if (tcaVar != null) {
            tcaVar.b();
            this.a = null;
        }
        this.b = null;
        AdLogUtil.Log().d("AdxNative", PushConstants.PROVIDER_FIELD_DESTROY + getLogString());
    }

    public tca getNativeAd() {
        return this.a;
    }

    @Override
    public void initNative() {
        if (this.mNetwork != null) {
            this.mNatives.clear();
            tca tcaVar = new tca(this.mNetwork.getCodeSeatId());
            this.a = tcaVar;
            tcaVar.z(this.mAdCount);
            r6.b = this.mNetwork.getApplicationId();
            a aVar = new a();
            this.a.q(w6.a().a());
            this.a.o(aVar);
            this.a.p(this.mNetwork.getCodeSeatId());
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
        tca tcaVar = this.a;
        if (tcaVar != null && tcaVar.g() != null) {
            w6 w6VarG = this.a.g();
            w6VarG.k(this.requestType);
            w6VarG.l("hisa-" + this.mTriggerId);
            w6VarG.j("hisa-" + this.mRequestId);
            w6VarG.i(getSupportHisavanaFlag() >= 2);
            this.a.q(w6VarG);
            this.a.l(this.isContainVulgarContent);
            this.a.A(this.mAdt == 6);
            this.a.k(this.mGameName, this.mGameScene, this.mExtInfo);
            this.a.m(this.mCurrActivityFullscreen);
            this.a.B(this.c);
            this.a.v();
            this.c = null;
        }
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb = new StringBuilder();
        sb.append("adx native load mPlacementId:");
        Network network = this.mNetwork;
        if (network != null) {
            codeSeatId = network.getCodeSeatId();
        } else {
            codeSeatId = " num:" + this.mAdCount;
        }
        sb.append(codeSeatId);
        adLogUtilLog.d("AdxNative", sb.toString());
    }

    @Override
    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, AdNativeInfo adNativeInfo) {
        this.b = adNativeInfo;
        logTrigerShow(adNativeInfo);
        if (viewGroup == null || this.a == null) {
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
            this.a.x(viewGroup, list, taNativeInfo);
        } catch (Exception e) {
            AdLogUtil.Log().e("AdxNative", Log.getStackTraceString(e));
            onAdShowError(new TAdErrorCode(TAdErrorCode.CODE_SHOW_EXCEPTION, e.getMessage()));
        }
    }

    @Override
    public void setRecommendReqInfo(SSPWebPageReqInfo sSPWebPageReqInfo) {
        this.c = sSPWebPageReqInfo;
    }

    @Override
    public void trackRecommendClick(String str, String str2) {
        try {
            this.a.C(str, str2);
        } catch (Exception unused) {
        }
    }

    @Override
    public void trackRecommendShow(List<SSPWebRecommendInfo> list) {
        try {
            this.a.D(list);
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
                bundle.putString("description", taNativeInfo.getDescription());
                if (taNativeInfo.getImage() != null) {
                    bundle.putString(TrackingKey.IMAGE_URL, taNativeInfo.getImage().getImgUrl());
                }
                if (taNativeInfo.getIconImage() != null) {
                    bundle.putString(TrackingKey.ICON_URL, taNativeInfo.getIconImage().getImgUrl());
                }
                bundle.putString(TrackingKey.ENDCARD_URL, "");
                bundle.putString("app_name", "");
                bundle.putString(TrackingKey.PACKAGE_NAME, "");
                bundle.putString(TrackingKey.DOWNLOAD_URL, "");
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
