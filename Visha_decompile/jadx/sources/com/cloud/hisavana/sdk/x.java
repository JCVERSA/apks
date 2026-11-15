package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import defpackage.bgb;
import defpackage.f09;
import defpackage.ied;
import defpackage.ikd;
import defpackage.nrd;
import defpackage.r6;
import defpackage.ul4;
import defpackage.xh5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public class x extends z {
    public ied e;
    public AdxImpBean f;

    private List h(List list) {
        ArrayList arrayList = new ArrayList();
        ied iedVar = this.e;
        int iE = iedVar != null ? iedVar.e() : 0;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (w.c(adsDTO, iE)) {
                ikd.b().d("DefaultAdNode", "ExoPlayer unavailable, remove video ad: " + adsDTO.getAdCreativeId());
            } else {
                arrayList.add(adsDTO);
            }
        }
        return arrayList;
    }

    private void i(TaErrorCode taErrorCode) {
        try {
            ied iedVar = this.e;
            if (iedVar != null) {
                ConcurrentHashMap concurrentHashMapP = SSPTrackingHelper.a.p(iedVar.p());
                f09.e(concurrentHashMapP, "s_default_status", 2);
                if (taErrorCode != null) {
                    f09.e(concurrentHashMapP, "s_default_failed_reason", taErrorCode.getErrorCode());
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void j(TaErrorCode taErrorCode, String str) {
        try {
            this.b = 3;
            if (r6.p()) {
                k("offline ad fetch failed, error=" + taErrorCode);
            }
            i(taErrorCode);
            if (this.a != null) {
                Bundle bundle = new Bundle();
                f09.g(bundle, "default_ad_status", str);
                this.a.a(taErrorCode, bundle);
                e();
            }
        } catch (Throwable unused) {
        }
    }

    private void k(String str) {
        if (r6.p() && !TextUtils.isEmpty(str)) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                if (this.e != null) {
                    sb.append(", codeSeatId=");
                    sb.append(this.e.j());
                }
                ikd.b().d("DefaultAdNode", sb.toString());
            } catch (Exception unused) {
            }
        }
    }

    private void l(List list, String str) {
        this.b = 3;
        if (r6.p() && list != null) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("default ad fetch succeed: ");
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
            f09.g(bundle, "default_ad_status", str);
            if (!nrd.a.b()) {
                list = h(list);
            }
            if (list == null || list.isEmpty()) {
                this.a.a(TaErrorCode.ERROR_AD_DEFAULT_DATA_IS_NULL, bundle);
                e();
            } else {
                this.a.b(list, bundle);
                e();
            }
        }
    }

    private AdxImpBean m(ied iedVar) {
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

    public void n(List list, String str) {
        if (list == null || list.isEmpty()) {
            j(TaErrorCode.ERROR_AD_DEFAULT_DATA_IS_NULL, str);
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            adsDTO.setFirstPrice(Double.valueOf(bgb.b(adsDTO.getFirstPrice())));
            adsDTO.setImpBeanRequest(this.f);
        }
        l(list, str);
    }

    private void o() {
        try {
            ied iedVar = this.e;
            if (iedVar != null) {
                f09.e(SSPTrackingHelper.a.p(iedVar.p()), "s_default_status", 1);
            }
        } catch (Throwable unused) {
        }
    }

    @Override
    public void a(ied iedVar) {
        ConcurrentHashMap concurrentHashMapP;
        if (r6.p()) {
            com.cloud.sdk.commonutil.util.b.b(ul4.a().getString(com.cloud.sdk.commonutil.R.string.ssp_log_msg13), 2);
            k("start load default ad.");
        }
        this.b = 2;
        this.e = iedVar;
        this.f = m(iedVar);
        ied iedVar2 = this.e;
        if (iedVar2 != null) {
            String strP = iedVar2.p();
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.z(strP, "1");
            concurrentHashMapP = sSPTrackingHelper.p(strP);
        } else {
            concurrentHashMapP = null;
        }
        ConcurrentHashMap concurrentHashMap = concurrentHashMapP;
        String strJ = iedVar.j();
        int iE = iedVar.e();
        boolean zW = iedVar.w();
        ied iedVar3 = this.e;
        if (iedVar3 != null) {
            C0520g0.a.j(iE, strJ, this.d, zW, iedVar3.q(), concurrentHashMap, new xh5() {
                @Override
                public final void a(List list, String str) {
                    this.a.n(list, str);
                }
            });
        }
    }
}
