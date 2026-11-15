package com.cloud.hisavana.sdk.bridge;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.MimeTypeMap;
import android.webkit.ValueCallback;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.request.DeviceDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.hisavana.sdk.k1;
import com.cloud.hisavana.sdk.y;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.just.agentweb.DefaultWebClient;
import defpackage.amd;
import defpackage.c2d;
import defpackage.cy9;
import defpackage.fx8;
import defpackage.ied;
import defpackage.ikd;
import defpackage.md8;
import defpackage.n6;
import defpackage.r6;
import defpackage.ul4;
import defpackage.vnd;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.lang.ref.WeakReference;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Pattern;

public class HisavanaAdJsBridge {
    public static final String INTERFACE_NAME = "HisavanaAdJsBridge";
    public static final String PS_CLICKTRACKING_URL = "PsClickTrackingUrl";
    public static final String PS_CLICK_CURRENT_TIMEMILLIS = "ClickCurrentTimeMillis";
    public static final String PS_TRACKTYPE = "PsTrackType";
    public static final Pattern c = Pattern.compile("^[0-9a-zA-Z]+$");
    public final String a = INTERFACE_NAME;
    public WeakReference b;

    public static class a extends AdCallback {
        public final vnd a;
        public WeakReference b;
        public final AdsDTO c;

        public a(vnd vndVar, HisavanaAdJsBridge hisavanaAdJsBridge, AdsDTO adsDTO) {
            this.a = vndVar;
            this.b = new WeakReference(hisavanaAdJsBridge);
            this.c = adsDTO;
        }

        @Override
        public n6 d() {
            return null;
        }

        @Override
        public String e() {
            return "";
        }

        @Override
        public String g() {
            return "";
        }

        @Override
        public void m(AdsDTO adsDTO) {
            ikd.b().d("JsAdmAdListener", "adm from js : onAdClicked");
            AthenaTracker.E(this.c, 3, 0);
            HisavanaAdJsBridge hisavanaAdJsBridge = (HisavanaAdJsBridge) this.b.get();
            if (hisavanaAdJsBridge != null) {
                hisavanaAdJsBridge.g(hisavanaAdJsBridge.d(this.c.getUuid(), 3, 0), null);
            }
        }

        @Override
        public void p(AdsDTO adsDTO) {
            AthenaTracker.k0(this.c);
            ikd.b().d("JsAdmAdListener", "adm from js : onAdClosed");
            AthenaTracker.E(this.c, 4, 0);
            this.a.m();
            HisavanaAdJsBridge hisavanaAdJsBridge = (HisavanaAdJsBridge) this.b.get();
            if (hisavanaAdJsBridge != null) {
                hisavanaAdJsBridge.g(hisavanaAdJsBridge.d(this.c.getUuid(), 4, 0), null);
            }
        }

        @Override
        public void s() {
            ikd.b().d("JsAdmAdListener", "adm from js : onAdShow");
            AthenaTracker.E(this.c, 2, 0);
            HisavanaAdJsBridge hisavanaAdJsBridge = (HisavanaAdJsBridge) this.b.get();
            if (hisavanaAdJsBridge != null) {
                hisavanaAdJsBridge.g(hisavanaAdJsBridge.d(this.c.getUuid(), 2, 0), null);
            }
        }

        @Override
        public void t(TaErrorCode taErrorCode, G g) {
            if (this.c != null) {
                SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
                sSPTrackingHelper.M(Integer.valueOf(taErrorCode.getErrorCode()), this.c.getTriggerId(), this.c.getCodeSeatId(), sSPTrackingHelper.m(g));
            }
            int errorCode = taErrorCode == null ? -1 : taErrorCode.getErrorCode();
            ikd.b().d("JsAdmAdListener", "adm from js : onAdShowError");
            AthenaTracker.E(this.c, 2, errorCode);
            this.a.m();
            HisavanaAdJsBridge hisavanaAdJsBridge = (HisavanaAdJsBridge) this.b.get();
            if (hisavanaAdJsBridge != null) {
                hisavanaAdJsBridge.g(hisavanaAdJsBridge.d(this.c.getUuid(), 2, errorCode), null);
            }
        }
    }

    public HisavanaAdJsBridge() {
    }

    public static boolean isAlphaNumeric(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        return c.matcher(str).matches();
    }

    public final String d(String str, int i, int i2) {
        return "javascript:hisavanaToJsForAdmCallBack('" + str + "'," + i + StringUtils.COMMA + i2 + ")";
    }

