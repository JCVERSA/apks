package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.e;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.au4;
import defpackage.cgc;
import defpackage.f09;
import defpackage.ied;
import defpackage.ikd;
import defpackage.o02;
import defpackage.r6;
import defpackage.spc;
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
    public final String a;
    public final ied b;
    public List c;
    public au4 d;
    public boolean h;
    public String i;
    public String j;
    public List l;
    public boolean e = false;
    public final List f = new CopyOnWriteArrayList();
    public boolean g = false;
    public boolean k = false;
    public final z.a m = new a();
    public Runnable n = new b();

    public class b implements Runnable {
        public b() {
        }

        @Override
        public void run() {
            e.this.K();
        }
    }

    public e(ied iedVar, au4 au4Var) {
        this.b = iedVar;
        this.a = iedVar.j();
        this.d = au4Var;
    }

    public static int f(AdsDTO adsDTO, AdsDTO adsDTO2) {
        return Double.compare(adsDTO2.getFirstPrice().doubleValue(), adsDTO.getFirstPrice().doubleValue());
    }

    public static e j(ied iedVar, au4 au4Var) {
        return new e(iedVar, au4Var);
    }

    public final void C() {
        t("start to load ad");
        ConfigCodeSeatDTO configCodeSeatDTOB = spc.f().b(this.a);
        int i = 1;
        int i2 = !NetStateManager.checkNetworkState(true) ? 1 : 0;
        if (configCodeSeatDTOB == null) {
            if (spc.f().k()) {
                t("本地有云控数据，但当前代码位配置不存在, return");
                ied iedVar = this.b;
                if (iedVar != null && !iedVar.t()) {
                    AthenaTracker.Y(this.b, TaErrorCode.CODE_AD_UNIT_CONFIG_IS_EMPTY);
                }
                q(TaErrorCode.ERROR_AD_NEW_UNIT_CONFIG_IS_EMPTY, null);
                return;
            }
            t("本地没有云控数据，构建默认云控");
            ConfigCodeSeatDTO configCodeSeatDTO = new ConfigCodeSeatDTO();
            configCodeSeatDTO.setCodeSeatId(this.a);
            configCodeSeatDTO.setCodeSeatType(Integer.valueOf(this.b.e()));
            configCodeSeatDTO.setOfflineAdEnable(false);
            if (this.b.i() >= 0) {
                configCodeSeatDTO.setFillTimeoutDuration(Integer.valueOf(this.b.i()));
            }
            configCodeSeatDTOB = o02.a.a(configCodeSeatDTO);
            cgc.n().p(3);
        }
        this.b.b(i2);
        this.b.c(configCodeSeatDTOB);
        this.e = configCodeSeatDTOB.getCrosslevelComparison().booleanValue();
        ied iedVar2 = this.b;
        if (iedVar2 != null && !iedVar2.t()) {
            AthenaTracker.Y(this.b, 0);
        }
        if (r6.p()) {
            try {
                String str = String.format(Locale.US, "config info:\nfetchAdCount=%d\nfillTimeoutDuration=%s\nofflineAdEnable=%b\nadInternalRequestEnable=%b\nadShowCountLimit=%d，currentShowTimes=%d\ncarouselTime=%d，carouselCount=%d\ncrosslevelComparison=%b", Integer.valueOf(this.b.a()), this.b.g().getFillTimeoutDuration() + "ms", Boolean.valueOf(this.b.g().isOfflineAdEnable()), Boolean.valueOf(C0520g0.a.B()), this.b.g().getAdShowCountLimit(), Integer.valueOf(this.b.g().getCurrentShowTimes()), Integer.valueOf(this.b.g().getCarouselTime()), this.b.g().getCarouselCount(), this.b.g().getCrosslevelComparison());
                com.cloud.sdk.commonutil.util.b.b(str, 1);
                t(str);
            } catch (Exception unused) {
            }
        }
        if (configCodeSeatDTOB.getAdShowCountLimit().intValue() > -1 && configCodeSeatDTOB.getCurrentShowTimes() >= configCodeSeatDTOB.getAdShowCountLimit().intValue()) {
            t("当前代码位展示次数达到上限 ----- 已展示次数=" + configCodeSeatDTOB.getCurrentShowTimes() + "  展示上限=" + configCodeSeatDTOB.getAdShowCountLimit());
            q(TaErrorCode.ERROR_AD_NEW_IMPRESSION_LIMIT, null);
            return;
        }
        if (!w(configCodeSeatDTOB)) {
            q(TaErrorCode.ERROR_AD_SHOW_NOT_IN_INTERVAL, null);
            return;
        }
        t("current cloud is default cloud ---> " + configCodeSeatDTOB.isDefaultConfig());
        List listM = m(i2);
        this.c = listM;
        if (listM == null || listM.isEmpty()) {
            q(TaErrorCode.ERROR_AD_CHAIN_IS_NULL, null);
            return;
        }
        boolean zBooleanValue = configCodeSeatDTOB.getCrosslevelComparison().booleanValue();
        configCodeSeatDTOB.getFillTimeoutDuration().intValue();
        if (zBooleanValue) {
            for (z zVar : this.c) {
                if (zVar.b() == 1) {
                    zVar.c(this.b.a());
                    zVar.a(this.b);
                }
            }
            i = 2;
        } else {
            F(this.b.a());
        }
        f09.e(SSPTrackingHelper.a.p(this.b.p()), "s_req_type", i);
    }

    public void D(final List list) {
        HSScopeHelper.a.j(new Runnable() {
            @Override
            public final void run() {
                this.b.J(list);
            }
        });
    }

    public void E() {
        try {
            if (!this.g) {
                HSScopeHelper.a.i(this.n);
            }
            this.d = null;
        } catch (Throwable unused) {
        }
    }

    public final void F(int i) {
        for (z zVar : this.c) {
            if (zVar.b() == 1) {
                zVar.c(i);
                zVar.a(this.b);
                return;
            }
        }
    }

    public final void H(List list) {
        List list2 = this.c;
        if (list2 != null) {
            list2.clear();
            z zVarK = k(j0.class);
            ((j0) zVarK).l(list);
            this.c.add(zVarK);
            F(this.b.a());
        }
    }

    public final void I() {
        HSScopeHelper.a.k(this.n, this.b.o());
    }

    public final void J(List list) {
        H(list);
        I();
    }

    public final void K() {
        this.g = true;
        try {
            h(null);
        } catch (Throwable unused) {
        }
    }

    public final int h(List list) {
        if (this.h) {
            return 1;
        }
        if (this.d == null) {
            return 2;
        }
        if (list != null && !list.isEmpty()) {
            this.f.addAll(list);
            try {
                ArrayList arrayList = new ArrayList(this.f);
                Collections.sort(arrayList, new Comparator() {
                    @Override
                    public final int compare(Object obj, Object obj2) {
                        return e.f((AdsDTO) obj, (AdsDTO) obj2);
                    }
                });
                this.f.clear();
                this.f.addAll(arrayList);
            } catch (Throwable unused) {
            }
        }
        boolean zY = y(this.k);
        if (this.e && !this.g && !zY) {
            return 2;
        }
        int iA = this.b.a();
        List listZ = z(iA);
        if (!zY && !this.g) {
            if (listZ.isEmpty()) {
                return 2;
            }
            if (listZ.size() < iA) {
                return listZ.size() - iA;
            }
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            f09.c(sSPTrackingHelper.p(this.b.p()), "s_req_timeout", false);
            sSPTrackingHelper.x(this.f, this.b);
            q(null, listZ);
            return 1;
        }
        SSPTrackingHelper sSPTrackingHelper2 = SSPTrackingHelper.a;
        f09.c(sSPTrackingHelper2.p(this.b.p()), "s_req_timeout", this.g);
        if (!listZ.isEmpty()) {
            sSPTrackingHelper2.x(this.f, this.b);
            q(null, listZ);
            return 1;
        }
        if (!this.g && this.k && !y(false)) {
            return 2;
        }
        List list2 = this.l;
        if (list2 == null || list2.isEmpty()) {
            q(TaErrorCode.ERROR_TAKE_AD_RESULT_FAILED, null);
            return 1;
        }
        ikd.b().d("AdFetch", "adsList is empty,webPageRecommendInfo is not empty return success");
        q(null, listZ);
        return 1;
    }

    public final AdxImpBean i(ied iedVar) {
        AdxImpBean adxImpBean = new AdxImpBean();
        try {
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
            adxImpBean.webPageReqInfo = iedVar.r();
        } catch (Throwable unused) {
        }
        return adxImpBean;
    }

    public final z k(Class cls) {
        z j0Var;
        if (cls == o.class) {
            j0Var = new o();
            j0Var.f(this.b.g().getFillTimeoutDuration().intValue());
        } else if (cls == k.class) {
            j0Var = new k();
        } else if (cls == x.class) {
            j0Var = new x();
        } else {
            j0Var = cls == j0.class ? new j0() : null;
        }
        if (j0Var != null) {
            j0Var.d(this.m);
        }
        return j0Var;
    }

    public final List m(int i) {
        ArrayList arrayList = new ArrayList();
        ConfigCodeSeatDTO configCodeSeatDTOG = this.b.g();
        boolean zIsOfflineAdEnable = configCodeSeatDTOG.isOfflineAdEnable();
        boolean z = this.b.z() || configCodeSeatDTOG.isOnlyLoadDefaultAd();
        ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.a.p(this.b.p());
        if (z) {
            f09.e(concurrentHashMapP, "temp_online_without_req", TaErrorCode.CODE_AD_ONLY_REQ_DEFAULT);
            arrayList.add(k(x.class));
        } else if (i == 1) {
            f09.e(concurrentHashMapP, "temp_online_without_req", TaErrorCode.CODE_AD_NO_NETWORK);
            if (zIsOfflineAdEnable) {
                arrayList.add(k(k.class));
            }
            if (C0520g0.a.B()) {
                arrayList.add(k(x.class));
            }
        } else {
            arrayList.add(k(o.class));
            if (zIsOfflineAdEnable) {
                arrayList.add(k(k.class));
            }
            if (C0520g0.a.B()) {
                arrayList.add(k(x.class));
            }
        }
        return arrayList;
    }

    public void n() {
        this.l = null;
        HSScopeHelper.a.j(new Runnable() {
            @Override
            public final void run() {
                this.b.C();
            }
        });
        I();
    }

    public final void o(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        try {
            if (bundle.containsKey("offline_ad_status")) {
                this.i = (String) bundle.get("offline_ad_status");
            } else if (bundle.containsKey("default_ad_status")) {
                this.j = (String) bundle.get("default_ad_status");
            }
        } catch (Throwable unused) {
        }
    }

    public final void p(TaErrorCode taErrorCode, Bundle bundle) {
        this.d.b(taErrorCode, bundle);
    }

    public final void q(final TaErrorCode taErrorCode, final List list) {
        if (this.h) {
            return;
        }
        this.h = true;
        if (!this.g) {
            HSScopeHelper.a.i(this.n);
        }
        if (this.d == null) {
            int errorCode = taErrorCode != null ? taErrorCode.getErrorCode() : 0;
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            ied iedVar = this.b;
            sSPTrackingHelper.A(errorCode, iedVar, null, this.i, this.j, iedVar.g().getLocalOfflineAdCacheCount(), System.currentTimeMillis() - this.b.h(), 2);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.b.h();
        final Bundle bundle = new Bundle();
        f09.f(bundle, "time_consuming", jCurrentTimeMillis);
        f09.d(bundle, "cache_offline_ad_count", this.b.g().getLocalOfflineAdCacheCount());
        f09.g(bundle, "offline_ad_status", this.i);
        f09.g(bundle, "default_ad_status", this.j);
        if (taErrorCode == null) {
            u(list, jCurrentTimeMillis);
            HSScopeHelper.a.p(new Runnable() {
                @Override
                public final void run() {
                    this.b.v(list, bundle);
                }
            });
            return;
        }
        if (r6.p()) {
            com.cloud.sdk.commonutil.util.b.b("fill_fail，error code is " + taErrorCode.getErrorCode() + ", ad_trigger_status，" + this.b.q(), 3);
            t("fill failed, filltime=" + jCurrentTimeMillis + "error=" + taErrorCode);
        }
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                this.b.p(taErrorCode, bundle);
            }
        });
    }

    public final void t(String str) {
        if (r6.p() && !TextUtils.isEmpty(str)) {
            ikd.b().d("AdFetch", str + ", codeSeatId=" + this.a);
        }
    }

    public final void u(List list, long j) {
        if (r6.p() && list != null && list.size() > 0) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("fill success:");
                sb.append("\n");
                sb.append("fill time: ");
                sb.append(j);
                sb.append("ms");
                sb.append("\n");
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    AdsDTO adsDTO = (AdsDTO) it.next();
                    if (adsDTO != null) {
                        sb.append("ad_trigger_status: ");
                        sb.append(this.b.q());
                        sb.append("，is_offline_ad: ");
                        sb.append(adsDTO.isOfflineAd());
                        sb.append("，adCreativeId: ");
                        sb.append(adsDTO.getAdCreativeId());
                        sb.append(", source:");
                        sb.append(adsDTO.getSource());
                        sb.append("\n");
                    }
                }
                com.cloud.sdk.commonutil.util.b.b(sb.toString(), 3);
                t(sb.toString());
            } catch (Exception unused) {
            }
        }
    }

    public final void v(List list, Bundle bundle) {
        List list2 = this.l;
        if (list2 == null || list2.isEmpty()) {
            this.d.d(list, bundle);
        } else {
            this.d.c(list, this.l, bundle, i(this.b));
        }
    }

    public final boolean w(ConfigCodeSeatDTO configCodeSeatDTO) {
        int iIntValue = configCodeSeatDTO.getShowInterval().intValue();
        long lastShowAdTime = configCodeSeatDTO.getLastShowAdTime();
        long jCurrentTimeMillis = System.currentTimeMillis();
        ikd.b().d("AdFetch", "calculateDownloadCount, current " + jCurrentTimeMillis + ",lastShowAdTime " + lastShowAdTime + ",showInterval " + iIntValue);
        return iIntValue <= 0 || Math.abs(lastShowAdTime - jCurrentTimeMillis) >= ((long) iIntValue) * 1000;
    }

    public final boolean y(boolean z) {
        List list = this.c;
        if (list == null || list.isEmpty()) {
            return true;
        }
        for (z zVar : this.c) {
            if (!z || !(zVar instanceof o)) {
                if (zVar.b() != 3) {
                    return false;
                }
            }
        }
        return true;
    }

    public final List z(int i) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList = new ArrayList();
        if (i <= 0) {
            return arrayList;
        }
        try {
            for (AdsDTO adsDTO : this.f) {
                if (adsDTO != null) {
                    if (!hashSet.contains(adsDTO.getAdCreativeId())) {
                        String psPackageName = TextUtils.isEmpty(adsDTO.getPackageName()) ? adsDTO.getPsPackageName() : adsDTO.getPackageName();
                        if (TextUtils.isEmpty(psPackageName) || !hashSet2.contains(psPackageName)) {
                            if (!TextUtils.isEmpty(psPackageName)) {
                                hashSet2.add(psPackageName);
                            }
                            hashSet.add(adsDTO.getAdCreativeId());
                            adsDTO.setShowSourceSize(this.b.g().getShowSourceSize().booleanValue());
                            adsDTO.setPreloadStatus(0);
                            arrayList.add(adsDTO);
                        }
                    }
                }
                if (arrayList.size() >= i) {
                    break;
                }
            }
        } catch (Throwable th) {
            ikd.b().w("AdFetch", "buildDeduplicatedAdResult error: " + th.getMessage());
        }
        return arrayList;
    }

    public class a implements z.a {
        public a() {
        }

        @Override
        public void a(TaErrorCode taErrorCode, Bundle bundle) {
            try {
                e.this.o(bundle);
                int iH = e.this.h(null);
                if (iH != 1) {
                    e eVar = e.this;
                    eVar.F(iH < 0 ? Math.abs(iH) : eVar.b.a());
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
                    eVar.F(iH < 0 ? Math.abs(iH) : eVar.b.a());
                }
            } catch (Throwable unused) {
            }
        }

        @Override
        public void c(TaErrorCode taErrorCode, Bundle bundle) {
            try {
                if (e.this.c != null && e.this.c.size() > 1) {
                    e.this.k = true;
                }
                e.this.o(bundle);
                int iH = e.this.h(null);
                if (iH != 1) {
                    e eVar = e.this;
                    eVar.F(iH < 0 ? Math.abs(iH) : eVar.b.a());
                }
            } catch (Throwable unused) {
            }
        }

        @Override
        public void a(List list) {
            e.this.l = list;
            ikd.b().d("ssp", "onWebRecommendInfoSuccess");
        }
    }
}
