package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.api.listener.f;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

public class e {

    private final String f21783a;

    private final p3 f21784b;

    private List f21785c;

    private f f21786d;

    private boolean f21790h;

    private String f21791i;

    private String f21792j;

    private List f21794l;

    private boolean f21787e = false;

    private final List f21788f = new CopyOnWriteArrayList();

    private boolean f21789g = false;

    private boolean f21793k = false;

    private final e4.a f21795m = new a();

    Runnable f21796n = new b();

    class b implements Runnable {
        b() {
        }

        @Override
        public void run() {
            e.this.K();
        }
    }

    private e(p3 p3Var, f fVar) {
        this.f21784b = p3Var;
        this.f21783a = p3Var.i();
        this.f21786d = fVar;
    }

    public void C() {
        int i10;
        int i11;
        t("start to load ad");
        ConfigCodeSeatDTO configCodeSeatDTOC = O.g().c(this.f21783a);
        int i12 = !NetStateManager.checkNetworkState(true) ? 1 : 0;
        if (configCodeSeatDTOC == null) {
            if (O.g().l()) {
                t("本地有云控数据，但当前代码位配置不存在, return");
                p3 p3Var = this.f21784b;
                if (p3Var != null && !p3Var.r()) {
                    AthenaTracker.T(this.f21784b, TaErrorCode.CODE_AD_UNIT_CONFIG_IS_EMPTY);
                }
                q(TaErrorCode.ERROR_AD_NEW_UNIT_CONFIG_IS_EMPTY, null);
                return;
            }
            t("本地没有云控数据，构建默认云控");
            ConfigCodeSeatDTO configCodeSeatDTO = new ConfigCodeSeatDTO();
            configCodeSeatDTO.setCodeSeatId(this.f21783a);
            configCodeSeatDTO.setCodeSeatType(Integer.valueOf(this.f21784b.e()));
            configCodeSeatDTO.setOfflineAdEnable(false);
            if (this.f21784b.h() >= 0) {
                configCodeSeatDTO.setFillTimeoutDuration(Integer.valueOf(this.f21784b.h()));
            }
            configCodeSeatDTOC = com.cloud.hisavana.sdk.common.util.h.f21571a.a(configCodeSeatDTO);
            g1.o().n(3);
        }
        this.f21784b.b(i12);
        this.f21784b.c(configCodeSeatDTOC);
        this.f21787e = configCodeSeatDTOC.getCrosslevelComparison().booleanValue();
        p3 p3Var2 = this.f21784b;
        if (p3Var2 != null && !p3Var2.r()) {
            AthenaTracker.T(this.f21784b, 0);
        }
        if (c7.b.l()) {
            try {
                Locale locale = Locale.US;
                Integer numValueOf = Integer.valueOf(this.f21784b.a());
                String str = this.f21784b.f().getFillTimeoutDuration() + "ms";
                Boolean boolValueOf = Boolean.valueOf(this.f21784b.f().isOfflineAdEnable());
                Boolean boolValueOf2 = Boolean.valueOf(Y.f20925a.A());
                Integer adShowCountLimit = this.f21784b.f().getAdShowCountLimit();
                Integer numValueOf2 = Integer.valueOf(this.f21784b.f().getCurrentShowTimes());
                Integer numValueOf3 = Integer.valueOf(this.f21784b.f().getCarouselTime());
                Integer carouselCount = this.f21784b.f().getCarouselCount();
                Boolean crosslevelComparison = this.f21784b.f().getCrosslevelComparison();
                Object[] objArr = new Object[9];
                objArr[0] = numValueOf;
                objArr[1] = str;
                i10 = 2;
                try {
                    objArr[2] = boolValueOf;
                    objArr[3] = boolValueOf2;
                    objArr[4] = adShowCountLimit;
                    objArr[5] = numValueOf2;
                    objArr[6] = numValueOf3;
                    objArr[7] = carouselCount;
                    objArr[8] = crosslevelComparison;
                    String str2 = String.format(locale, "config info:\nfetchAdCount=%d\nfillTimeoutDuration=%s\nofflineAdEnable=%b\nadInternalRequestEnable=%b\nadShowCountLimit=%d，currentShowTimes=%d\ncarouselTime=%d，carouselCount=%d\ncrosslevelComparison=%b", objArr);
                    com.cloud.sdk.commonutil.util.q.b(str2, 1);
                    t(str2);
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                i10 = 2;
            }
        } else {
            i10 = 2;
        }
        if (configCodeSeatDTOC.getAdShowCountLimit().intValue() > -1 && configCodeSeatDTOC.getCurrentShowTimes() >= configCodeSeatDTOC.getAdShowCountLimit().intValue()) {
            t("当前代码位展示次数达到上限 ----- 已展示次数=" + configCodeSeatDTOC.getCurrentShowTimes() + "  展示上限=" + configCodeSeatDTOC.getAdShowCountLimit());
            q(TaErrorCode.ERROR_AD_NEW_IMPRESSION_LIMIT, null);
            return;
        }
        if (!w(configCodeSeatDTOC)) {
            q(TaErrorCode.ERROR_AD_SHOW_NOT_IN_INTERVAL, null);
            return;
        }
        t("current cloud is default cloud ---> " + configCodeSeatDTOC.isDefaultConfig());
        List listM = m(i12);
        this.f21785c = listM;
        if (listM == null || listM.isEmpty()) {
            q(TaErrorCode.ERROR_AD_CHAIN_IS_NULL, null);
            return;
        }
        boolean zBooleanValue = configCodeSeatDTOC.getCrosslevelComparison().booleanValue();
        configCodeSeatDTOC.getFillTimeoutDuration().intValue();
        if (zBooleanValue) {
            for (e4 e4Var : this.f21785c) {
                if (e4Var.b() == 1) {
                    e4Var.c(this.f21784b.a());
                    e4Var.a(this.f21784b);
                }
            }
            i11 = i10;
        } else {
            F(this.f21784b.a());
            i11 = 1;
        }
        com.cloud.hisavana.sdk.common.util.f0.e(SSPTrackingHelper.f21368a.p(this.f21784b.n()), "s_req_type", i11);
    }

    public void F(int i10) {
        for (e4 e4Var : this.f21785c) {
            if (e4Var.b() == 1) {
                e4Var.c(i10);
                e4Var.a(this.f21784b);
                return;
            }
        }
    }

    private void H(List list) {
        List list2 = this.f21785c;
        if (list2 != null) {
            list2.clear();
            e4 e4VarL = l(l4.class);
            ((l4) e4VarL).k(list);
            this.f21785c.add(e4VarL);
            F(this.f21784b.a());
        }
    }

    private void I() {
        HSScopeHelper.f22503a.f(this.f21796n, this.f21784b.m());
    }

    public void J(List list) {
        H(list);
        I();
    }

    public void K() {
        this.f21789g = true;
        try {
            h(null);
        } catch (Throwable unused) {
        }
    }

    public static int f(AdsDTO adsDTO, AdsDTO adsDTO2) {
        return Double.compare(adsDTO2.getFirstPrice().doubleValue(), adsDTO.getFirstPrice().doubleValue());
    }

    public int h(List list) {
        if (this.f21790h) {
            return 1;
        }
        if (this.f21786d == null) {
            return 2;
        }
        if (list != null && !list.isEmpty()) {
            this.f21788f.addAll(list);
            try {
                ArrayList arrayList = new ArrayList(this.f21788f);
                Collections.sort(arrayList, new Comparator() {
                    @Override
                    public final int compare(Object obj, Object obj2) {
                        return e.f((AdsDTO) obj, (AdsDTO) obj2);
                    }
                });
                this.f21788f.clear();
                this.f21788f.addAll(arrayList);
            } catch (Throwable unused) {
            }
        }
        boolean zY = y(this.f21793k);
        if (this.f21787e && !this.f21789g && !zY) {
            return 2;
        }
        int iA = this.f21784b.a();
        List listZ = z(iA);
        if (!zY && !this.f21789g) {
            if (listZ.isEmpty()) {
                return 2;
            }
            if (listZ.size() < iA) {
                return listZ.size() - iA;
            }
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21368a;
            com.cloud.hisavana.sdk.common.util.f0.c(sSPTrackingHelper.p(this.f21784b.n()), "s_req_timeout", false);
            sSPTrackingHelper.x(this.f21788f, this.f21784b);
            q(null, listZ);
            return 1;
        }
        SSPTrackingHelper sSPTrackingHelper2 = SSPTrackingHelper.f21368a;
        com.cloud.hisavana.sdk.common.util.f0.c(sSPTrackingHelper2.p(this.f21784b.n()), "s_req_timeout", this.f21789g);
        if (!listZ.isEmpty()) {
            sSPTrackingHelper2.x(this.f21788f, this.f21784b);
            q(null, listZ);
            return 1;
        }
        if (!this.f21789g && this.f21793k && !y(false)) {
            return 2;
        }
        List list2 = this.f21794l;
        if (list2 == null || list2.isEmpty()) {
            q(TaErrorCode.ERROR_TAKE_AD_RESULT_FAILED, null);
            return 1;
        }
        b4.b().d("AdFetch", "adsList is empty,webPageRecommendInfo is not empty return success");
        q(null, listZ);
        return 1;
    }

    private AdxImpBean i(p3 p3Var) {
        AdxImpBean adxImpBean = new AdxImpBean();
        try {
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
            adxImpBean.webPageReqInfo = p3Var.p();
        } catch (Throwable unused) {
        }
        return adxImpBean;
    }

    public static e j(p3 p3Var, f fVar) {
        return new e(p3Var, fVar);
    }

    private e4 l(Class cls) {
        e4 l4Var;
        if (cls == o0.class) {
            l4Var = new o0();
            l4Var.e(this.f21784b.f().getFillTimeoutDuration().intValue());
        } else if (cls == s.class) {
            l4Var = new s();
        } else if (cls == o2.class) {
            l4Var = new o2();
        } else {
            l4Var = cls == l4.class ? new l4() : null;
        }
        if (l4Var != null) {
            l4Var.d(this.f21795m);
        }
        return l4Var;
    }

    private List m(int i10) {
        ArrayList arrayList = new ArrayList();
        boolean zIsOfflineAdEnable = this.f21784b.f().isOfflineAdEnable();
        ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.f21368a.p(this.f21784b.n());
        if (this.f21784b.x()) {
            com.cloud.hisavana.sdk.common.util.f0.e(concurrentHashMapP, "temp_online_without_req", TaErrorCode.CODE_AD_ONLY_REQ_DEFAULT);
            arrayList.add(l(o2.class));
        } else if (i10 == 1) {
            com.cloud.hisavana.sdk.common.util.f0.e(concurrentHashMapP, "temp_online_without_req", TaErrorCode.CODE_AD_NO_NETWORK);
            if (zIsOfflineAdEnable) {
                arrayList.add(l(s.class));
            }
            if (Y.f20925a.A()) {
                arrayList.add(l(o2.class));
            }
        } else {
            arrayList.add(l(o0.class));
            if (zIsOfflineAdEnable) {
                arrayList.add(l(s.class));
            }
            if (Y.f20925a.A()) {
                arrayList.add(l(o2.class));
            }
        }
        return arrayList;
    }

    public void o(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        try {
            if (bundle.containsKey("offline_ad_status")) {
                this.f21791i = (String) bundle.get("offline_ad_status");
            } else if (bundle.containsKey("default_ad_status")) {
                this.f21792j = (String) bundle.get("default_ad_status");
            }
        } catch (Throwable unused) {
        }
    }

    public void p(TaErrorCode taErrorCode, Bundle bundle) {
        this.f21786d.b(taErrorCode, bundle);
    }

    private void q(final TaErrorCode taErrorCode, final List list) {
        if (this.f21790h) {
            return;
        }
        this.f21790h = true;
        if (!this.f21789g) {
            HSScopeHelper.f22503a.d(this.f21796n);
        }
        if (this.f21786d == null) {
            int errorCode = taErrorCode != null ? taErrorCode.getErrorCode() : 0;
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21368a;
            p3 p3Var = this.f21784b;
            sSPTrackingHelper.A(errorCode, p3Var, null, this.f21791i, this.f21792j, p3Var.f().getLocalOfflineAdCacheCount(), System.currentTimeMillis() - this.f21784b.g(), 2);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f21784b.g();
        final Bundle bundle = new Bundle();
        com.cloud.hisavana.sdk.common.util.f0.f(bundle, "time_consuming", jCurrentTimeMillis);
        com.cloud.hisavana.sdk.common.util.f0.d(bundle, "cache_offline_ad_count", this.f21784b.f().getLocalOfflineAdCacheCount());
        com.cloud.hisavana.sdk.common.util.f0.g(bundle, "offline_ad_status", this.f21791i);
        com.cloud.hisavana.sdk.common.util.f0.g(bundle, "default_ad_status", this.f21792j);
        if (taErrorCode == null) {
            u(list, jCurrentTimeMillis);
            HSScopeHelper.f22503a.h(new Runnable() {
                @Override
                public final void run() {
                    this.f21965a.v(list, bundle);
                }
            });
            return;
        }
        if (c7.b.l()) {
            com.cloud.sdk.commonutil.util.q.b("fill_fail，error code is " + taErrorCode.getErrorCode() + ", ad_trigger_status，" + this.f21784b.o(), 3);
            t("fill failed, filltime=" + jCurrentTimeMillis + "error=" + taErrorCode);
        }
        HSScopeHelper.f22503a.h(new Runnable() {
            @Override
            public final void run() {
                this.f21953a.p(taErrorCode, bundle);
            }
        });
    }

    private void t(String str) {
        if (c7.b.l() && !TextUtils.isEmpty(str)) {
            b4.b().d("AdFetch", str + ", codeSeatId=" + this.f21783a);
        }
    }

    private void u(List list, long j10) {
        if (c7.b.l() && list != null && list.size() > 0) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("fill success:");
                sb2.append("\n");
                sb2.append("fill time: ");
                sb2.append(j10);
                sb2.append("ms");
                sb2.append("\n");
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    AdsDTO adsDTO = (AdsDTO) it.next();
                    if (adsDTO != null) {
                        sb2.append("ad_trigger_status: ");
                        sb2.append(this.f21784b.o());
                        sb2.append("，is_offline_ad: ");
                        sb2.append(adsDTO.isOfflineAd());
                        sb2.append("，adCreativeId: ");
                        sb2.append(adsDTO.getAdCreativeId());
                        sb2.append(", source:");
                        sb2.append(adsDTO.getSource());
                        sb2.append("\n");
                    }
                }
                com.cloud.sdk.commonutil.util.q.b(sb2.toString(), 3);
                t(sb2.toString());
            } catch (Exception unused) {
            }
        }
    }

    public void v(List list, Bundle bundle) {
        List list2 = this.f21794l;
        if (list2 == null || list2.isEmpty()) {
            this.f21786d.d(list, bundle);
        } else {
            this.f21786d.c(list, this.f21794l, bundle, i(this.f21784b));
        }
    }

    private boolean w(ConfigCodeSeatDTO configCodeSeatDTO) {
        int iIntValue = configCodeSeatDTO.getShowInterval().intValue();
        long lastShowAdTime = configCodeSeatDTO.getLastShowAdTime();
        long jCurrentTimeMillis = System.currentTimeMillis();
        b4.b().d("AdFetch", "calculateDownloadCount, current " + jCurrentTimeMillis + ",lastShowAdTime " + lastShowAdTime + ",showInterval " + iIntValue);
        return iIntValue <= 0 || Math.abs(lastShowAdTime - jCurrentTimeMillis) >= ((long) iIntValue) * 1000;
    }

    private boolean y(boolean z10) {
        List list = this.f21785c;
        if (list == null || list.isEmpty()) {
            return true;
        }
        for (e4 e4Var : this.f21785c) {
            if (!z10 || !(e4Var instanceof o0)) {
                if (e4Var.b() != 3) {
                    return false;
                }
            }
        }
        return true;
    }

    private List z(int i10) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList = new ArrayList();
        if (i10 <= 0) {
            return arrayList;
        }
        try {
            for (AdsDTO adsDTO : this.f21788f) {
                if (adsDTO != null) {
                    if (!hashSet.contains(adsDTO.getAdCreativeId())) {
                        String psPackageName = TextUtils.isEmpty(adsDTO.getPackageName()) ? adsDTO.getPsPackageName() : adsDTO.getPackageName();
                        if (TextUtils.isEmpty(psPackageName) || !hashSet2.contains(psPackageName)) {
                            if (!TextUtils.isEmpty(psPackageName)) {
                                hashSet2.add(psPackageName);
                            }
                            hashSet.add(adsDTO.getAdCreativeId());
                            adsDTO.setShowSourceSize(this.f21784b.f().getShowSourceSize().booleanValue());
                            adsDTO.setPreloadStatus(0);
                            arrayList.add(adsDTO);
                        }
                    }
                }
                if (arrayList.size() >= i10) {
                    break;
                }
            }
        } catch (Throwable th2) {
            b4.b().w("AdFetch", "buildDeduplicatedAdResult error: " + th2.getMessage());
        }
        return arrayList;
    }

    public void D(final List list) {
        HSScopeHelper.f22503a.e(new Runnable() {
            @Override
            public final void run() {
                this.f21904a.J(list);
            }
        });
    }

    public void E() {
        try {
            if (!this.f21789g) {
                HSScopeHelper.f22503a.d(this.f21796n);
            }
            this.f21786d = null;
        } catch (Throwable unused) {
        }
    }

    public void n() {
        this.f21794l = null;
        HSScopeHelper.f22503a.e(new Runnable() {
            @Override
            public final void run() {
                this.f21944a.C();
            }
        });
        I();
    }

    class a implements e4.a {
        a() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            try {
                e.this.o(bundle);
                int iH = e.this.h(null);
                if (iH != 1) {
                    e eVar = e.this;
                    eVar.F(iH < 0 ? Math.abs(iH) : eVar.f21784b.a());
                }
            } catch (Throwable unused) {
            }
        }

        @Override
        public void b(List list, Bundle bundle) {
            try {
                e.this.o(bundle);
                int iH = e.this.h(list);
                if (iH != 1) {
                    e eVar = e.this;
                    eVar.F(iH < 0 ? Math.abs(iH) : eVar.f21784b.a());
                }
            } catch (Throwable unused) {
            }
        }

        @Override
        public void c(TaErrorCode taErrorCode, Bundle bundle) {
            try {
                if (e.this.f21785c != null && e.this.f21785c.size() > 1) {
                    e.this.f21793k = true;
                }
                e.this.o(bundle);
                int iH = e.this.h(null);
                if (iH != 1) {
                    e eVar = e.this;
                    eVar.F(iH < 0 ? Math.abs(iH) : eVar.f21784b.a());
                }
            } catch (Throwable unused) {
            }
        }

        @Override
        public void a(List list) {
            e.this.f21794l = list;
            b4.b().d("ssp", "onWebRecommendInfoSuccess");
        }
    }
}
