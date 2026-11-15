package defpackage;

import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;

public abstract class c2d {
    public static void a(AdsDTO adsDTO) {
        if (adsDTO == null) {
            ikd.b().d(ja1.MEASURE_TAG, "exposureInvalid --> null == info");
            return;
        }
        adsDTO.setIsEffectiveShow(0);
        ikd.b().d(ja1.MEASURE_TAG, "invalid exposure --> to server info = " + adsDTO);
        if (adsDTO.getSource() == 4) {
            AthenaTracker.R(adsDTO);
        } else {
            AthenaTracker.h0(adsDTO);
        }
    }

    public static void b(AdsDTO adsDTO) {
        if (adsDTO == null) {
            ikd.b().d(ja1.MEASURE_TAG, "exposureInvalid --> null == info");
            return;
        }
        adsDTO.setIsEffectiveShow(1);
        ikd.b().d(ja1.MEASURE_TAG, "valid exposure --> to server info = " + adsDTO);
        if (adsDTO.getSource() == 4) {
            AthenaTracker.R(adsDTO);
        } else {
            AthenaTracker.h0(adsDTO);
        }
    }
}
