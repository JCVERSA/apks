package defpackage;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.bean.VastClick;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastIcon;
import com.cloud.hisavana.sdk.common.bean.VastMedia;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ViewJson;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.just.agentweb.DefaultWebClient;
import java.util.ArrayList;
import java.util.List;
import kotlin.text.Regex;

public final class t6 {
    public static final t6 a = new t6();

    public final String a(AdsDTO adsDTO) {
        String adImgUrl;
        VastMedia mainAd;
        if (adsDTO == null || !adsDTO.isVastTypeAd()) {
            adImgUrl = adsDTO != null ? adsDTO.getAdImgUrl() : null;
        } else {
            VastData videoInfo = adsDTO.getVideoInfo();
            if (videoInfo == null || (mainAd = videoInfo.getMainAd()) == null || (adImgUrl = mainAd.getMediaResource()) == null) {
                adImgUrl = "";
            }
        }
        ikd.b().d("AdMediaUtil", "getAdMainUrl ---->  " + adImgUrl);
        return adImgUrl;
    }

    public final int b(AdsDTO adsDTO) {
        String type;
        VastMedia mainAd;
        int i = 0;
        if (adsDTO != null && adsDTO.isVastTypeAd()) {
            VastData videoInfo = adsDTO.getVideoInfo();
            if (videoInfo == null || (mainAd = videoInfo.getMainAd()) == null || (type = mainAd.getType()) == null) {
                type = "";
            }
            if (g1a.R(type, "video/", false, 2, null)) {
                i = 1;
            } else {
                i = g1a.R(type, "image/", false, 2, null) ? 2 : -1;
            }
        }
        ikd.b().d("AdMediaUtil", "getAdMediaType ---->  " + i);
        return i;
    }

    public final List c(AdsDTO adsDTO, int i) {
        VastData videoInfo;
        VastClick vastClick;
        List<String> clickTrack;
        VastData videoInfo2;
        VastIcon icon;
        List<String> iconClickTracking;
        if (i == 1) {
            return (adsDTO == null || (videoInfo2 = adsDTO.getVideoInfo()) == null || (icon = videoInfo2.getIcon()) == null || (iconClickTracking = icon.getIconClickTracking()) == null) ? new ArrayList() : iconClickTracking;
        }
        return (adsDTO == null || (videoInfo = adsDTO.getVideoInfo()) == null || (vastClick = videoInfo.getVastClick()) == null || (clickTrack = vastClick.getClickTrack()) == null) ? new ArrayList() : clickTrack;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0035 A[PHI: r1
      0x0035: PHI (r1v5 java.lang.String) = (r1v4 java.lang.String), (r1v8 java.lang.String), (r1v11 java.lang.String) binds: [B:29:0x0049, B:13:0x001e, B:20:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    public final String d(AdsDTO adsDTO, int i) {
        VastData videoInfo;
        VastClick vastClick;
        String videoClick;
        VastData videoInfo2;
        VastClick vastClick2;
        VastData videoInfo3;
        VastIcon icon;
        String str = "";
        if (i == 1) {
            if (adsDTO == null || (videoInfo3 = adsDTO.getVideoInfo()) == null || (icon = videoInfo3.getIcon()) == null || (videoClick = icon.getIconClick()) == null) {
                videoClick = "";
            }
            if (!TextUtils.isEmpty(videoClick) || (adsDTO != null && (videoInfo2 = adsDTO.getVideoInfo()) != null && (vastClick2 = videoInfo2.getVastClick()) != null && (videoClick = vastClick2.getVideoClick()) != null)) {
                str = videoClick;
            }
        } else if (adsDTO != null && (videoInfo = adsDTO.getVideoInfo()) != null && (vastClick = videoInfo.getVastClick()) != null && (videoClick = vastClick.getVideoClick()) != null) {
            str = videoClick;
        }
        ikd.b().d("AdMediaUtil", "getClickUrl is ---> getClickUrl = " + str);
        return str;
    }

    public final String e(AdsDTO adsDTO, int i) {
        int i2;
        y45.j(adsDTO, "ad");
        if (adsDTO.getSource() == 4) {
            i2 = 2;
        } else {
            i2 = adsDTO.isOfflineAd() ? 1 : 0;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("s_");
        String strP = DeviceUtil.p();
        y45.i(strP, "getUUID(...)");
        sb.append(new Regex("-").replace(strP, ""));
        sb.append(",n_");
        sb.append(i);
        sb.append(",t_");
        sb.append(i2);
        return sb.toString();
    }

    public final boolean f(AdsDTO adsDTO) {
        String psPackageName;
        String packageName;
        ViewJson.DialogJson dialogJson;
        String formPath;
        String url;
        ViewJson viewJsonData = adsDTO != null ? adsDTO.getViewJsonData() : null;
        Integer dialogType = viewJsonData != null ? viewJsonData.getDialogType() : null;
        if (dialogType != null && dialogType.intValue() == 1 && (!((dialogJson = viewJsonData.getDialogJson()) == null || (url = dialogJson.getUrl()) == null || url.length() <= 0) || ((formPath = viewJsonData.getFormPath()) != null && formPath.length() > 0))) {
            ikd.b().d("AdMediaUtil", "checkAdIsJumpTOLandingPage: from ad");
            return false;
        }
        ArrayList<String> storeDeeplink = adsDTO != null ? adsDTO.getStoreDeeplink() : null;
        if (storeDeeplink != null && (!storeDeeplink.isEmpty())) {
            ikd.b().d("AdMediaUtil", "checkAdIsJumpTOLandingPage: storedeeplink page");
            return false;
        }
        String deepLinkUrl = adsDTO != null ? adsDTO.getDeepLinkUrl() : null;
        if (deepLinkUrl != null && deepLinkUrl.length() > 0) {
            ikd.b().d("AdMediaUtil", "checkAdIsJumpTOLandingPage: deepLinkUrl page");
            return false;
        }
        if ((adsDTO == null || (packageName = adsDTO.getPackageName()) == null || packageName.length() <= 0) && (adsDTO == null || (psPackageName = adsDTO.getPsPackageName()) == null || psPackageName.length() <= 0)) {
            return true;
        }
        ikd.b().d("AdMediaUtil", "checkAdIsJumpTOLandingPage: packageName or psPackageName");
        return false;
    }

    public final boolean g(AdsDTO adsDTO) {
        Integer dspType;
        String realLandUrl;
        if (adsDTO != null) {
            Boolean preloadEnable = adsDTO.getPreloadEnable();
            y45.i(preloadEnable, "getPreloadEnable(...)");
            if (preloadEnable.booleanValue() && !adsDTO.isOfflineAd() && adsDTO.getSource() != 4 && (dspType = adsDTO.getDspType()) != null && dspType.intValue() == 1 && (realLandUrl = adsDTO.getRealLandUrl()) != null && realLandUrl.length() != 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean h(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return (g1a.R(str, DefaultWebClient.HTTP_SCHEME, false, 2, null) || g1a.R(str, "https://", false, 2, null)) && !j1a.X(str, "play.google.com", false, 2, null);
    }
}
