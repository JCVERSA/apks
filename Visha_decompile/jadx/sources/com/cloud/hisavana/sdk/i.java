package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArraySet;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.listener.CommonResponseListener;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AbTestDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdResponseBody;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.i;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.cgc;
import defpackage.cjb;
import defpackage.gw5;
import defpackage.hf;
import defpackage.hp0;
import defpackage.ie9;
import defpackage.ikd;
import defpackage.ov7;
import defpackage.r6;
import defpackage.r7;
import defpackage.spc;
import defpackage.t6;
import defpackage.ul4;
import defpackage.uva;
import defpackage.yu3;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public class i {
    public final AtomicBoolean a;
    public List b;
    public ConfigCodeSeatDTO c;
    public int d;
    public ArraySet e;
    public final l.d f;

    public class b extends CommonResponseListener<AdResponseBody> {
        public final ConfigCodeSeatDTO b;
        public final AdxImpBean c;

        public b(ConfigCodeSeatDTO configCodeSeatDTO, AdxImpBean adxImpBean) {
            this.b = configCodeSeatDTO;
            this.c = adxImpBean;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            i.this.w(this.b, true);
            if (taErrorCode != null) {
                ikd.b().d("OfflineAdManager", "load ad error adError=" + taErrorCode.getErrorMessage());
            }
            i.this.f.a(this.c, null, taErrorCode);
        }

        @Override
        public void g(int i, AdResponseBody adResponseBody) {
            ie9.a(adResponseBody);
            i.this.w(this.b, false);
            if (adResponseBody == null || adResponseBody.getCode().intValue() != 0) {
                i.this.p(adResponseBody, this.c);
            } else {
                i.this.r(adResponseBody, this.b, this.c);
            }
        }
    }

    public interface c {
        void a(List list, String str);
    }

    public static class d {
        public static final i a = new i(null);
    }

    public i(a aVar) {
        this();
    }

    public static void L(String str, boolean z) {
        com.cloud.hisavana.sdk.d.a.h(str, z);
    }

    public static i M() {
        return d.a;
    }

    public static void O(ConfigCodeSeatDTO configCodeSeatDTO) {
        spc.f().i(configCodeSeatDTO);
    }

    public static void R(ConfigCodeSeatDTO configCodeSeatDTO) {
        spc.f().i(configCodeSeatDTO);
    }

    public void A(final String str, final boolean z) {
        HSScopeHelper.a.l(new Runnable() {
            @Override
            public final void run() {
                i.L(str, z);
            }
        });
    }

    public void B(Collection collection, int i) {
        if (ikd.c()) {
            ikd.b().d("OfflineAdManager", "startDownloadAd triggerType " + i + ", isDownloading " + this.a.get() + ", config list size: " + collection.size());
        }
        if (collection == null || collection.isEmpty() || this.a.get()) {
            return;
        }
        this.b = new ArrayList(collection);
        this.a.set(true);
        this.d = i;
        l();
    }

    public void C(List list) {
        com.cloud.hisavana.sdk.d.a.n(list);
    }

    public final void D(List list, ConfigCodeSeatDTO configCodeSeatDTO) {
        if (list == null || list.isEmpty() || configCodeSeatDTO == null) {
            this.f.a(null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (!hp0.e(adsDTO, true)) {
                arrayList.add(adsDTO);
            }
        }
        if (arrayList.isEmpty()) {
            this.f.a(list);
            return;
        }
        ikd.b().d("OfflineAdManager", "current code seat is " + configCodeSeatDTO.getCodeSeatId());
        l.l().h(arrayList, this.f);
    }

    public final boolean E(AdResponseBody adResponseBody, ConfigCodeSeatDTO configCodeSeatDTO, AdxImpBean adxImpBean, List list) {
        if (!TextUtils.equals(adResponseBody.getData().getCodeSeatId(), configCodeSeatDTO.getCodeSeatId())) {
            ikd.b().d("OfflineAdManager", "response pmid is different with request's");
            this.f.a(adxImpBean, list, TaErrorCode.ERROR_AD_OFFLINE_PLACEMENT_ID_MISMATCH);
            return true;
        }
        if (configCodeSeatDTO.getCodeSeatType().equals(adResponseBody.getData().getCodeSeatType())) {
            return false;
        }
        ikd.b().d("OfflineAdManager", "response adt is different with request's");
        this.f.a(adxImpBean, list, TaErrorCode.ERROR_AD_OFFLINE_TYPE_MISMATCH);
        return true;
    }

    public final boolean F(ConfigCodeSeatDTO configCodeSeatDTO) {
        if (configCodeSeatDTO == null) {
            return true;
        }
        if (Boolean.TRUE.equals(configCodeSeatDTO.isPriorityH5Ad()) && cjb.f(configCodeSeatDTO.getH5AdUrl())) {
            k0.a.e(configCodeSeatDTO.getH5AdUrl());
        }
        x(configCodeSeatDTO.getCodeSeatId());
        if (configCodeSeatDTO.isOfflineAdEnable()) {
            return false;
        }
        y(configCodeSeatDTO.getCodeSeatId(), 3);
        return true;
    }

    public final boolean G(List list, List list2, AdsDTO adsDTO) {
        if (adsDTO == null || !adsDTO.isOfflineAd()) {
            ikd.b().d("OfflineAdManager", "ad is null or ad is not offline,remove from list");
            return true;
        }
        int iA = ov7.a(adsDTO.getPullNewestLive().intValue(), adsDTO.getPsPackageName(), adsDTO.getPackageName());
        if (iA == 1 || iA == 2) {
            list.add(adsDTO.getAdCreativeId());
            list2.add(Integer.valueOf(iA == 1 ? 1 : 2));
            return true;
        }
        if (adsDTO.getCodeSeatType().intValue() != 1 || adsDTO.isVastTypeAd() || (adsDTO.getNativeObject() != null && adsDTO.getNativeObject().getMainImages() != null && !adsDTO.getNativeObject().getMainImages().isEmpty() && !TextUtils.isEmpty(adsDTO.getNativeObject().getMainImages().get(0).getUrl()))) {
            return false;
        }
        ikd.b().d("OfflineAdManager", "Native ad's image is empty,remove from list");
        return true;
    }

    public final void I() {
        HSScopeHelper.a.l(new Runnable() {
            @Override
            public final void run() {
                this.b.P();
            }
        });
    }

    public final void J(ConfigCodeSeatDTO configCodeSeatDTO) {
        v(configCodeSeatDTO, com.cloud.hisavana.sdk.d.a.a(configCodeSeatDTO.getCodeSeatId(), true, null, true));
    }

    public final void K(ConfigCodeSeatDTO configCodeSeatDTO, List list) {
        if (!configCodeSeatDTO.getLastOfflineAdEnable().booleanValue()) {
            D(list, configCodeSeatDTO);
            y(configCodeSeatDTO.getCodeSeatId(), 4);
            return;
        }
        if (this.d == 3) {
            D(list, configCodeSeatDTO);
            return;
        }
        if (!list.isEmpty()) {
            D(list, configCodeSeatDTO);
            y(configCodeSeatDTO.getCodeSeatId(), 5);
            return;
        }
        long jIntValue = (configCodeSeatDTO.isAdRequestFail() ? configCodeSeatDTO.getOfflineAdRequestTimeInterval() : configCodeSeatDTO.getOfflineAdRequestTimeIntervalNoAd()).intValue();
        if (jIntValue <= 0) {
            jIntValue = 60;
        }
        if (System.currentTimeMillis() - configCodeSeatDTO.getLastRequestAdTime() <= jIntValue * 1000) {
            D(list, configCodeSeatDTO);
            y(configCodeSeatDTO.getCodeSeatId(), 6);
        } else {
            y(configCodeSeatDTO.getCodeSeatId(), 1);
            u(this.c, this.d);
        }
    }

    public final void P() {
        String[] list;
        String str = yu3.b(ul4.a()) + File.separator + l.b();
        File file = new File(str);
        try {
            if (file.exists() && file.isDirectory() && (list = file.list()) != null) {
                for (String str2 : list) {
                    boolean zQ = com.cloud.hisavana.sdk.d.a.q(str2);
                    File file2 = new File(str + File.separator + str2);
                    if (!zQ && file2.exists()) {
                        if (file2.isDirectory()) {
                            yu3.a(file2);
                        } else {
                            file2.delete();
                        }
                        if (r6.p()) {
                            ikd.b().d("OfflineAdManager", "clearZipFile，delete file:" + str2);
                        }
                    }
                }
            }
        } catch (Exception e) {
            ikd.b().e("OfflineAdManager", "clear zip file error: " + e.getMessage());
        }
        ikd.b().d("OfflineAdManager", "clearZipFile，ad download logic is done.");
        this.a.set(false);
    }

    public final void l() {
        List list = this.b;
        if (list == null || list.isEmpty()) {
            this.f.a(null);
            return;
        }
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            final ConfigCodeSeatDTO configCodeSeatDTO = (ConfigCodeSeatDTO) it.next();
            if (!F(configCodeSeatDTO)) {
                this.c = configCodeSeatDTO;
                HSScopeHelper.a.r(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.J(configCodeSeatDTO);
                    }
                });
                break;
            }
            it.remove();
        }
        List list2 = this.b;
        if (list2 == null || !list2.isEmpty()) {
            return;
        }
        this.f.a(null);
    }

    public final void p(AdResponseBody adResponseBody, AdxImpBean adxImpBean) {
        TaErrorCode taErrorCode;
        if (adResponseBody != null) {
            ikd.b().d("OfflineAdManager", "offline loadAd error, response is :" + adResponseBody.getCode() + ", " + adResponseBody.getMessage());
            taErrorCode = new TaErrorCode(adResponseBody.getCode().intValue(), adResponseBody.getMessage());
        } else {
            ikd.b().d("OfflineAdManager", "offline loadAd error, response is null");
            taErrorCode = new TaErrorCode(-1, "response is null");
        }
        this.f.a(adxImpBean, null, taErrorCode);
    }

    public final void q(AdResponseBody adResponseBody, AdxImpBean adxImpBean, List list, List list2, List list3, int i) {
        Iterator it = list.iterator();
        List<String> scales = adResponseBody.getData().getScales();
        List<AbTestDTO> abTest = adResponseBody.getData().getAbTest();
        String extInfo = adResponseBody.getData().getExtInfo();
        String adSeatType = adResponseBody.getData().getAdSeatType();
        Boolean testResponse = adResponseBody.getData().getTestResponse();
        testResponse.booleanValue();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (G(list2, list3, adsDTO)) {
                it.remove();
            } else {
                HSCommonUtils.a.c(adsDTO);
                if (!TextUtils.isEmpty(adsDTO.getOfflineH5Url())) {
                    adsDTO.setFilePath(gw5.c(adsDTO.getOfflineH5Url()));
                }
                adsDTO.setFill_ts(Long.valueOf(System.currentTimeMillis()));
                adsDTO.setAbTest(abTest);
                adsDTO.setExtInfo(extInfo);
                adsDTO.setImpBeanRequest(adxImpBean);
                adsDTO.setTestResponse(testResponse);
                adsDTO.setAdSeatType(adSeatType);
                adsDTO.setAdRequestVer(i);
                String strE = t6.a.e(adsDTO, 0);
                adsDTO.setUuid(strE);
                adsDTO.setScales(scales);
                t(adsDTO, strE);
                if (adResponseBody.getData().getCodeSeatType().intValue() == 4) {
                    adsDTO.setShowTime(adResponseBody.getData().getShowTime());
                }
                if (w.a(adsDTO) == -1) {
                    it.remove();
                }
            }
        }
    }

    /* JADX WARN: Failed to calculate best type for var: r0v22 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v22 ??, new type: com.cloud.hisavana.sdk.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r0v22 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v22 ??, new type: com.cloud.hisavana.sdk.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v22 com.cloud.hisavana.sdk.d, new type: com.cloud.hisavana.sdk.d
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.applyResolvedVars(TypeSearch.java:100)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:76)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.runMultiVariableSearch(FixTypesVisitor.java:119)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void r(AdResponseBody adResponseBody, final ConfigCodeSeatDTO configCodeSeatDTO, AdxImpBean adxImpBean) {
        if (adResponseBody.getData() == null || adResponseBody.getData().getAds() == null || adResponseBody.getData().getAds().isEmpty() || Boolean.FALSE.equals(adResponseBody.getData().getOfflineAd())) {
            ikd.b().d("OfflineAdManager", "ads list is empty");
            this.f.a(adxImpBean, null, TaErrorCode.ERROR_AD_OFFLINE_AD_IS_NULL);
            return;
        }
        List<AdsDTO> ads = adResponseBody.getData().getAds();
        if (E(adResponseBody, configCodeSeatDTO, adxImpBean, ads)) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int adRequestVer = configCodeSeatDTO.getAdRequestVer() + 1;
        configCodeSeatDTO.setAdRequestVer(adRequestVer);
        HSScopeHelper.a.l(new Runnable() {
            @Override
            public final void run() {
                i.O(configCodeSeatDTO);
            }
        });
        q(adResponseBody, adxImpBean, ads, arrayList, arrayList2, adRequestVer);
        if (!arrayList.isEmpty() && adxImpBean != null) {
            AthenaTracker.A(adxImpBean.requestId, adxImpBean.triggerId, adxImpBean.pmid, arrayList, arrayList2, true, 2);
        }
        if (ads.isEmpty()) {
            this.f.a(adxImpBean, null, TaErrorCode.ERROR_ADS_OFFLINE_ARE_FILTERED);
            return;
        }
        AthenaTracker.n0(ads, null, adxImpBean, ads.size(), this.e);
        ikd.b().d("OfflineAdManager", "download ad before" + ads.size());
        configCodeSeatDTO.setLocalOfflineAdCacheCount(ads.size());
        M().C(ads);
        D(com.cloud.hisavana.sdk.d.a.a(configCodeSeatDTO.getCodeSeatId(), true, null, r15), configCodeSeatDTO);
    }

    public void s(AdsDTO adsDTO) {
        com.cloud.hisavana.sdk.d.a.v(adsDTO);
    }

    public final void t(AdsDTO adsDTO, String str) {
        try {
            if (TextUtils.isEmpty(adsDTO.getAppInfo())) {
                return;
            }
            PslinkInfo pslinkInfo = (PslinkInfo) GsonUtil.a(adsDTO.getAppInfo(), PslinkInfo.class);
            if (pslinkInfo != null) {
                pslinkInfo.setGaid(DeviceUtil.f());
                pslinkInfo.setShowId(str);
                pslinkInfo.setAppPackageName(hf.a());
                pslinkInfo.setOfflineAd(adsDTO.isOfflineAd());
                pslinkInfo.setShowTrackingSecretKey(adsDTO.getShowTrackingSecretKey());
            }
            adsDTO.setPslinkInfo(pslinkInfo);
        } catch (Exception e) {
            ikd.b().e("OfflineAdManager", "load ad extAppInfo error =" + e.getMessage());
        }
    }

    public final void u(ConfigCodeSeatDTO configCodeSeatDTO, int i) {
        if (configCodeSeatDTO == null) {
            this.f.a(null);
            return;
        }
        ikd.b().d("OfflineAdManager", "requestAds config id " + configCodeSeatDTO.getCodeSeatId());
        final AdxImpBean adxImpBean = new AdxImpBean();
        adxImpBean.adt = configCodeSeatDTO.getCodeSeatType().intValue();
        adxImpBean.pmid = configCodeSeatDTO.getCodeSeatId();
        adxImpBean.mAdCount = configCodeSeatDTO.getOfflineAdCacheCount().intValue();
        adxImpBean.requestId = DeviceUtil.p();
        adxImpBean.offlineAd = true;
        adxImpBean.triggerId = uva.b();
        adxImpBean.offlineAdEnable = configCodeSeatDTO.isOfflineAdEnable();
        adxImpBean.cacheAdCount = configCodeSeatDTO.getLocalOfflineAdCacheCount();
        if (i == 1) {
            adxImpBean.requestType = 5;
        } else if (i == 2) {
            adxImpBean.requestType = 6;
        } else if (i == 3) {
            adxImpBean.requestType = 7;
        }
        new r7().m(new b(configCodeSeatDTO, adxImpBean)).o(new r7.b() {
            @Override
            public final String a() {
                return lmb.c(adxImpBean);
            }
        }).k(r6.p()).q(cgc.n().q()).n(adxImpBean.pmid).l(true).j(adxImpBean).b();
    }

    public final void v(final ConfigCodeSeatDTO configCodeSeatDTO, final List list) {
        HSScopeHelper.a.r(new Runnable() {
            @Override
            public final void run() {
                this.b.K(configCodeSeatDTO, list);
            }
        });
    }

    public final void w(final ConfigCodeSeatDTO configCodeSeatDTO, boolean z) {
        if (configCodeSeatDTO == null) {
            return;
        }
        configCodeSeatDTO.setLastRequestAdTime(System.currentTimeMillis());
        configCodeSeatDTO.setAdRequestFail(z);
        HSScopeHelper.a.l(new Runnable() {
            @Override
            public final void run() {
                i.R(configCodeSeatDTO);
            }
        });
    }

    public final void x(String str) {
        int i = this.d;
        if (i == 3) {
            return;
        }
        AthenaTracker.p0(str, i);
    }

    public final void y(String str, int i) {
        int i2 = this.d;
        if (i2 == 3) {
            return;
        }
        AthenaTracker.d0(str, i2, i);
    }

    public void z(String str, int i, boolean z, List list, ConcurrentHashMap concurrentHashMap, c cVar) {
        com.cloud.hisavana.sdk.d.a.g(str, i, z, list, concurrentHashMap, cVar);
    }

    public i() {
        this.a = new AtomicBoolean(false);
        this.e = new ArraySet();
        this.f = new a();
    }

    public class a implements l.d {
        public a() {
        }

        @Override
        public void a(List list) {
            if (list != null && !list.isEmpty()) {
                for (int i = 0; i < list.size(); i++) {
                    try {
                        AdsDTO adsDTO = (AdsDTO) list.get(i);
                        if (hp0.e(adsDTO, true)) {
                            com.cloud.hisavana.sdk.d.a.o(adsDTO);
                            break;
                        }
                    } catch (Exception e) {
                        ikd.b().e("OfflineAdManager", "deleteOldOfflineAd error " + Log.getStackTraceString(e));
                    }
                }
            }
            if (i.this.b != null) {
                i.this.b.remove(i.this.c);
                if (!i.this.b.isEmpty()) {
                    i.this.l();
                    return;
                }
                i.this.b = null;
                i.this.c = null;
                i.this.I();
            }
        }

        @Override
        public void a(AdxImpBean adxImpBean, List list, TaErrorCode taErrorCode) {
            if (list != null && !list.isEmpty()) {
                AthenaTracker.n0(list, taErrorCode, adxImpBean, list.size(), i.this.e);
            } else {
                AthenaTracker.n0(null, taErrorCode, adxImpBean, 0, i.this.e);
            }
            a(null);
        }
    }
}
