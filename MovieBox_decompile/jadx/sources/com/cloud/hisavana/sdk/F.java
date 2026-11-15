package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.ABTestKitConfig;
import com.cloud.hisavana.abtestkit.OnInitCompleteListener;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.api.listener.f;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.BidInfo;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.List;

public abstract class F implements f {

    protected final e f20884a;

    protected final p3 f20885b;

    protected boolean f20886c;

    protected BidInfo f20887d;

    protected AdCallback f20888e;

    protected List f20889f;

    private boolean f20891h = false;

    protected F0 f20890g = new F0();

    class a implements Runnable {

        final AdsDTO f20892a;

        a(AdsDTO adsDTO) {
            this.f20892a = adsDTO;
        }

        @Override
        public void run() {
            i0.f21895a.a(this.f20892a);
        }
    }

    public F(p3 p3Var) {
        this.f20884a = e.j(p3Var, this);
        this.f20885b = p3Var;
        this.f20886c = p3Var.s();
    }

    public static void D() {
        x5.f22445a.a();
        s1.f22253a.c();
        com.cloud.hisavana.sdk.manager.b.f22054a.c();
    }

    private AdsDTO o() {
        List list = this.f20889f;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (AdsDTO) this.f20889f.get(0);
    }

    private int w() {
        if (this.f20885b.f() == null) {
            return 0;
        }
        return this.f20885b.f().getPictureDelayCloseTime();
    }

    private int y() {
        if (this.f20885b.f() == null) {
            return 0;
        }
        return this.f20885b.f().getVideoDelayCloseTime();
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
        this.f20884a.n();
        try {
            ABTestKit.init(com.cloud.sdk.commonutil.util.e.a(), new ABTestKitConfig.Builder().setUseTestEnvironment(i7.a.a()).setInitCompleteListener(new OnInitCompleteListener() {
                @Override
                public final void onInitComplete() {
                    F.D();
                }
            }).build());
        } catch (Exception unused) {
        }
    }

    @Override
    public void b(TaErrorCode taErrorCode, Bundle bundle) {
        AdCallback adCallback = this.f20888e;
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
        this.f20889f = list;
        if (list == null || list.isEmpty()) {
            b(TaErrorCode.ERROR_AD_FETCHED_AD_IS_NULL, bundle);
            return;
        }
        if (this.f20886c) {
            i((AdsDTO) list.get(0), bundle);
        } else if (this.f20888e != null) {
            b4.b().d("BaseAd", "code seat id is " + this.f20885b.i() + ": fill success ,fill time is ------》" + bundle.getLong("time_consuming"));
            this.f20888e.q(this, bundle);
        }
        g1.o().n(3);
    }

    public void f() {
        h(o());
    }

    public void g(AdCallback adCallback) {
        this.f20888e = adCallback;
    }

    public void h(AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.isOfflineAd()) {
            return;
        }
        HSScopeHelper.f22503a.g(new a(adsDTO));
    }

    protected void i(AdsDTO adsDTO, Bundle bundle) {
        if (adsDTO == null) {
            AdCallback adCallback = this.f20888e;
            if (adCallback != null) {
                adCallback.v(TaErrorCode.ERROR_AD_BIDDING_AD_IS_NULL, this, bundle);
                return;
            }
            return;
        }
        BidInfo bidInfo = new BidInfo();
        bidInfo.setPrice(adsDTO.getFirstPrice());
        bidInfo.setCodeSeatId(this.f20885b.i());
        bidInfo.setAdCreativeId(adsDTO.getAdCreativeId());
        bidInfo.setBiddingToken(this.f20885b.n());
        bidInfo.setCurrency(Constants.CURRENCY.USD);
        AdCallback adCallback2 = this.f20888e;
        if (adCallback2 != null) {
            adCallback2.w(bidInfo, this, bundle);
        }
    }

    public void j(BidInfo bidInfo) {
        BidInfo bidInfo2 = this.f20887d;
        if (bidInfo2 == null || bidInfo != bidInfo2) {
            return;
        }
        this.f20886c = false;
        this.f20884a.D(this.f20889f);
    }

    protected void k(boolean z10) {
        this.f20891h = z10;
    }

    protected int l(AdsDTO adsDTO) {
        DefaultAdDTO defaultAdDTOK;
        if (adsDTO == null) {
            return 14;
        }
        try {
            if (com.cloud.hisavana.sdk.common.util.g.b(adsDTO)) {
                return 1;
            }
            if (adsDTO.isOfflineAd() && adsDTO.getSource() == 3 && com.cloud.hisavana.sdk.common.util.g.h(adsDTO, d.f21729a.G(adsDTO))) {
                return 3;
            }
            int iA = com.cloud.hisavana.sdk.common.util.d0.a(adsDTO.getPullNewestLive().intValue(), adsDTO.getPsPackageName(), adsDTO.getPackageName());
            if (iA == 1) {
                return 5;
            }
            if (iA == 2) {
                return 6;
            }
            return (adsDTO.getSource() != 4 || (defaultAdDTOK = d0.f21734a.k(adsDTO.getCodeSeatId(), adsDTO.getAdCreativeId())) == null || TextUtils.isEmpty(defaultAdDTOK.getDisplayedDate()) || !TextUtils.equals(defaultAdDTOK.getDisplayedDate(), a0.f20947a.d()) || defaultAdDTOK.getDisplayedTimes() < defaultAdDTOK.getShowMaxOfDay()) ? 0 : 3;
        } catch (Exception e10) {
            b4.b().w("BaseAd", "getAdStatusForAdsDTO failed, error=" + e10.getMessage());
            return 0;
        }
    }

    public void m() {
        this.f20888e = null;
        F0 f10 = this.f20890g;
        if (f10 != null) {
            f10.a();
            this.f20890g = null;
        }
        e eVar = this.f20884a;
        if (eVar != null) {
            eVar.E();
        }
        AdsDTO adsDTOO = o();
        if (adsDTOO != null) {
            t3.f22329a.j(adsDTOO.getUuid());
        }
    }

    public int n(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return 0;
        }
        int iW = w();
        int iY = y();
        b4.b().d("BaseAd", "picDelayTime: " + iW + ", videoDelayTime: " + iY);
        return adsDTO.isVastTypeAd() ? iY : iW;
    }

    public p3 p() {
        return this.f20885b;
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
        if (c7.b.l()) {
            b4.b().i("BaseAd", "isReady(), adId=" + w2.c(o()) + ", isReady=" + iL);
        }
        return iL;
    }

    public List s() {
        return this.f20889f;
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

    public F0 v() {
        return this.f20890g;
    }

    public int x() {
        if (this.f20885b.f() == null) {
            return 0;
        }
        return this.f20885b.f().getRetentionEndCardRatio();
    }

    protected boolean z() {
        return this.f20891h;
    }
}
