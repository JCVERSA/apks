package com.cloud.hisavana.sdk.api.listener;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.adx.TBannerView;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.BidInfo;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.dw5;
import defpackage.ikd;
import defpackage.jf7;
import defpackage.n6;
import java.util.ArrayList;
import java.util.List;

public abstract class AdCallback {
    public static void h(n6 n6Var) {
        if (n6Var != null) {
            n6Var.onAdClosed();
        }
    }

    public static void i(n6 n6Var, TBannerView tBannerView) {
        if (n6Var != null) {
            n6Var.onAdClosed(tBannerView);
        }
    }

    public static void j(n6 n6Var, TaNativeInfo taNativeInfo) {
        if (n6Var != null) {
            n6Var.onAdClosed(taNativeInfo);
        }
    }

    public void A() {
        n6 n6VarD = d();
        if (n6VarD != null) {
            n6VarD.onRewarded();
        }
    }

    public void B() {
        jf7 jf7VarF = f();
        if (jf7VarF != null) {
            jf7VarF.onClick();
        }
    }

    public void C() {
        jf7 jf7VarF = f();
        if (jf7VarF != null) {
            jf7VarF.a();
        }
    }

    public void D(G g) {
    }

    public abstract n6 d();

    public abstract String e();

    public jf7 f() {
        return null;
    }

    public abstract String g();

    public void k(AdsDTO adsDTO) {
        l(adsDTO, null);
    }

    public void l(AdsDTO adsDTO, AdImage adImage) {
        n6 n6VarD;
        if (adsDTO == null) {
            return;
        }
        String adPackageName = adsDTO.getAdPackageName();
        ikd.b().d("ssp", "onAdActivate --> packageName = " + adPackageName);
        if (TextUtils.isEmpty(adPackageName) || (n6VarD = d()) == null) {
            return;
        }
        AdActiveInfo adActiveInfo = new AdActiveInfo();
        adActiveInfo.setPackageName(adPackageName);
        adActiveInfo.setEcpm(adsDTO.getFirstPrice());
        if (adImage != null) {
            adActiveInfo.setImageUrl(adImage.getImgUrl());
        }
        n6VarD.onAdActivate(adActiveInfo);
    }

    public void m(AdsDTO adsDTO) {
        dw5.a.g(adsDTO);
        n6 n6VarD = d();
        if (n6VarD != null) {
            n6VarD.onAdClicked();
        }
    }

    public void n(final TBannerView tBannerView, AdsDTO adsDTO) {
        AthenaTracker.k0(adsDTO);
        final n6 n6VarD = d();
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                AdCallback.i(n6VarD, tBannerView);
            }
        });
    }

    public void o(final TaNativeInfo taNativeInfo, AdsDTO adsDTO) {
        AthenaTracker.k0(adsDTO);
        final n6 n6VarD = d();
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                AdCallback.j(n6VarD, taNativeInfo);
            }
        });
    }

    public void p(AdsDTO adsDTO) {
        AthenaTracker.k0(adsDTO);
        final n6 n6VarD = d();
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                AdCallback.h(n6VarD);
            }
        });
    }

    public void q(G g, Bundle bundle) {
        n6 n6VarD = d();
        try {
            SSPTrackingHelper.a.A(0, g.p(), g.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), n6VarD == null ? 3 : 1);
        } catch (Throwable unused) {
        }
        if (n6VarD != null) {
            n6VarD.onAdLoaded();
        }
    }

    public void r(G g, List list, Bundle bundle) {
        n6 n6VarD = d();
        int i = n6VarD == null ? 3 : 1;
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
                SSPTrackingHelper.a.G(g.p(), arrayList, bundle.getLong("time_consuming"), bundle.getBoolean("s_rec_temp_data", false));
            } else {
                SSPTrackingHelper.a.A(0, g.p(), g.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), i);
            }
        } catch (Throwable unused2) {
        }
        if (n6VarD != null) {
            n6VarD.onAdLoaded(list);
        }
    }

    public void s() {
        n6 n6VarD = d();
        if (n6VarD != null) {
            n6VarD.onAdShow();
        }
    }

    public void t(TaErrorCode taErrorCode, G g) {
        n6 n6VarD = d();
        SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
        sSPTrackingHelper.M(Integer.valueOf(taErrorCode.getErrorCode()), g(), e(), sSPTrackingHelper.m(g));
        if (n6VarD != null) {
            n6VarD.onAdShowError(taErrorCode);
        }
    }

    public void u(TaErrorCode taErrorCode, G g, Bundle bundle) {
        SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
        sSPTrackingHelper.N(Integer.valueOf(taErrorCode.getErrorCode()), g(), e(), sSPTrackingHelper.m(g), bundle);
    }

    public void v(TaErrorCode taErrorCode, G g, Bundle bundle) {
        n6 n6VarD = d();
        SSPTrackingHelper.a.B(taErrorCode.getErrorCode(), g.p(), g.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), n6VarD == null ? 3 : 1, true);
        if (n6VarD != null) {
            n6VarD.onBiddingFailed(taErrorCode);
        }
    }

    public void w(BidInfo bidInfo, G g, Bundle bundle) {
        n6 n6VarD = d();
        try {
            SSPTrackingHelper.a.B(0, g.p(), g.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), n6VarD == null ? 3 : 1, true);
        } catch (Throwable unused) {
        }
        if (n6VarD != null) {
            n6VarD.onBiddingSuccess(bidInfo);
        }
    }

    public void x(G g, TaErrorCode taErrorCode, Bundle bundle) {
        n6 n6VarD = d();
        SSPTrackingHelper.a.A(taErrorCode.getErrorCode(), g.p(), g.s(), bundle.getString("offline_ad_status"), bundle.getString("default_ad_status"), bundle.getInt("cache_offline_ad_count"), bundle.getLong("time_consuming"), n6VarD == null ? 3 : 1);
        if (n6VarD != null) {
            n6VarD.onError(taErrorCode);
        }
    }

    public void y(TaNativeInfo taNativeInfo) {
        dw5.a.g(taNativeInfo.getAdItem());
        n6 n6VarD = d();
        if (n6VarD != null) {
            n6VarD.onNativeAdClick(taNativeInfo);
            l(taNativeInfo.getAdItem(), taNativeInfo.getImage());
        }
    }

    public void z(final TaNativeInfo taNativeInfo) {
        final n6 n6VarD = d();
        if (n6VarD != null) {
            HSScopeHelper.a.p(new Runnable() {
                @Override
                public void run() {
                    n6VarD.onNativeAdShow(taNativeInfo);
                }
            });
        }
    }
}
