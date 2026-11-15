package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.SSPWebRecommendInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdResponseBody;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.data.bean.response.DataDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class o0 extends e4 {

    private com.cloud.hisavana.sdk.common.http.a f22083e;

    private p3 f22084f;

    private AdxImpBean f22085g;

    androidx.collection.b f22086h = new androidx.collection.b();

    class a implements com.cloud.hisavana.sdk.common.http.a.b {

        final p3 f22087a;

        final AdxImpBean f22088b;

        a(p3 p3Var, AdxImpBean adxImpBean) {
            this.f22087a = p3Var;
            this.f22088b = adxImpBean;
        }

        @Override
        public String a() {
            return o0.w(this.f22087a, this.f22088b);
        }
    }

    class b extends CommonResponseListener<AdResponseBody> {

        final String f22090b;

        final int f22091c;

        final ConfigCodeSeatDTO f22092d;

        final AdxImpBean f22093e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(boolean z10, String str, int i10, ConfigCodeSeatDTO configCodeSeatDTO, AdxImpBean adxImpBean) {
            super(z10);
            this.f22090b = str;
            this.f22091c = i10;
            this.f22092d = configCodeSeatDTO;
            this.f22093e = adxImpBean;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            o0.this.q(taErrorCode);
            if (taErrorCode != null) {
                b4.b().d(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "load ad error: code=" + taErrorCode.getErrorCode() + ", msg=" + taErrorCode.getErrorMessage());
            }
        }

        @Override
        public void g(int i10, AdResponseBody adResponseBody) {
            AdxImpBean adxImpBean;
            ArrayList arrayList;
            ArrayList arrayList2;
            AdsDTO adsDTO;
            com.cloud.hisavana.sdk.common.http.e.a(adResponseBody);
            if (adResponseBody == null || adResponseBody.getCode().intValue() != 0) {
                if (adResponseBody == null) {
                    b4.b().d(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "business error: response is null");
                    o0.this.q(new TaErrorCode(-1, "response is null"));
                    return;
                }
                b4.b().d(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "business error: code=" + adResponseBody.getCode() + ", msg=" + adResponseBody.getMessage());
                o0.this.q(new TaErrorCode(adResponseBody.getCode().intValue(), adResponseBody.getMessage()));
                return;
            }
            AdsDTO adsDTO2 = null;
            if (c7.b.l()) {
                o0.this.t("on response: " + adResponseBody, null);
            }
            DataDTO data = adResponseBody.getData();
            if (data == null) {
                o0.this.q(TaErrorCode.ERROR_AD_ONLINE_RESPONSE_IS_NULL);
                return;
            }
            if (c7.b.i() && 1 == data.getCodeSeatType().intValue()) {
                try {
                    ArrayList arrayList3 = new ArrayList();
                    List<SSPWebRecommendInfo> recommendInfos = data.getRecommendInfos();
                    if (recommendInfos != null) {
                        for (int i11 = 0; i11 < recommendInfos.size(); i11++) {
                            SSPWebRecommendInfo sSPWebRecommendInfo = recommendInfos.get(i11);
                            if (!TextUtils.isEmpty(sSPWebRecommendInfo.getRecommend())) {
                                arrayList3.add(sSPWebRecommendInfo);
                            }
                        }
                        if (o0.this.f21824a != null && !arrayList3.isEmpty()) {
                            o0.this.f21824a.a(arrayList3);
                        }
                    }
                } catch (Throwable th2) {
                    b4.b().e("OnlineAdNode", "processWebRecommendInfo error", th2);
                }
            }
            List<AdsDTO> ads = data.getAds();
            if (ads == null || ads.isEmpty()) {
                o0.this.q(TaErrorCode.ERROR_AD_ONLINE_ADS_IS_NULL);
                return;
            }
            ArrayList arrayList4 = new ArrayList();
            if (!TextUtils.equals(data.getCodeSeatId(), this.f22090b)) {
                o0.this.t("response pmid is diffrent with request's, request is " + data.getCodeSeatId(), null);
                o0.this.q(TaErrorCode.ERROR_AD_ONLINE_PLACEMENT_ID_MISMATCH);
                return;
            }
            if (this.f22091c != data.getCodeSeatType().intValue()) {
                o0.this.t("response adt is diffrent with request's", null);
                o0.this.q(TaErrorCode.ERROR_AD_ONLINE_TYPE_MISMATCH);
                return;
            }
            ConfigCodeSeatDTO configCodeSeatDTO = this.f22092d;
            int adRequestVer = configCodeSeatDTO == null ? 0 : configCodeSeatDTO.getAdRequestVer() + 1;
            Iterator<AdsDTO> it = ads.iterator();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AdsDTO next = it.next();
                if (next == null) {
                    o0.this.f22086h.add(1);
                    o0.this.t("filter: ad is null, remove from list", adsDTO2);
                    it.remove();
                } else {
                    next.setFill_ts(Long.valueOf(System.currentTimeMillis()));
                    if (com.cloud.hisavana.sdk.common.util.g.b(next)) {
                        o0.this.t("filter: CacheAdExpiredUtil.isCacheAdEnd", next);
                        o0.this.f22086h.add(2);
                        it.remove();
                    } else if (com.cloud.hisavana.sdk.common.util.g.f(next)) {
                        int iA = com.cloud.hisavana.sdk.common.util.d0.a(next.getPullNewestLive().intValue(), next.getPsPackageName(), next.getPackageName());
                        if (iA == 1 || iA == 2) {
                            arrayList = arrayList5;
                            arrayList2 = arrayList6;
                            if (iA == 1) {
                                o0.this.f22086h.add(4);
                            } else if (iA == 2) {
                                o0.this.f22086h.add(5);
                            }
                            arrayList.add(next.getAdCreativeId());
                            arrayList2.add(Integer.valueOf(iA == 1 ? 1 : 2));
                            o0.this.t("filter:filterResult == Constants.FilterResult.NEW_BUT_EXIT || filterResult == Constants.FilterResult.PULL_BUT_NOT_EXIT", next);
                            it.remove();
                        } else {
                            next.setInteractiveAd();
                            arrayList = arrayList5;
                            arrayList2 = arrayList6;
                            o0.this.s(next, this.f22093e, data, adRequestVer, it);
                            if (w2.a(next) == -1) {
                                adsDTO = next;
                                o0.this.t("filter: video data format failed", adsDTO);
                                it.remove();
                            } else {
                                adsDTO = next;
                            }
                            if (adsDTO.isOfflineAd()) {
                                arrayList4.add(adsDTO);
                                if (!TextUtils.isEmpty(adsDTO.getOfflineH5Url())) {
                                    adsDTO.setFilePath(com.cloud.hisavana.sdk.common.util.a0.c(adsDTO.getOfflineH5Url()));
                                }
                            }
                            t3.f22329a.k(adsDTO);
                        }
                        arrayList5 = arrayList;
                        arrayList6 = arrayList2;
                        adsDTO2 = null;
                    } else {
                        o0.this.f22086h.add(3);
                        o0.this.t("filter:CacheAdExpiredUtil.isOfflineAdEfficient is false", next);
                        it.remove();
                        if (next.isOfflineAd()) {
                            arrayList4.add(next);
                            if (!TextUtils.isEmpty(next.getOfflineH5Url())) {
                                next.setFilePath(com.cloud.hisavana.sdk.common.util.a0.c(next.getOfflineH5Url()));
                            }
                        }
                    }
                }
            }
            ArrayList arrayList7 = arrayList5;
            ArrayList arrayList8 = arrayList6;
            ConfigCodeSeatDTO configCodeSeatDTO2 = this.f22092d;
            if (configCodeSeatDTO2 != null) {
                configCodeSeatDTO2.setLocalOfflineAdCacheCount(arrayList4.size());
                this.f22092d.setAdRequestVer(adRequestVer);
                O.g().j(this.f22092d);
            }
            if (!arrayList7.isEmpty() && (adxImpBean = this.f22093e) != null) {
                AthenaTracker.x(adxImpBean.requestId, adxImpBean.triggerId, this.f22090b, arrayList7, arrayList8, false, 1);
            }
            o0 o0Var = o0.this;
            o0Var.j(o0Var.f22086h);
            if (ads.isEmpty()) {
                o0.this.q(TaErrorCode.ERROR_ADS_ONLINE_ARE_FILTERED);
            } else {
                AthenaTracker.h0(ads, null, this.f22093e, arrayList4.size(), o0.this.f22086h);
                if (c7.b.l()) {
                    com.cloud.sdk.commonutil.util.q.b(String.format(com.cloud.sdk.commonutil.util.e.a().getString(com.cloud.sdk.commonutil.R$string.ssp_log_msg4), Integer.valueOf(ads.size())), 2);
                    o0.this.t("online request result after filtered, count=" + ads.size(), null);
                }
                o0.this.A(ads);
            }
            p.F().A(arrayList4);
        }
    }

    class c implements i4.f {
        c() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            o0.this.r(taErrorCode, bundle);
            o0.this.q(taErrorCode);
            SSPTrackingHelper.f21368a.U(2, o0.this.f22084f, taErrorCode, bundle);
        }

        @Override
        public void b(List list, Bundle bundle) {
            o0.this.r(null, bundle);
            o0.this.u(list);
            SSPTrackingHelper.f21368a.U(2, o0.this.f22084f, TaErrorCode.ERROR_SUCCESS, bundle);
        }
    }

    public void A(List list) {
        if (this.f22084f.s()) {
            u(list);
            return;
        }
        t("start to load materials", null);
        D();
        i4 i4Var = new i4();
        i4Var.c(new c());
        SSPTrackingHelper.f21368a.U(1, this.f22084f, TaErrorCode.ERROR_SUCCESS, new Bundle());
        i4Var.e(list, this.f22084f.e(), 1, this.f21827d);
    }

    public void B() {
        z(TaErrorCode.ERROR_ONLINE_NEW_REQUEST_TIMEOUT);
    }

    private void C(TaErrorCode taErrorCode) {
        this.f21825b = 3;
        z(taErrorCode);
    }

    private void D() {
        p3 p3Var = this.f22084f;
        if (p3Var != null) {
            com.cloud.hisavana.sdk.common.util.f0.e(SSPTrackingHelper.f21368a.p(p3Var.n()), "s_ma_d_s", 1);
        }
    }

    private void E(TaErrorCode taErrorCode) {
        try {
            p3 p3Var = this.f22084f;
            if (p3Var != null) {
                ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.f21368a.p(p3Var.n());
                com.cloud.hisavana.sdk.common.util.f0.e(concurrentHashMapP, "s_online_status", 2);
                if (taErrorCode != null) {
                    com.cloud.hisavana.sdk.common.util.f0.h(concurrentHashMapP, "s_online_failed_reason_v2", "" + taErrorCode.getErrorCode());
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void F() {
        if (this.f21826c <= 0) {
            HSScopeHelper.f22503a.e(new Runnable() {
                @Override
                public final void run() {
                    this.f21961a.x();
                }
            });
        } else {
            HSScopeHelper.f22503a.f(new Runnable() {
                @Override
                public final void run() {
                    this.f21979a.B();
                }
            }, this.f21826c);
        }
    }

    private void G() {
        try {
            p3 p3Var = this.f22084f;
            if (p3Var != null) {
                ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.f21368a.p(p3Var.n());
                com.cloud.hisavana.sdk.common.util.f0.e(concurrentHashMapP, "s_online_status", 1);
                com.cloud.hisavana.sdk.common.util.f0.j(concurrentHashMapP, "s_online_failed_reason_v2");
            }
        } catch (Throwable unused) {
        }
    }

    public void j(androidx.collection.b bVar) {
        try {
            if (bVar.isEmpty()) {
                return;
            }
            String strD = GsonUtil.d(bVar);
            p3 p3Var = this.f22084f;
            if (p3Var != null) {
                com.cloud.hisavana.sdk.common.util.f0.h(SSPTrackingHelper.f21368a.p(p3Var.n()), "s_online_return_filter", strD);
            }
        } catch (Throwable unused) {
        }
    }

    public void q(TaErrorCode taErrorCode) {
        this.f21825b = 3;
        t("online ad fetch failed, error=" + taErrorCode, null);
        E(taErrorCode);
        e4.a aVar = this.f21824a;
        if (aVar != null) {
            aVar.a(taErrorCode, null);
        }
        AthenaTracker.h0(null, taErrorCode, this.f22085g, 0, this.f22086h);
    }

    public void r(TaErrorCode taErrorCode, Bundle bundle) {
        int i10;
        p3 p3Var = this.f22084f;
        if (p3Var != null) {
            ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.f21368a.p(p3Var.n());
            if (taErrorCode != null) {
                com.cloud.hisavana.sdk.common.util.f0.e(concurrentHashMapP, "s_ma_d_fr", taErrorCode.getErrorCode());
                i10 = 3;
            } else {
                com.cloud.hisavana.sdk.common.util.f0.b(concurrentHashMapP, bundle);
                i10 = 2;
            }
            com.cloud.hisavana.sdk.common.util.f0.e(concurrentHashMapP, "s_ma_d_s", i10);
        }
    }

    public void s(AdsDTO adsDTO, AdxImpBean adxImpBean, DataDTO dataDTO, int i10, Iterator it) {
        adsDTO.setTestResponse(dataDTO.getTestResponse());
        adsDTO.setAbTest(dataDTO.getAbTest());
        adsDTO.setExtInfo(dataDTO.getExtInfo());
        adsDTO.setImpBeanRequest(adxImpBean);
        adsDTO.setAdSeatType(dataDTO.getAdSeatType());
        adsDTO.setAuctionSecondPrice(adsDTO.getSecondPrice());
        adsDTO.setUuid(com.cloud.hisavana.sdk.common.util.b.f21563a.e(adsDTO, 0));
        adsDTO.setFullScreenFlag(dataDTO.getFullScreenFlag());
        adsDTO.setOptimizeTracking(dataDTO.getTrackingUrlBool().booleanValue());
        adsDTO.setAdRequestVer(i10);
        adsDTO.setPslinkInfo(J0.F(adsDTO));
        adsDTO.setScales(dataDTO.getScales());
        adsDTO.setSource(1);
    }

    public void t(String str, AdsDTO adsDTO) {
        if (!c7.b.l() || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            if (this.f22084f != null) {
                sb2.append(", codeSeatId=");
                sb2.append(this.f22084f.i());
            }
            if (adsDTO != null) {
                sb2.append(", adCreativeId=");
                sb2.append(adsDTO.getAdCreativeId());
            }
            b4.b().d("OnlineAdNode", sb2.toString());
        } catch (Exception unused) {
        }
    }

    public void u(List list) {
        this.f21825b = 3;
        if (c7.b.l() && list != null) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("online ad fetch succeed: ");
                sb2.append("\n");
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    AdsDTO adsDTO = (AdsDTO) it.next();
                    if (adsDTO != null) {
                        sb2.append("adCreativeId: ");
                        sb2.append(adsDTO.getAdCreativeId());
                        sb2.append("，is_offline_ad: ");
                        sb2.append(adsDTO.isOfflineAd());
                        sb2.append(", source:");
                        sb2.append(adsDTO.getSource());
                        sb2.append("\n");
                    }
                }
                t(sb2.toString(), null);
            } catch (Exception unused) {
            }
        }
        if (list == null || list.isEmpty()) {
            q(TaErrorCode.ERROR_AD_ONLINE_AD_CREATIVIES_IS_NULL);
            return;
        }
        G();
        e4.a aVar = this.f21824a;
        if (aVar != null) {
            aVar.b(list, null);
        }
    }

    private AdxImpBean v(p3 p3Var) {
        AdxImpBean adxImpBean = new AdxImpBean();
        adxImpBean.adt = p3Var.e();
        adxImpBean.pmid = p3Var.i();
        adxImpBean.mAdCount = p3Var.a();
        adxImpBean.requestId = p3Var.j();
        adxImpBean.requestType = p3Var.k();
        adxImpBean.triggerId = p3Var.n();
        if (p3Var.l() != null) {
            adxImpBean.gameName = p3Var.l().b();
            adxImpBean.gameScene = p3Var.l().c();
            adxImpBean.extInfo = p3Var.l().a();
        }
        adxImpBean.supportEw = p3Var.y();
        adxImpBean.requestTs = Long.valueOf(System.currentTimeMillis());
        adxImpBean.isAutoPlayVideoAd = p3Var.q();
        adxImpBean.offlineAdEnable = p3Var.f().isOfflineAdEnable();
        adxImpBean.cacheAdCount = p3Var.a();
        adxImpBean.mTriggerNetState = p3Var.o();
        if (p3Var.p() != null) {
            adxImpBean.webPageReqInfo = p3Var.p();
        }
        return adxImpBean;
    }

    public static String w(p3 p3Var, AdxImpBean adxImpBean) {
        try {
            if (c7.b.i()) {
                return (p3Var == null || p3Var.e() != 1 || p3Var.p() == null) ? x0.c(adxImpBean) : x0.d(adxImpBean, p3Var.p());
            }
            return x0.c(adxImpBean);
        } catch (Throwable unused) {
            return x0.c(adxImpBean);
        }
    }

    public void x() {
        p3 p3Var = this.f22084f;
        if (p3Var == null || p3Var.e() != 4) {
            z(TaErrorCode.ERROR_ONLINE_NEW_REQUEST_TIMEOUT);
        } else {
            C(TaErrorCode.ERROR_ONLINE_NEW_REQUEST_TIMEOUT);
        }
    }

    private void z(TaErrorCode taErrorCode) {
        E(taErrorCode);
        e4.a aVar = this.f21824a;
        if (aVar != null) {
            aVar.c(taErrorCode, null);
        }
    }

    @Override
    public void a(p3 p3Var) {
        this.f21825b = 2;
        this.f22084f = p3Var;
        this.f22085g = v(p3Var);
        if (c7.b.l()) {
            com.cloud.sdk.commonutil.util.q.b(com.cloud.sdk.commonutil.util.e.a().getString(com.cloud.sdk.commonutil.R$string.ssp_log_msg3), 2);
            t("start load online ad.", null);
        }
        p3 p3Var2 = this.f22084f;
        if (p3Var2 != null) {
            SSPTrackingHelper.f21368a.z(p3Var2.n(), "2");
        }
        F();
        AdxImpBean adxImpBeanV = v(p3Var);
        ConfigCodeSeatDTO configCodeSeatDTOF = p3Var.f();
        int iE = p3Var.e();
        String strI = p3Var.i();
        t("fetch from server, impBean=" + adxImpBeanV, null);
        com.cloud.hisavana.sdk.common.http.a aVarJ = new com.cloud.hisavana.sdk.common.http.a().m(new b(true, strI, iE, configCodeSeatDTOF, adxImpBeanV)).o(new a(p3Var, adxImpBeanV)).k(c7.b.l()).q(g1.o().q()).n(strI).j(adxImpBeanV);
        this.f22083e = aVarJ;
        if (aVarJ != null) {
            aVarJ.b();
        }
    }
}
