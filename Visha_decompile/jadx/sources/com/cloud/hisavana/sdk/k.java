package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import defpackage.f09;
import defpackage.ied;
import defpackage.ikd;
import defpackage.nrd;
import defpackage.r6;
import defpackage.ul4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class k extends z {
    public ied e;
    public AdxImpBean f;

    @Override
    public void a(ied iedVar) {
        ConcurrentHashMap concurrentHashMapP;
        this.b = 2;
        this.e = iedVar;
        this.f = m(iedVar);
        if (r6.p()) {
            com.cloud.sdk.commonutil.util.b.b(ul4.a().getString(com.cloud.sdk.commonutil.R.string.ssp_log_msg10), 2);
            k("start load offline ad.");
        }
        ied iedVar2 = this.e;
        if (iedVar2 != null) {
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.z(iedVar2.p(), "3");
            concurrentHashMapP = sSPTrackingHelper.p(this.e.p());
        } else {
            concurrentHashMapP = null;
        }
        ConcurrentHashMap concurrentHashMap = concurrentHashMapP;
        if (this.e != null && r6.p()) {
            i.M().A(this.e.j(), this.e.q() == 1);
        }
        i.M().z(iedVar.j(), this.d, iedVar.q() == 1, null, concurrentHashMap, new i.c() {
            @Override
            public final void a(List list, String str) {
                this.a.n(list, str);
            }
        });
    }

    public final List h(List list) {
        ArrayList arrayList = new ArrayList();
        ied iedVar = this.e;
        int iE = iedVar != null ? iedVar.e() : 0;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (w.c(adsDTO, iE)) {
                ikd.b().d("OfflineAdNode", "ExoPlayer unavailable, remove video ad: " + adsDTO.getAdCreativeId());
            } else {
                arrayList.add(adsDTO);
            }
        }
        return arrayList;
    }

    public final void i(TaErrorCode taErrorCode) {
        try {
            ied iedVar = this.e;
            if (iedVar != null) {
                ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.a.p(iedVar.p());
                f09.e(concurrentHashMapP, "s_offline_status", 2);
                if (taErrorCode != null) {
                    f09.e(concurrentHashMapP, "s_offline_failed_reason", taErrorCode.getErrorCode());
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final void j(TaErrorCode taErrorCode, String str) {
        k("offline ad fetch failed, error=" + taErrorCode);
        this.b = 3;
        i(taErrorCode);
        if (this.a != null) {
            Bundle bundle = new Bundle();
            f09.g(bundle, "offline_ad_status", str);
            this.a.a(taErrorCode, bundle);
            e();
        }
    }

    public final void k(String str) {
        if (!r6.p() || TextUtils.isEmpty(str)) {
            return;
        }
        if (this.e == null) {
            ikd.b().d("OfflineAdNode", str);
            return;
        }
        ikd.b().d("OfflineAdNode", str + ", codeSeatId=" + this.e.j());
    }

    public final void l(List list, String str) {
        this.b = 3;
        if (r6.p() && list != null) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("offline ad fetch succeed: ");
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
                k(sb.toString());
            } catch (Exception unused) {
            }
        }
        o();
        if (this.a != null) {
            Bundle bundle = new Bundle();
            f09.g(bundle, "offline_ad_status", str);
            if (!nrd.a.b()) {
                list = h(list);
            }
            if (list == null || list.isEmpty()) {
                this.a.a(TaErrorCode.ERROR_AD_OFFLINE_DATA_IS_NULL, bundle);
                e();
            } else {
                this.a.b(list, bundle);
                e();
            }
        }
    }

    public final AdxImpBean m(ied iedVar) {
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
        adxImpBean.mSceneId = iedVar.m();
        adxImpBean.isAutoRefresh = iedVar.t();
        return adxImpBean;
    }

    public final void n(List list, String str) {
        if (list == null || list.isEmpty()) {
            j(TaErrorCode.ERROR_AD_OFFLINE_DATA_IS_NULL, str);
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((AdsDTO) it.next()).setImpBeanRequest(this.f);
        }
        l(list, str);
    }

    public final void o() {
        try {
            ied iedVar = this.e;
            if (iedVar != null) {
                f09.e(SSPTrackingHelper.a.p(iedVar.p()), "s_offline_status", 1);
            }
        } catch (Throwable unused) {
        }
    }
}
