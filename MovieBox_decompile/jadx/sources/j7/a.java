package j7;

import android.view.View;
import com.cloud.hisavana.sdk.O;
import com.cloud.hisavana.sdk.Y0;
import com.cloud.hisavana.sdk.api.listener.e;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.n2;
import com.cloud.hisavana.sdk.p;

public class a {

    class C0772a extends com.cloud.hisavana.sdk.common.tranmeasure.a {

        final e f63057b;

        final TaNativeInfo f63058c;

        final AdsDTO f63059d;

        C0772a(e eVar, TaNativeInfo taNativeInfo, AdsDTO adsDTO) {
            this.f63057b = eVar;
            this.f63058c = taNativeInfo;
            this.f63059d = adsDTO;
        }

        @Override
        public void a(AdsDTO adsDTO) {
            super.a(adsDTO);
            e eVar = this.f63057b;
            if (eVar != null) {
                eVar.a(this.f63058c);
            }
            AdsDTO adsDTO2 = this.f63059d;
            if (adsDTO2 == null || adsDTO2.getImpBeanRequest() == null) {
                return;
            }
            O.g().k(this.f63059d.getImpBeanRequest().pmid);
            if (this.f63059d.isOfflineAd()) {
                AdsDTO adsDTO3 = this.f63059d;
                adsDTO3.setShowNum(Integer.valueOf(adsDTO3.getShowNum().intValue() + 1));
                p.F().q(this.f63059d);
            }
        }
    }

    public static void a(TaNativeInfo taNativeInfo) {
        if (taNativeInfo != null && taNativeInfo.isRegister()) {
            com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(taNativeInfo);
            taNativeInfo.setRegister(false);
        }
    }

    public static void b(TaNativeInfo taNativeInfo) {
        AdsDTO adItem;
        if (taNativeInfo == null || (adItem = taNativeInfo.getAdItem()) == null) {
            return;
        }
        adItem.setClickid(n2.a());
        Y0.h(new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, adItem.getImageWidth().intValue(), adItem.getImageHeight().intValue()), adItem, null);
        Y0.n(adItem.getClickTrackingUrls(), adItem);
        if ((adItem.getClickTrackingUrls() == null || adItem.getClickTrackingUrls().isEmpty()) && !adItem.isPsAd()) {
            b4.b().d("LUtil", "startLandingPage2,click tracking url is null and ad is not ps ad");
            Y0.n(adItem.getPsClickTrackingUrls(), adItem);
        }
    }

    public static void c(TaNativeInfo taNativeInfo, View view, e eVar) {
        AdsDTO adItem;
        if (taNativeInfo == null || (adItem = taNativeInfo.getAdItem()) == null) {
            return;
        }
        C0772a c0772a = new C0772a(eVar, taNativeInfo, adItem);
        taNativeInfo.setRegister(true);
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(adItem, view, c0772a);
    }
}
