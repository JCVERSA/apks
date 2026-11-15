package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastIcon;
import com.cloud.hisavana.sdk.common.bean.VastMedia;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.util.VastDomParseUtil;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import defpackage.cgc;
import defpackage.e1a;
import defpackage.g1a;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.t6;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class w {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(AdsDTO adsDTO) {
            String rtbAdm;
            if (adsDTO == null || (rtbAdm = adsDTO.getRtbAdm()) == null) {
                return 0;
            }
            if (rtbAdm.length() <= 0) {
                rtbAdm = null;
            }
            if (rtbAdm == null) {
                return 0;
            }
            VastData vastDataO = VastDomParseUtil.a.o(rtbAdm, adsDTO);
            if (vastDataO == null) {
                ikd.b().e("AdDataUtils", "formatVideoData: parse vast data failed");
                return -1;
            }
            if (vastDataO.getMainAd() == null) {
                ikd.b().e("AdDataUtils", "formatVideoData: mainAd is empty");
                AthenaTracker.q0(adsDTO, TaErrorCode.NO_MAIN_VIDEO_DATA_ERROR, 3, vastDataO.getVersion());
                return -1;
            }
            Integer materialType = adsDTO.getMaterialType();
            if (materialType != null && materialType.intValue() == 3) {
                adsDTO.setVastTypeAd(true);
                adsDTO.setVideoInfo(vastDataO);
                c(adsDTO, vastDataO);
                adsDTO.setRtbAdm(null);
                return 1;
            }
            ikd.b().e("AdDataUtils", "formatVideoData: ad is not video type, creativeId " + adsDTO.getAdCreativeId());
            AthenaTracker.q0(adsDTO, TaErrorCode.MATERIAL_TYPE_IS_NOT_VIDEO_ERROR, 3, vastDataO.getVersion());
            return -1;
        }

        public final String b(float f) {
            float f2 = 10;
            String str = String.format(Locale.US, "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(((float) Math.floor(f * f2)) / f2)}, 1));
            y45.i(str, "format(...)");
            return str;
        }

        public final void c(AdsDTO adsDTO, VastData vastData) {
            ArrayList<String> arrayList;
            Integer dspType = adsDTO.getDspType();
            if (dspType != null && dspType.intValue() == 2) {
                List<String> showTrackingUrls = adsDTO.getShowTrackingUrls();
                if (showTrackingUrls == null) {
                    arrayList = showTrackingUrls;
                    ArrayList<String> arrayList2 = new ArrayList<>();
                    adsDTO.setShowTrackingUrls(arrayList2);
                    arrayList = arrayList2;
                }
                arrayList = showTrackingUrls;
                List<String> impression = vastData.getImpression();
                if (impression != null) {
                    arrayList.addAll(impression);
                }
                t6 t6Var = t6.a;
                List listC = t6Var.c(adsDTO, 0);
                List<String> clickTrackingUrls = adsDTO.getClickTrackingUrls();
                if (clickTrackingUrls == null) {
                    clickTrackingUrls = new ArrayList<>();
                    adsDTO.setClickTrackingUrls(clickTrackingUrls);
                }
                clickTrackingUrls.addAll(listC);
                String strD = t6Var.d(adsDTO, 0);
                if (!TextUtils.isEmpty(strD)) {
                    if (!g1a.R(strD, ProxyConfig.MATCH_HTTPS, false, 2, null) && !g1a.R(strD, ProxyConfig.MATCH_HTTP, false, 2, null)) {
                        adsDTO.setDeepLinkUrl(strD);
                    } else if (j1a.X(strD, "https://play.google.com/store/apps/", false, 2, null) || j1a.X(strD, "http://play.google.com/store/apps/", false, 2, null)) {
                        ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
                        if (storeDeeplink == null) {
                            storeDeeplink = new ArrayList<>();
                            adsDTO.setStoreDeeplink(storeDeeplink);
                        }
                        storeDeeplink.add(strD);
                    } else {
                        adsDTO.setClickUrl(strD);
                    }
                }
                adsDTO.setOmSdkVerifications(vastData.getAdVerifications());
            }
            NativeBean nativeObject = adsDTO.getNativeObject();
            if (nativeObject == null) {
                nativeObject = new NativeBean();
                adsDTO.setNativeObject(nativeObject);
            }
            if (!TextUtils.isEmpty(vastData.getTitle())) {
                nativeObject.setTitle(new NativeBean.TitleDTO(vastData.getTitle()));
            }
            if (!TextUtils.isEmpty(vastData.getButtonTxt())) {
                nativeObject.setButton(new NativeBean.ButtonDTO(vastData.getButtonTxt()));
            }
            if (!TextUtils.isEmpty(vastData.getDescription())) {
                nativeObject.setDescript(new NativeBean.DescriptDTO(vastData.getDescription()));
            }
            VastIcon icon = vastData.getIcon();
            if (icon != null && !TextUtils.isEmpty(icon.getIconResource())) {
                nativeObject.setLogo(new NativeBean.LogoDTO(icon.getIconResource()));
            }
            if (vastData.getMainAd() != null) {
                VastMedia mainAd = vastData.getMainAd();
                y45.g(mainAd);
                adsDTO.setMaterialWith(mainAd.getWidth());
                VastMedia mainAd2 = vastData.getMainAd();
                y45.g(mainAd2);
                adsDTO.setMaterialHeight(mainAd2.getHeight());
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:25:0x0037  */
        /* JADX WARN: Code duplicated, block: B:27:0x003e  */
        /* JADX WARN: Code duplicated, block: B:28:0x0040  */
        /* JADX WARN: Code duplicated, block: B:30:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0026, code lost:
        
            if (r3.isInteractiveAd() != false) goto L19;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean d(AdsDTO adsDTO, int i) {
            if (adsDTO == null) {
                return false;
            }
            switch (i) {
                case 1:
                case 6:
                    if (adsDTO.isInteractiveAd()) {
                        return false;
                    }
                    if (4 != adsDTO.getSource()) {
                        return adsDTO.isVastTypeAd();
                    }
                    if (adsDTO.getDefaultMaterialType() == 2) {
                        return true;
                    }
                    return false;
                case 2:
                    return false;
                case 3:
                case 5:
                case 8:
                    if (!TextUtils.isEmpty(adsDTO.getAdm())) {
                        return false;
                    }
                    break;
                    break;
                case 4:
                    if (adsDTO.isVastTypeAd()) {
                        return true;
                    }
                    if (adsDTO.isInteractiveAd()) {
                        return false;
                    }
                    if (4 != adsDTO.getSource()) {
                        return adsDTO.isVastTypeAd();
                    }
                    if (adsDTO.getDefaultMaterialType() == 2) {
                        return true;
                    }
                    return false;
                case 7:
                default:
                    if (4 != adsDTO.getSource()) {
                        return adsDTO.isVastTypeAd();
                    }
                    if (adsDTO.getDefaultMaterialType() == 2) {
                        return true;
                    }
                    return false;
            }
        }

        public final String e(AdsDTO adsDTO) {
            String adCreativeId = adsDTO != null ? adsDTO.getAdCreativeId() : null;
            return adCreativeId == null ? "" : adCreativeId;
        }

        public final int f(AdsDTO adsDTO) {
            PslinkInfo pslinkInfo;
            if (adsDTO == null || (pslinkInfo = adsDTO.getPslinkInfo()) == null) {
                return 0;
            }
            return pslinkInfo.getDownloadCount();
        }

        public final String g(AdsDTO adsDTO) {
            if (adsDTO != null) {
                return w.a.q(adsDTO) ? adsDTO.getLogoUrl() : adsDTO.getAdImgUrl();
            }
            return null;
        }

        public final String h(AdsDTO adsDTO) {
            if (adsDTO != null) {
                return adsDTO.isVastTypeAd() ? w.a.k(adsDTO) : w.a.g(adsDTO);
            }
            return null;
        }

        public final String i(AdsDTO adsDTO) {
            String scale = adsDTO != null ? adsDTO.getScale() : null;
            return scale == null ? "" : scale;
        }

        public final float j(AdsDTO adsDTO) {
            NativeBean nativeObject;
            Integer rating;
            PslinkInfo pslinkInfo;
            String score;
            Float fP;
            float fIntValue = 0.0f;
            float fFloatValue = (adsDTO == null || (pslinkInfo = adsDTO.getPslinkInfo()) == null || (score = pslinkInfo.getScore()) == null || (fP = e1a.p(score)) == null) ? 0.0f : fP.floatValue();
            if (adsDTO != null && (nativeObject = adsDTO.getNativeObject()) != null && (rating = nativeObject.getRating()) != null) {
                fIntValue = rating.intValue();
            }
            return Math.max(fFloatValue, fIntValue);
        }

        public final String k(AdsDTO adsDTO) {
            VastData videoInfo;
            VastMedia mainAd;
            if (adsDTO == null || (videoInfo = adsDTO.getVideoInfo()) == null || (mainAd = videoInfo.getMainAd()) == null) {
                return null;
            }
            return mainAd.getMediaResource();
        }

        public final String l(AdsDTO adsDTO) {
            if (adsDTO == null) {
                return null;
            }
            int source = adsDTO.getSource();
            if (source == 1 || source == 2) {
                String strE = U0.P(k(adsDTO), 3) ? DiskLruCacheUtil.e(k(adsDTO), 3) : k(adsDTO);
                String str = adsDTO.getSource() == 2 ? "online cache" : "real-time request";
                ikd.b().d("AdDataUtils", "getVideoPlayURL, adId=" + adsDTO.getAdCreativeId() + ", ad source=" + str + " ad, \nurl=" + strE);
                return strE;
            }
            if (source == 3) {
                String strE2 = U0.P(k(adsDTO), 3) ? DiskLruCacheUtil.e(k(adsDTO), 3) : k(adsDTO);
                ikd.b().d("AdDataUtils", "getVideoPlayURL, adId=" + adsDTO.getAdCreativeId() + ", ad source=offline cache ad, \nurl=" + strE2);
                return strE2;
            }
            if (source != 4) {
                String strK = k(adsDTO);
                ikd.b().d("AdDataUtils", "getVideoPlayURL, adId=" + adsDTO.getAdCreativeId() + ", ad source=null, \nurl=" + strK);
                return strK;
            }
            if (adsDTO.isFromLocal()) {
                String adImgUrl = adsDTO.getAdImgUrl();
                ikd.b().d("AdDataUtils", "getVideoPlayURL, adId=" + adsDTO.getAdCreativeId() + ", ad source=internal ad, fromlocal=true, \nurl=" + adImgUrl);
                return adImgUrl;
            }
            String strE3 = U0.P(adsDTO.getAdImgUrl(), 4) ? DiskLruCacheUtil.e(adsDTO.getAdImgUrl(), 4) : adsDTO.getAdImgUrl();
            ikd.b().d("AdDataUtils", "getVideoPlayURL, adId=" + adsDTO.getAdCreativeId() + ", ad source=internal ad, fromlocal=false, \nurl=" + strE3);
            return strE3;
        }

        public final int m(AdsDTO adsDTO) {
            VastData videoInfo;
            VastMedia mainAd;
            if (adsDTO == null || (videoInfo = adsDTO.getVideoInfo()) == null || (mainAd = videoInfo.getMainAd()) == null) {
                return 0;
            }
            return mainAd.getHeight();
        }

        public final int n(AdsDTO adsDTO) {
            VastData videoInfo;
            VastMedia mainAd;
            if (adsDTO == null || (videoInfo = adsDTO.getVideoInfo()) == null || (mainAd = videoInfo.getMainAd()) == null) {
                return 0;
            }
            return mainAd.getWidth();
        }

        public final boolean o(AdsDTO adsDTO) {
            ConfigTotalDTO.ExtInfo extInfoL = cgc.n().l();
            return extInfoL != null && ((long) f(adsDTO)) >= extInfoL.getDownloadCount();
        }

        public final boolean p(AdsDTO adsDTO) {
            ConfigTotalDTO.ExtInfo extInfoL = cgc.n().l();
            return extInfoL != null && j(adsDTO) >= extInfoL.getScoreCount();
        }

        public final boolean q(AdsDTO adsDTO) {
            if (adsDTO == null) {
                return false;
            }
            int adType = adsDTO.getAdType();
            if (adType != 2) {
                return adType == 6;
            }
            return y45.e(adsDTO.getMaterialStyle(), "B20301") || y45.e(adsDTO.getMaterialStyle(), "B20302") || y45.e(adsDTO.getMaterialStyle(), "B20303");
        }

        public a() {
        }
    }

    public static final int a(AdsDTO adsDTO) {
        return a.a(adsDTO);
    }

    public static final String b(float f) {
        return a.b(f);
    }

    public static final boolean c(AdsDTO adsDTO, int i) {
        return a.d(adsDTO, i);
    }

    public static final String d(AdsDTO adsDTO) {
        return a.e(adsDTO);
    }

    public static final int e(AdsDTO adsDTO) {
        return a.f(adsDTO);
    }

    public static final String f(AdsDTO adsDTO) {
        return a.g(adsDTO);
    }

    public static final String g(AdsDTO adsDTO) {
        return a.h(adsDTO);
    }

    public static final String h(AdsDTO adsDTO) {
        return a.i(adsDTO);
    }

    public static final float i(AdsDTO adsDTO) {
        return a.j(adsDTO);
    }

    public static final String j(AdsDTO adsDTO) {
        return a.k(adsDTO);
    }

    public static final String k(AdsDTO adsDTO) {
        return a.l(adsDTO);
    }

    public static final int l(AdsDTO adsDTO) {
        return a.m(adsDTO);
    }

    public static final int m(AdsDTO adsDTO) {
        return a.n(adsDTO);
    }

    public static final boolean n(AdsDTO adsDTO) {
        return a.o(adsDTO);
    }

    public static final boolean o(AdsDTO adsDTO) {
        return a.p(adsDTO);
    }

    public static final boolean p(AdsDTO adsDTO) {
        return a.q(adsDTO);
    }
}
