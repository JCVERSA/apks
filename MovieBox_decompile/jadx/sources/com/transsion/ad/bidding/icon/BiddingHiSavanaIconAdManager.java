package com.transsion.ad.bidding.icon;

import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.mediation.ad.TNativeAd;
import com.transsion.ad.bidding.base.x;
import com.transsion.ad.hi.HiSavanaAdManager;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class BiddingHiSavanaIconAdManager extends x {

    private boolean f40913d;

    private TNativeAd f40914e;

    private oh.a f40915f;

    private String f40916g;

    private final String getClassTag() {
        String simpleName = BiddingHiSavanaIconAdManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void b() {
        this.f40915f = null;
        TNativeAd tNativeAd = this.f40914e;
        if (tNativeAd != null) {
            tNativeAd.destroy();
        }
        this.f40914e = null;
    }

    public final void c(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        k.d(o0.a(y0.c()), null, null, new BiddingHiSavanaIconAdManager$enterScene$1(this, sceneId, null), 3, null);
    }

    public final TNativeAd d() {
        return this.f40914e;
    }

    public final void e() {
        if (!HiSavanaAdManager.f41090a.f()) {
            oh.a aVar = this.f40915f;
            if (aVar != null) {
                aVar.onLoadFailure(new TAdErrorCode(103, "广告SDK没有初始化"), new AdditionalInfo());
                return;
            }
            return;
        }
        String strH = com.transsion.ad.scene.a.f41152a.h(getSceneId());
        if (strH == null) {
            strH = "";
        }
        if (TextUtils.isEmpty(strH)) {
            oh.a aVar2 = this.f40915f;
            if (aVar2 != null) {
                aVar2.onLoadFailure(new TAdErrorCode(103, "当前场景配置不存在"), new AdditionalInfo());
                return;
            }
            return;
        }
        if (this.f40913d) {
            return;
        }
        this.f40913d = true;
        if (this.f40914e == null) {
            TNativeAd tNativeAd = new TNativeAd(Utils.a(), strH);
            this.f40914e = tNativeAd;
            tNativeAd.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(this).build());
            xh.a.m(xh.a.f75336a, "ad_ic", getClassTag() + " --> loadAd() --> ==================== mPlacementId = " + strH + " --> create TNativeAd() =================== ", 0, false, 4, null);
        }
        TNativeAd tNativeAd2 = this.f40914e;
        if (tNativeAd2 != null) {
            tNativeAd2.loadAd();
        }
    }

    public final void f(oh.a listener) {
        Intrinsics.h(listener, "listener");
        this.f40915f = listener;
    }

    public final void g(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        this.f40916g = sceneId;
    }

    public final String getSceneId() {
        return this.f40916g;
    }

    @Override
    public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onClick(tAdNativeInfo, additionalInfo);
        oh.a aVar = this.f40915f;
        if (aVar != null) {
            aVar.onClick(tAdNativeInfo, additionalInfo);
        }
    }

    @Override
    public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadFailure(tAdErrorCode, additionalInfo);
        oh.a aVar = this.f40915f;
        if (aVar != null) {
            aVar.onLoadFailure(tAdErrorCode, additionalInfo);
        }
    }

    @Override
    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        oh.a aVar;
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadSuccess(additionalInfo);
        TNativeAd tNativeAd = this.f40914e;
        List<TAdNativeInfo> nativeAdInfo = tNativeAd != null ? tNativeAd.getNativeAdInfo() : null;
        if (nativeAdInfo == null || (aVar = this.f40915f) == null) {
            return;
        }
        aVar.q(nativeAdInfo);
    }

    @Override
    public void onShow(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShow(tAdNativeInfo, additionalInfo);
        oh.a aVar = this.f40915f;
        if (aVar != null) {
            aVar.onShow(tAdNativeInfo, additionalInfo);
        }
    }

    @Override
    public void onShowError(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShowError(tAdErrorCode, additionalInfo);
        oh.a aVar = this.f40915f;
        if (aVar != null) {
            aVar.onShowError(tAdErrorCode, additionalInfo);
        }
    }
}
