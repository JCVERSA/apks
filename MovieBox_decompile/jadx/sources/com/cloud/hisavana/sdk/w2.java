package com.cloud.hisavana.sdk;

import android.text.TextUtils;
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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public abstract class w2 {

    public static final a f22392a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void c(AdsDTO adsDTO, VastData vastData) {
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
                com.cloud.hisavana.sdk.common.util.b bVar = com.cloud.hisavana.sdk.common.util.b.f21563a;
                List listC = bVar.c(adsDTO, 0);
                List<String> clickTrackingUrls = adsDTO.getClickTrackingUrls();
                if (clickTrackingUrls == null) {
                    clickTrackingUrls = new ArrayList<>();
                    adsDTO.setClickTrackingUrls(clickTrackingUrls);
                }
                clickTrackingUrls.addAll(listC);
                String strD = bVar.d(adsDTO, 0);
                if (!TextUtils.isEmpty(strD)) {
                    if (!StringsKt.W(strD, "https", false, 2, null) && !StringsKt.W(strD, "http", false, 2, null)) {
                        adsDTO.setDeepLinkUrl(strD);
                    } else if (StringsKt.c0(strD, "https://play.google.com/store/apps/", false, 2, null) || StringsKt.c0(strD, "http://play.google.com/store/apps/", false, 2, null)) {
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
                Intrinsics.e(mainAd);
                adsDTO.setMaterialWith(mainAd.getWidth());
                VastMedia mainAd2 = vastData.getMainAd();
                Intrinsics.e(mainAd2);
                adsDTO.setMaterialHeight(mainAd2.getHeight());
            }
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
            VastData vastDataO = VastDomParseUtil.f21561a.o(rtbAdm, adsDTO);
            if (vastDataO == null) {
                b4.b().e("AdDataUtils", "formatVideoData: parse vast data failed");
                return -1;
            }
            if (vastDataO.getMainAd() == null) {
                b4.b().e("AdDataUtils", "formatVideoData: mainAd is empty");
                AthenaTracker.k0(adsDTO, TaErrorCode.NO_MAIN_VIDEO_DATA_ERROR, 3, vastDataO.getVersion());
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
            b4.b().e("AdDataUtils", "formatVideoData: ad is not video type, creativeId " + adsDTO.getAdCreativeId());
            AthenaTracker.k0(adsDTO, TaErrorCode.MATERIAL_TYPE_IS_NOT_VIDEO_ERROR, 3, vastDataO.getVersion());
            return -1;
        }

        public final String b(float f10) {
            float f11 = 10;
            String str = String.format(Locale.US, "%.1f", Arrays.copyOf(new Object[]{Double.valueOf(((float) Math.floor(f10 * f11)) / f11)}, 1));
            Intrinsics.g(str, "format(...)");
            return str;
        }

        public final String d(AdsDTO adsDTO) {
            String adCreativeId = adsDTO != null ? adsDTO.getAdCreativeId() : null;
            return adCreativeId == null ? "" : adCreativeId;
        }

        public final int e(AdsDTO adsDTO) {
            PslinkInfo pslinkInfo;
            if (adsDTO == null || (pslinkInfo = adsDTO.getPslinkInfo()) == null) {
                return 0;
            }
            return pslinkInfo.getDownloadCount();
        }

        public final String f(AdsDTO adsDTO) {
            if (adsDTO != null) {
                return w2.f22392a.p(adsDTO) ? adsDTO.getLogoUrl() : adsDTO.getAdImgUrl();
            }
            return null;
        }

        public final String g(AdsDTO adsDTO) {
            if (adsDTO != null) {
                return adsDTO.isVastTypeAd() ? w2.f22392a.j(adsDTO) : w2.f22392a.f(adsDTO);
            }
            return null;
        }

        public final String h(AdsDTO adsDTO) {
            String scale = adsDTO != null ? adsDTO.getScale() : null;
            return scale == null ? "" : scale;
        }

        public final float i(AdsDTO adsDTO) {
            NativeBean nativeObject;
            Integer rating;
            PslinkInfo pslinkInfo;
            String score;
            Float fT;
            float fIntValue = 0.0f;
            float fFloatValue = (adsDTO == null || (pslinkInfo = adsDTO.getPslinkInfo()) == null || (score = pslinkInfo.getScore()) == null || (fT = StringsKt.t(score)) == null) ? 0.0f : fT.floatValue();
            if (adsDTO != null && (nativeObject = adsDTO.getNativeObject()) != null && (rating = nativeObject.getRating()) != null) {
                fIntValue = rating.intValue();
            }
            return Math.max(fFloatValue, fIntValue);
        }

        public final String j(AdsDTO adsDTO) {
            VastData videoInfo;
            VastMedia mainAd;
            if (adsDTO == null || (videoInfo = adsDTO.getVideoInfo()) == null || (mainAd = videoInfo.getMainAd()) == null) {
                return null;
            }
            return mainAd.getMediaResource();
        }

        public final String k(AdsDTO adsDTO) {
            if (adsDTO == null) {
                return null;
            }
            int source = adsDTO.getSource();
            if (source == 1 || source == 2) {
                String strE = J0.O(j(adsDTO), 3) ? DiskLruCacheUtil.e(j(adsDTO), 3) : j(adsDTO);
                String str = adsDTO.getSource() == 2 ? "online cache" : "real-time request";
                b4.b().d("AdDataUtils", "getVideoPlayURL, adId=" + adsDTO.getAdCreativeId() + ", ad source=" + str + " ad, \nurl=" + strE);
                return strE;
            }
            if (source == 3) {
                String strE2 = J0.O(j(adsDTO), 3) ? DiskLruCacheUtil.e(j(adsDTO), 3) : j(adsDTO);
                b4.b().d("AdDataUtils", "getVideoPlayURL, adId=" + adsDTO.getAdCreativeId() + ", ad source=offline cache ad, \nurl=" + strE2);
                return strE2;
            }
            if (source != 4) {
                String strJ = j(adsDTO);
                b4.b().d("AdDataUtils", "getVideoPlayURL, adId=" + adsDTO.getAdCreativeId() + ", ad source=null, \nurl=" + strJ);
                return strJ;
            }
            if (adsDTO.isFromLocal()) {
                String adImgUrl = adsDTO.getAdImgUrl();
                b4.b().d("AdDataUtils", "getVideoPlayURL, adId=" + adsDTO.getAdCreativeId() + ", ad source=internal ad, fromlocal=true, \nurl=" + adImgUrl);
                return adImgUrl;
            }
            String strE3 = J0.O(adsDTO.getAdImgUrl(), 4) ? DiskLruCacheUtil.e(adsDTO.getAdImgUrl(), 4) : adsDTO.getAdImgUrl();
            b4.b().d("AdDataUtils", "getVideoPlayURL, adId=" + adsDTO.getAdCreativeId() + ", ad source=internal ad, fromlocal=false, \nurl=" + strE3);
            return strE3;
        }

        public final int l(AdsDTO adsDTO) {
            VastData videoInfo;
            VastMedia mainAd;
            if (adsDTO == null || (videoInfo = adsDTO.getVideoInfo()) == null || (mainAd = videoInfo.getMainAd()) == null) {
                return 0;
            }
            return mainAd.getHeight();
        }

        public final int m(AdsDTO adsDTO) {
            VastData videoInfo;
            VastMedia mainAd;
            if (adsDTO == null || (videoInfo = adsDTO.getVideoInfo()) == null || (mainAd = videoInfo.getMainAd()) == null) {
                return 0;
            }
            return mainAd.getWidth();
        }

        public final boolean n(AdsDTO adsDTO) {
            ConfigTotalDTO.ExtInfo extInfoM = g1.o().m();
            return extInfoM != null && ((long) e(adsDTO)) >= extInfoM.getDownloadCount();
        }

        public final boolean o(AdsDTO adsDTO) {
            ConfigTotalDTO.ExtInfo extInfoM = g1.o().m();
            return extInfoM != null && i(adsDTO) >= extInfoM.getScoreCount();
        }

        public final boolean p(AdsDTO adsDTO) {
            if (adsDTO == null) {
                return false;
            }
            int adType = adsDTO.getAdType();
            if (adType != 2) {
                return adType == 6;
            }
            return Intrinsics.c(adsDTO.getMaterialStyle(), "B20301") || Intrinsics.c(adsDTO.getMaterialStyle(), "B20302") || Intrinsics.c(adsDTO.getMaterialStyle(), "B20303");
        }

        private a() {
        }
    }

    public static final int a(AdsDTO adsDTO) {
        return f22392a.a(adsDTO);
    }

    public static final String b(float f10) {
        return f22392a.b(f10);
    }

    public static final String c(AdsDTO adsDTO) {
        return f22392a.d(adsDTO);
    }

    public static final int d(AdsDTO adsDTO) {
        return f22392a.e(adsDTO);
    }

    public static final String e(AdsDTO adsDTO) {
        return f22392a.f(adsDTO);
    }

    public static final String f(AdsDTO adsDTO) {
        return f22392a.g(adsDTO);
    }

    public static final String g(AdsDTO adsDTO) {
        return f22392a.h(adsDTO);
    }

    public static final float h(AdsDTO adsDTO) {
        return f22392a.i(adsDTO);
    }

    public static final String i(AdsDTO adsDTO) {
        return f22392a.j(adsDTO);
    }

    public static final String j(AdsDTO adsDTO) {
        return f22392a.k(adsDTO);
    }

    public static final int k(AdsDTO adsDTO) {
        return f22392a.l(adsDTO);
    }

    public static final int l(AdsDTO adsDTO) {
        return f22392a.m(adsDTO);
    }

    public static final boolean m(AdsDTO adsDTO) {
        return f22392a.n(adsDTO);
    }

    public static final boolean n(AdsDTO adsDTO) {
        return f22392a.o(adsDTO);
    }

    public static final boolean o(AdsDTO adsDTO) {
        return f22392a.p(adsDTO);
    }
}
