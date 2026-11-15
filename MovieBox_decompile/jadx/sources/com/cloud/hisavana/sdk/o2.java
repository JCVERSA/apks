package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.util.n0;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class o2 extends e4 {

    private p3 f22103e;

    private AdxImpBean f22104f;

    private void g(TaErrorCode taErrorCode) {
        try {
            p3 p3Var = this.f22103e;
            if (p3Var != null) {
                ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.f21368a.p(p3Var.n());
                com.cloud.hisavana.sdk.common.util.f0.e(concurrentHashMapP, "s_default_status", 2);
                if (taErrorCode != null) {
                    com.cloud.hisavana.sdk.common.util.f0.e(concurrentHashMapP, "s_default_failed_reason", taErrorCode.getErrorCode());
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void h(TaErrorCode taErrorCode, String str) {
        try {
            this.f21825b = 3;
            if (c7.b.l()) {
                i("offline ad fetch failed, error=" + taErrorCode);
            }
            g(taErrorCode);
            if (this.f21824a != null) {
                Bundle bundle = new Bundle();
                com.cloud.hisavana.sdk.common.util.f0.g(bundle, "default_ad_status", str);
                this.f21824a.a(taErrorCode, bundle);
            }
        } catch (Throwable unused) {
        }
    }

    private void i(String str) {
        if (c7.b.l() && !TextUtils.isEmpty(str)) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                if (this.f22103e != null) {
                    sb2.append(", codeSeatId=");
                    sb2.append(this.f22103e.i());
                }
                b4.b().d("DefaultAdNode", sb2.toString());
            } catch (Exception unused) {
            }
        }
    }

    private void j(List list, String str) {
        this.f21825b = 3;
        if (c7.b.l() && list != null) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("default ad fetch succeed: ");
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
                i(sb2.toString());
            } catch (Exception unused) {
            }
        }
        l();
        if (this.f21824a != null) {
            Bundle bundle = new Bundle();
            com.cloud.hisavana.sdk.common.util.f0.g(bundle, "default_ad_status", str);
            this.f21824a.b(list, bundle);
        }
    }

    private AdxImpBean k(p3 p3Var) {
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

    private void l() {
        try {
            p3 p3Var = this.f22103e;
            if (p3Var != null) {
                com.cloud.hisavana.sdk.common.util.f0.e(SSPTrackingHelper.f21368a.p(p3Var.n()), "s_default_status", 1);
            }
        } catch (Throwable unused) {
        }
    }

    public void m(List list, String str) {
        if (list == null || list.isEmpty()) {
            h(TaErrorCode.ERROR_AD_DEFAULT_DATA_IS_NULL, str);
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            adsDTO.setFirstPrice(Double.valueOf(n0.b(adsDTO.getFirstPrice())));
            adsDTO.setImpBeanRequest(this.f22104f);
        }
        j(list, str);
    }

    @Override
    public void a(p3 p3Var) {
        ConcurrentHashMap concurrentHashMapP;
        if (c7.b.l()) {
            com.cloud.sdk.commonutil.util.q.b(com.cloud.sdk.commonutil.util.e.a().getString(com.cloud.sdk.commonutil.R$string.ssp_log_msg13), 2);
            i("start load default ad.");
        }
        this.f21825b = 2;
        this.f22103e = p3Var;
        this.f22104f = k(p3Var);
        p3 p3Var2 = this.f22103e;
        if (p3Var2 != null) {
            String strN = p3Var2.n();
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21368a;
            sSPTrackingHelper.z(strN, "1");
            concurrentHashMapP = sSPTrackingHelper.p(strN);
        } else {
            concurrentHashMapP = null;
        }
        ConcurrentHashMap concurrentHashMap = concurrentHashMapP;
        String strI = p3Var.i();
        int iE = p3Var.e();
        boolean zU = p3Var.u();
        p3 p3Var3 = this.f22103e;
        if (p3Var3 != null) {
            Y.f20925a.j(iE, strI, this.f21827d, zU, p3Var3.o(), concurrentHashMap, new t0() {
                @Override
                public final void a(List list, String str) {
                    this.f21983a.m(list, str);
                }
            });
        }
    }
}