    public final void f(AdsDTO adsDTO, String str, boolean z) {
        if (adsDTO == null) {
            return;
        }
        AthenaTracker.H(adsDTO, adsDTO.getUuid(), str, z);
    }

    public final void g(final String str, final ValueCallback valueCallback) {
        ikd.b().d(INTERFACE_NAME, "[jsbridge]callBackToJS: " + str);
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                this.a.m(str, valueCallback);
            }
        });
    }

    @JavascriptInterface
    public String getAppVersionCode() {
        if (ul4.a() == null) {
            ikd.b().w(INTERFACE_NAME, "[jsbridge]getAppVersionCode failed, HSCoreUtil is not init.");
            return "";
        }
        String strP = md8.p();
        ikd.b().d(INTERFACE_NAME, "[jsbridge]getAppVersionCode: " + strP);
        return strP;
    }

    @JavascriptInterface
    public String getAppVersionName() {
        if (ul4.a() == null) {
            ikd.b().w(INTERFACE_NAME, "[jsbridge]getAppVersionName failed, HSCoreUtil is not init.");
            return "";
        }
        String strQ = md8.q();
        ikd.b().d(INTERFACE_NAME, "[jsbridge]getAppVersionName: " + strQ);
        return strQ;
    }

    @JavascriptInterface
    public String getDeviceInfo() {
        if (ul4.a() == null) {
            ikd.b().w(INTERFACE_NAME, "[jsbridge]getDeviceInfo failed, HSCoreUtil is not init.");
            return "";
        }
        DeviceDTO deviceDTO = new DeviceDTO();
        deviceDTO.setBrand(md8.a());
        deviceDTO.setModel(md8.f());
        deviceDTO.setOsType(1);
        deviceDTO.setOsApiLevel(String.valueOf(md8.g()));
        deviceDTO.setLanguage(Locale.getDefault().getLanguage());
        deviceDTO.setPsCountryCode(DeviceUtil.e());
        deviceDTO.setCpu(DeviceUtil.d());
        deviceDTO.setGaid(DeviceUtil.f());
        String strD = GsonUtil.d(deviceDTO);
        ikd.b().d(INTERFACE_NAME, "[jsbridge]getDeviceInfo");
        return strD;
    }

    @JavascriptInterface
    public long getPsVersion() {
        if (ul4.a() == null) {
            ikd.b().w(INTERFACE_NAME, "[jsbridge]getPsVersion failed, HSCoreUtil is not init.");
            return 0L;
        }
        PackageInfo packageInfoC = cy9.c(ul4.a());
        if (packageInfoC == null) {
            return 0L;
        }
        long longVersionCode = packageInfoC.getLongVersionCode();
        ikd.b().d(INTERFACE_NAME, "[jsbridge]getPsVersion: " + longVersionCode);
        return longVersionCode;
    }

    @JavascriptInterface
    public String getSdkVersionCode() {
        if (ul4.a() == null) {
            ikd.b().w(INTERFACE_NAME, "[jsbridge]getSdkVersionCode failed, HSCoreUtil is not init.");
            return "";
        }
        String strValueOf = String.valueOf(md8.m());
        ikd.b().d(INTERFACE_NAME, "[jsbridge]getSdkVersionCode: " + strValueOf);
        return strValueOf;
    }

    public final boolean h(Context context, AdsDTO adsDTO) {
        if (context != null && adsDTO != null) {
            ikd.b().d(INTERFACE_NAME, "start openWithClickUrls, clickUrls: " + adsDTO.getStoreDeeplink());
            ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
            if (storeDeeplink != null && !storeDeeplink.isEmpty()) {
                for (String str : storeDeeplink) {
                    if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str)) {
                        if (!str.startsWith("palmplay://")) {
                            if (str.startsWith("aha://") && U0.t(context, adsDTO, str)) {
                                ikd.b().d(INTERFACE_NAME, "startOpenAcquisitionLink,url is ahaLink: " + str);
                                f(adsDTO, str, true);
                                return true;
                            }
                            if (j(str) && U0.K(context, str, "com.android.vending")) {
                                ikd.b().d(INTERFACE_NAME, "startOpenAcquisitionLink,url is GP link: " + str);
                                f(adsDTO, str, true);
                                return true;
                            }
                            if (U0.K(context, str, null)) {
                                ikd.b().d(INTERFACE_NAME, "startOpenAcquisitionLink,url is other link: " + str);
                                f(adsDTO, str, true);
                                return true;
                            }
                        } else if (U0.U(adsDTO) || !adsDTO.getPslinkInfoStatus() || !U0.z(context, adsDTO.getPackageName(), adsDTO.getPackageName())) {
                            if (U0.v(context, adsDTO, str, false)) {
                                ikd.b().d(INTERFACE_NAME, "startOpenAcquisitionLink,url is psLink: " + str);
                                f(adsDTO, str, true);
                                k(adsDTO);
                                return true;
                            }
                        }
                    }
                }
                f(adsDTO, null, false);
                return false;
            }
            ikd.b().w(INTERFACE_NAME, "openWithClickUrls failed, clickUrls is empty.");
            f(adsDTO, null, false);
        }
        return false;
    }

    @JavascriptInterface
    public void handleAdClick(final String str) {
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                this.a.l(str);
            }
        });
    }

    public final boolean i(AdsDTO adsDTO) {
        Context contextA = ul4.a();
        if (contextA == null || adsDTO == null) {
            return false;
        }
        adsDTO.setClickid(amd.a());
        Integer trackType = adsDTO.getTrackType();
        if (U0.u(contextA, adsDTO, adsDTO.getDeepLinkUrl(), null)) {
            if (trackType.intValue() == 0) {
                U0.V(adsDTO);
            }
            f(adsDTO, null, true);
            return true;
        }
        if (U0.U(adsDTO) && U0.W(contextA, adsDTO.getPackageName())) {
            if (trackType.intValue() == 0) {
                U0.V(adsDTO);
            }
            f(adsDTO, null, true);
            return true;
        }
        if (!U0.U(adsDTO) || !U0.W(contextA, adsDTO.getPsPackageName())) {
            return h(contextA, adsDTO);
        }
        if (trackType.intValue() == 0) {
            U0.V(adsDTO);
        }
        f(adsDTO, null, true);
        return true;
    }

    @JavascriptInterface
    public boolean isAppInstalled(String str) {
        try {
            if (ul4.a() != null) {
                return (TextUtils.isEmpty(str) || ul4.a().getPackageManager().getPackageInfo(str, 0) == null) ? false : true;
            }
            ikd.b().w(INTERFACE_NAME, "[jsbridge]isAppInstalled failed, HSCoreUtil is not init.");
            return false;
        } catch (Exception unused) {
            ikd.b().w(INTERFACE_NAME, "the package name is " + str + " is not installed");
        }
    }

    @JavascriptInterface
    public boolean isMaterialExist(String str, int i, boolean z) {
        if (ul4.a() == null) {
            ikd.b().w(INTERFACE_NAME, "[jsbridge]isMaterialExit, HSCoreUtil is not init.");
            return false;
        }
        ikd.b().w(INTERFACE_NAME, "isMaterialExit: url is " + str + " source is " + i + ", isVastAd is " + z);
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (str.startsWith(DefaultWebClient.HTTP_SCHEME) || str.startsWith("https://")) {
                int i2 = 4;
                if (i != 4) {
                    i2 = z ? 3 : 1;
                }
                str = DiskLruCacheUtil.e(str, i2);
            }
            File file = new File(str);
            ikd.b().w(INTERFACE_NAME, "[jsbridge]isMaterialExit: file path is " + str);
            return file.exists() && file.isFile();
        } catch (Throwable th) {
            ikd.b().w(INTERFACE_NAME, "getMaterialPathByUrl, error:" + th);
            return false;
        }
    }

    public final boolean j(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("market://") || str.contains("play.google.com");
    }

    public final void k(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        boolean zH = cy9.h(ul4.a());
        if (adsDTO.getTrackType().intValue() == 0) {
            if (zH) {
                AthenaTracker.G(adsDTO, true);
            } else {
                U0.V(adsDTO);
                AthenaTracker.G(adsDTO, false);
            }
        }
    }

    public final void l(String str) {
        try {
            if (ul4.a() == null) {
                ikd.b().w(INTERFACE_NAME, "[jsbridge]handleAdClick failed, HSCoreUtil is not init.");
                return;
            }
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(str, AdsDTO.class);
            if (adsDTO == null) {
                ikd.b().w(INTERFACE_NAME, "[jsbridge]handleAdClick failed, adsDTO is null.");
                return;
            }
            WebView webView = (WebView) this.b.get();
            Context contextA = (webView == null || webView.getContext() == null) ? ul4.a() : webView.getContext();
            AthenaTracker.b0(adsDTO);
            U0.b(contextA, adsDTO, new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, 0, 0), false);
        } catch (Throwable th) {
            ikd.b().w(INTERFACE_NAME, "[jsbridge]handleAdClick failed, error: " + th);
        }
    }

    public final void m(String str, ValueCallback valueCallback) {
        WebView webView;
        WeakReference weakReference = this.b;
        if (weakReference == null || (webView = (WebView) weakReference.get()) == null) {
            return;
        }
        try {
            webView.evaluateJavascript(str, valueCallback);
        } catch (Exception unused) {
            ikd.b().w(INTERFACE_NAME, "evaluate javascript failed:" + str);
        }
    }

    @JavascriptInterface
    public boolean openPsDetail(String str, String str2) {
        if (r6.p()) {
            ikd.b().d(INTERFACE_NAME, "[jsbridge]start openPsDetail: showId = " + str + ", adInfo = " + str2);
        }
        try {
            if (!ul4.i()) {
                ikd.b().w(INTERFACE_NAME, "[jsbridge]openPsDetail failed, HSCoreUtil is not init.");
                return false;
            }
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(str2, AdsDTO.class);
            if (adsDTO == null) {
                AthenaTracker.I(null, str, false);
                AthenaTracker.H(null, str, null, false);
                ikd.b().w(INTERFACE_NAME, "[jsbridge]openPsDetail failed, adsDTO is null.");
                return false;
            }
            adsDTO.setUuid(str);
            AdxImpBean adxImpBean = new AdxImpBean();
            adxImpBean.pmid = adsDTO.getJsCodeSeatId();
            adxImpBean.triggerId = adsDTO.getJsTriggerId();
            adxImpBean.requestId = adsDTO.getJsRequestId();
            adsDTO.setImpBeanRequest(adxImpBean);
            adsDTO.setPslinkInfo(U0.G(adsDTO));
            AthenaTracker.I(adsDTO.getJsTriggerId(), str, false);
            return i(adsDTO);
        } catch (Exception e) {
            ikd.b().w(INTERFACE_NAME, "[jsbridge]openPsDetail failed, error: " + Log.getStackTraceString(e));
            AthenaTracker.I(null, str, false);
            AthenaTracker.H(null, str, null, false);
            return false;
        }
    }

    @Nullable
    public WebResourceResponse shouldInterceptRequest(String str) {
        IDiskCache iDiskCacheG;
        File fileD;
        try {
            if (ul4.a() == null) {
                ikd.b().w(INTERFACE_NAME, "[jsbridge]handleAdClick failed, HSCoreUtil is not init.");
                return null;
            }
            if (!TextUtils.isEmpty(str) && str.startsWith(AgentPageJsBridge.AGENT_PAGE_START_URL)) {
                Uri uri = Uri.parse(str);
                String queryParameter = uri.getQueryParameter("source");
                ikd.b().d(INTERFACE_NAME, "shouldInterceptRequest---->url = " + str + ", sourceValue = " + queryParameter);
                if (TextUtils.isEmpty(queryParameter)) {
                    return null;
                }
                String path = uri.getPath();
                if (TextUtils.isEmpty(path)) {
                    return null;
                }
                if (path.startsWith("/")) {
                    path = path.substring(1);
                }
                boolean z = Boolean.parseBoolean(uri.getQueryParameter("isVastAd"));
                String str2 = new String(Base64.decode(path, 0));
                ikd.b().d(INTERFACE_NAME, "shouldInterceptRequest----> path =" + path + ", realUrl = " + str2);
                if (str2.startsWith(DefaultWebClient.HTTP_SCHEME) || str2.startsWith("https://")) {
                    if (TextUtils.equals(queryParameter, String.valueOf(4))) {
                        iDiskCacheG = DiskLruCacheUtil.g(4);
                    } else {
                        iDiskCacheG = z ? DiskLruCacheUtil.g(3) : DiskLruCacheUtil.g(1);
                    }
                    fileD = iDiskCacheG != null ? iDiskCacheG.d(new ImageCacheURL(str2)) : null;
                } else {
                    fileD = new File(str2);
                }
                if (fileD != null && fileD.exists() && fileD.length() > 0) {
                    String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str2));
                    ikd.b().d(INTERFACE_NAME, "shouldInterceptRequest---->mimeType = " + mimeTypeFromExtension);
                    return new WebResourceResponse(mimeTypeFromExtension, "UTF-8", Files.newInputStream(fileD.toPath(), new OpenOption[0]));
                }
                return null;
            }
            return null;
        } catch (Throwable th) {
            ikd.b().w(INTERFACE_NAME, "[jsbridge]shouldInterceptRequest failed, error: " + th);
        }
    }

    @JavascriptInterface
    public void showAdmAdFromJs(String str, String str2, String str3, String str4, String str5) {
        AdsDTO adsDTO;
        if (!isAlphaNumeric(str4)) {
            ikd.b().d(INTERFACE_NAME, "[jsbridge] showId is invalid，showId =null");
            str4 = "";
        }
        if (!ul4.i()) {
            ikd.b().w(INTERFACE_NAME, "[jsbridge]openPsDetail failed, HSCoreUtil is not init.");
            g(d(str4, 2, 9001), null);
            return;
        }
        try {
            adsDTO = (AdsDTO) GsonUtil.a(str5, AdsDTO.class);
        } catch (Exception unused) {
            ikd.b().w(INTERFACE_NAME, "showAdmAdFromJs: adInfo is not available");
            adsDTO = null;
        }
        if (adsDTO == null) {
            g(d(str4, 2, 6000), null);
            return;
        }
        adsDTO.setUuid(str4);
        AdxImpBean adxImpBean = new AdxImpBean();
        adxImpBean.pmid = str;
        adxImpBean.triggerId = str2;
        adxImpBean.requestId = str3;
        adsDTO.setImpBeanRequest(adxImpBean);
        adsDTO.setFromJs(true);
        adsDTO.setPslinkInfo(U0.G(adsDTO));
        AthenaTracker.E(adsDTO, 1, 0);
        vnd vndVar = new vnd(new ied.b().e(adsDTO.getCodeSeatId()).g());
        vndVar.g(new a(vndVar, this, adsDTO));
        g(d(str4, 1, 0), null);
        vndVar.H(adsDTO);
    }

    @JavascriptInterface
    public void trackAdShow(String str) {
        try {
            if (ul4.a() == null) {
                ikd.b().w(INTERFACE_NAME, "[jsbridge]trackAdShow failed, HSCoreUtil is not init.");
                return;
            }
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(str, AdsDTO.class);
            if (adsDTO == null) {
                ikd.b().w(INTERFACE_NAME, "[jsbridge]handleShow failed, adsDTO is null.");
                return;
            }
            adsDTO.setShowReportTimeType(1);
            c2d.a(adsDTO);
            DownUpPointBean downUpPointBean = new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, adsDTO.getImageWidth().intValue(), adsDTO.getImageHeight().intValue());
            adsDTO.setClickid(amd.a());
            k1.o(adsDTO.getShowTrackingUrls(), adsDTO, downUpPointBean);
            y yVar = y.a;
            yVar.C(adsDTO);
            yVar.Q();
            HSCommonUtils.a.x(adsDTO);
            if (adsDTO.getImpBeanRequest() != null && !adsDTO.isOfflineAd() && adsDTO.getSource() != 4) {
                fx8.a.a(adsDTO);
            }
            AdsDTO adsDTOM70clone = adsDTO.m70clone();
            adsDTOM70clone.setShowReportTimeType(2);
            c2d.b(adsDTOM70clone);
        } catch (Throwable th) {
            ikd.b().w(INTERFACE_NAME, "[jsbridge]handleShow failed, error: " + th);
        }
    }

    @JavascriptInterface
    public void trackJSEvent(String str, int i, String str2) {
        try {
            if (ul4.a() == null) {
                ikd.b().w(INTERFACE_NAME, "[jsbridge]trackJSEvent failed, HSCoreUtil is not init.");
                return;
            }
            if (!TextUtils.isEmpty(str) && i > 0 && !TextUtils.isEmpty(str2)) {
                AthenaTracker.U(null, str, str2, i);
                return;
            }
            ikd.b().w(INTERFACE_NAME, "[jsbridge]trackJSEvent failed, info is empty.");
        } catch (Throwable th) {
            ikd.b().w(INTERFACE_NAME, "[jsbridge]handleShow failed, error: " + th);
        }
    }

    public void updateWebViewReference(WebView webView) {
        this.b = new WeakReference(webView);
        Context context = webView == null ? null : webView.getContext();
        if (ul4.a() != null || context == null) {
            return;
        }
        ul4.k(context);
    }

    public HisavanaAdJsBridge(WebView webView) {
        this.b = new WeakReference(webView);
        Context context = webView == null ? null : webView.getContext();
        if (ul4.a() != null || context == null) {
            return;
        }
        ul4.k(context);
    }
}
