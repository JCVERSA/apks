package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.ABTestKitConfig;
import com.cloud.hisavana.abtestkit.OnInitCompleteListener;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.BidInfo;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.atd;
import defpackage.au4;
import defpackage.cgc;
import defpackage.fx8;
import defpackage.hp0;
import defpackage.ied;
import defpackage.ikd;
import defpackage.ov7;
import defpackage.p9;
import defpackage.q1d;
import defpackage.r6;
import defpackage.ul4;
import defpackage.y55;
import defpackage.zm6;
import java.util.List;

public abstract class G implements au4 {
    public final e a;
    public final ied b;
    public boolean c;
    public BidInfo d;
    public AdCallback e;
    public List f;
    public boolean h = false;
    public Q0 g = new Q0();

    public class a implements Runnable {
        final AdsDTO a;

        public a(AdsDTO adsDTO) {
            this.a = adsDTO;
        }

        @Override
        public void run() {
            fx8.a.a(this.a);
        }
    }

    public G(ied iedVar) {
        this.a = e.j(iedVar, this);
        this.b = iedVar;
        this.c = iedVar.u();
    }

    public static void D() {
        y55.a.a();
        q1d.a.c();
        zm6.a.c();
    }

    public boolean A() {
        AdsDTO adsDTOO = o();
        return adsDTOO != null && adsDTOO.getSource() == 4;
    }

    public boolean B() {
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            return adsDTOO.isMatchVulgarBrand();
        }
        return false;
    }

    public boolean C() {
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            return adsDTOO.isOfflineAd();
        }
        return false;
    }

    public void E() {
        this.a.n();
        try {
            ABTestKit.init(ul4.a(), new ABTestKitConfig.Builder().setUseTestEnvironment(p9.a()).setInitCompleteListener(new OnInitCompleteListener() {
                @Override
                public final void onInitComplete() {
                    G.D();
                }
            }).build());
        } catch (Exception unused) {
        }
    }

    @Override
    public void b(TaErrorCode taErrorCode, Bundle bundle) {
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.x(this, taErrorCode, bundle);
        }
    }

    @Override
    public void c(List list, List list2, Bundle bundle, AdxImpBean adxImpBean) {
        d(list, bundle);
    }

    @Override
    public void d(List list, Bundle bundle) {
        this.f = list;
        if (list == null || list.isEmpty()) {
            b(TaErrorCode.ERROR_AD_FETCHED_AD_IS_NULL, bundle);
            return;
        }
        if (this.c) {
            i((AdsDTO) list.get(0), bundle);
        } else if (this.e != null) {
            ikd.b().d("BaseAd", "code seat id is " + this.b.j() + ": fill success ,fill time is ------》" + bundle.getLong("time_consuming"));
            this.e.q(this, bundle);
        }
        cgc.n().p(3);
    }

    public void f() {
        h(o());
    }

    public void g(AdCallback adCallback) {
        this.e = adCallback;
    }

    public void h(AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.isOfflineAd()) {
            return;
        }
        HSScopeHelper.a.l(new a(adsDTO));
    }

    public void i(AdsDTO adsDTO, Bundle bundle) {
        if (adsDTO == null) {
            AdCallback adCallback = this.e;
            if (adCallback != null) {
                adCallback.v(TaErrorCode.ERROR_AD_BIDDING_AD_IS_NULL, this, bundle);
                return;
            }
            return;
        }
        BidInfo bidInfo = new BidInfo();
        bidInfo.setPrice(adsDTO.getFirstPrice());
        bidInfo.setCodeSeatId(this.b.j());
        bidInfo.setAdCreativeId(adsDTO.getAdCreativeId());
        bidInfo.setBiddingToken(this.b.p());
        bidInfo.setCurrency(Constants.CURRENCY.USD);
        AdCallback adCallback2 = this.e;
        if (adCallback2 != null) {
            adCallback2.w(bidInfo, this, bundle);
        }
    }

    public void j(BidInfo bidInfo) {
        BidInfo bidInfo2 = this.d;
        if (bidInfo2 == null || bidInfo != bidInfo2) {
            return;
        }
        this.c = false;
        this.a.D(this.f);
    }

    public void k(boolean z) {
        this.h = z;
    }

    public int l(AdsDTO adsDTO) {
        DefaultAdDTO defaultAdDTOK;
        if (adsDTO == null) {
            return 1114;
        }
        try {
            if (hp0.b(adsDTO)) {
                return 1101;
            }
            if (adsDTO.isOfflineAd() && adsDTO.getSource() == 3 && hp0.h(adsDTO, d.a.t(adsDTO))) {
                return 1103;
            }
            int iA = ov7.a(adsDTO.getPullNewestLive().intValue(), adsDTO.getPsPackageName(), adsDTO.getPackageName());
            if (iA == 1) {
                return 1105;
            }
            if (iA == 2) {
                return 1106;
            }
            return (adsDTO.getSource() != 4 || (defaultAdDTOK = l0.a.k(adsDTO.getCodeSeatId(), adsDTO.getAdCreativeId())) == null || TextUtils.isEmpty(defaultAdDTOK.getDisplayedDate()) || !TextUtils.equals(defaultAdDTOK.getDisplayedDate(), HSCommonUtils.a.k()) || defaultAdDTOK.getDisplayedTimes() < defaultAdDTOK.getShowMaxOfDay()) ? 0 : 1103;
        } catch (Exception e) {
            ikd.b().w("BaseAd", "getAdStatusForAdsDTO failed, error=" + e.getMessage());
            return 0;
        }
    }

    public void m() {
        this.e = null;
        Q0 q0 = this.g;
        if (q0 != null) {
            q0.a();
            this.g = null;
        }
        e eVar = this.a;
        if (eVar != null) {
            eVar.E();
        }
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            atd.a.j(adsDTOO.getUuid());
        }
    }

    public int n(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return 0;
        }
        int iW = w();
        int iY = y();
        ikd.b().d("BaseAd", "picDelayTime: " + iW + ", videoDelayTime: " + iY);
        return adsDTO.isVastTypeAd() ? iY : iW;
    }

    public final AdsDTO o() {
        List list = this.f;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (AdsDTO) this.f.get(0);
    }

    public ied p() {
        return this.b;
    }

    public int q() {
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            return adsDTOO.getDspType().intValue();
        }
        return 1;
    }

    public int r() {
        int iL = l(o());
        if (r6.p()) {
            ikd.b().i("BaseAd", "isReady(), adId=" + w.d(o()) + ", isReady=" + iL);
        }
        return iL;
    }

    public List s() {
        return this.f;
    }

    public double t() {
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            return adsDTOO.getFirstPrice().doubleValue();
        }
        return 0.0d;
    }

    public int u() {
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            return adsDTOO.isOfflineAd() ? 1 : 0;
        }
        return -1;
    }

    public Q0 v() {
        return this.g;
    }

    public final int w() {
        if (this.b.g() == null) {
            return 0;
        }
        return this.b.g().getPictureDelayCloseTime();
    }

    public int x() {
        if (this.b.g() == null) {
            return 0;
        }
        return this.b.g().getRetentionEndCardRatio();
    }

    public final int y() {
        if (this.b.g() == null) {
            return 0;
        }
        return this.b.g().getVideoDelayCloseTime();
    }

    public boolean z() {
        return this.h;
    }
}
