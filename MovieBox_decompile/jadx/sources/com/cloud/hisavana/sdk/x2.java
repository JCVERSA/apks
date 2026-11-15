package com.cloud.hisavana.sdk;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.BidInfo;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CommonConfigDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.manager.VideoMeasureManager;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class x2 extends F implements u3 {

    private u5 f22439i;

    private b f22440j;

    private final AtomicInteger f22441k;

    class a implements Preconditions.a {

        final TaNativeInfo f22442a;

        a(TaNativeInfo taNativeInfo) {
            this.f22442a = taNativeInfo;
        }

        @Override
        public void onRun() {
            x2.this.U(this.f22442a);
            VideoMeasureManager.INSTANCE.f(this.f22442a.getAdItem());
            x2.this.X(this.f22442a);
            t3.f22329a.j(this.f22442a.getUuid());
        }
    }

    private static class b extends com.cloud.hisavana.sdk.common.tranmeasure.a {

        private final WeakReference f22444b;

        public b(x2 x2Var) {
            this.f22444b = new WeakReference(x2Var);
        }

        @Override
        public void a(TaNativeInfo taNativeInfo) {
            super.a(taNativeInfo);
            b4.b().d("TranNative", "onViewImpressed: start impression report");
            x2 x2Var = (x2) this.f22444b.get();
            if (x2Var == null || x2Var.f22439i == null || taNativeInfo == null) {
                return;
            }
            x2Var.f22439i.f(taNativeInfo);
        }
    }

    public x2(p3 p3Var) {
        super(p3Var);
        this.f22441k = new AtomicInteger(1);
    }

    private void I(int i10) {
        if (i10 == 0) {
            i10 = 1;
        }
        this.f22441k.set(i10);
    }

    private void J(Bundle bundle) {
        try {
            AdCallback adCallback = this.f20888e;
            if (adCallback != null) {
                adCallback.v(TaErrorCode.ERROR_AD_BIDDING_AD_IS_NULL, this, bundle);
            }
        } catch (Throwable unused) {
        }
    }

    private void K(View view, TaNativeInfo taNativeInfo) {
        b4.b().d("ssp", "current native did not showed...");
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(taNativeInfo, view, this.f22440j);
    }

    private void L(ViewGroup viewGroup, List list, TaNativeInfo taNativeInfo) {
        b4.b().d("ssp", "registerClickAndImpression");
        Preconditions.a();
        if (this.f22439i == null || taNativeInfo == null) {
            return;
        }
        AdsDTO adsDTOF = J0.f(taNativeInfo);
        if (adsDTOF == null) {
            b4.b().d("ssp", "adItem is null");
            return;
        }
        adsDTOF.setSecondPrice(taNativeInfo.getSecondPrice());
        K(viewGroup, taNativeInfo);
        AthenaTracker.A(adsDTOF);
        this.f22439i.e(viewGroup, list, taNativeInfo, adsDTOF);
        b4.b().d("ssp", "Native Ad start registered");
        if (viewGroup == null || 8 != viewGroup.getVisibility()) {
            return;
        }
        viewGroup.setVisibility(0);
    }

    private void N(List list, Bundle bundle) {
        AdsDTO adsDTO = (AdsDTO) list.get(0);
        BidInfo bidInfo = new BidInfo();
        bidInfo.setPrice(adsDTO.getFirstPrice());
        bidInfo.setCodeSeatId(this.f20885b.i());
        bidInfo.setAdCreativeId(adsDTO.getAdCreativeId());
        bidInfo.setBiddingToken(this.f20885b.n());
        bidInfo.setCurrency(Constants.CURRENCY.USD);
        this.f20887d = bidInfo;
        this.f20888e.w(bidInfo, this, bundle);
    }

    private void O(List list, Bundle bundle, List list2) {
        if (this.f20886c) {
            this.f20889f = list;
            if (bundle.getBoolean("s_rec_temp_data", false)) {
                J(bundle);
                return;
            } else {
                N(list, bundle);
                return;
            }
        }
        this.f20889f = list;
        List<TaNativeInfo> listG = J0.G(list);
        if (listG == null) {
            listG = new ArrayList();
        }
        if (listG.isEmpty()) {
            listG.add(new TaNativeInfo());
        }
        for (TaNativeInfo taNativeInfo : listG) {
            if (taNativeInfo != null) {
                taNativeInfo.setNativeBridge(this);
            }
        }
        I(listG.size());
        try {
            if (!listG.isEmpty()) {
                TaNativeInfo taNativeInfo2 = (TaNativeInfo) listG.get(0);
                taNativeInfo2.setUseRecommend(true);
                taNativeInfo2.setRecommendInfos(list2);
            }
            b4.b().d("TranNative", "use recommendInfo");
            bundle.putInt("s_recommend_req", 1);
        } catch (Throwable unused) {
        }
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.r(this, listG, bundle);
        }
        g1.o().n(3);
    }

    private void P(List list, Bundle bundle, List list2, AdxImpBean adxImpBean) {
        int iIntValue;
        Integer showWebLetterAdPrice;
        if (list2 == null || list2.isEmpty()) {
            T(list, bundle);
            return;
        }
        if (list == null || list.isEmpty()) {
            list = new ArrayList();
            AdsDTO adsDTO = new AdsDTO();
            try {
                adsDTO.setImpBeanRequest(adxImpBean);
                b4.b().d("TranNative", "adsdto is empty,creat a new adsdto data");
                bundle.putBoolean("s_rec_temp_data", true);
            } catch (Throwable unused) {
            }
            list.add(adsDTO);
        } else {
            AdsDTO adsDTO2 = (AdsDTO) list.get(0);
            if (!TextUtils.isEmpty(adsDTO2.getMaterialStyle())) {
                b4.b().d("TranNative", "materialStyle is not empty not use recommend");
                T(list, bundle);
                return;
            }
            Double firstPrice = adsDTO2.getFirstPrice();
            try {
                CommonConfigDTO commonConfigData = CustomConfigManager.getCommonConfigData();
                iIntValue = (commonConfigData == null || (showWebLetterAdPrice = commonConfigData.getShowWebLetterAdPrice()) == null) ? 10 : showWebLetterAdPrice.intValue();
            } catch (Throwable unused2) {
            }
            if (firstPrice.doubleValue() >= iIntValue) {
                b4.b().d("TranNative", "high price ,not use recommend -> firstPrice:" + firstPrice + ",showWebLetterAdPrice -> " + iIntValue);
                T(list, bundle);
                return;
            }
        }
        O(list, bundle, list2);
    }

    private void T(List list, Bundle bundle) {
        if (this.f20886c) {
            this.f20889f = list;
            N(list, bundle);
            return;
        }
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f20889f = list;
        List<TaNativeInfo> listG = J0.G(list);
        for (TaNativeInfo taNativeInfo : listG) {
            if (taNativeInfo != null) {
                taNativeInfo.setNativeBridge(this);
            }
        }
        I(listG.size());
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.r(this, listG, bundle);
        }
        g1.o().n(3);
    }

    public void U(TaNativeInfo taNativeInfo) {
        if (taNativeInfo != null) {
            com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(taNativeInfo);
        }
    }

    public void X(TaNativeInfo taNativeInfo) {
        u5 u5Var = this.f22439i;
        if (u5Var != null) {
            u5Var.k(taNativeInfo);
        }
    }

    private void Y() {
        u5 u5Var = this.f22439i;
        if (u5Var == null || u5Var.j() == null) {
            return;
        }
        Iterator it = this.f22439i.j().iterator();
        while (it.hasNext()) {
            U((TaNativeInfo) it.next());
        }
    }

    private void a0() {
        this.f22439i = new u5(this);
        this.f22440j = new b(this);
    }

    public AdChoicesView F(Context context, TaNativeInfo taNativeInfo) {
        return J0.e(context, J0.f(taNativeInfo), null);
    }

    public AdCloseView G(Context context) {
        AdCloseView adCloseView = new AdCloseView(context);
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R$dimen.ad_badge_height);
        adCloseView.setLayoutParams(new RelativeLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset));
        return adCloseView;
    }

    public void Q(ViewGroup viewGroup, List list, TaNativeInfo taNativeInfo) {
        Preconditions.a();
        a0();
        if (viewGroup != null && (viewGroup instanceof TNativeView)) {
            ((TNativeView) viewGroup).setupViews(taNativeInfo);
        }
        L(viewGroup, list, taNativeInfo);
    }

    public void S(TaNativeInfo taNativeInfo) {
        b4.b().d("ssp", "native close ad ----》");
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.o(taNativeInfo, SSPTrackingHelper.f21368a.m(this));
        }
    }

    public int V(TaNativeInfo taNativeInfo) {
        AdsDTO adsDTOF = J0.f(taNativeInfo);
        int iL = l(adsDTOF);
        if (c7.b.l()) {
            b4.b().i("TranNative", "isReady(), adId=" + w2.c(adsDTOF) + ", isReady=" + iL);
        }
        return iL;
    }

    public void W(TaNativeInfo taNativeInfo) {
        if (taNativeInfo != null) {
            try {
                if (taNativeInfo.isAdShowed()) {
                    b4.b().d("TranNative", "ad has been showed");
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        if (taNativeInfo != null) {
            h(taNativeInfo.getAdItem());
            taNativeInfo.setAdShowed(true);
        }
        Z().z(taNativeInfo);
    }

    public AdCallback Z() {
        return this.f20888e;
    }

    @Override
    public void a(TaNativeInfo taNativeInfo) {
        Preconditions.d(new a(taNativeInfo));
    }

    @Override
    public void c(List list, List list2, Bundle bundle, AdxImpBean adxImpBean) {
        P(list, bundle, list2, adxImpBean);
    }

    @Override
    public void d(List list, Bundle bundle) {
        P(list, bundle, null, null);
    }

    @Override
    public void m() {
        super.m();
        Y();
        u5 u5Var = this.f22439i;
        if (u5Var != null) {
            u5Var.d();
        }
    }
}
