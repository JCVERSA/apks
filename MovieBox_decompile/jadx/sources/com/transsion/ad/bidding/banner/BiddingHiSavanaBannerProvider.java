package com.transsion.ad.bidding.banner;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.mediation.ad.TBannerView;
import com.transsion.ad.bidding.base.x;
import com.transsion.ad.hi.HiSavanaAdManager;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class BiddingHiSavanaBannerProvider extends x {

    private String f40780d;

    private Map f40781e;

    private oh.a f40782f;

    private Context f40783g;

    private TBannerView f40784h;

    private final Context e() {
        return this.f40783g;
    }

    private final Map f() {
        Map map = this.f40781e;
        return map == null ? MapsKt.h() : map;
    }

    private final oh.a g() {
        return this.f40782f;
    }

    private final void i(String str) {
        oh.a aVarG = g();
        if (aVarG != null) {
            aVarG.onLoadFailure(new TAdErrorCode(103, str), new AdditionalInfo());
        }
    }

    public final void b() {
        TBannerView tBannerView = this.f40784h;
        ViewParent parent = tBannerView != null ? tBannerView.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.f40784h);
        }
        TBannerView tBannerView2 = this.f40784h;
        if (tBannerView2 != null) {
            tBannerView2.destroy();
        }
        this.f40784h = null;
    }

    public final void c(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        k.d(o0.a(y0.c()), null, null, new BiddingHiSavanaBannerProvider$enterScene$1(this, sceneId, null), 3, null);
    }

    public final View d() {
        return this.f40784h;
    }

    public final String getSceneId() {
        String str = this.f40780d;
        return str == null ? "" : str;
    }

    public final void h() {
        TBannerView tBannerView;
        if (!HiSavanaAdManager.f41090a.f()) {
            i("HiSavana 广告SDK未初始化");
            return;
        }
        if (com.transsion.ad.scene.c.f41154a.a(getSceneId())) {
            i("广告位已关闭");
            return;
        }
        if (TextUtils.isEmpty(getSceneId())) {
            i("sceneId is empty");
            return;
        }
        if (e() == null) {
            i("context is null");
            return;
        }
        if (this.f40784h == null) {
            this.f40784h = new TBannerView(e());
            if (com.transsion.ad.strategy.c.f41178a.d(f()) && (tBannerView = this.f40784h) != null) {
                tBannerView.setContainVulgarContent(true);
            }
            TBannerView tBannerView2 = this.f40784h;
            if (tBannerView2 != null) {
                tBannerView2.setAdSize(2);
            }
            TBannerView tBannerView3 = this.f40784h;
            if (tBannerView3 != null) {
                tBannerView3.setAdUnitId(com.transsion.ad.scene.a.f41152a.h(this.f40780d));
            }
            TBannerView tBannerView4 = this.f40784h;
            if (tBannerView4 != null) {
                tBannerView4.setHideAdCloseView(true);
            }
            TAdRequestBody tAdRequestBodyBuild = new TAdRequestBody.AdRequestBodyBuild().setAdditionalListener(this).build();
            TBannerView tBannerView5 = this.f40784h;
            if (tBannerView5 != null) {
                tBannerView5.setRequestBody(tAdRequestBodyBuild);
            }
        }
        TBannerView tBannerView6 = this.f40784h;
        if (tBannerView6 != null) {
            tBannerView6.loadAd();
        }
    }

    public final void j(Context context) {
        this.f40783g = context;
    }

    public final void k(Map map) {
        this.f40781e = map;
    }

    public final void l(oh.a aVar) {
        this.f40782f = aVar;
    }

    public final void m(String str) {
        this.f40780d = str;
    }

    @Override
    public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onClick(tAdNativeInfo, additionalInfo);
        oh.a aVarG = g();
        if (aVarG != null) {
            aVarG.onClick(tAdNativeInfo, additionalInfo);
        }
    }

    @Override
    public void onLoadFailure(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadFailure(tAdErrorCode, additionalInfo);
        oh.a aVarG = g();
        if (aVarG != null) {
            aVarG.onLoadFailure(tAdErrorCode, additionalInfo);
        }
    }

    @Override
    public void onLoadSuccess(AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onLoadSuccess(additionalInfo);
        oh.a aVarG = g();
        if (aVarG != null) {
            aVarG.onLoadSuccess(additionalInfo);
        }
    }

    @Override
    public void onShow(TAdNativeInfo tAdNativeInfo, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShow(tAdNativeInfo, additionalInfo);
        oh.a aVarG = g();
        if (aVarG != null) {
            aVarG.onShow(tAdNativeInfo, additionalInfo);
        }
    }

    @Override
    public void onShowError(TAdErrorCode tAdErrorCode, AdditionalInfo additionalInfo) {
        Intrinsics.h(additionalInfo, "additionalInfo");
        super.onShowError(tAdErrorCode, additionalInfo);
        oh.a aVarG = g();
        if (aVarG != null) {
            aVarG.onShowError(tAdErrorCode, additionalInfo);
        }
    }
}
