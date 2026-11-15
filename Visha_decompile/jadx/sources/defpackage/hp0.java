package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.bean.ImgListDTO;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.data.bean.response.ViewJson;
import com.cloud.hisavana.sdk.l;
import com.cloud.hisavana.sdk.w;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import java.io.File;
import java.text.SimpleDateFormat;

public abstract class hp0 {
    public static boolean a(AdsDTO adsDTO, int i) {
        if (adsDTO == null) {
            return false;
        }
        PslinkInfo pslinkInfo = adsDTO.getPslinkInfo();
        Uri uriF = U0.F(pslinkInfo.getIconUrl(), i);
        if (uriF == null) {
            return false;
        }
        pslinkInfo.setIconUri(uriF);
        for (ImgListDTO imgListDTO : pslinkInfo.getImgList()) {
            if (imgListDTO != null && !TextUtils.isEmpty(imgListDTO.getUrl())) {
                Uri uriF2 = U0.F(imgListDTO.getUrl(), i);
                if (uriF2 == null) {
                    return false;
                }
                imgListDTO.setUri(uriF2);
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
            return !s8.a(adsDTO);
        }
        if (adsDTO.getOfflineAdStartDate() != null && adsDTO.getOfflineAdLaunchDate() != null) {
            try {
                long time = new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D).parse(adsDTO.getOfflineAdStartDate()).getTime();
                adsDTO.setOfflineAdStartDateLong(Long.valueOf(time));
                String binaryString = Long.toBinaryString(adsDTO.getOfflineAdLaunchDate().longValue());
                adsDTO.setOfflineAdLaunchDateStr(binaryString);
                adsDTO.setOfflineAdExpireTime(Long.valueOf(time + (((long) (binaryString.lastIndexOf("1") + 1)) * 86400000)));
                if (System.currentTimeMillis() <= adsDTO.getOfflineAdExpireTime().longValue()) {
                    return false;
                }
            } catch (Exception e) {
                ikd.b().e("CacheAdExpiredUtil", e.getMessage());
            }
        }
        return true;
    }

    public static int c(AdsDTO adsDTO, boolean z) {
        if (adsDTO == null) {
            return 1114;
        }
        if (b(adsDTO)) {
            return 1101;
        }
        if (!f(adsDTO)) {
            return 1102;
        }
        if (e(adsDTO, z)) {
            return (adsDTO.isOfflineAd() && g(adsDTO)) ? 1103 : 0;
        }
        return 1104;
    }

    public static boolean d(AdsDTO adsDTO) {
        String offlineH5Url = adsDTO.getOfflineH5Url();
        if (TextUtils.isEmpty(offlineH5Url)) {
            return true;
        }
        if (!adsDTO.isH5Zip()) {
            return !TextUtils.isEmpty(offlineH5Url) && U0.D(offlineH5Url);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(yu3.b(ul4.a()));
        String str = File.separator;
        sb.append(str);
        sb.append(l.b());
        sb.append(str);
        sb.append(gw5.c(offlineH5Url));
        return new File(sb.toString()).exists();
    }

    public static boolean e(AdsDTO adsDTO, boolean z) {
        if (adsDTO == null) {
            return false;
        }
        if (adsDTO.isVastTypeAd()) {
            if ((z || !Constants.a(adsDTO.getAdType())) && !U0.P(w.j(adsDTO), 3)) {
                return false;
            }
        } else if (!U0.D(w.f(adsDTO))) {
            return false;
        }
        adsDTO.setACReady(Boolean.valueOf(U0.D(adsDTO.getAdChoiceImageUrl())));
        AdsProtocolBean.Ext ext = adsDTO.getExt();
        if (ext != null && ext.getStoreFlag().intValue() > 0 && adsDTO.getImpBeanRequest() != null && adsDTO.getImpBeanRequest().adt != 6 && (TextUtils.isEmpty(ext.getStoreImageurl()) || !U0.D(ext.getStoreImageurl()))) {
            return false;
        }
        if (adsDTO.getPslinkInfoStatus()) {
            return !z || a(adsDTO, 1);
        }
        if (adsDTO.isH5Zip()) {
            return d(adsDTO);
        }
        return !z || d(adsDTO);
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
                ikd.b().w("CacheAdExpiredUtil", "isOfflineAdEfficient false: today is not delivered.");
                return false;
            }
        } catch (Exception e) {
            ikd.b().e("CacheAdExpiredUtil", e.getMessage());
        }
        return true;
    }

    public static boolean g(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return true;
        }
        return h(adsDTO, adsDTO.getShowNum().intValue());
    }

    public static boolean h(AdsDTO adsDTO, int i) {
        ViewJson viewJsonData;
        if (adsDTO == null || (viewJsonData = adsDTO.getViewJsonData()) == null || viewJsonData.getOffline() == null) {
            return true;
        }
        if (i < viewJsonData.getOffline().getMaxShowPPPD().intValue()) {
            return false;
        }
        ikd.b().d("CacheAdExpiredUtil", "isReachedDisplayTimes, id: " + adsDTO.getAdCreativeId() + ", showNum: " + i + ", getMaxShowPPPD: " + viewJsonData.getOffline().getMaxShowPPPD());
        return true;
    }
}
