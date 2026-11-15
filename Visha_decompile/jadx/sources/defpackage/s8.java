package defpackage;

import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.hisavana.common.constant.ComConstants;

public abstract class s8 {
    public static boolean a(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return false;
        }
        if (adsDTO.isOfflineAd() || adsDTO.getSource() == 4) {
            return true;
        }
        boolean z = System.currentTimeMillis() - adsDTO.getFill_ts().longValue() <= ((long) (adsDTO.getCacheTime().intValue() * ComConstants.defScheduleTime));
        ikd.b().d("ssp", "isAdValid-" + z + " -now-" + System.currentTimeMillis() + "-load-" + adsDTO.getFill_ts() + "-cachetime-" + (adsDTO.getCacheTime().intValue() * ComConstants.defScheduleTime));
        return z;
    }
}
