package com.cloud.hisavana.sdk;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.core.content.FileProvider;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.hisavana.net.utils.StorageUtils;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.bridge.HisavanaAdJsBridge;
import com.cloud.hisavana.sdk.common.activity.AgentPageLandingActivity;
import com.cloud.hisavana.sdk.common.activity.EWOfficialActivity;
import com.cloud.hisavana.sdk.common.activity.OfflineLandingActivity;
import com.cloud.hisavana.sdk.common.activity.OnlineLandingActivity;
import com.cloud.hisavana.sdk.common.activity.OnlinePreloadLandingPageActivity;
import com.cloud.hisavana.sdk.common.activity.TAdWebFormsActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.ImgListDTO;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.data.bean.response.ViewJson;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.HSToastUtil;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.hisavana.common.tracking.TrackingKey;
import com.just.agentweb.DefaultWebClient;
import defpackage.amd;
import defpackage.cy9;
import defpackage.e74;
import defpackage.ikd;
import defpackage.in8;
import defpackage.ja1;
import defpackage.kc9;
import defpackage.n6;
import defpackage.o17;
import defpackage.p9;
import defpackage.rd;
import defpackage.t6;
import defpackage.ul4;
import defpackage.vl4;
import defpackage.zfb;
import defpackage.zk5;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class U0 {
    public static File a;

    public class a extends DrawableResponseListener {
        public final ViewJson b;
        public final AdsDTO c;

        public a(ViewJson viewJson, AdsDTO adsDTO) {
            this.b = viewJson;
            this.c = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd.b().e("ssp", "onRequestError " + taErrorCode);
        }

        @Override
        public void g(int i, AdImage adImage) {
            this.b.setFormPath(adImage == null ? "" : adImage.getFilePath());
            this.c.setViewJson(GsonUtil.d(this.b));
            ikd.b().d("ssp", "download form url successfully & file path=" + this.b.getFormPath());
        }
    }

    public class b extends StringCallback {
        public final int c;
        public final String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(boolean z, int i, String str) {
            super(z);
            this.c = i;
            this.d = str;
        }

        @Override
        public void x(int i, String str, Throwable th) {
            ikd.b().d("ssp", "sumbit form failure----->code: " + i + "  message: " + str);
            int i2 = this.c + 1;
            if (i2 < 3) {
                U0.R(this.d, i2);
            }
        }

        @Override
        public void y(int i, String str) {
            ikd.b().d("ssp", "sumbit form success----->" + i);
        }
    }

    public class c implements View.OnClickListener {
        public final AdsDTO b;
        public final n6 c;

        public c(AdsDTO adsDTO, n6 n6Var) {
            this.b = adsDTO;
            this.c = n6Var;
        }

        @Override
        public void onClick(View view) {
            n6 n6Var;
            U0.k(ul4.a(), this.b);
            AdsDTO adsDTO = this.b;
            if (adsDTO == null || adsDTO.isOfflineAd() || (n6Var = this.c) == null) {
                return;
            }
            n6Var.onAdClicked();
        }
    }

    public static class d {
        public static final int[] a;

        static {
            int[] iArr = new int[e.values().length];
            a = iArr;
            try {
                iArr[e.OPEN_PS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[e.OPEN_GP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[e.OPEN_AHA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[e.OPEN_URLSCHEMA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[e.OPEN_FAILED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum e {
        OPEN_PS,
        OPEN_AHA,
        OPEN_GP,
        OPEN_URLSCHEMA,
        OPEN_OTHER,
        OPEN_FAILED
    }

    public static boolean A(Context context, String str, boolean z) {
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            if (z) {
                intent.setFlags(268435456);
            }
            context.startActivity(intent);
            return true;
        } catch (Throwable th) {
            ikd.b().e(Log.getStackTraceString(th));
            return false;
        }
    }

    public static boolean B(Context context, byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return true;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        return r(context, options);
    }

    public static boolean C(AdsDTO adsDTO) {
        if (adsDTO == null || adsDTO.getAdType() == 6) {
            return false;
        }
        return adsDTO.getAdImageWidth().intValue() > 2500 || adsDTO.getAdImageHeight().intValue() > 2000;
    }

    public static boolean D(String str) {
        return P(str, 1);
    }

    public static boolean E(boolean z, Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Bundle bundle, ArrayList arrayList) {
        if (arrayList != null) {
            arrayList.add(24);
        }
        if (z || com.cloud.hisavana.sdk.manager.a.a.c0()) {
            int iE = com.cloud.hisavana.sdk.manager.a.a.E(context, adsDTO, downUpPointBean);
            if (iE == 0) {
                if (bundle == null || arrayList == null) {
                    return true;
                }
                bundle.putInt("s_click_open_page_result", 24);
                SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
                return true;
            }
            if (bundle != null) {
                bundle.putInt("s_click_d_b_f_r", iE);
            }
        } else if (bundle != null) {
            bundle.putInt("s_click_d_b_f_r", TaErrorCode.CLICK_ERROR_CODE_CONFIG_NOT_ENABLE_DEFAULT_BROWSER);
        }
        return false;
    }

    public static Uri F(String str, int i) {
        try {
            if (TextUtils.isEmpty(str) || h() == null) {
                return null;
            }
            String strE = DiskLruCacheUtil.e(str, i);
            if (TextUtils.isEmpty(strE)) {
                return null;
            }
            File file = new File(strE);
            if (!file.exists()) {
                return null;
            }
            return FileProvider.getUriForFile(ul4.a(), ul4.a().getApplicationContext().getPackageName() + ".HisavanaFileProvider", file);
        } catch (Exception e2) {
            ikd.b().e("ssp", Log.getStackTraceString(e2));
            return null;
        }
    }

    public static PslinkInfo G(AdsDTO adsDTO) {
        PslinkInfo pslinkInfo = null;
        if (adsDTO != null && !TextUtils.isEmpty(adsDTO.getAppInfo())) {
            try {
                pslinkInfo = (PslinkInfo) GsonUtil.a(adsDTO.getAppInfo(), PslinkInfo.class);
            } catch (Exception unused) {
            }
            if (pslinkInfo != null) {
                pslinkInfo.setGaid(DeviceUtil.f());
                pslinkInfo.setShowId(adsDTO.getUuid());
                pslinkInfo.setAppPackageName(ul4.d());
                pslinkInfo.setOfflineAd(adsDTO.isOfflineAd());
                pslinkInfo.setShowTrackingSecretKey(adsDTO.getShowTrackingSecretKey());
            }
        }
        return pslinkInfo;
    }

    public static List H(List list) {
        TaNativeInfo taNativeInfoQ;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdsDTO adsDTO = (AdsDTO) it.next();
            if (adsDTO != null && (taNativeInfoQ = Q(adsDTO)) != null && !kc9.b(taNativeInfoQ)) {
                arrayList.add(taNativeInfoQ);
            }
        }
        return arrayList;
    }

    public static boolean I(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Bundle bundle, ArrayList arrayList) {
        if (adsDTO.getStoreDeeplink() != null && !adsDTO.getStoreDeeplink().isEmpty()) {
            Intent intent = new Intent();
            for (String str : adsDTO.getStoreDeeplink()) {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        if (str.startsWith(Constants.b) && str.split(StringUtils.PROCESS_POSTFIX_DELIMITER).length > 2) {
                            String strSubstring = str.substring(0, str.indexOf(StringUtils.PROCESS_POSTFIX_DELIMITER) + 1);
                            String strSubstring2 = str.substring(str.indexOf(StringUtils.PROCESS_POSTFIX_DELIMITER) + 1);
                            int iIndexOf = strSubstring2.indexOf(StringUtils.PROCESS_POSTFIX_DELIMITER);
                            String strSubstring3 = strSubstring2.substring(0, iIndexOf);
                            String strDecode = URLDecoder.decode(strSubstring2.substring(iIndexOf + 1), "UTF-8");
                            String str2 = strSubstring + strSubstring3;
                            intent.putExtra(Constants.c, strDecode);
                            ikd.b().d("ssp", "linkUrl:" + str2 + ",sms_body:" + strDecode);
                            intent.setData(Uri.parse(str2));
                            intent.setAction("android.intent.action.VIEW");
                            intent.setFlags(268435456);
                            try {
                                context.startActivity(intent);
                                try {
                                    k1.h(downUpPointBean, adsDTO, Boolean.FALSE);
                                    if (!adsDTO.judgeOptimizeTracking()) {
                                        V(adsDTO);
                                    }
                                    bundle.putInt("s_click_open_page_result", 2);
                                    arrayList.add(2);
                                    SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
                                    return true;
                                } catch (Exception unused) {
                                }
                            } catch (Exception unused2) {
                            }
                        }
                    } catch (Exception unused3) {
                    }
                    bundle.putInt("s_click_sms_f_r", 3);
                    arrayList.add(2);
                    ikd.b().d("ssp", "deeplink SMSTO process error");
                }
            }
        }
        return false;
    }

    public static boolean J(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.startsWith(DefaultWebClient.HTTP_SCHEME) || str.startsWith("https://")) {
            if (str.contains("play.google.com") && K(context, str, "com.android.vending")) {
                return true;
            }
            return O(context, str);
        }
        if (str.startsWith("market://") && K(context, str, "com.android.vending")) {
            return true;
        }
        return K(context, str, null);
    }

    public static boolean K(Context context, String str, String str2) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                if (!TextUtils.isEmpty(str2)) {
                    intent.setPackage(str2);
                }
                intent.setFlags(268435456);
                context.startActivity(intent);
                return true;
            } catch (Exception unused) {
                ikd.b().w("PlatformUtil", "openAppWithDeepLink error : " + str);
            }
        }
        return false;
    }

    public static boolean L(Context context, String str, boolean z) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setPackage("com.android.chrome");
            if (z) {
                intent.setFlags(268435456);
            }
            context.startActivity(intent);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean M(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("market://") || str.contains("play.google.com");
    }

    public static void N(AdsDTO adsDTO) {
        ViewJson.DialogJson dialogJson;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getViewJson())) {
            return;
        }
        try {
            ViewJson viewJsonData = adsDTO.getViewJsonData();
            if (viewJsonData != null && !TextUtils.isEmpty(viewJsonData.getFormPath())) {
                File file = new File(viewJsonData.getFormPath());
                if (file.isFile() && file.exists()) {
                    return;
                }
            }
            if (viewJsonData == null || viewJsonData.getDialogType().intValue() != 1 || (dialogJson = viewJsonData.getDialogJson()) == null || TextUtils.isEmpty(dialogJson.getUrl())) {
                return;
            }
            DownLoadRequest.k(dialogJson.getUrl(), adsDTO, 5, true, new a(viewJsonData, adsDTO));
        } catch (Exception e2) {
            ikd.b().e("ssp", Log.getStackTraceString(e2));
        }
    }

    public static boolean O(Context context, String str) {
        ResolveInfo resolveInfo;
        ActivityInfo activityInfo;
        ApplicationInfo applicationInfo;
        if (context != null && !TextUtils.isEmpty(str)) {
            int i = Build.VERSION.SDK_INT;
            if (rd.n0()) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    intent.setFlags(268435456);
                    intent.addCategory("android.intent.category.DEFAULT");
                    intent.addCategory("android.intent.category.BROWSABLE");
                    PackageManager packageManager = context.getPackageManager();
                    List<ResolveInfo> listQueryIntentActivities = i >= 33 ? packageManager.queryIntentActivities(intent, PackageManager.ResolveInfoFlags.of(131072L)) : packageManager.queryIntentActivities(intent, 131072);
                    if (listQueryIntentActivities != null && listQueryIntentActivities.size() == 1 && (resolveInfo = listQueryIntentActivities.get(0)) != null && (activityInfo = resolveInfo.activityInfo) != null && (applicationInfo = activityInfo.applicationInfo) != null) {
                        int i2 = applicationInfo.flags;
                        if ((i2 & 1) == 0 && (i2 & 128) == 0) {
                            context.startActivity(intent);
                            return true;
                        }
                        ikd.b().w("PlatformUtil", "current link not support app link: " + resolveInfo.activityInfo.packageName);
                    }
                    return false;
                } catch (Exception unused) {
                    ikd.b().w("PlatformUtil", "openWithAppLink error:" + str);
                }
            }
        }
        return false;
    }

    public static boolean P(String str, int i) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return DiskLruCacheUtil.g(i).b(str);
        } catch (Exception e2) {
            ikd.b().e("ssp", Log.getStackTraceString(e2));
            return false;
        }
    }

    public static TaNativeInfo Q(AdsDTO adsDTO) {
        TaNativeInfo taNativeInfo = new TaNativeInfo();
        taNativeInfo.setAdItem(adsDTO);
        if (adsDTO == null || adsDTO.getNativeObject() == null) {
            return null;
        }
        try {
            taNativeInfo.setUuid(adsDTO.getUuid());
            taNativeInfo.setCodeSeatType(adsDTO.getCodeSeatType().intValue());
            taNativeInfo.setSequenceId(String.valueOf(adsDTO.getId()));
            taNativeInfo.setVer(adsDTO.getNativeObject().getVersion());
            taNativeInfo.setCtatext(adsDTO.getNativeObject().getButtonTxt(adsDTO.getInstallApk()));
            taNativeInfo.setDescription(adsDTO.getNativeObject().getDescriptionTxt());
            taNativeInfo.setTitle(adsDTO.getNativeObject().getTitleTxt());
            taNativeInfo.setHisavanaSource(adsDTO.getDspType().intValue());
            taNativeInfo.setPrice(String.valueOf(adsDTO.getFirstPrice()));
            taNativeInfo.setBidPrice(adsDTO.getFirstPrice().doubleValue());
            taNativeInfo.setOfflineAd(adsDTO.isOfflineAd());
            taNativeInfo.setRating(String.valueOf(adsDTO.getNativeObject().getRating()));
            taNativeInfo.setRequestId(adsDTO.getRid());
            taNativeInfo.setACReady(adsDTO.getACReady().booleanValue());
            AdImage adImage = new AdImage();
            String adChoiceClickUrl = "";
            int iIntValue = 0;
            if (adsDTO.getNativeObject().getMainImages() == null || adsDTO.getNativeObject().getMainImages().size() <= 0 || adsDTO.getNativeObject().getMainImages().get(0) == null) {
                adImage.setH(0);
                adImage.setW(0);
                adImage.setImgUrl("");
            } else {
                adImage.setH(adsDTO.getNativeObject().getMainImages().get(0).getHeight().intValue());
                adImage.setW(adsDTO.getNativeObject().getMainImages().get(0).getWidth().intValue());
                adImage.setImgUrl(adsDTO.getAdImgUrl());
            }
            taNativeInfo.setImage(adImage);
            AdImage adImage2 = new AdImage();
            adImage2.setH(adsDTO.getNativeObject().getLogo() == null ? 0 : adsDTO.getNativeObject().getLogo().getHeight().intValue());
            if (adsDTO.getNativeObject().getLogo() != null) {
                iIntValue = adsDTO.getNativeObject().getLogo().getWidth().intValue();
            }
            adImage2.setW(iIntValue);
            adImage2.setImgUrl(adsDTO.getNativeObject().getLogo() == null ? "" : adsDTO.getNativeObject().getLogo().getUrl());
            taNativeInfo.setIconImage(adImage2);
            taNativeInfo.setStore(new AdImage());
            taNativeInfo.setAcImageUrl(adsDTO.getAdChoiceImageUrl() == null ? "" : adsDTO.getAdChoiceImageUrl());
            if (adsDTO.getAdChoiceClickUrl() != null) {
                adChoiceClickUrl = adsDTO.getAdChoiceClickUrl();
            }
            taNativeInfo.setAcClickUrl(adChoiceClickUrl);
            taNativeInfo.setAdvSeatType(adsDTO.getAdvSeatType());
            taNativeInfo.setMaterialStyle(adsDTO.getMaterialStyle());
            taNativeInfo.setAdType(adsDTO.getImpBeanRequest() == null ? 1 : adsDTO.getImpBeanRequest().adt);
            taNativeInfo.setAppInfo(adsDTO.getAppInfo());
            if (adsDTO.getPslinkInfo() != null) {
                taNativeInfo.setSourceSize(adsDTO.getPslinkInfo().getSourceSize());
            }
            taNativeInfo.setDeeplinkUrl(adsDTO.getDeepLinkUrl());
            return taNativeInfo;
        } catch (Throwable th) {
            ikd.b().e(Log.getStackTraceString(th));
            return null;
        }
    }

    public static void R(String str, int i) {
        try {
            RequestParams requestParams = new RequestParams();
            requestParams.i("Accept-Timezone", "UTC");
            requestParams.i("x-tr-devtype", "h5");
            requestParams.i("x-tr-region", "CN");
            ja1.netLog("submitForm -> formParams = " + str);
            requestParams.n(str);
            HttpRequest.j(p9.h() + "/eagllwin/clue/consumer-not-login/clue/cmd/submitClue", requestParams, new b(false, i, str));
        } catch (Exception e2) {
            ja1.netLog("submitForm --> " + Log.getStackTraceString(e2));
        }
    }

    public static boolean S(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Uri uri = Uri.parse(str);
                Intent intent = new Intent();
                intent.setData(uri);
                intent.setAction("android.intent.action.VIEW");
                intent.setFlags(268435456);
                context.startActivity(intent);
                ikd.b().d("PlatformUtil", "startOpenDeepLink succeed, deepLinkUrl: " + str);
                return true;
            } catch (Exception e2) {
                ikd.b().w("PlatformUtil", "startOpenDeepLink failed, deepLinkUrl: " + str + "\n error: " + e2.getMessage());
            }
        }
        return false;
    }

    public static boolean T(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Intent uri = Intent.parseUri(str, 1);
                uri.setAction("android.intent.action.VIEW");
                uri.addCategory("android.intent.category.DEFAULT");
                uri.setFlags(268435456);
                uri.setComponent(null);
                uri.setSelector(null);
                context.startActivity(uri);
                ikd.b().d("PlatformUtil", "openIntentSchema succeed, url: " + str);
                return true;
            } catch (Exception e2) {
                ikd.b().w("PlatformUtil", "openIntentSchema failed, e: " + e2.getMessage());
            }
        }
        return false;
    }

    public static boolean U(AdsDTO adsDTO) {
        return adsDTO == null || adsDTO.getDspType().intValue() == 1 || adsDTO.getExt() == null || adsDTO.getExt().getLinkWake().intValue() == 1;
    }

    public static void V(AdsDTO adsDTO) {
        ikd.b().d("PlatformUtil", "start reportAttributionUrls.");
        if (adsDTO == null) {
            return;
        }
        List<String> clickTrackingUrls = adsDTO.getClickTrackingUrls();
        if (clickTrackingUrls != null && !clickTrackingUrls.isEmpty()) {
            ikd.b().d("PlatformUtil", "report clickTrackingUrls: " + clickTrackingUrls);
            k1.n(clickTrackingUrls, adsDTO);
            return;
        }
        ArrayList<String> psClickTrackingUrls = adsDTO.getPsClickTrackingUrls();
        if (psClickTrackingUrls == null || psClickTrackingUrls.isEmpty() || adsDTO.isPsAd()) {
            ikd.b().w("PlatformUtil", "report attribition urls failed, urls is empty.");
            return;
        }
        k1.n(psClickTrackingUrls, adsDTO);
        ikd.b().d("PlatformUtil", "report psClickTrackingUrls: " + psClickTrackingUrls);
    }

    public static boolean W(Context context, String str) {
        return y(context, str, 0, null);
    }

    public static boolean X(Context context, String str) {
        if (L(context, str, true)) {
            return true;
        }
        ikd.b().d("ssp", "Start page with Chrome Browser failed,Start default Browser.");
        return A(context, str, true);
    }

    public static int b(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, boolean z) {
        return c(context, adsDTO, downUpPointBean, z, false);
    }

    public static int c(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, boolean z, boolean z2) {
        boolean zY;
        boolean zY2;
        boolean z3;
        Bundle bundle = new Bundle();
        if (z2) {
            bundle.putInt("s_confirm_dialog", 1);
        }
        String strA = amd.a();
        ArrayList arrayList = new ArrayList();
        if (context == null) {
            ikd.b().d("ssp", "context is null");
            SSPTrackingHelper.a.K(7003, null, bundle, arrayList);
            return 0;
        }
        boolean z4 = !(context instanceof Activity);
        ikd.b().d("ssp", "newTask -------------------------------->" + z4);
        if (adsDTO == null) {
            ikd.b().d("ssp", "adItem is null");
            SSPTrackingHelper.a.K(7004, null, bundle, arrayList);
            return 0;
        }
        adsDTO.setClick_link("");
        bundle.putString("s_click_tracking_id", strA);
        adsDTO.setClickid(strA);
        String clickUrl = adsDTO.getClickUrl();
        ikd.b().d("ssp", "landing url is : " + clickUrl);
        if (s(context, adsDTO, downUpPointBean, bundle, arrayList)) {
            return 1;
        }
        if (I(context, adsDTO, downUpPointBean, bundle, arrayList)) {
            return 2;
        }
        y.I(adsDTO);
        arrayList.add(3);
        if (u(context, adsDTO, adsDTO.getDeepLinkUrl(), bundle)) {
            String deepLinkUrl = adsDTO.getDeepLinkUrl();
            adsDTO.setClick_link(deepLinkUrl);
            AthenaTracker.ClickJumpType clickJumpType = AthenaTracker.ClickJumpType.PULL_LIVE;
            AthenaTracker.N(adsDTO, deepLinkUrl, clickJumpType);
            k1.h(downUpPointBean, adsDTO, Boolean.FALSE);
            if (!adsDTO.judgeOptimizeTracking()) {
                V(adsDTO);
            }
            bundle.putInt("is_jump_to_halfscreen", clickJumpType.rawValue());
            bundle.putInt("s_click_open_page_result", 3);
            SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
            return 3;
        }
        boolean zU = U(adsDTO);
        if (zU) {
            zY = y(context, adsDTO.getPackageName(), 1, bundle);
        } else {
            bundle.putInt("s_click_pkg_f_r", 4);
            zY = false;
        }
        arrayList.add(4);
        if (zU && zY) {
            ikd.b().d("PlatformUtil", "startLandingPage start App with packageName");
            k1.h(downUpPointBean, adsDTO, Boolean.FALSE);
            String packageName = adsDTO.getPackageName();
            AthenaTracker.ClickJumpType clickJumpType2 = AthenaTracker.ClickJumpType.PULL_LIVE;
            AthenaTracker.N(adsDTO, packageName, clickJumpType2);
            if (!adsDTO.judgeOptimizeTracking()) {
                V(adsDTO);
            }
            bundle.putInt("is_jump_to_halfscreen", clickJumpType2.rawValue());
            bundle.putInt("s_click_open_page_result", 4);
            SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
            return 4;
        }
        boolean zU2 = U(adsDTO);
        if (zU2) {
            zY2 = y(context, adsDTO.getPsPackageName(), 2, bundle);
        } else {
            bundle.putInt("s_click_ps_f_r", 4);
            zY2 = false;
        }
        arrayList.add(7);
        if (zU2 && zY2) {
            ikd.b().d("PlatformUtil", "startLandingPage start App with psPackageName");
            k1.h(downUpPointBean, adsDTO, Boolean.FALSE);
            String psPackageName = adsDTO.getPsPackageName();
            AthenaTracker.ClickJumpType clickJumpType3 = AthenaTracker.ClickJumpType.PULL_LIVE;
            AthenaTracker.N(adsDTO, psPackageName, clickJumpType3);
            if (!adsDTO.judgeOptimizeTracking()) {
                V(adsDTO);
            }
            bundle.putInt("is_jump_to_halfscreen", clickJumpType3.rawValue());
            bundle.putInt("s_click_open_page_result", 7);
            SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
            return 4;
        }
        e eVarE = e(context, adsDTO, downUpPointBean, z, bundle);
        arrayList.add(11);
        int i = d.a[eVarE.ordinal()];
        if (i == 1) {
            ikd.b().d("PlatformUtil", "startLandingPage startOpenAcquisitionLink");
            if (z2) {
                ikd.b().d("PlatformUtil", "not allow report click");
            } else {
                boolean z5 = adsDTO.getTrackType().intValue() == 0;
                boolean zH = cy9.h(ul4.a());
                if (z5 && zH) {
                    z3 = true;
                } else {
                    V(adsDTO);
                    z3 = false;
                }
                k1.h(downUpPointBean, adsDTO, Boolean.valueOf(z3));
            }
            bundle.putInt("s_click_open_page_result", 5);
            SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
            return 5;
        }
        if (i == 2) {
            ikd.b().d("PlatformUtil", "startLandingPage startOpenAcquisitionLink");
            V(adsDTO);
            k1.h(downUpPointBean, adsDTO, Boolean.FALSE);
            bundle.putInt("s_click_open_page_result", 9);
            SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
            return 6;
        }
        if (i == 3) {
            ikd.b().d("PlatformUtil", "startLandingPage startOpenAcquisitionLink");
            V(adsDTO);
            k1.h(downUpPointBean, adsDTO, Boolean.FALSE);
            bundle.putInt("s_click_open_page_result", 8);
            SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
            return 6;
        }
        if (i == 4) {
            ikd.b().d("PlatformUtil", "startLandingPage startOpenAcquisitionLink");
            V(adsDTO);
            k1.h(downUpPointBean, adsDTO, Boolean.FALSE);
            bundle.putInt("s_click_open_page_result", 10);
            SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
            return 6;
        }
        V(adsDTO);
        arrayList.add(12);
        if (adsDTO.isOfflineAd() && TextUtils.isEmpty(adsDTO.getOfflineH5Url())) {
            bundle.putInt("s_click_open_page_result", 12);
            SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
            return 0;
        }
        if (TextUtils.isEmpty(clickUrl)) {
            ikd.b().d("ssp", "Both deepLinkUrl and landing page is null");
            bundle.putInt("s_click_open_page_result", 17);
            SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
            return 0;
        }
        arrayList.add(13);
        if (!p9.k()) {
            if (J(context, clickUrl)) {
                k1.h(downUpPointBean, adsDTO, Boolean.FALSE);
                bundle.putInt("s_click_open_page_result", 15);
                SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
            } else {
                n(context, adsDTO, z4, true, downUpPointBean, bundle, arrayList);
            }
            adsDTO.setClick_link(clickUrl);
            return 7;
        }
        if (X(context, clickUrl)) {
            bundle.putInt("s_click_open_page_result", 14);
            SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
        } else {
            bundle.putInt("s_click_open_page_result", 6);
            SSPTrackingHelper.a.K(7002, adsDTO, bundle, arrayList);
        }
        adsDTO.setClick_link(clickUrl);
        return 7;
    }

    public static zfb d(Bundle bundle, ArrayList arrayList, AdsDTO adsDTO, Context context, DownUpPointBean downUpPointBean, Bundle bundle2, boolean z, Integer num) {
        if (num.intValue() == 0) {
            if (bundle != null && arrayList != null) {
                bundle.putInt("s_click_open_page_result", 19);
                SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
            }
            ikd.b().d("PlatformUtil", "Start online page with custom tabs");
            return null;
        }
        com.cloud.hisavana.sdk.manager.a aVar = com.cloud.hisavana.sdk.manager.a.a;
        aVar.M(num);
        aVar.o(num.intValue(), false);
        if (bundle != null) {
            bundle.putInt("s_click_ct_f_r", num.intValue());
        }
        if (num.intValue() == 7009 || num.intValue() == 7008) {
            if (E(false, context, adsDTO, downUpPointBean, bundle, arrayList)) {
                return null;
            }
        } else if (num.intValue() != 7010 && num.intValue() != 7011 && num.intValue() != 7012 && num.intValue() != 7014 && num.intValue() != 7023) {
            if (arrayList != null) {
                arrayList.add(23);
            }
            int iB = aVar.b(context, adsDTO, downUpPointBean);
            if (iB == 0) {
                if (bundle != null && arrayList != null) {
                    bundle.putInt("s_click_open_page_result", 23);
                    SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
                }
                ikd.b().d("PlatformUtil", "Start online page with custom tabs");
                return null;
            }
            if (bundle != null) {
                bundle.putInt("s_click_ct_ns_f_r", iB);
            }
            if (E(false, context, adsDTO, downUpPointBean, bundle, arrayList)) {
                return null;
            }
        }
        Intent intent = t6.a.g(adsDTO) ? new Intent(context, (Class<?>) OnlinePreloadLandingPageActivity.class) : new Intent(context, (Class<?>) OnlineLandingActivity.class);
        if (bundle != null && arrayList != null) {
            arrayList.add(20);
            bundle.putInt("s_click_open_page_result", 20);
            SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
        }
        intent.putExtra("ab_Test_Data", aVar.f0());
        intent.putExtras(bundle2);
        if (vl4.g()) {
            Activity activityH = zk5.h();
            if (!zk5.i(activityH)) {
                ikd.b().w("PlatformUtil", "startPageByWebView() --> topActivity is not alive");
                return null;
            }
            try {
                activityH.startActivity(intent);
            } catch (Exception e2) {
                ikd.b().e("PlatformUtil", "startPageByWebView() --> startActivity error", e2);
            }
        } else {
            if (z) {
                intent.setFlags(268435456);
            }
            context.startActivity(intent);
        }
        return null;
    }

    public static e e(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, boolean z, Bundle bundle) {
        if (adsDTO == null || context == null) {
            return e.OPEN_FAILED;
        }
        ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
        if (storeDeeplink == null || storeDeeplink.isEmpty()) {
            return e.OPEN_FAILED;
        }
        e eVar = e.OPEN_FAILED;
        ArrayList arrayList = new ArrayList();
        for (String str : storeDeeplink) {
            if (!TextUtils.isEmpty(str)) {
                if (str.startsWith("palmplay://")) {
                    AdsProtocolBean.Ext ext = adsDTO.getExt();
                    if (ext != null && ext.getStoreFlag().intValue() != 1 && adsDTO.getAdType() != 6) {
                        arrayList.add(11);
                    } else if (!U(adsDTO) && adsDTO.getPslinkInfoStatus() && z(context, adsDTO.getPackageName(), adsDTO.getPsPackageName())) {
                        arrayList.add(12);
                    } else {
                        AthenaTracker.ClickJumpType clickJumpType = adsDTO.isJumpToHalfscreen() ? AthenaTracker.ClickJumpType.PS_HALF_SCREEN : AthenaTracker.ClickJumpType.PS_FULL_SCREEN;
                        if (w(context, adsDTO, str, z, bundle)) {
                            ikd.b().d("PlatformUtil", "startOpenAcquisitionLink,url is psLink: " + str);
                            adsDTO.setClick_link(str);
                            AthenaTracker.N(adsDTO, str, clickJumpType);
                            bundle.putInt("is_jump_to_halfscreen", clickJumpType.rawValue());
                            p(bundle, arrayList);
                            return e.OPEN_PS;
                        }
                        try {
                            AthenaTracker.O(adsDTO, str, clickJumpType, bundle.getString(TrackingKey.ERROR_MESSAGE));
                        } catch (Exception e2) {
                            ikd.b().w("PlatformUtil", "trackDeeplink fail, reason = " + e2.getMessage());
                        }
                        arrayList.add(13);
                    }
                } else if (str.startsWith("aha://")) {
                    if (t(context, adsDTO, str)) {
                        ikd.b().d("PlatformUtil", "startOpenAcquisitionLink,url is ahaLink: " + str);
                        adsDTO.setClick_link(str);
                        AthenaTracker.ClickJumpType clickJumpType2 = AthenaTracker.ClickJumpType.OTHER;
                        AthenaTracker.N(adsDTO, str, clickJumpType2);
                        bundle.putInt("is_jump_to_halfscreen", clickJumpType2.rawValue());
                        p(bundle, arrayList);
                        return e.OPEN_AHA;
                    }
                    arrayList.add(15);
                } else if (M(str)) {
                    if (K(context, str, "com.android.vending")) {
                        ikd.b().d("PlatformUtil", "startOpenAcquisitionLink,url is GP link: " + str);
                        adsDTO.setClick_link(str);
                        AthenaTracker.ClickJumpType clickJumpType3 = AthenaTracker.ClickJumpType.GP;
                        AthenaTracker.N(adsDTO, str, clickJumpType3);
                        bundle.putInt("is_jump_to_halfscreen", clickJumpType3.rawValue());
                        p(bundle, arrayList);
                        return e.OPEN_GP;
                    }
                    arrayList.add(16);
                } else {
                    if (K(context, str, null)) {
                        ikd.b().d("PlatformUtil", "startOpenAcquisitionLink,url is other link: " + str);
                        adsDTO.setClick_link(str);
                        AthenaTracker.ClickJumpType clickJumpType4 = AthenaTracker.ClickJumpType.OTHER;
                        AthenaTracker.N(adsDTO, str, clickJumpType4);
                        bundle.putInt("is_jump_to_halfscreen", clickJumpType4.rawValue());
                        p(bundle, arrayList);
                        return e.OPEN_URLSCHEMA;
                    }
                    arrayList.add(17);
                }
            }
        }
        p(bundle, arrayList);
        return eVar;
    }

    public static AdChoicesView f(Context context, AdsDTO adsDTO, n6 n6Var) {
        if (adsDTO == null) {
            return null;
        }
        if (adsDTO.getSource() != 4 && !adsDTO.getACReady().booleanValue()) {
            return null;
        }
        AdChoicesView adChoicesView = new AdChoicesView(context);
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.ad_badge_height);
        adChoicesView.setLayoutParams(new RelativeLayout.LayoutParams(dimensionPixelOffset, dimensionPixelOffset));
        if (adsDTO.getSource() == 4) {
            DownLoadRequest.n(adsDTO.getAdChoiceImageUrl(), adsDTO, null, adChoicesView);
        } else {
            DownLoadRequest.o(adsDTO.getAdChoiceImageUrl(), adsDTO, 3, null, adChoicesView);
        }
        adChoicesView.setOnClickListener(new c(adsDTO, n6Var));
        return adChoicesView;
    }

    public static AdsDTO g(TaNativeInfo taNativeInfo) {
        if (taNativeInfo == null) {
            return null;
        }
        AdsDTO adItem = taNativeInfo.getAdItem();
        if (adItem != null) {
            AdxImpBean impBeanRequest = adItem.getImpBeanRequest();
            if (impBeanRequest != null) {
                impBeanRequest.mSceneId = taNativeInfo.getSceneId();
            }
            adItem.setACReady(Boolean.valueOf(taNativeInfo.isACReady()));
        }
        return adItem;
    }

    public static File h() {
        if (a == null) {
            a = StorageUtils.c(ul4.a(), true);
        }
        return a;
    }

    public static String i(AdsDTO adsDTO, String str, boolean z) {
        StringBuilder sb = new StringBuilder(str.replace("HalfScreenType=Z", "HalfScreenType=B"));
        if (adsDTO.getPslinkInfoStatus()) {
            sb.append("&isHalfScreen=1");
        }
        sb.append("&isCurrActivityFullscreen=");
        sb.append(z);
        sb.append("&sceneCode=");
        sb.append(adsDTO.getCodeSeatId());
        return sb.toString();
    }

    public static String j(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        File file = new File(DiskLruCacheUtil.e(str, i));
        return file.exists() ? file.getAbsolutePath() : "";
    }

    public static void k(Context context, AdsDTO adsDTO) {
        ikd.b().d("ssp", "PlatformUtil startPageByWebView for adchoice");
        if (adsDTO == null || adsDTO.getSource() != 4) {
            if (NetStateManager.checkNetworkState(false)) {
                m(context, adsDTO, true, false, null);
            } else {
                HSToastUtil.e(R.string.net_error_please_open_netwprk);
            }
        }
    }

    public static void l(Context context, AdsDTO adsDTO, Intent intent) {
        if (context == null || adsDTO == null || intent == null) {
            return;
        }
        if (adsDTO.getPslinkInfoStatus()) {
            ikd.b().d("PlatformUtil", "startOpenPslink HalfAppDetail,adsDTO.getPslinkInfoStatus():true");
            PslinkInfo pslinkInfo = adsDTO.getPslinkInfo();
            if (pslinkInfo != null) {
                Bundle bundle = new Bundle();
                if (HSCommonUtils.a.d(adsDTO)) {
                    pslinkInfo.setClickType(2);
                    ikd.b().d("PlatformUtil", "pslink half setClickType, click_install");
                }
                pslinkInfo.setTriggerId(adsDTO.getTriggerId());
                pslinkInfo.setAdCreativeId(adsDTO.getAdCreativeId());
                bundle.putParcelable("PslinkInfo", pslinkInfo);
                intent.putExtras(bundle);
                if (pslinkInfo.getIconUri() != null) {
                    context.grantUriPermission("com.transsnet.store", pslinkInfo.getIconUri(), 1);
                }
                if (pslinkInfo.getImgList() != null && !pslinkInfo.getImgList().isEmpty()) {
                    for (ImgListDTO imgListDTO : pslinkInfo.getImgList()) {
                        if (imgListDTO != null && imgListDTO.getUri() != null) {
                            context.grantUriPermission("com.transsnet.store", imgListDTO.getUri(), 1);
                        }
                    }
                }
                ikd.b().d("PlatformUtil", "startOpenPslink HalfAppDetail,pslinkInfo.getIconUri():" + pslinkInfo.getIconUri());
                adsDTO.setJumpToHalfscreen(true);
                String extJson = pslinkInfo.getExtJson();
                if (!TextUtils.isEmpty(extJson)) {
                    String strReplace = extJson.replace("\"developer2\":", "\"developer\":");
                    try {
                        JsonObject asJsonObject = JsonParser.parseString(strReplace).getAsJsonObject();
                        asJsonObject.addProperty("countryCode", DeviceUtil.e());
                        strReplace = asJsonObject.toString();
                    } catch (Exception e2) {
                        ikd.b().e("PlatformUtil", "extJson parseString exception: " + e2.getMessage());
                    }
                    intent.putExtra("psExtendFields", strReplace);
                    if (ikd.c()) {
                        ikd.b().d("PlatformUtil", "Pslink psExtendFields :" + strReplace);
                    }
                }
                if (ikd.c()) {
                    ikd.b().d("PlatformUtil", "PS info detail is " + pslinkInfo);
                }
            }
        }
        Integer trackType = adsDTO.getTrackType();
        if (trackType.intValue() != -1) {
            ikd.b().d("PlatformUtil", "startOpenAcquisitionLink trackType " + trackType);
            intent.putStringArrayListExtra(HisavanaAdJsBridge.PS_CLICKTRACKING_URL, in8.c(k1.q(adsDTO.getPsClickTrackingUrls(), adsDTO)));
            intent.putExtra(HisavanaAdJsBridge.PS_CLICK_CURRENT_TIMEMILLIS, in8.b(System.currentTimeMillis() + ""));
            intent.putExtra(HisavanaAdJsBridge.PS_TRACKTYPE, in8.b(String.valueOf(trackType)));
        }
    }

    public static void m(Context context, AdsDTO adsDTO, boolean z, boolean z2, DownUpPointBean downUpPointBean) {
        n(context, adsDTO, z, z2, downUpPointBean, null, null);
    }

    public static void n(final Context context, final AdsDTO adsDTO, final boolean z, boolean z2, final DownUpPointBean downUpPointBean, final Bundle bundle, final ArrayList arrayList) {
        Intent intent;
        if (adsDTO == null) {
            if (bundle != null && arrayList != null) {
                SSPTrackingHelper.a.K(7004, adsDTO, bundle, arrayList);
            }
            ikd.b().e("PlatformUtil", "startPageByWebView,adItem is null");
            return;
        }
        final Bundle bundle2 = new Bundle();
        bundle2.putParcelable("tag_ad_bean", adsDTO);
        if (z2) {
            bundle2.putParcelable("pointBean", downUpPointBean);
            adsDTO.setClickUrlTs(System.currentTimeMillis());
            String clickUrl = adsDTO.getClickUrl();
            if (!TextUtils.isEmpty(clickUrl) && clickUrl.contains(AgentPageJsBridge.AGENT_PAGE_INFO)) {
                ikd.b().d("PlatformUtil", "Start page with WebView.agentpage ad");
                intent = new Intent(context, (Class<?>) AgentPageLandingActivity.class);
                if (bundle != null && arrayList != null) {
                    bundle.putInt("s_click_open_page_result", 18);
                    SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
                }
            } else {
                if (!adsDTO.isOfflineAd() || NetStateManager.checkNetworkState(false)) {
                    ikd.b().d("PlatformUtil", "Start page with WebView.online ad");
                    if (!adsDTO.isOfflineAd() && !NetStateManager.checkNetworkState(false)) {
                        HSToastUtil.e(R.string.toast_no_network);
                    }
                    if (arrayList != null) {
                        arrayList.add(19);
                    }
                    com.cloud.hisavana.sdk.manager.a aVar = com.cloud.hisavana.sdk.manager.a.a;
                    aVar.i0();
                    int iB0 = aVar.b0();
                    if (iB0 == 7018 || iB0 == 7019) {
                        try {
                            bundle.putAll(aVar.f0());
                        } catch (Throwable unused) {
                        }
                        com.cloud.hisavana.sdk.manager.a aVar2 = com.cloud.hisavana.sdk.manager.a.a;
                        if (aVar2.c(adsDTO) == 7016) {
                            if (bundle != null) {
                                bundle.putInt("s_click_ct_f_r", TaErrorCode.CLICK_ERROR_CODE_CONFIG_CREATIVE_ID_OPEN_DEFAULT);
                            }
                            if (E(true, context, adsDTO, downUpPointBean, bundle, arrayList)) {
                                return;
                            }
                        }
                        aVar2.r(context, adsDTO, downUpPointBean, new e74() {
                            @Override
                            public final Object invoke(Object obj) {
                                return U0.d(bundle, arrayList, adsDTO, context, downUpPointBean, bundle2, z, (Integer) obj);
                            }
                        });
                        return;
                    }
                    try {
                        bundle.putAll(aVar.f0());
                    } catch (Throwable unused2) {
                    }
                    Intent intent2 = t6.a.g(adsDTO) ? new Intent(context, (Class<?>) OnlinePreloadLandingPageActivity.class) : new Intent(context, (Class<?>) OnlineLandingActivity.class);
                    if (bundle != null && arrayList != null) {
                        arrayList.add(20);
                        bundle.putInt("s_click_open_page_result", 20);
                        bundle.putInt("s_click_ct_f_r", iB0);
                        SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
                    }
                    intent2.putExtra("ab_Test_Data", com.cloud.hisavana.sdk.manager.a.a.f0());
                    intent2.putExtras(bundle2);
                    if (!vl4.g()) {
                        if (z) {
                            intent2.setFlags(268435456);
                        }
                        context.startActivity(intent2);
                        return;
                    }
                    Activity activityH = zk5.h();
                    if (!zk5.i(activityH)) {
                        ikd.b().w("PlatformUtil", "onlineIntent() --> topActivity is not alive");
                        return;
                    }
                    try {
                        activityH.startActivity(intent2);
                        return;
                    } catch (Exception e2) {
                        ikd.b().e("PlatformUtil", "onlineIntent() --> startActivity error", e2);
                        return;
                    }
                }
                ikd.b().d("PlatformUtil", "Start page with WebView.offline ad");
                intent = new Intent(context, (Class<?>) OfflineLandingActivity.class);
                if (bundle != null && arrayList != null) {
                    arrayList.add(21);
                    bundle.putInt("s_click_open_page_result", 21);
                    SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
                }
            }
        } else {
            ikd.b().d("PlatformUtil", "Start page with WebView.ew");
            intent = new Intent(context, (Class<?>) EWOfficialActivity.class);
            if (bundle != null && arrayList != null) {
                arrayList.add(22);
                bundle.putInt("s_click_open_page_result", 22);
                SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
            }
        }
        intent.putExtras(bundle2);
        if (!vl4.g()) {
            if (z) {
                intent.setFlags(268435456);
            }
            context.startActivity(intent);
            return;
        }
        Activity activityH2 = zk5.h();
        if (!zk5.i(activityH2)) {
            ikd.b().w("PlatformUtil", "click() --> topActivity is not alive");
            return;
        }
        try {
            activityH2.startActivity(intent);
        } catch (Exception e3) {
            ikd.b().e("PlatformUtil", "click() --> startActivity error", e3);
        }
    }

    public static void o(Context context, String str, String str2, AdsDTO adsDTO, DownUpPointBean downUpPointBean) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) TAdWebFormsActivity.class);
        intent.putExtra("ad_web_form_url", str);
        intent.putExtra("ad_web_form_file_path", str2);
        intent.putExtra("ad_web_form_dto", adsDTO);
        intent.putExtra("ad_web_form_point", downUpPointBean);
        if (!vl4.g()) {
            intent.setFlags(268500992);
            context.startActivity(intent);
            return;
        }
        Activity activityH = zk5.h();
        if (!zk5.i(activityH)) {
            ikd.b().w("PlatformUtil", "startFormWeb() --> topActivity is not alive");
            return;
        }
        try {
            intent.setFlags(65536);
            activityH.startActivity(intent);
        } catch (Exception e2) {
            ikd.b().e("PlatformUtil", "startFormWeb() --> startActivity error", e2);
        }
    }

    public static void p(Bundle bundle, ArrayList arrayList) {
        if (arrayList != null) {
            try {
                if (arrayList.isEmpty() || bundle == null) {
                    return;
                }
                bundle.putString("s_click_acq_f_r", GsonUtil.d(arrayList));
            } catch (Throwable unused) {
            }
        }
    }

    public static void q(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            TaNativeInfo taNativeInfo = (TaNativeInfo) it.next();
            if (taNativeInfo != null && taNativeInfo.getAdItem() != null) {
                N(taNativeInfo.getAdItem());
            }
        }
    }

    public static boolean r(Context context, BitmapFactory.Options options) {
        if (context == null) {
            return true;
        }
        int i = options.outWidth;
        int i2 = options.outHeight;
        if (i > 2500 || i2 > 2000) {
            return true;
        }
        long j = ((long) (i * i2)) * 4;
        return j > 104857600 || j > (DeviceUtil.c() * 2) / 3;
    }

    public static boolean s(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Bundle bundle, ArrayList arrayList) {
        ViewJson viewJsonData = adsDTO.getViewJsonData();
        if (viewJsonData != null && viewJsonData.getDialogType().intValue() == 1) {
            ViewJson.DialogJson dialogJson = viewJsonData.getDialogJson();
            if (adsDTO.isOfflineAd() && dialogJson != null && !TextUtils.isEmpty(dialogJson.getUrl())) {
                o(context, dialogJson.getUrl(), "", adsDTO, downUpPointBean);
                if (!adsDTO.judgeOptimizeTracking()) {
                    V(adsDTO);
                }
                bundle.putInt("s_click_open_page_result", 1);
                bundle.putInt(TrackingKey.IS_OFFLINE_AD, 1);
                arrayList.add(1);
                SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
                return true;
            }
            if (viewJsonData.getFormPath() != null) {
                File file = new File(viewJsonData.getFormPath());
                if (dialogJson != null && !TextUtils.isEmpty(dialogJson.getUrl()) && file.exists()) {
                    o(context, dialogJson.getUrl(), file.getPath(), adsDTO, downUpPointBean);
                    if (!adsDTO.judgeOptimizeTracking()) {
                        V(adsDTO);
                    }
                    bundle.putInt("s_click_open_page_result", 1);
                    bundle.putInt(TrackingKey.IS_OFFLINE_AD, 0);
                    arrayList.add(1);
                    SSPTrackingHelper.a.K(0, adsDTO, bundle, arrayList);
                    return true;
                }
                arrayList.add(1);
                bundle.putInt(TrackingKey.IS_OFFLINE_AD, 0);
                bundle.putInt("s_click_form_f_r", 14);
            }
        }
        return false;
    }

    public static boolean t(Context context, AdsDTO adsDTO, String str) {
        if (context != null && adsDTO != null && !TextUtils.isEmpty(str)) {
            String str2 = str + "&hsTrace=" + adsDTO.getUuid();
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
                intent.setFlags(268435456);
                context.startActivity(intent);
                return true;
            } catch (Exception unused) {
                ikd.b().w("PlatformUtil", "openPageWithAhaLink error:" + str2);
            }
        }
        return false;
    }

    public static boolean u(Context context, AdsDTO adsDTO, String str, Bundle bundle) {
        if (context == null || adsDTO == null) {
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            if (bundle != null) {
                bundle.putInt("s_click_dp_f_r", 1);
            }
            ikd.b().w("PlatformUtil", "startOpenDeepLink failed, deepLinkUrl is empty");
            return false;
        }
        if (E0.a.e(str, context, adsDTO)) {
            ikd.b().d("PlatformUtil", "startOpenActivationLink open mini app.");
            return true;
        }
        if (str.startsWith(DefaultWebClient.INTENT_SCHEME)) {
            if (str.startsWith("intent://play.google.com")) {
                if (bundle != null) {
                    bundle.putInt("s_click_dp_f_r", 2);
                }
                ikd.b().d("PlatformUtil", "startOpenDeepLink failed, deepLinkUrl url is gpLink: " + str);
                return false;
            }
            if (T(context, str)) {
                ikd.b().d("PlatformUtil", "startOpenDeepLink succeed, deepLinkUrl: " + str);
                return true;
            }
        }
        if (!str.contains("play.google.com")) {
            boolean zS = S(context, str);
            if (!zS && bundle != null) {
                bundle.putInt("s_click_dp_f_r", 3);
            }
            return zS;
        }
        if (bundle != null) {
            bundle.putInt("s_click_dp_f_r", 2);
        }
        ikd.b().d("PlatformUtil", "startOpenDeepLink failed, deepLinkUrl url is gpLink: " + str);
        return false;
    }

    public static boolean v(Context context, AdsDTO adsDTO, String str, boolean z) {
        return w(context, adsDTO, str, z, null);
    }

    public static boolean w(Context context, AdsDTO adsDTO, String str, boolean z, Bundle bundle) {
        if (context != null && adsDTO != null && !TextUtils.isEmpty(str)) {
            String strI = i(adsDTO, str, z);
            if (ikd.c()) {
                ikd.b().d("PlatformUtil", "openPageWithPsLink,link is " + strI);
            }
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strI));
                intent.setPackage("com.transsnet.store");
                l(context, adsDTO, intent);
                intent.setFlags(268435456);
                context.startActivity(intent);
                if (bundle == null) {
                    return true;
                }
                bundle.remove(TrackingKey.ERROR_MESSAGE);
                bundle.remove("available_memory");
                return true;
            } catch (Exception e2) {
                if (bundle != null) {
                    bundle.putString(TrackingKey.ERROR_MESSAGE, o17.b(e2.getMessage()));
                    bundle.putLong("available_memory", DeviceUtil.c());
                }
                ikd.b().w("PlatformUtil", "openPageWithPsLink error:" + strI);
            }
        }
        return false;
    }

    public static boolean x(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        return r(context, options);
    }

    public static boolean y(Context context, String str, int i, Bundle bundle) {
        ActivityInfo activityInfo;
        if (context == null) {
            SSPTrackingHelper.a.y(i, bundle, 5);
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            SSPTrackingHelper.a.y(i, bundle, 6);
            ikd.b().w("PlatformUtil", "startApplicationWithPackageName failed, packageName is empty.");
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                SSPTrackingHelper.a.y(i, bundle, 7);
                return false;
            }
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(packageInfo.packageName);
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            if (listQueryIntentActivities != null && listQueryIntentActivities.size() != 0) {
                ResolveInfo next = listQueryIntentActivities.iterator().next();
                if (next == null || (activityInfo = next.activityInfo) == null) {
                    SSPTrackingHelper.a.y(i, bundle, 9);
                    return false;
                }
                String str2 = activityInfo.packageName;
                String str3 = activityInfo.name;
                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    Intent intent2 = new Intent("android.intent.action.MAIN");
                    intent2.addCategory("android.intent.category.LAUNCHER");
                    intent2.setFlags(268435456);
                    intent2.setComponent(new ComponentName(str2, str3));
                    context.startActivity(intent2);
                    ikd.b().d("PlatformUtil", "startApplicationWithPackageName succeed, packageName: " + str);
                    return true;
                }
                return false;
            }
            SSPTrackingHelper.a.y(i, bundle, 8);
            return false;
        } catch (Exception e2) {
            SSPTrackingHelper.a.y(i, bundle, 10);
            ikd.b().w("PlatformUtil", "startApplicationWithPackageName failed, packageName: " + str + "\n error: " + Log.getStackTraceString(e2));
            return false;
        }
    }

    public static boolean z(Context context, String str, String str2) {
        String str3 = "";
        try {
            if (!TextUtils.isEmpty(str)) {
                if (context.getPackageManager().getPackageInfo(TextUtils.isEmpty(str) ? "" : str, 0) != null) {
                    return true;
                }
            }
        } catch (Exception unused) {
            ikd.b().w("PlatformUtil", "the package name is " + str + " is not installed");
        }
        try {
            if (!TextUtils.isEmpty(str2)) {
                PackageManager packageManager = context.getPackageManager();
                if (!TextUtils.isEmpty(str2)) {
                    str3 = str2;
                }
                if (packageManager.getPackageInfo(str3, 0) != null) {
                    return true;
                }
            }
        } catch (Exception unused2) {
            ikd.b().w("PlatformUtil", "the package name is " + str2 + " is not installed");
        }
        return false;
    }
}
