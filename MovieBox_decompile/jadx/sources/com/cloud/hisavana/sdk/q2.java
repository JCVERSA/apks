package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;

public abstract class q2 {
    public static void a(AdsDTO adsDTO) {
        if (adsDTO == null) {
            b4.b().d("ssp_measure", "exposureInvalid --> null == info");
            return;
        }
        adsDTO.setIsEffectiveShow(0);
        b4.b().d("ssp_measure", "invalid exposure --> to server info = " + adsDTO);
        if (adsDTO.getSource() == 4) {
            AthenaTracker.N(adsDTO);
        } else {
            AthenaTracker.b0(adsDTO);
        }
    }

    public static void b(AdsDTO adsDTO) {
        if (adsDTO == null) {
            b4.b().d("ssp_measure", "exposureInvalid --> null == info");
            return;
        }
        adsDTO.setIsEffectiveShow(1);
        b4.b().d("ssp_measure", "valid exposure --> to server info = " + adsDTO);
        if (adsDTO.getSource() == 4) {
            AthenaTracker.N(adsDTO);
        } else {
            AthenaTracker.b0(adsDTO);
        }
    }
}
