package com.cloud.hisavana.sdk;

import android.os.Bundle;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;

public interface m3 {
    void a(TaErrorCode taErrorCode, Bundle bundle);

    void b(AdsDTO adsDTO, Bundle bundle);
}
