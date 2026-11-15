package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class s extends e4 {

    private p3 f22243e;

    private AdxImpBean f22244f;

    class a implements p.c {
        a() {
        }

        @Override
        public void a(List list, String str) {
            if (list == null || list.isEmpty()) {
                s.this.j(TaErrorCode.ERROR_AD_OFFLINE_DATA_IS_NULL, str);
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((AdsDTO) it.next()).setImpBeanRequest(s.this.f22244f);
            }
            s.this.l(list, str);
        }
    }

    private void i(TaErrorCode taErrorCode) {
        try {
            p3 p3Var = this.f22243e;
            if (p3Var != null) {
                ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.f21368a.p(p3Var.n());
                com.cloud.hisavana.sdk.common.util.f0.e(concurrentHashMapP, "s_offline_status", 2);
                if (taErrorCode != null) {
                    com.cloud.hisavana.sdk.common.util.f0.e(concurrentHashMapP, "s_offline_failed_reason", taErrorCode.getErrorCode());
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void j(TaErrorCode taErrorCode, String str) {
        k("offline ad fetch failed, error=" + taErrorCode);
        this.f21825b = 3;
        i(taErrorCode);
        if (this.f21824a != null) {
            Bundle bundle = new Bundle();
            com.cloud.hisavana.sdk.common.util.f0.g(bundle, "offline_ad_status", str);
            this.f21824a.a(taErrorCode, bundle);
        }
    }

    private void k(String str) {
        if (!c7.b.l() || TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f22243e == null) {
            b4.b().d("OfflineAdNode", str);
            return;
        }
        b4.b().d("OfflineAdNode", str + ", codeSeatId=" + this.f22243e.i());
    }

    public void l(List list, String str) {
        this.f21825b = 3;
        if (c7.b.l() && list != null) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("offline ad fetch succeed: ");
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
                k(sb2.toString());
            } catch (Exception unused) {
            }
        }
        n();
        if (this.f21824a != null) {
            Bundle bundle = new Bundle();
            com.cloud.hisavana.sdk.common.util.f0.g(bundle, "offline_ad_status", str);
            this.f21824a.b(list, bundle);
        }
    }

    private AdxImpBean m(p3 p3Var) {
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
        return adxImpBean;
    }

    private void n() {
        try {
            p3 p3Var = this.f22243e;
            if (p3Var != null) {
                com.cloud.hisavana.sdk.common.util.f0.e(SSPTrackingHelper.f21368a.p(p3Var.n()), "s_offline_status", 1);
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public void a(p3 p3Var) {
        ConcurrentHashMap concurrentHashMapP;
        this.f21825b = 2;
        this.f22243e = p3Var;
        this.f22244f = m(p3Var);
        if (c7.b.l()) {
            com.cloud.sdk.commonutil.util.q.b(com.cloud.sdk.commonutil.util.e.a().getString(com.cloud.sdk.commonutil.R$string.ssp_log_msg10), 2);
            k("start load offline ad.");
        }
        p3 p3Var2 = this.f22243e;
        if (p3Var2 != null) {
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21368a;
            sSPTrackingHelper.z(p3Var2.n(), "3");
            concurrentHashMapP = sSPTrackingHelper.p(this.f22243e.n());
        } else {
            concurrentHashMapP = null;
        }
        ConcurrentHashMap concurrentHashMap = concurrentHashMapP;
        if (this.f22243e != null && c7.b.l()) {
            p.F().y(this.f22243e.i(), this.f22243e.o() == 1);
        }
        p.F().x(p3Var.i(), this.f21827d, p3Var.o() == 1, null, concurrentHashMap, new a());
    }
}
