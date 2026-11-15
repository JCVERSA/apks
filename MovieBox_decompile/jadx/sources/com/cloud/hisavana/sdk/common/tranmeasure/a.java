package com.cloud.hisavana.sdk.common.tranmeasure;

import com.cloud.hisavana.sdk.Y0;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.n2;
import com.cloud.hisavana.sdk.t3;
import com.cloud.hisavana.sdk.x;

public class a implements d.b {

    private final String f21507a = "AdImpressionListenerImpl";

    private void b(AdsDTO adsDTO) {
        if (!com.cloud.hisavana.sdk.common.util.b.f21563a.g(adsDTO)) {
            adsDTO.setPreloadStatus(1);
            return;
        }
        com.cloud.hisavana.sdk.manager.a aVar = com.cloud.hisavana.sdk.manager.a.f21996a;
        int iB0 = aVar.b0();
        b4.b().w("AdImpressionListenerImpl", "preloadLandingPage: ccTabTestCode is " + iB0);
        if (iB0 != 7018 && iB0 != 7019) {
            t3.f22329a.l(com.cloud.sdk.commonutil.util.e.a(), adsDTO);
        } else if (aVar.c(adsDTO) == 7016) {
            adsDTO.setPreloadStatus(4);
        } else {
            aVar.s(com.cloud.sdk.commonutil.util.e.a(), adsDTO, true);
        }
    }

    @Override
    public void a(Object obj) {
        AdsDTO adItem;
        b4.b().d("ssp", "-------------------------> onViewImpressed");
        if (obj instanceof AdsDTO) {
            adItem = (AdsDTO) obj;
        } else {
            adItem = obj instanceof TaNativeInfo ? ((TaNativeInfo) obj).getAdItem() : null;
        }
        if (adItem != null) {
            DownUpPointBean downUpPointBean = new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, adItem.getImageWidth().intValue(), adItem.getImageHeight().intValue());
            adItem.setClickid(n2.a());
            Y0.o(adItem.getShowTrackingUrls(), adItem, downUpPointBean);
            x.f22413a.C(adItem);
            b(adItem);
        }
        x.f22413a.Q();
    }
}
