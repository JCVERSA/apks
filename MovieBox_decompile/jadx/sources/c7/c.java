package c7;

import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;

public abstract class c {
    public static boolean a(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return false;
        }
        if (adsDTO.isOfflineAd() || adsDTO.getSource() == 4) {
            return true;
        }
        boolean z10 = System.currentTimeMillis() - adsDTO.getFill_ts().longValue() <= ((long) (adsDTO.getCacheTime().intValue() * 60000));
        b4.b().d("ssp", "isAdValid-" + z10 + " -now-" + System.currentTimeMillis() + "-load-" + adsDTO.getFill_ts() + "-cachetime-" + (adsDTO.getCacheTime().intValue() * 60000));
        return z10;
    }
}
