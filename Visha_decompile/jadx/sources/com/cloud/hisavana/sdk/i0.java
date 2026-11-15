package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.data.bean.inapp.ApkInfo;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.data.bean.inapp.PsAppInfo;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.google.gson.reflect.TypeToken;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import defpackage.g1a;
import defpackage.i81;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.md8;
import defpackage.ov7;
import defpackage.ul4;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;

public final class i0 {
    public static final i0 a = new i0();

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/i0$a", "Lcom/google/gson/reflect/TypeToken;", "", "", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class a extends TypeToken<List<? extends String>> {
    }

    public final int a(PsAppInfo psAppInfo) {
        List<ApkInfo> apkList;
        if (!h(md8.f(), psAppInfo.getModelWhite(), psAppInfo.getModelBlack(), true)) {
            return 1111;
        }
        List<ApkInfo> apkList2 = psAppInfo.getApkList();
        if (apkList2 != null && !apkList2.isEmpty() && (apkList = psAppInfo.getApkList()) != null) {
            for (ApkInfo apkInfo : apkList) {
                if (apkInfo != null) {
                    i0 i0Var = a;
                    if (i0Var.h(DeviceUtil.e(), apkInfo.getCountryCodes(), null, false)) {
                        int iG = md8.g();
                        Integer sysVersionCode = apkInfo.getSysVersionCode();
                        y45.i(sysVersionCode, "getSysVersionCode(...)");
                        if (iG >= sysVersionCode.intValue() && i0Var.h(md8.h(), apkInfo.getAndroidSupportVersion(), null, false) && i0Var.h(md8.a(), apkInfo.getBrand(), null, true) && i0Var.h(md8.f(), apkInfo.getModel(), apkInfo.getNonModel(), true) && i0Var.k(md8.b(), apkInfo.getCpus())) {
                            return 0;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return 1112;
    }

    public final int b(String str, DefaultAdDTO defaultAdDTO, String str2, PsAppInfo psAppInfo) {
        y45.j(defaultAdDTO, "ad");
        try {
            if (!g(DeviceUtil.e(), defaultAdDTO.getCountryWhite(), defaultAdDTO.getCountryBlack())) {
                return 1107;
            }
            if (!g(md8.a(), defaultAdDTO.getBrandWhite(), defaultAdDTO.getBrandBlack())) {
                return 1108;
            }
            if (j(str, defaultAdDTO.getEndDate())) {
                return 1101;
            }
            if (j(defaultAdDTO.getStartDate(), str)) {
                return 1102;
            }
            if (defaultAdDTO.getShowMaxOfDay() <= 0) {
                return 1109;
            }
            String displayedDate = defaultAdDTO.getDisplayedDate();
            if (displayedDate != null && displayedDate.length() != 0 && TextUtils.equals(defaultAdDTO.getDisplayedDate(), str) && defaultAdDTO.getDisplayedTimes() >= defaultAdDTO.getShowMaxOfDay()) {
                return 1103;
            }
            int iA = ov7.a(defaultAdDTO.getPullNewestLive(), str2, null);
            if (iA != 0) {
                return iA == 1 ? 1105 : 1106;
            }
            if ((defaultAdDTO.getPullNewestLive() == 1 || defaultAdDTO.getPullNewestLive() == 2) && psAppInfo != null) {
                return a.a(psAppInfo);
            }
            return 0;
        } catch (Exception e) {
            ikd.b().w("DefaultAdUtil", "check ad validity error: " + e.getMessage());
            return Integer.MAX_VALUE;
        }
    }

    public final AdsDTO c(DefaultAdDTO defaultAdDTO, boolean z) {
        y45.j(defaultAdDTO, "ad");
        AdsDTO adsDTO = new AdsDTO();
        AdxImpBean adxImpBean = new AdxImpBean();
        adxImpBean.pmid = defaultAdDTO.getCodeSeatId();
        adxImpBean.adt = defaultAdDTO.getAdType();
        adsDTO.setImpBeanRequest(adxImpBean);
        adsDTO.setAdCreativeId(defaultAdDTO.getAdCreativeId());
        adsDTO.setFirstPrice(defaultAdDTO.getFirstPrice());
        adsDTO.setSettlementRatio(defaultAdDTO.getSettlementRatio());
        adsDTO.setMaterialStyle(defaultAdDTO.getMaterialStyle());
        NativeBean nativeBean = new NativeBean();
        NativeBean.TitleDTO titleDTO = new NativeBean.TitleDTO(defaultAdDTO.getTitle());
        NativeBean.DescriptDTO descriptDTO = new NativeBean.DescriptDTO(defaultAdDTO.getDescription());
        NativeBean.ButtonDTO buttonDTO = new NativeBean.ButtonDTO(defaultAdDTO.getButton());
        NativeBean.LogoDTO logoDTO = z ? new NativeBean.LogoDTO(e(defaultAdDTO.getLogoUrl())) : new NativeBean.LogoDTO(defaultAdDTO.getLogoUrl());
        ArrayList arrayList = new ArrayList();
        arrayList.add(z ? new NativeBean.MainImagesDTO(e(defaultAdDTO.getMainIngUrl())) : new NativeBean.MainImagesDTO(defaultAdDTO.getMainIngUrl()));
        nativeBean.setTitle(titleDTO);
        nativeBean.setDescript(descriptDTO);
        nativeBean.setLogo(logoDTO);
        nativeBean.setButton(buttonDTO);
        nativeBean.setMainImages(arrayList);
        adsDTO.setAdChoiceImageUrl(z ? e(defaultAdDTO.getAdChoiceImageUrl()) : defaultAdDTO.getAdChoiceImageUrl());
        adsDTO.setNativeObject(nativeBean);
        adsDTO.setAdLaunchTypes(4);
        adsDTO.setExpiredDate(defaultAdDTO.getEndDate());
        String pageUrl = defaultAdDTO.getPageUrl();
        y45.i(pageUrl, "getPageUrl(...)");
        if (j1a.X(pageUrl, AgentPageJsBridge.AGENT_PAGE_INFO, false, 2, null) && z) {
            String pageUrl2 = defaultAdDTO.getPageUrl();
            y45.i(pageUrl2, "getPageUrl(...)");
            if (j1a.X(pageUrl2, "?", false, 2, null)) {
                defaultAdDTO.setPageUrl(defaultAdDTO.getPageUrl() + "&htmlfromlocal=true");
            } else {
                defaultAdDTO.setPageUrl(defaultAdDTO.getPageUrl() + "?htmlfromlocal=true");
            }
        }
        adsDTO.setClickUrl(defaultAdDTO.getPageUrl());
        adsDTO.setCampaignname(defaultAdDTO.getCampaignname());
        Integer materialType = defaultAdDTO.getMaterialType();
        y45.i(materialType, "getMaterialType(...)");
        adsDTO.setDefaultMaterialType(materialType.intValue());
        adsDTO.setFromLocal(z);
        adsDTO.setShowTime(defaultAdDTO.getShowTime());
        adsDTO.setShowTrackingSecretKey(defaultAdDTO.getShowTrackingSecretKey());
        if (defaultAdDTO.getAppInfo() != null) {
            adsDTO.setAppInfo(defaultAdDTO.getAppInfo());
            adsDTO.setPslinkInfo(U0.G(adsDTO));
        }
        adsDTO.setDeepLinkUrl(defaultAdDTO.getDeepLinkUrl());
        if (defaultAdDTO.getClickUrls() != null) {
            try {
                adsDTO.setStoreDeeplink((ArrayList) GsonUtil.b(defaultAdDTO.getClickUrls(), new a().getType()));
                ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
                if (storeDeeplink != null) {
                    y45.g(storeDeeplink);
                    if (!storeDeeplink.isEmpty()) {
                        ArrayList<String> storeDeeplink2 = adsDTO.getStoreDeeplink();
                        y45.i(storeDeeplink2, "getStoreDeeplink(...)");
                        String str = (String) i81.o0(storeDeeplink2);
                        y45.g(str);
                        if (g1a.R(str, "palmplay://", false, 2, null)) {
                            adsDTO.setPsLink(str);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        adsDTO.setPullNewestLive(Integer.valueOf(defaultAdDTO.getPullNewestLive()));
        AdsProtocolBean.Ext ext = new AdsProtocolBean.Ext();
        if (defaultAdDTO.getPullNewestLive() == 1 || defaultAdDTO.getPullNewestLive() == 2) {
            ext.setStoreFlag(1);
            ext.setStoreTitle(ul4.a().getString(R.string.download_by_pamlstore));
        }
        ext.setDwellTime(defaultAdDTO.getAdActivationRewardTime());
        adsDTO.setExt(ext);
        adsDTO.setMaterialWith(defaultAdDTO.getMaterialWidth());
        adsDTO.setMaterialHeight(defaultAdDTO.getMaterialHeight());
        adsDTO.setPackageName(defaultAdDTO.getPackageName());
        adsDTO.setClickTrackingUrls(defaultAdDTO.getClickTrackingUrls());
        adsDTO.setShowTrackingUrls(defaultAdDTO.getShowTrackingUrls());
        adsDTO.setPsClickTrackingUrls(defaultAdDTO.getPsClickTrackingUrls());
        adsDTO.setTrackType(Integer.valueOf(defaultAdDTO.getTrackType()));
        NativeBean nativeObject = adsDTO.getNativeObject();
        if (nativeObject != null) {
            nativeObject.setRating(Integer.valueOf(defaultAdDTO.getRating()));
        }
        adsDTO.setScale(defaultAdDTO.getScale());
        adsDTO.setRewardDuration(Integer.valueOf(defaultAdDTO.getRewardDuration()));
        adsDTO.setDefaultAdSupportNetType(defaultAdDTO.getSupportNetType());
        adsDTO.setDownloadArea(defaultAdDTO.getDownloadArea());
        adsDTO.setAutoRetentionTime(defaultAdDTO.getAutoRetentionTime());
        return adsDTO;
    }

    public final String d(AdsDTO adsDTO) {
        y45.j(adsDTO, "ad");
        if (adsDTO.getAdType() == 6) {
            return null;
        }
        if (adsDTO.getAdType() == 2 && (TextUtils.equals(adsDTO.getMaterialStyle(), "B20301") || TextUtils.equals(adsDTO.getMaterialStyle(), "B20302") || TextUtils.equals(adsDTO.getMaterialStyle(), "B20303"))) {
            return null;
        }
        return adsDTO.getLogoUrl();
    }

    public final String e(String str) {
        String strE = str != null ? DiskLruCacheUtil.e(str, 4) : null;
        return strE == null ? "" : strE;
    }

    public final boolean f(String str, String str2) {
        if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
            Iterator it = (TextUtils.isEmpty(str2) ? y71.k() : j1a.O0(str2, new String[]{StringUtils.COMMA}, false, 0, 6, null)).iterator();
            while (it.hasNext()) {
                if (j1a.V(str, (String) it.next(), true)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean g(String str, String str2, String str3) {
        if ((str2 == null || str2.length() == 0) && (str3 == null || str3.length() == 0)) {
            return true;
        }
        if (str == null || str.length() == 0) {
            return false;
        }
        Locale locale = Locale.getDefault();
        y45.i(locale, "getDefault(...)");
        String lowerCase = str.toLowerCase(locale);
        y45.i(lowerCase, "toLowerCase(...)");
        if (str2 != null && str2.length() != 0) {
            Locale locale2 = Locale.getDefault();
            y45.i(locale2, "getDefault(...)");
            String lowerCase2 = str2.toLowerCase(locale2);
            y45.i(lowerCase2, "toLowerCase(...)");
            return j1a.O0(lowerCase2, new String[]{StringUtils.COMMA}, false, 0, 6, null).contains(lowerCase);
        }
        if (str3 != null && str3.length() != 0) {
            Locale locale3 = Locale.getDefault();
            y45.i(locale3, "getDefault(...)");
            String lowerCase3 = str3.toLowerCase(locale3);
            y45.i(lowerCase3, "toLowerCase(...)");
            if (!j1a.O0(lowerCase3, new String[]{StringUtils.COMMA}, false, 0, 6, null).contains(lowerCase)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0060  */
    /* JADX WARN: Code duplicated, block: B:32:0x008d  */
    public final boolean h(String str, String str2, String str3, boolean z) {
        boolean z2;
        boolean z3;
        if (((str2 == null || str2.length() == 0) && !z) || str == null || str.length() == 0) {
            return false;
        }
        Locale locale = Locale.getDefault();
        y45.i(locale, "getDefault(...)");
        String lowerCase = str.toLowerCase(locale);
        y45.i(lowerCase, "toLowerCase(...)");
        if (str2 == null || str2.length() == 0 || g1a.E(str2, TtmlNode.COMBINE_ALL, true)) {
            z2 = true;
        } else {
            Locale locale2 = Locale.getDefault();
            y45.i(locale2, "getDefault(...)");
            String lowerCase2 = str2.toLowerCase(locale2);
            y45.i(lowerCase2, "toLowerCase(...)");
            if (j1a.O0(lowerCase2, new String[]{StringUtils.COMMA}, false, 0, 6, null).contains(lowerCase)) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (str3 == null || str3.length() == 0) {
            z3 = true;
        } else {
            Locale locale3 = Locale.getDefault();
            y45.i(locale3, "getDefault(...)");
            String lowerCase3 = str3.toLowerCase(locale3);
            y45.i(lowerCase3, "toLowerCase(...)");
            if (j1a.O0(lowerCase3, new String[]{StringUtils.COMMA}, false, 0, 6, null).contains(lowerCase)) {
                z3 = false;
            } else {
                z3 = true;
            }
        }
        return z2 && z3;
    }

    public final String i(AdsDTO adsDTO) {
        y45.j(adsDTO, "ad");
        if (adsDTO.getAdType() == 6 || (adsDTO.getAdType() == 2 && (TextUtils.equals(adsDTO.getMaterialStyle(), "B20301") || TextUtils.equals(adsDTO.getMaterialStyle(), "B20302") || TextUtils.equals(adsDTO.getMaterialStyle(), "B20303")))) {
            String logoUrl = adsDTO.getLogoUrl();
            y45.g(logoUrl);
            return logoUrl;
        }
        String adImgUrl = adsDTO.getAdImgUrl();
        y45.g(adImgUrl);
        return adImgUrl;
    }

    public final boolean j(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return false;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D, Locale.getDefault());
        try {
            Date date = simpleDateFormat.parse(str);
            if (date == null) {
                date = new Date();
            }
            Date date2 = simpleDateFormat.parse(str2);
            if (date2 == null) {
                date2 = new Date();
            }
            return date.compareTo(date2) > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean k(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return false;
        }
        List listO0 = j1a.O0(str, new String[]{StringUtils.COMMA}, false, 0, 6, null);
        ArrayList arrayList = new ArrayList(z71.v(listO0, 10));
        Iterator it = listO0.iterator();
        while (it.hasNext()) {
            arrayList.add(j1a.i1((String) it.next()).toString());
        }
        Set setG1 = i81.g1(arrayList);
        List listO1 = j1a.O0(str2, new String[]{StringUtils.COMMA}, false, 0, 6, null);
        ArrayList arrayList2 = new ArrayList(z71.v(listO1, 10));
        Iterator it2 = listO1.iterator();
        while (it2.hasNext()) {
            arrayList2.add(j1a.i1((String) it2.next()).toString());
        }
        return !i81.u0(setG1, i81.g1(arrayList2)).isEmpty();
    }
}
