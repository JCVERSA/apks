package com.cloud.hisavana.sdk.api.listener;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.F;
import com.cloud.hisavana.sdk.api.adx.TBannerView;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.BidInfo;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.ArrayList;
import java.util.List;

public abstract class AdCallback {
    public static void h(d dVar) {
        if (dVar != null) {
            dVar.onAdClosed();
        }
    }

    public static void i(d dVar, TBannerView tBannerView) {
        if (dVar != null) {
            dVar.onAdClosed(tBannerView);
        }
    }

    public static void j(d dVar, TaNativeInfo taNativeInfo) {
        if (dVar != null) {
            dVar.onAdClosed(taNativeInfo);
        }
    }

    public void A() {
        d dVarD = d();
        if (dVarD != null) {
            dVarD.onRewarded();
        }
    }

    public void B() {
        g gVarF = f();
        if (gVarF != null) {
            gVarF.onClick();
        }
    }

    public void C() {
        g gVarF = f();
        if (gVarF != null) {
            gVarF.a();
        }
    }

    public abstract d d();

    public abstract String e();

    public g f() {
        return null;
    }

    public abstract String g();

    public void k(AdsDTO adsDTO) {
        l(adsDTO, null);
    }

    public void l(AdsDTO adsDTO, AdImage adImage) {
        d dVarD;
        if (adsDTO == null) {
            return;
        }
        String adPackageName = adsDTO.getAdPackageName();
        b4.b().d("ssp", "onAdActivate --> packageName = " + adPackageName);
        if (TextUtils.isEmpty(adPackageName) || (dVarD = d()) == null) {
            return;
        }
        AdActiveInfo adActiveInfo = new AdActiveInfo();
        adActiveInfo.setPackageName(adPackageName);
        adActiveInfo.setEcpm(adsDTO.getFirstPrice());
        if (adImage != null) {
            adActiveInfo.setImageUrl(adImage.getImgUrl());
        }
        dVarD.onAdActivate(adActiveInfo);
    }

    public void m() {
        d dVarD = d();
        if (dVarD != null) {
            dVarD.onAdClicked();
        }
    }

    public void n(final TBannerView tBannerView, AdsDTO adsDTO) {
        AthenaTracker.e0(adsDTO);
        final d dVarD = d();
        HSScopeHelper.f22503a.h(new Runnable() {
            @Override
            public final void run() {
                AdCallback.i(dVarD, tBannerView);
            }
        });
    }

    public void o(final TaNativeInfo taNativeInfo, AdsDTO adsDTO) {
        AthenaTracker.e0(adsDTO);
        final d dVarD = d();
        HSScopeHelper.f22503a.h(new Runnable() {
            @Override
            public final void run() {
                AdCallback.j(dVarD, taNativeInfo);
            }
        });
    }

    public void p(AdsDTO adsDTO) {
        AthenaTracker.e0(adsDTO);
        final d dVarD = d();
        HSScopeHelper.f22503a.h(new Runnable() {
            @Override
            public final void run() {
                AdCallback.h(dVarD);
            }
        });
    }

    public void q(F f10, Bundle bundle) {
        d dVarD = d();
        try {
            SSPTrackingHelper.f21368a.A(0, f10.p(), f10.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), dVarD == null ? 3 : 1);
        } catch (Throwable unused) {
        }
        if (dVarD != null) {
            dVarD.onAdLoaded();
        }
    }

    public void r(F f10, List list, Bundle bundle) {
        d dVarD = d();
        int i10 = dVarD == null ? 3 : 1;
        try {
            if (bundle.getInt("s_recommend_req", 0) == 1) {
                ArrayList arrayList = new ArrayList();
                if (list != null) {
                    try {
                        if (list.get(0) != null) {
                            arrayList.addAll(((TaNativeInfo) list.get(0)).getRecommendInfos());
                        }
                    } catch (Throwable unused) {
                    }
                }
                SSPTrackingHelper.f21368a.G(f10.p(), arrayList, bundle.getLong("time_consuming"), bundle.getBoolean("s_rec_temp_data", false));
            } else {
                SSPTrackingHelper.f21368a.A(0, f10.p(), f10.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), i10);
            }
        } catch (Throwable unused2) {
        }
        if (dVarD != null) {
            dVarD.onAdLoaded(list);
        }
    }

    public void s() {
        d dVarD = d();
        if (dVarD != null) {
            dVarD.onAdShow();
        }
    }

    public void t(TaErrorCode taErrorCode, F f10) {
        d dVarD = d();
        SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21368a;
        sSPTrackingHelper.M(Integer.valueOf(taErrorCode.getErrorCode()), g(), e(), sSPTrackingHelper.m(f10));
        if (dVarD != null) {
            dVarD.onAdShowError(taErrorCode);
        }
    }

    public void u(TaErrorCode taErrorCode, F f10, Bundle bundle) {
        SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21368a;
        sSPTrackingHelper.N(Integer.valueOf(taErrorCode.getErrorCode()), g(), e(), sSPTrackingHelper.m(f10), bundle);
    }

    public void v(TaErrorCode taErrorCode, F f10, Bundle bundle) {
        d dVarD = d();
        SSPTrackingHelper.f21368a.B(taErrorCode.getErrorCode(), f10.p(), f10.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), dVarD == null ? 3 : 1, true);
        if (dVarD != null) {
            dVarD.onBiddingFailed(taErrorCode);
        }
    }

    public void w(BidInfo bidInfo, F f10, Bundle bundle) {
        d dVarD = d();
        try {
            SSPTrackingHelper.f21368a.B(0, f10.p(), f10.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), dVarD == null ? 3 : 1, true);
        } catch (Throwable unused) {
        }
        if (dVarD != null) {
            dVarD.onBiddingSuccess(bidInfo);
        }
    }

    public void x(F f10, TaErrorCode taErrorCode, Bundle bundle) {
        d dVarD = d();
        SSPTrackingHelper.f21368a.A(taErrorCode.getErrorCode(), f10.p(), f10.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), dVarD == null ? 3 : 1);
        if (dVarD != null) {
            dVarD.onError(taErrorCode);
        }
    }

    public void y(TaNativeInfo taNativeInfo) {
        d dVarD = d();
        if (dVarD != null) {
            dVarD.onNativeAdClick(taNativeInfo);
            l(taNativeInfo.getAdItem(), taNativeInfo.getImage());
        }
    }

    public void z(final TaNativeInfo taNativeInfo) {
        final d dVarD = d();
        if (dVarD != null) {
            HSScopeHelper.f22503a.h(new Runnable() {
                @Override
                public void run() {
                    dVarD.onNativeAdShow(taNativeInfo);
                }
            });
        }
    }
}
