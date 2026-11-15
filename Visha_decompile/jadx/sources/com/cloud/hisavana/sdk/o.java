package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.collection.ArraySet;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.SSPWebRecommendInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdResponseBody;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.data.bean.response.DataDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.atd;
import defpackage.cgc;
import defpackage.dw5;
import defpackage.f09;
import defpackage.gw5;
import defpackage.hp0;
import defpackage.ie9;
import defpackage.ied;
import defpackage.ikd;
import defpackage.ja1;
import defpackage.lmb;
import defpackage.nrd;
import defpackage.ov7;
import defpackage.r6;
import defpackage.r7;
import defpackage.spc;
import defpackage.t6;
import defpackage.ul4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class o extends z {
    public r7 e;
    public ied f;
    public AdxImpBean g;
    public ArraySet h = new ArraySet();

    public class a implements r7.b {
        public final ied a;
        public final AdxImpBean b;

        public a(ied iedVar, AdxImpBean adxImpBean) {
            this.a = iedVar;
            this.b = adxImpBean;
        }

        @Override
        public String a() {
            return o.z(this.a, this.b);
        }
    }

    public class b extends CommonResponseListener<AdResponseBody> {
        public final String b;
        public final int c;
        public final ConfigCodeSeatDTO d;
        public final AdxImpBean e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(boolean z, String str, int i, ConfigCodeSeatDTO configCodeSeatDTO, AdxImpBean adxImpBean) {
            super(z);
            this.b = str;
            this.c = i;
            this.d = configCodeSeatDTO;
            this.e = adxImpBean;
        }

        public static void l(ConfigCodeSeatDTO configCodeSeatDTO) {
            spc.f().i(configCodeSeatDTO);
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            o.this.t(taErrorCode);
            if (taErrorCode != null) {
                ikd.b().d(ja1.LOAD_TAG, "load ad error: code=" + taErrorCode.getErrorCode() + ", msg=" + taErrorCode.getErrorMessage());
            }
        }

        @Override
        public void g(int i, AdResponseBody adResponseBody) {
            AdxImpBean adxImpBean;
            ie9.a(adResponseBody);
            if (adResponseBody == null || adResponseBody.getCode().intValue() != 0) {
                if (adResponseBody == null) {
                    ikd.b().d(ja1.LOAD_TAG, "business error: response is null");
                    o.this.t(new TaErrorCode(-1, "response is null"));
                    return;
                }
                ikd.b().d(ja1.LOAD_TAG, "business error: code=" + adResponseBody.getCode() + ", msg=" + adResponseBody.getMessage());
                o.this.t(new TaErrorCode(adResponseBody.getCode().intValue(), adResponseBody.getMessage()));
                return;
            }
            AdsDTO adsDTO = null;
            if (r6.p()) {
                o.this.w("on response: " + adResponseBody, null);
            }
            DataDTO data = adResponseBody.getData();
            if (data == null) {
                o.this.t(TaErrorCode.ERROR_AD_ONLINE_RESPONSE_IS_NULL);
                return;
            }
            if (r6.l() && 1 == data.getCodeSeatType().intValue()) {
                try {
                    ArrayList arrayList = new ArrayList();
                    List<SSPWebRecommendInfo> recommendInfos = data.getRecommendInfos();
                    if (recommendInfos != null) {
                        for (int i2 = 0; i2 < recommendInfos.size(); i2++) {
                            SSPWebRecommendInfo sSPWebRecommendInfo = recommendInfos.get(i2);
                            if (!TextUtils.isEmpty(sSPWebRecommendInfo.getRecommend())) {
                                arrayList.add(sSPWebRecommendInfo);
                            }
                        }
                        if (o.this.a != null && !arrayList.isEmpty()) {
                            o.this.a.a(arrayList);
                        }
                    }
                } catch (Throwable th) {
                    ikd.b().e("OnlineAdNode", "processWebRecommendInfo error", th);
                }
            }
            List<AdsDTO> ads = data.getAds();
            if (ads == null || ads.isEmpty()) {
                o.this.t(TaErrorCode.ERROR_AD_ONLINE_ADS_IS_NULL);
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            if (!TextUtils.equals(data.getCodeSeatId(), this.b)) {
                o.this.w("response pmid is diffrent with request's, request is " + data.getCodeSeatId(), null);
                o.this.t(TaErrorCode.ERROR_AD_ONLINE_PLACEMENT_ID_MISMATCH);
                return;
            }
            if (this.c != data.getCodeSeatType().intValue()) {
                o.this.w("response adt is diffrent with request's", null);
                o.this.t(TaErrorCode.ERROR_AD_ONLINE_TYPE_MISMATCH);
                return;
            }
            ConfigCodeSeatDTO configCodeSeatDTO = this.d;
            int adRequestVer = configCodeSeatDTO != null ? configCodeSeatDTO.getAdRequestVer() + 1 : 0;
            Iterator<AdsDTO> it = ads.iterator();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                AdsDTO next = it.next();
                if (next == null) {
                    o.this.h.add(1);
                    o.this.w("filter: ad is null, remove from list", adsDTO);
                    it.remove();
                } else {
                    next.setFill_ts(Long.valueOf(System.currentTimeMillis()));
                    if (this.c == 4) {
                        next.setShowTime(data.getShowTime());
                    }
                    if (hp0.b(next)) {
                        o.this.w("filter: CacheAdExpiredUtil.isCacheAdEnd", next);
                        o.this.h.add(2);
                        it.remove();
                    } else {
                        HSCommonUtils.a.c(next);
                        if (hp0.f(next)) {
                            int iA = ov7.a(next.getPullNewestLive().intValue(), next.getPsPackageName(), next.getPackageName());
                            if (iA == 1 || iA == 2) {
                                ArrayList arrayList5 = arrayList4;
                                if (iA == 1) {
                                    o.this.h.add(4);
                                } else if (iA == 2) {
                                    o.this.h.add(5);
                                }
                                arrayList3.add(next.getAdCreativeId());
                                arrayList5.add(Integer.valueOf(iA == 1 ? 1 : 2));
                                o.this.w("filter:filterResult == Constants.FilterResult.NEW_BUT_EXIT || filterResult == Constants.FilterResult.PULL_BUT_NOT_EXIT", next);
                                it.remove();
                                arrayList4 = arrayList5;
                            } else {
                                next.setInteractiveAd();
                                ArrayList arrayList6 = arrayList4;
                                o.this.v(next, this.e, data, adRequestVer, it);
                                if (w.a(next) == -1) {
                                    o.this.w("filter: video data format failed", next);
                                    it.remove();
                                } else {
                                    if (next.isOfflineAd()) {
                                        arrayList2.add(next);
                                        if (!TextUtils.isEmpty(next.getOfflineH5Url())) {
                                            next.setFilePath(gw5.c(next.getOfflineH5Url()));
                                        }
                                    }
                                    if (!nrd.a.b() && o.this.k(next).booleanValue()) {
                                        o.this.h.add(6);
                                        it.remove();
                                    } else if (dw5.a.f(next, this.d)) {
                                        o.this.h.add(1117);
                                        it.remove();
                                    } else {
                                        atd.a.k(next);
                                    }
                                }
                                arrayList4 = arrayList6;
                            }
                            adsDTO = null;
                        } else {
                            o.this.h.add(3);
                            o.this.w("filter:CacheAdExpiredUtil.isOfflineAdEfficient is false", next);
                            it.remove();
                            if (next.isOfflineAd()) {
                                arrayList2.add(next);
                                if (!TextUtils.isEmpty(next.getOfflineH5Url())) {
                                    next.setFilePath(gw5.c(next.getOfflineH5Url()));
                                }
                            }
                        }
                    }
                }
            }
            ArrayList arrayList7 = arrayList4;
            ConfigCodeSeatDTO configCodeSeatDTO2 = this.d;
            if (configCodeSeatDTO2 != null) {
                configCodeSeatDTO2.setLocalOfflineAdCacheCount(arrayList2.size());
                this.d.setAdRequestVer(adRequestVer);
                HSScopeHelper hSScopeHelper = HSScopeHelper.a;
                final ConfigCodeSeatDTO configCodeSeatDTO3 = this.d;
                hSScopeHelper.l(new Runnable() {
                    @Override
                    public final void run() {
                        o.b.l(configCodeSeatDTO3);
                    }
                });
            }
            if (!arrayList3.isEmpty() && (adxImpBean = this.e) != null) {
                AthenaTracker.A(adxImpBean.requestId, adxImpBean.triggerId, this.b, arrayList3, arrayList7, false, 1);
            }
            o oVar = o.this;
            oVar.m(oVar.h);
            if (ads.isEmpty()) {
                o.this.t(TaErrorCode.ERROR_ADS_ONLINE_ARE_FILTERED);
            } else {
                AthenaTracker.n0(ads, null, this.e, arrayList2.size(), o.this.h);
                if (r6.p()) {
                    com.cloud.sdk.commonutil.util.b.b(String.format(ul4.a().getString(com.cloud.sdk.commonutil.R.string.ssp_log_msg4), Integer.valueOf(ads.size())), 2);
                    o.this.w("online request result after filtered, count=" + ads.size(), null);
                }
                if (ads.isEmpty()) {
                    o.this.t(TaErrorCode.ERROR_ADS_ONLINE_ARE_FILTERED);
                } else {
                    o.this.C(ads);
                }
            }
            i.M().C(arrayList2);
        }
    }

    public class c implements h0.g {
        public c() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            o.this.u(taErrorCode, bundle);
            o.this.t(taErrorCode);
            SSPTrackingHelper.a.U(2, o.this.f, taErrorCode, bundle);
        }

        @Override
        public void b(List list, Bundle bundle) {
            o.this.u(null, bundle);
            o.this.x(list);
            SSPTrackingHelper.a.U(2, o.this.f, TaErrorCode.ERROR_SUCCESS, bundle);
        }
    }

    public void C(List list) {
        if (this.f.u()) {
            x(list);
            return;
        }
        w("start to load materials", null);
        H();
        h0 h0Var = new h0();
        h0Var.d(new c());
        SSPTrackingHelper.a.U(1, this.f, TaErrorCode.ERROR_SUCCESS, new Bundle());
        h0Var.g(list, this.f.e(), 1, this.d);
    }

    public void D() {
        ied iedVar = this.f;
        if (iedVar == null || iedVar.e() != 4) {
            B(TaErrorCode.ERROR_ONLINE_NEW_REQUEST_TIMEOUT);
        } else {
            E(TaErrorCode.ERROR_ONLINE_NEW_REQUEST_TIMEOUT);
        }
    }

    public void t(TaErrorCode taErrorCode) {
        this.b = 3;
        w("online ad fetch failed, error=" + taErrorCode, null);
        G(taErrorCode);
        z.a aVar = this.a;
        if (aVar != null) {
            aVar.a(taErrorCode, null);
            e();
        }
        AthenaTracker.n0(null, taErrorCode, this.g, 0, this.h);
    }

    private AdxImpBean y(ied iedVar) {
        AdxImpBean adxImpBean = new AdxImpBean();
        adxImpBean.adt = iedVar.e();
        adxImpBean.pmid = iedVar.j();
        adxImpBean.mAdCount = iedVar.a();
        adxImpBean.requestId = iedVar.k();
        adxImpBean.requestType = iedVar.l();
        adxImpBean.triggerId = iedVar.p();
        if (iedVar.n() != null) {
            adxImpBean.gameName = iedVar.n().b();
            adxImpBean.gameScene = iedVar.n().c();
            adxImpBean.extInfo = iedVar.n().a();
        }
        adxImpBean.supportEw = iedVar.A();
        adxImpBean.requestTs = Long.valueOf(System.currentTimeMillis());
        adxImpBean.isAutoPlayVideoAd = iedVar.s();
        adxImpBean.offlineAdEnable = iedVar.g().isOfflineAdEnable();
        adxImpBean.cacheAdCount = iedVar.a();
        adxImpBean.mTriggerNetState = iedVar.q();
        if (iedVar.r() != null) {
            adxImpBean.webPageReqInfo = iedVar.r();
        }
        adxImpBean.mSceneId = iedVar.m();
        adxImpBean.isAutoRefresh = iedVar.t();
        return adxImpBean;
    }

    public static String z(ied iedVar, AdxImpBean adxImpBean) {
        try {
            if (r6.l()) {
                return (iedVar == null || iedVar.e() != 1 || iedVar.r() == null) ? lmb.c(adxImpBean) : lmb.d(adxImpBean, iedVar.r());
            }
            return lmb.c(adxImpBean);
        } catch (Throwable unused) {
            return lmb.c(adxImpBean);
        }
    }

    public final void B(TaErrorCode taErrorCode) {
        G(taErrorCode);
        z.a aVar = this.a;
        if (aVar != null) {
            aVar.c(taErrorCode, null);
        }
    }

    public final void E(TaErrorCode taErrorCode) {
        this.b = 3;
        B(taErrorCode);
        e();
    }

    public final void F() {
        B(TaErrorCode.ERROR_ONLINE_NEW_REQUEST_TIMEOUT);
    }

    public final void G(TaErrorCode taErrorCode) {
        try {
            ied iedVar = this.f;
            if (iedVar != null) {
                ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.a.p(iedVar.p());
                f09.e(concurrentHashMapP, "s_online_status", 2);
                if (taErrorCode != null) {
                    f09.h(concurrentHashMapP, "s_online_failed_reason_v2", "" + taErrorCode.getErrorCode());
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final void H() {
        ied iedVar = this.f;
        if (iedVar != null) {
            f09.e(SSPTrackingHelper.a.p(iedVar.p()), "s_ma_d_s", 1);
        }
    }

    public final void I() {
        if (this.c <= 0) {
            HSScopeHelper.a.j(new Runnable() {
                @Override
                public final void run() {
                    this.b.D();
                }
            });
        } else {
            HSScopeHelper.a.k(new Runnable() {
                @Override
                public final void run() {
                    this.b.F();
                }
            }, this.c);
        }
    }

    public final void J() {
        try {
            ied iedVar = this.f;
            if (iedVar != null) {
                ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.a.p(iedVar.p());
                f09.e(concurrentHashMapP, "s_online_status", 1);
                f09.j(concurrentHashMapP, "s_online_failed_reason_v2");
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public void a(ied iedVar) {
        this.b = 2;
        this.f = iedVar;
        this.g = y(iedVar);
        if (r6.p()) {
            com.cloud.sdk.commonutil.util.b.b(ul4.a().getString(com.cloud.sdk.commonutil.R.string.ssp_log_msg3), 2);
            w("start load online ad.", null);
        }
        ied iedVar2 = this.f;
        if (iedVar2 != null) {
            SSPTrackingHelper.a.z(iedVar2.p(), "2");
        }
        I();
        AdxImpBean adxImpBeanY = this.g;
        if (adxImpBeanY == null) {
            adxImpBeanY = y(iedVar);
        }
        ConfigCodeSeatDTO configCodeSeatDTOG = iedVar.g();
        int iE = iedVar.e();
        String strJ = iedVar.j();
        w("fetch from server, impBean=" + adxImpBeanY, null);
        r7 r7VarJ = new r7().m(new b(true, strJ, iE, configCodeSeatDTOG, adxImpBeanY)).o(new a(iedVar, adxImpBeanY)).k(r6.p()).q(cgc.n().q()).n(strJ).j(adxImpBeanY);
        this.e = r7VarJ;
        if (r7VarJ != null) {
            r7VarJ.b();
        }
    }

    public final Boolean k(AdsDTO adsDTO) {
        try {
            ied iedVar = this.f;
            if (w.c(adsDTO, iedVar != null ? iedVar.e() : 0)) {
                return Boolean.TRUE;
            }
            ikd.b().d(ja1.LOAD_TAG, "ExoPlayer unavailable, remove video ad: " + adsDTO.getAdCreativeId());
            return Boolean.FALSE;
        } catch (Throwable unused) {
        }
    }

    public final void m(ArraySet arraySet) {
        try {
            if (arraySet.isEmpty()) {
                return;
            }
            String strD = GsonUtil.d(arraySet);
            ied iedVar = this.f;
            if (iedVar != null) {
                f09.h(SSPTrackingHelper.a.p(iedVar.p()), "s_online_return_filter", strD);
            }
        } catch (Throwable unused) {
        }
    }

    public final void u(TaErrorCode taErrorCode, Bundle bundle) {
        int i;
        ied iedVar = this.f;
        if (iedVar != null) {
            ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.a.p(iedVar.p());
            if (taErrorCode != null) {
                f09.e(concurrentHashMapP, "s_ma_d_fr", taErrorCode.getErrorCode());
                i = 3;
            } else {
                f09.b(concurrentHashMapP, bundle);
                i = 2;
            }
            f09.e(concurrentHashMapP, "s_ma_d_s", i);
        }
    }

    public final void v(AdsDTO adsDTO, AdxImpBean adxImpBean, DataDTO dataDTO, int i, Iterator it) {
        adsDTO.setTestResponse(dataDTO.getTestResponse());
        adsDTO.setAbTest(dataDTO.getAbTest());
        adsDTO.setExtInfo(dataDTO.getExtInfo());
        adsDTO.setImpBeanRequest(adxImpBean);
        adsDTO.setAdSeatType(dataDTO.getAdSeatType());
        adsDTO.setAuctionSecondPrice(adsDTO.getSecondPrice());
        adsDTO.setUuid(t6.a.e(adsDTO, 0));
        adsDTO.setFullScreenFlag(dataDTO.getFullScreenFlag());
        adsDTO.setOptimizeTracking(dataDTO.getTrackingUrlBool().booleanValue());
        adsDTO.setAdRequestVer(i);
        adsDTO.setPslinkInfo(U0.G(adsDTO));
        adsDTO.setScales(dataDTO.getScales());
        adsDTO.setSource(1);
    }

    public final void w(String str, AdsDTO adsDTO) {
        if (!r6.p() || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            if (this.f != null) {
                sb.append(", codeSeatId=");
                sb.append(this.f.j());
            }
            if (adsDTO != null) {
                sb.append(", adCreativeId=");
                sb.append(adsDTO.getAdCreativeId());
            }
            ikd.b().d("OnlineAdNode", sb.toString());
        } catch (Exception unused) {
        }
    }

    public final void x(List list) {
        this.b = 3;
        if (r6.p() && list != null) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("online ad fetch succeed: ");
                sb.append("\n");
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    AdsDTO adsDTO = (AdsDTO) it.next();
                    if (adsDTO != null) {
                        sb.append("adCreativeId: ");
                        sb.append(adsDTO.getAdCreativeId());
                        sb.append("，is_offline_ad: ");
                        sb.append(adsDTO.isOfflineAd());
                        sb.append(", source:");
                        sb.append(adsDTO.getSource());
                        sb.append("\n");
                    }
                }
                w(sb.toString(), null);
            } catch (Exception unused) {
            }
        }
        if (list == null || list.isEmpty()) {
            t(TaErrorCode.ERROR_AD_ONLINE_AD_CREATIVIES_IS_NULL);
            return;
        }
        J();
        z.a aVar = this.a;
        if (aVar != null) {
            aVar.b(list, null);
            e();
        }
    }
}
