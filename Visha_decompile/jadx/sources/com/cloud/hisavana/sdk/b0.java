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
import defpackage.atd;
import defpackage.cgc;
import defpackage.ied;
import defpackage.ikd;
import defpackage.qpd;
import defpackage.r6;
import defpackage.xt4;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class b0 extends G implements qpd {
    public xt4 i;
    public b j;
    public final AtomicInteger k;

    public class a implements Preconditions.a {
        public final TaNativeInfo a;

        public a(TaNativeInfo taNativeInfo) {
            this.a = taNativeInfo;
        }

        @Override
        public void onRun() {
            b0.this.U(this.a);
            VideoMeasureManager.INSTANCE.f(this.a.getAdItem());
            b0.this.X(this.a);
            atd.a.j(this.a.getUuid());
        }
    }

    public static class b extends com.cloud.hisavana.sdk.common.tranmeasure.a {
        public final WeakReference b;

        public b(b0 b0Var) {
            this.b = new WeakReference(b0Var);
        }

        @Override
        public void a(TaNativeInfo taNativeInfo) {
            super.a(taNativeInfo);
            ikd.b().d("TranNative", "onViewImpressed: start impression report");
            b0 b0Var = (b0) this.b.get();
            if (b0Var == null || b0Var.i == null || taNativeInfo == null) {
                return;
            }
            b0Var.i.f(taNativeInfo);
        }
    }

    public b0(ied iedVar) {
        super(iedVar);
        this.k = new AtomicInteger(1);
    }

    private void I(int i) {
        if (i == 0) {
            i = 1;
        }
        this.k.set(i);
    }

    private void Y() {
        xt4 xt4Var = this.i;
        if (xt4Var == null || xt4Var.j() == null) {
            return;
        }
        Iterator it = this.i.j().iterator();
        while (it.hasNext()) {
            U((TaNativeInfo) it.next());
        }
    }

    private void a0() {
        this.i = new xt4(this);
        this.j = new b(this);
    }

    public AdChoicesView G(Context context, TaNativeInfo taNativeInfo) {
        return U0.f(context, U0.g(taNativeInfo), null);
    }

    public AdCloseView H(Context context) {
        AdCloseView adCloseView = new AdCloseView(context);
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.ad_badge_height);
        adCloseView.setLayoutParams(new RelativeLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset));
        return adCloseView;
    }

    public final void J(Bundle bundle) {
        try {
            AdCallback adCallback = this.e;
            if (adCallback != null) {
                adCallback.v(TaErrorCode.ERROR_AD_BIDDING_AD_IS_NULL, this, bundle);
            }
        } catch (Throwable unused) {
        }
    }

    public final void K(View view, TaNativeInfo taNativeInfo) {
        ikd.b().d("ssp", "current native did not showed...");
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(taNativeInfo, view, this.j);
    }

    public final void L(ViewGroup viewGroup, List list, TaNativeInfo taNativeInfo) {
        ikd.b().d("ssp", "registerClickAndImpression");
        Preconditions.a();
        if (this.i == null || taNativeInfo == null) {
            return;
        }
        AdsDTO adsDTOG = U0.g(taNativeInfo);
        if (adsDTOG == null) {
            ikd.b().d("ssp", "adItem is null");
            return;
        }
        adsDTOG.setSecondPrice(taNativeInfo.getSecondPrice());
        K(viewGroup, taNativeInfo);
        AthenaTracker.D(adsDTOG);
        this.i.e(viewGroup, list, taNativeInfo, adsDTOG);
        ikd.b().d("ssp", "Native Ad start registered");
        if (viewGroup == null || 8 != viewGroup.getVisibility()) {
            return;
        }
        viewGroup.setVisibility(0);
    }

    public final void N(List list, Bundle bundle) {
        AdsDTO adsDTO = (AdsDTO) list.get(0);
        BidInfo bidInfo = new BidInfo();
        bidInfo.setPrice(adsDTO.getFirstPrice());
        bidInfo.setCodeSeatId(this.b.j());
        bidInfo.setAdCreativeId(adsDTO.getAdCreativeId());
        bidInfo.setBiddingToken(this.b.p());
        bidInfo.setCurrency(Constants.CURRENCY.USD);
        this.d = bidInfo;
        this.e.w(bidInfo, this, bundle);
    }

    public final void O(List list, Bundle bundle, List list2) {
        if (this.c) {
            this.f = list;
            if (bundle.getBoolean("s_rec_temp_data", false)) {
                J(bundle);
                return;
            } else {
                N(list, bundle);
                return;
            }
        }
        this.f = list;
        List<TaNativeInfo> listH = U0.H(list);
        if (listH == null) {
            listH = new ArrayList();
        }
        if (listH.isEmpty()) {
            listH.add(new TaNativeInfo());
        }
        for (TaNativeInfo taNativeInfo : listH) {
            if (taNativeInfo != null) {
                ied iedVar = this.b;
                if (iedVar != null) {
                    taNativeInfo.setSceneId(iedVar.m());
                }
                taNativeInfo.setNativeBridge(this);
            }
        }
        I(listH.size());
        try {
            if (!listH.isEmpty()) {
                TaNativeInfo taNativeInfo2 = (TaNativeInfo) listH.get(0);
                taNativeInfo2.setUseRecommend(true);
                taNativeInfo2.setRecommendInfos(list2);
            }
            ikd.b().d("TranNative", "use recommendInfo");
            bundle.putInt("s_recommend_req", 1);
        } catch (Throwable unused) {
        }
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.r(this, listH, bundle);
        }
        cgc.n().p(3);
    }

    public final void P(List list, Bundle bundle, List list2, AdxImpBean adxImpBean) {
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
                ikd.b().d("TranNative", "adsdto is empty,creat a new adsdto data");
                bundle.putBoolean("s_rec_temp_data", true);
            } catch (Throwable unused) {
            }
            list.add(adsDTO);
        } else {
            AdsDTO adsDTO2 = (AdsDTO) list.get(0);
            if (!TextUtils.isEmpty(adsDTO2.getMaterialStyle())) {
                ikd.b().d("TranNative", "materialStyle is not empty not use recommend");
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
                ikd.b().d("TranNative", "high price ,not use recommend -> firstPrice:" + firstPrice + ",showWebLetterAdPrice -> " + iIntValue);
                T(list, bundle);
                return;
            }
        }
        O(list, bundle, list2);
    }

    public void Q(ViewGroup viewGroup, List list, TaNativeInfo taNativeInfo) {
        Preconditions.a();
        a0();
        if (viewGroup != null && (viewGroup instanceof TNativeView)) {
            ((TNativeView) viewGroup).setupViews(taNativeInfo);
        }
        L(viewGroup, list, taNativeInfo);
    }

    public void R(TaNativeInfo taNativeInfo) {
        ikd.b().d("ssp", "native close ad ----》");
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.o(taNativeInfo, SSPTrackingHelper.a.m(this));
        }
    }

    public final void T(List list, Bundle bundle) {
        if (this.c) {
            this.f = list;
            N(list, bundle);
            return;
        }
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f = list;
        List<TaNativeInfo> listH = U0.H(list);
        for (TaNativeInfo taNativeInfo : listH) {
            if (taNativeInfo != null) {
                ied iedVar = this.b;
                if (iedVar != null) {
                    taNativeInfo.setSceneId(iedVar.m());
                }
                taNativeInfo.setNativeBridge(this);
            }
        }
        I(listH.size());
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.r(this, listH, bundle);
        }
        cgc.n().p(3);
    }

    public final void U(TaNativeInfo taNativeInfo) {
        if (taNativeInfo != null) {
            com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(taNativeInfo);
        }
    }

    public int V(TaNativeInfo taNativeInfo) {
        AdsDTO adsDTOG = U0.g(taNativeInfo);
        int iL = l(adsDTOG);
        if (r6.p()) {
            ikd.b().i("TranNative", "isReady(), adId=" + w.d(adsDTOG) + ", isReady=" + iL);
        }
        return iL;
    }

    public void W(TaNativeInfo taNativeInfo) {
        if (taNativeInfo != null) {
            try {
                if (taNativeInfo.isAdShowed()) {
                    ikd.b().d("TranNative", "ad has been showed");
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

    public final void X(TaNativeInfo taNativeInfo) {
        xt4 xt4Var = this.i;
        if (xt4Var != null) {
            xt4Var.k(taNativeInfo);
        }
    }

    public AdCallback Z() {
        return this.e;
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
        xt4 xt4Var = this.i;
        if (xt4Var != null) {
            xt4Var.d();
        }
    }
}
