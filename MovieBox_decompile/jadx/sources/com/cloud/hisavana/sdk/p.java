package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AbTestDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdResponseBody;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public class p {

    private final AtomicBoolean f22112a;

    private List f22113b;

    private ConfigCodeSeatDTO f22114c;

    private int f22115d;

    androidx.collection.b f22116e;

    private final v.c f22117f;

    class b extends CommonResponseListener<AdResponseBody> {

        final ConfigCodeSeatDTO f22119b;

        final AdxImpBean f22120c;

        b(ConfigCodeSeatDTO configCodeSeatDTO, AdxImpBean adxImpBean) {
            this.f22119b = configCodeSeatDTO;
            this.f22120c = adxImpBean;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            p.this.u(this.f22119b, true);
            if (taErrorCode != null) {
                b4.b().d("OfflineAdManager", "load ad error adError=" + taErrorCode.getErrorMessage());
            }
            p.this.f22117f.a(this.f22120c, null, taErrorCode);
        }

        @Override
        public void g(int i10, AdResponseBody adResponseBody) {
            com.cloud.hisavana.sdk.common.http.e.a(adResponseBody);
            p.this.u(this.f22119b, false);
            if (adResponseBody == null || adResponseBody.getCode().intValue() != 0) {
                p.this.n(adResponseBody, this.f22120c);
            } else {
                p.this.p(adResponseBody, this.f22119b, this.f22120c);
            }
        }
    }

    public interface c {
        void a(List list, String str);
    }

    private static class d {

        private static final p f22122a = new p(null);
    }

    p(a aVar) {
        this();
    }

    public void J(List list, ConfigCodeSeatDTO configCodeSeatDTO) {
        if (list == null || list.isEmpty() || configCodeSeatDTO == null) {
            this.f22117f.a(null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (!com.cloud.hisavana.sdk.common.util.g.e(adsDTO, true)) {
                arrayList.add(adsDTO);
            }
        }
        if (arrayList.isEmpty()) {
            this.f22117f.a(list);
            return;
        }
        b4.b().d("OfflineAdManager", "current code seat is " + configCodeSeatDTO.getCodeSeatId());
        v.b().j(arrayList, this.f22117f);
    }

    private boolean C(AdResponseBody adResponseBody, ConfigCodeSeatDTO configCodeSeatDTO, AdxImpBean adxImpBean, List list) {
        if (!TextUtils.equals(adResponseBody.getData().getCodeSeatId(), configCodeSeatDTO.getCodeSeatId())) {
            b4.b().d("OfflineAdManager", "response pmid is different with request's");
            this.f22117f.a(adxImpBean, list, TaErrorCode.ERROR_AD_OFFLINE_PLACEMENT_ID_MISMATCH);
            return true;
        }
        if (configCodeSeatDTO.getCodeSeatType().equals(adResponseBody.getData().getCodeSeatType())) {
            return false;
        }
        b4.b().d("OfflineAdManager", "response adt is different with request's");
        this.f22117f.a(adxImpBean, list, TaErrorCode.ERROR_AD_OFFLINE_TYPE_MISMATCH);
        return true;
    }

    private boolean D(ConfigCodeSeatDTO configCodeSeatDTO) {
        if (configCodeSeatDTO == null) {
            return true;
        }
        if (Boolean.TRUE.equals(configCodeSeatDTO.isPriorityH5Ad()) && com.cloud.hisavana.sdk.common.util.o0.f(configCodeSeatDTO.getH5AdUrl())) {
            c0.f21112a.e(configCodeSeatDTO.getH5AdUrl());
        }
        v(configCodeSeatDTO.getCodeSeatId());
        if (configCodeSeatDTO.isOfflineAdEnable()) {
            return false;
        }
        w(configCodeSeatDTO.getCodeSeatId(), 3);
        return true;
    }

    private boolean E(List list, List list2, AdsDTO adsDTO) {
        if (adsDTO == null || !adsDTO.isOfflineAd()) {
            b4.b().d("OfflineAdManager", "ad is null or ad is not offline,remove from list");
            return true;
        }
        int iA = com.cloud.hisavana.sdk.common.util.d0.a(adsDTO.getPullNewestLive().intValue(), adsDTO.getPsPackageName(), adsDTO.getPackageName());
        if (iA == 1 || iA == 2) {
            list.add(adsDTO.getAdCreativeId());
            list2.add(Integer.valueOf(iA == 1 ? 1 : 2));
            return true;
        }
        if (adsDTO.getCodeSeatType().intValue() != 1 || adsDTO.isVastTypeAd() || (adsDTO.getNativeObject() != null && adsDTO.getNativeObject().getMainImages() != null && !adsDTO.getNativeObject().getMainImages().isEmpty() && !TextUtils.isEmpty(adsDTO.getNativeObject().getMainImages().get(0).getUrl()))) {
            return false;
        }
        b4.b().d("OfflineAdManager", "Native ad's image is empty,remove from list");
        return true;
    }

    public static p F() {
        return d.f22122a;
    }

    public void H(ConfigCodeSeatDTO configCodeSeatDTO) {
        t(configCodeSeatDTO, com.cloud.hisavana.sdk.d.f21729a.i(configCodeSeatDTO.getCodeSeatId(), true, null, true));
    }

    public void I(ConfigCodeSeatDTO configCodeSeatDTO, List list) {
        if (!configCodeSeatDTO.getLastOfflineAdEnable().booleanValue()) {
            J(list, configCodeSeatDTO);
            w(configCodeSeatDTO.getCodeSeatId(), 4);
            return;
        }
        if (this.f22115d == 3) {
            J(list, configCodeSeatDTO);
            return;
        }
        if (!list.isEmpty()) {
            J(list, configCodeSeatDTO);
            w(configCodeSeatDTO.getCodeSeatId(), 5);
            return;
        }
        long jIntValue = (configCodeSeatDTO.isAdRequestFail() ? configCodeSeatDTO.getOfflineAdRequestTimeInterval() : configCodeSeatDTO.getOfflineAdRequestTimeIntervalNoAd()).intValue();
        if (jIntValue <= 0) {
            jIntValue = 60;
        }
        if (System.currentTimeMillis() - configCodeSeatDTO.getLastRequestAdTime() <= jIntValue * 1000) {
            J(list, configCodeSeatDTO);
            w(configCodeSeatDTO.getCodeSeatId(), 6);
        } else {
            w(configCodeSeatDTO.getCodeSeatId(), 1);
            s(this.f22114c, this.f22115d);
        }
    }

    public void L(final ConfigCodeSeatDTO configCodeSeatDTO) {
        final List listI = com.cloud.hisavana.sdk.d.f21729a.i(configCodeSeatDTO.getCodeSeatId(), true, null, true);
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                this.f21976a.J(listI, configCodeSeatDTO);
            }
        });
    }

    public void j() {
        List list = this.f22113b;
        if (list == null || list.isEmpty()) {
            this.f22117f.a(null);
            return;
        }
        Iterator it = this.f22113b.iterator();
        while (it.hasNext()) {
            final ConfigCodeSeatDTO configCodeSeatDTO = (ConfigCodeSeatDTO) it.next();
            if (!D(configCodeSeatDTO)) {
                this.f22114c = configCodeSeatDTO;
                HSScopeHelper.f22503a.i(new Runnable() {
                    @Override
                    public final void run() {
                        this.f21893a.H(configCodeSeatDTO);
                    }
                });
                break;
            }
            it.remove();
        }
        List list2 = this.f22113b;
        if (list2 == null || !list2.isEmpty()) {
            return;
        }
        this.f22117f.a(null);
    }

    public void n(AdResponseBody adResponseBody, AdxImpBean adxImpBean) {
        TaErrorCode taErrorCode;
        if (adResponseBody != null) {
            b4.b().d("OfflineAdManager", "offline loadAd error, response is :" + adResponseBody.getCode() + ", " + adResponseBody.getMessage());
            taErrorCode = new TaErrorCode(adResponseBody.getCode().intValue(), adResponseBody.getMessage());
        } else {
            b4.b().d("OfflineAdManager", "offline loadAd error, response is null");
            taErrorCode = new TaErrorCode(-1, "response is null");
        }
        this.f22117f.a(adxImpBean, null, taErrorCode);
    }

    private void o(AdResponseBody adResponseBody, AdxImpBean adxImpBean, List list, List list2, List list3, int i10) {
        Iterator it = list.iterator();
        List<String> scales = adResponseBody.getData().getScales();
        List<AbTestDTO> abTest = adResponseBody.getData().getAbTest();
        String extInfo = adResponseBody.getData().getExtInfo();
        String adSeatType = adResponseBody.getData().getAdSeatType();
        Boolean testResponse = adResponseBody.getData().getTestResponse();
        testResponse.booleanValue();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (E(list2, list3, adsDTO)) {
                it.remove();
            } else {
                if (!TextUtils.isEmpty(adsDTO.getOfflineH5Url())) {
                    adsDTO.setFilePath(com.cloud.hisavana.sdk.common.util.a0.c(adsDTO.getOfflineH5Url()));
                }
                adsDTO.setFill_ts(Long.valueOf(System.currentTimeMillis()));
                adsDTO.setAbTest(abTest);
                adsDTO.setExtInfo(extInfo);
                adsDTO.setImpBeanRequest(adxImpBean);
                adsDTO.setTestResponse(testResponse);
                adsDTO.setAdSeatType(adSeatType);
                adsDTO.setAdRequestVer(i10);
                String strE = com.cloud.hisavana.sdk.common.util.b.f21563a.e(adsDTO, 0);
                adsDTO.setUuid(strE);
                adsDTO.setScales(scales);
                r(adsDTO, strE);
                if (w2.a(adsDTO) == -1) {
                    it.remove();
                }
            }
        }
    }

    public void p(AdResponseBody adResponseBody, final ConfigCodeSeatDTO configCodeSeatDTO, AdxImpBean adxImpBean) {
        if (adResponseBody.getData() == null || adResponseBody.getData().getAds() == null || adResponseBody.getData().getAds().isEmpty() || Boolean.FALSE.equals(adResponseBody.getData().getOfflineAd())) {
            b4.b().d("OfflineAdManager", "ads list is empty");
            this.f22117f.a(adxImpBean, null, TaErrorCode.ERROR_AD_OFFLINE_AD_IS_NULL);
            return;
        }
        List<AdsDTO> ads = adResponseBody.getData().getAds();
        if (C(adResponseBody, configCodeSeatDTO, adxImpBean, ads)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int adRequestVer = configCodeSeatDTO.getAdRequestVer() + 1;
        configCodeSeatDTO.setAdRequestVer(adRequestVer);
        O.g().j(configCodeSeatDTO);
        o(adResponseBody, adxImpBean, ads, arrayList, arrayList2, adRequestVer);
        if (!arrayList.isEmpty() && adxImpBean != null) {
            AthenaTracker.x(adxImpBean.requestId, adxImpBean.triggerId, adxImpBean.pmid, arrayList, arrayList2, true, 2);
        }
        if (ads.isEmpty()) {
            this.f22117f.a(adxImpBean, null, TaErrorCode.ERROR_ADS_OFFLINE_ARE_FILTERED);
            return;
        }
        AthenaTracker.h0(ads, null, adxImpBean, ads.size(), this.f22116e);
        b4.b().d("OfflineAdManager", "download ad before" + ads.size());
        configCodeSeatDTO.setLocalOfflineAdCacheCount(ads.size());
        F().A(ads);
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                this.f21959a.L(configCodeSeatDTO);
            }
        });
    }

    private void r(AdsDTO adsDTO, String str) {
        try {
            if (TextUtils.isEmpty(adsDTO.getAppInfo())) {
                return;
            }
            PslinkInfo pslinkInfo = (PslinkInfo) GsonUtil.a(adsDTO.getAppInfo(), PslinkInfo.class);
            if (pslinkInfo != null) {
                pslinkInfo.setGaid(DeviceUtil.e());
                pslinkInfo.setShowId(str);
                pslinkInfo.setAppPackageName(com.transsion.core.utils.a.a());
                pslinkInfo.setOfflineAd(adsDTO.isOfflineAd());
                pslinkInfo.setShowTrackingSecretKey(adsDTO.getShowTrackingSecretKey());
            }
            adsDTO.setPslinkInfo(pslinkInfo);
        } catch (Exception e10) {
            b4.b().e("OfflineAdManager", "load ad extAppInfo error =" + e10.getMessage());
        }
    }

    private void s(ConfigCodeSeatDTO configCodeSeatDTO, int i10) {
        if (configCodeSeatDTO == null) {
            this.f22117f.a(null);
            return;
        }
        b4.b().d("OfflineAdManager", "requestAds config id " + configCodeSeatDTO.getCodeSeatId());
        final AdxImpBean adxImpBean = new AdxImpBean();
        adxImpBean.adt = configCodeSeatDTO.getCodeSeatType().intValue();
        adxImpBean.pmid = configCodeSeatDTO.getCodeSeatId();
        adxImpBean.mAdCount = configCodeSeatDTO.getOfflineAdCacheCount().intValue();
        adxImpBean.requestId = DeviceUtil.o();
        adxImpBean.offlineAd = true;
        adxImpBean.triggerId = com.cloud.hisavana.sdk.common.util.l0.b();
        adxImpBean.offlineAdEnable = configCodeSeatDTO.isOfflineAdEnable();
        adxImpBean.cacheAdCount = configCodeSeatDTO.getLocalOfflineAdCacheCount();
        if (i10 == 1) {
            adxImpBean.requestType = 5;
        } else if (i10 == 2) {
            adxImpBean.requestType = 6;
        } else if (i10 == 3) {
            adxImpBean.requestType = 7;
        }
        new com.cloud.hisavana.sdk.common.http.a().m(new b(configCodeSeatDTO, adxImpBean)).o(new com.cloud.hisavana.sdk.common.http.a.b() {
            @Override
            public final String a() {
                return x0.c(adxImpBean);
            }
        }).k(c7.b.l()).q(g1.o().q()).n(adxImpBean.pmid).l(true).j(adxImpBean).b();
    }

    private void t(final ConfigCodeSeatDTO configCodeSeatDTO, final List list) {
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                this.f21938a.I(configCodeSeatDTO, list);
            }
        });
    }

    public void u(ConfigCodeSeatDTO configCodeSeatDTO, boolean z10) {
        if (configCodeSeatDTO == null) {
            return;
        }
        configCodeSeatDTO.setLastRequestAdTime(System.currentTimeMillis());
        configCodeSeatDTO.setAdRequestFail(z10);
        O.g().j(configCodeSeatDTO);
    }

    private void v(String str) {
        int i10 = this.f22115d;
        if (i10 == 3) {
            return;
        }
        AthenaTracker.j0(str, i10);
    }

    private void w(String str, int i10) {
        int i11 = this.f22115d;
        if (i11 == 3) {
            return;
        }
        AthenaTracker.Y(str, i11, i10);
    }

    public void A(List list) {
        com.cloud.hisavana.sdk.d.f21729a.y(list);
    }

    public void q(AdsDTO adsDTO) {
        com.cloud.hisavana.sdk.d.f21729a.H(adsDTO);
    }

    public void x(String str, int i10, boolean z10, List list, ConcurrentHashMap concurrentHashMap, c cVar) {
        com.cloud.hisavana.sdk.d.f21729a.o(str, i10, z10, list, concurrentHashMap, cVar);
    }

    public void y(String str, boolean z10) {
        com.cloud.hisavana.sdk.d.f21729a.r(str, z10);
    }

    public void z(Collection collection, int i10) {
        if (b4.c()) {
            b4.b().d("OfflineAdManager", "startDownloadAd triggerType " + i10 + ", isDownloading " + this.f22112a.get() + ", config list size: " + collection.size());
        }
        if (collection == null || collection.isEmpty() || this.f22112a.get()) {
            return;
        }
        this.f22113b = new ArrayList(collection);
        this.f22112a.set(true);
        this.f22115d = i10;
        j();
    }

    private p() {
        this.f22112a = new AtomicBoolean(false);
        this.f22116e = new androidx.collection.b();
        this.f22117f = new a();
    }

    class a implements v.c {
        a() {
        }

        private void c() {
            HSScopeHelper.f22503a.g(new Runnable() {
                @Override
                public final void run() {
                    this.f22070a.d();
                }
            });
        }

        public void d() {
            String[] list;
            String str = com.cloud.hisavana.sdk.common.util.m.b(com.cloud.sdk.commonutil.util.e.a()) + File.separator + "offline_zip";
            File file = new File(str);
            try {
                if (file.exists() && file.isDirectory() && (list = file.list()) != null) {
                    for (String str2 : list) {
                        boolean zB = com.cloud.hisavana.sdk.d.f21729a.B(str2);
                        File file2 = new File(str + File.separator + str2);
                        if (!zB && file2.exists()) {
                            if (file2.isDirectory()) {
                                com.cloud.hisavana.sdk.common.util.m.a(file2);
                            } else {
                                file2.delete();
                            }
                            if (c7.b.l()) {
                                b4.b().d("OfflineAdManager", "clearZipFile，delete file:" + str2);
                            }
                        }
                    }
                }
            } catch (Exception e10) {
                b4.b().e("OfflineAdManager", "clear zip file error: " + e10.getMessage());
            }
            b4.b().d("OfflineAdManager", "clearZipFile，ad download logic is done.");
            p.this.f22112a.set(false);
        }

        @Override
        public void a(List list) {
            if (list != null) {
                ArrayList arrayList = new ArrayList(list);
                if (!arrayList.isEmpty()) {
                    for (int i10 = 0; i10 < arrayList.size(); i10++) {
                        try {
                            AdsDTO adsDTO = (AdsDTO) arrayList.get(i10);
                            if (com.cloud.hisavana.sdk.common.util.g.e(adsDTO, true)) {
                                com.cloud.hisavana.sdk.d.f21729a.z(adsDTO);
                                break;
                            }
                        } catch (Exception e10) {
                            b4.b().e("OfflineAdManager", "deleteOldOfflineAd error " + Log.getStackTraceString(e10));
                        }
                    }
                }
            }
            if (p.this.f22113b != null) {
                p.this.f22113b.remove(p.this.f22114c);
                if (!p.this.f22113b.isEmpty()) {
                    p.this.j();
                    return;
                }
                p.this.f22113b = null;
                p.this.f22114c = null;
                c();
            }
        }

        @Override
        public void a(AdxImpBean adxImpBean, List list, TaErrorCode taErrorCode) {
            if (list != null && !list.isEmpty()) {
                AthenaTracker.h0(list, taErrorCode, adxImpBean, list.size(), p.this.f22116e);
            } else {
                AthenaTracker.h0(null, taErrorCode, adxImpBean, 0, p.this.f22116e);
            }
            a(null);
        }
    }
}
