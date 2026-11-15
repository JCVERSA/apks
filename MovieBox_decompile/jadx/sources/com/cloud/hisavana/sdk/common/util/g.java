package com.cloud.hisavana.sdk.common.util;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.J0;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.ImgListDTO;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.data.bean.response.ViewJson;
import com.cloud.hisavana.sdk.w2;
import java.io.File;
import java.text.SimpleDateFormat;

public class g {
    public static boolean a(AdsDTO adsDTO, int i10) {
        if (adsDTO == null) {
            return false;
        }
        PslinkInfo pslinkInfo = adsDTO.getPslinkInfo();
        Uri uriE = J0.E(pslinkInfo.getIconUrl(), i10);
        if (uriE == null) {
            return false;
        }
        pslinkInfo.setIconUri(uriE);
        for (ImgListDTO imgListDTO : pslinkInfo.getImgList()) {
            if (imgListDTO != null && !TextUtils.isEmpty(imgListDTO.getUrl())) {
                Uri uriE2 = J0.E(imgListDTO.getUrl(), i10);
                if (uriE2 == null) {
                    return false;
                }
                imgListDTO.setUri(uriE2);
            }
        }
        return true;
    }

    public static boolean b(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return true;
        }
        if (adsDTO.getSource() == 4) {
            return false;
        }
        if (adsDTO.getAdLaunchTypes().intValue() == 1) {
            return !c7.c.a(adsDTO);
        }
        if (adsDTO.getOfflineAdStartDate() != null && adsDTO.getOfflineAdLaunchDate() != null) {
            try {
                long time = new SimpleDateFormat("yyyy-MM-dd").parse(adsDTO.getOfflineAdStartDate()).getTime();
                adsDTO.setOfflineAdStartDateLong(Long.valueOf(time));
                String binaryString = Long.toBinaryString(adsDTO.getOfflineAdLaunchDate().longValue());
                adsDTO.setOfflineAdLaunchDateStr(binaryString);
                adsDTO.setOfflineAdExpireTime(Long.valueOf(time + (((long) (binaryString.lastIndexOf("1") + 1)) * 86400000)));
                if (System.currentTimeMillis() <= adsDTO.getOfflineAdExpireTime().longValue()) {
                    return false;
                }
            } catch (Exception e10) {
                b4.b().e("CacheAdExpiredUtil", e10.getMessage());
            }
        }
        return true;
    }

    public static int c(AdsDTO adsDTO, boolean z10) {
        if (adsDTO == null) {
            return 14;
        }
        if (b(adsDTO)) {
            return 1;
        }
        if (!f(adsDTO)) {
            return 2;
        }
        if (e(adsDTO, z10)) {
            return (adsDTO.isOfflineAd() && g(adsDTO)) ? 3 : 0;
        }
        return 4;
    }

    public static boolean d(AdsDTO adsDTO) {
        String offlineH5Url = adsDTO.getOfflineH5Url();
        if (TextUtils.isEmpty(offlineH5Url)) {
            return true;
        }
        if (!adsDTO.isH5Zip()) {
            return !TextUtils.isEmpty(offlineH5Url) && J0.C(offlineH5Url);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(m.b(com.cloud.sdk.commonutil.util.e.a()));
        String str = File.separator;
        sb2.append(str);
        sb2.append("offline_zip");
        sb2.append(str);
        sb2.append(a0.c(offlineH5Url));
        return new File(sb2.toString()).exists();
    }

    public static boolean e(AdsDTO adsDTO, boolean z10) {
        if (adsDTO == null) {
            return false;
        }
        if (adsDTO.isVastTypeAd()) {
            if ((z10 || !Constants.a(adsDTO.getAdType())) && !J0.O(w2.i(adsDTO), 3)) {
                return false;
            }
        } else if (!J0.C(w2.e(adsDTO))) {
            return false;
        }
        adsDTO.setACReady(Boolean.valueOf(J0.C(adsDTO.getAdChoiceImageUrl())));
        AdsProtocolBean.Ext ext = adsDTO.getExt();
        if (ext != null && ext.getStoreFlag().intValue() > 0 && adsDTO.getImpBeanRequest() != null && adsDTO.getImpBeanRequest().adt != 6 && (TextUtils.isEmpty(ext.getStoreImageurl()) || !J0.C(ext.getStoreImageurl()))) {
            return false;
        }
        if (adsDTO.getPslinkInfoStatus()) {
            return !z10 || a(adsDTO, 1);
        }
        if (adsDTO.isH5Zip()) {
            return d(adsDTO);
        }
        return !z10 || d(adsDTO);
    }

    public static boolean f(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return false;
        }
        if (!adsDTO.isOfflineAd()) {
            return true;
        }
        try {
            if (adsDTO.getOfflineAdLaunchDateStr().charAt((int) ((System.currentTimeMillis() - adsDTO.getOfflineAdStartDateLong().longValue()) / 86400000)) != '1') {
                b4.b().w("CacheAdExpiredUtil", "isOfflineAdEfficient false: today is not delivered.");
                return false;
            }
        } catch (Exception e10) {
            b4.b().e("CacheAdExpiredUtil", e10.getMessage());
        }
        return true;
    }

    public static boolean g(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return true;
        }
        return h(adsDTO, adsDTO.getShowNum().intValue());
    }

    public static boolean h(AdsDTO adsDTO, int i10) {
        ViewJson viewJsonData;
        if (adsDTO == null || (viewJsonData = adsDTO.getViewJsonData()) == null || viewJsonData.getOffline() == null) {
            return true;
        }
        if (i10 < viewJsonData.getOffline().getMaxShowPPPD().intValue()) {
            return false;
        }
        b4.b().d("CacheAdExpiredUtil", "isReachedDisplayTimes, id: " + adsDTO.getAdCreativeId() + ", showNum: " + i10 + ", getMaxShowPPPD: " + viewJsonData.getOffline().getMaxShowPPPD());
        return true;
    }
}
