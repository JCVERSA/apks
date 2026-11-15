package com.cloud.hisavana.sdk.common.tranmeasure;

import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.k1;
import com.cloud.hisavana.sdk.y;
import defpackage.amd;
import defpackage.atd;
import defpackage.ikd;
import defpackage.t6;
import defpackage.ul4;

public abstract class a implements d.b {
    public final String a = "AdImpressionListenerImpl";

    @Override
    public void a(Object obj) {
        AdsDTO adItem;
        ikd.b().d("ssp", "-------------------------> onViewImpressed");
        if (obj instanceof AdsDTO) {
            adItem = (AdsDTO) obj;
        } else {
            adItem = obj instanceof TaNativeInfo ? ((TaNativeInfo) obj).getAdItem() : null;
        }
        if (adItem != null) {
            DownUpPointBean downUpPointBean = new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, adItem.getImageWidth().intValue(), adItem.getImageHeight().intValue());
            adItem.setClickid(amd.a());
            k1.o(adItem.getShowTrackingUrls(), adItem, downUpPointBean);
            y.a.C(adItem);
            b(adItem);
        }
        y.a.Q();
    }

    public final void b(AdsDTO adsDTO) {
        if (!t6.a.g(adsDTO)) {
            adsDTO.setPreloadStatus(1);
            return;
        }
        com.cloud.hisavana.sdk.manager.a aVar = com.cloud.hisavana.sdk.manager.a.a;
        int iB0 = aVar.b0();
        ikd.b().w("AdImpressionListenerImpl", "preloadLandingPage: ccTabTestCode is " + iB0);
        if (iB0 != 7018 && iB0 != 7019) {
            atd.a.l(ul4.a(), adsDTO);
        } else if (aVar.c(adsDTO) == 7016) {
            adsDTO.setPreloadStatus(4);
        } else {
            aVar.s(ul4.a(), adsDTO, true);
        }
    }
}
