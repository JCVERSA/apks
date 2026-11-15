package com.cloud.hisavana.sdk.bridge;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.MimeTypeMap;
import android.webkit.ValueCallback;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import c7.b;
import com.cloud.hisavana.net.disklrucache.ImageCacheURL;
import com.cloud.hisavana.net.disklrucache.impl.IDiskCache;
import com.cloud.hisavana.net.disklrucache.utils.DiskLruCacheUtil;
import com.cloud.hisavana.sdk.F;
import com.cloud.hisavana.sdk.J0;
import com.cloud.hisavana.sdk.O;
import com.cloud.hisavana.sdk.Y;
import com.cloud.hisavana.sdk.Y0;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.api.listener.d;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.h0;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.request.DeviceDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.i0;
import com.cloud.hisavana.sdk.internal.agentpage.AgentPageJsBridge;
import com.cloud.hisavana.sdk.n2;
import com.cloud.hisavana.sdk.p;
import com.cloud.hisavana.sdk.p3;
import com.cloud.hisavana.sdk.q2;
import com.cloud.hisavana.sdk.v2;
import com.cloud.hisavana.sdk.x;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.e;
import com.cloud.tmc.ad.Constants;
import com.cloud.tmc.integration.event.EventConstants;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Pattern;
import k7.c;

public class HisavanaAdJsBridge {
    public static final String INTERFACE_NAME = "HisavanaAdJsBridge";
    public static final String PS_CLICKTRACKING_URL = "PsClickTrackingUrl";
    public static final String PS_CLICK_CURRENT_TIMEMILLIS = "ClickCurrentTimeMillis";
    public static final String PS_TRACKTYPE = "PsTrackType";

    private static final Pattern f21103f = Pattern.compile("^[0-9a-zA-Z]+$");

    private final String f21104a = INTERFACE_NAME;

    private String f21105b = EventConstants.KEY_SOURCE;

    private String f21106c = "http://";

    private String f21107d = "https://";

    private WeakReference f21108e;

    public static class a extends AdCallback {

        private final v2 f21109a;

        private WeakReference f21110b;

        private final AdsDTO f21111c;

        public a(v2 v2Var, HisavanaAdJsBridge hisavanaAdJsBridge, AdsDTO adsDTO) {
            this.f21109a = v2Var;
            this.f21110b = new WeakReference(hisavanaAdJsBridge);
            this.f21111c = adsDTO;
        }

        @Override
        public d d() {
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
        public void m() {
            b4.b().d("JsAdmAdListener", "adm from js : onAdClicked");
            AthenaTracker.B(this.f21111c, 3, 0);
            HisavanaAdJsBridge hisavanaAdJsBridge = (HisavanaAdJsBridge) this.f21110b.get();
            if (hisavanaAdJsBridge != null) {
                hisavanaAdJsBridge.g(hisavanaAdJsBridge.d(this.f21111c.getUuid(), 3, 0), null);
            }
        }

        @Override
        public void p(AdsDTO adsDTO) {
            AthenaTracker.e0(this.f21111c);
            b4.b().d("JsAdmAdListener", "adm from js : onAdClosed");
            AthenaTracker.B(this.f21111c, 4, 0);
            this.f21109a.m();
            HisavanaAdJsBridge hisavanaAdJsBridge = (HisavanaAdJsBridge) this.f21110b.get();
            if (hisavanaAdJsBridge != null) {
                hisavanaAdJsBridge.g(hisavanaAdJsBridge.d(this.f21111c.getUuid(), 4, 0), null);
            }
        }

        @Override
        public void s() {
            b4.b().d("JsAdmAdListener", "adm from js : onAdShow");
            AthenaTracker.B(this.f21111c, 2, 0);
            HisavanaAdJsBridge hisavanaAdJsBridge = (HisavanaAdJsBridge) this.f21110b.get();
            if (hisavanaAdJsBridge != null) {
                hisavanaAdJsBridge.g(hisavanaAdJsBridge.d(this.f21111c.getUuid(), 2, 0), null);
            }
        }

        @Override
        public void t(TaErrorCode taErrorCode, F f10) {
            if (this.f21111c != null) {
                SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21368a;
                sSPTrackingHelper.M(Integer.valueOf(taErrorCode.getErrorCode()), this.f21111c.getTriggerId(), this.f21111c.getCodeSeatId(), sSPTrackingHelper.m(f10));
            }
            int errorCode = taErrorCode == null ? -1 : taErrorCode.getErrorCode();
            b4.b().d("JsAdmAdListener", "adm from js : onAdShowError");
            AthenaTracker.B(this.f21111c, 2, errorCode);
            this.f21109a.m();
            HisavanaAdJsBridge hisavanaAdJsBridge = (HisavanaAdJsBridge) this.f21110b.get();
            if (hisavanaAdJsBridge != null) {
                hisavanaAdJsBridge.g(hisavanaAdJsBridge.d(this.f21111c.getUuid(), 2, errorCode), null);
            }
        }
    }

    public HisavanaAdJsBridge() {
    }

    public String d(String str, int i10, int i11) {
        return "javascript:hisavanaToJsForAdmCallBack('" + str + "'," + i10 + "," + i11 + ")";
    }

    private void f(AdsDTO adsDTO, String str, boolean z10) {
        if (adsDTO == null) {
            return;
        }
        AthenaTracker.E(adsDTO, adsDTO.getUuid(), str, z10);
    }

    public void g(final String str, final ValueCallback valueCallback) {
        b4.b().d(INTERFACE_NAME, "[jsbridge]callBackToJS: " + str);
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                this.f60044a.m(str, valueCallback);
            }
        });
    }

    private boolean h(Context context, AdsDTO adsDTO) {
        if (context != null && adsDTO != null) {
            b4.b().d(INTERFACE_NAME, "start openWithClickUrls, clickUrls: " + adsDTO.getStoreDeeplink());
            ArrayList<String> storeDeeplink = adsDTO.getStoreDeeplink();
            if (storeDeeplink != null && !storeDeeplink.isEmpty()) {
                for (String str : storeDeeplink) {
                    if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str)) {
                        if (!str.startsWith("palmplay://")) {
                            if (str.startsWith("aha://") && J0.t(context, adsDTO, str)) {
                                b4.b().d(INTERFACE_NAME, "startOpenAcquisitionLink,url is ahaLink: " + str);
                                f(adsDTO, str, true);
                                return true;
                            }
                            if (j(str) && J0.J(context, str, "com.android.vending")) {
                                b4.b().d(INTERFACE_NAME, "startOpenAcquisitionLink,url is GP link: " + str);
                                f(adsDTO, str, true);
                                return true;
                            }
                            if (J0.J(context, str, null)) {
                                b4.b().d(INTERFACE_NAME, "startOpenAcquisitionLink,url is other link: " + str);
                                f(adsDTO, str, true);
                                return true;
                            }
                        } else if (J0.T(adsDTO) || !adsDTO.getPslinkInfoStatus() || !J0.y(context, adsDTO.getPackageName(), adsDTO.getPackageName())) {
                            if (J0.v(context, adsDTO, str, false)) {
                                b4.b().d(INTERFACE_NAME, "startOpenAcquisitionLink,url is psLink: " + str);
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
            b4.b().w(INTERFACE_NAME, "openWithClickUrls failed, clickUrls is empty.");
            f(adsDTO, null, false);
        }
        return false;
    }

    private boolean i(AdsDTO adsDTO) {
        Context contextA = e.a();
        if (contextA == null || adsDTO == null) {
            return false;
        }
        adsDTO.setClickid(n2.a());
        Integer trackType = adsDTO.getTrackType();
        if (J0.u(contextA, adsDTO, adsDTO.getDeepLinkUrl(), null)) {
            if (trackType.intValue() == 0) {
                J0.U(adsDTO);
            }
            f(adsDTO, null, true);
            return true;
        }
        if (J0.T(adsDTO) && J0.V(contextA, adsDTO.getPackageName())) {
            if (trackType.intValue() == 0) {
                J0.U(adsDTO);
            }
            f(adsDTO, null, true);
            return true;
        }
        if (!J0.T(adsDTO) || !J0.V(contextA, adsDTO.getPsPackageName())) {
            return h(contextA, adsDTO);
        }
        if (trackType.intValue() == 0) {
            J0.U(adsDTO);
        }
        f(adsDTO, null, true);
        return true;
    }

    public static boolean isAlphaNumeric(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        return f21103f.matcher(str).matches();
    }

    private boolean j(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("market://") || str.contains(Constants.GP_DEEPLINK);
    }

    private void k(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        boolean zG = h0.g(e.a());
        if (adsDTO.getTrackType().intValue() == 0) {
            if (zG) {
                AthenaTracker.D(adsDTO, true);
            } else {
                J0.U(adsDTO);
                AthenaTracker.D(adsDTO, false);
            }
        }
    }

    public void l(String str) {
        try {
            if (e.a() == null) {
                b4.b().w(INTERFACE_NAME, "[jsbridge]handleAdClick failed, HSCoreUtil is not init.");
                return;
            }
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(str, AdsDTO.class);
            if (adsDTO == null) {
                b4.b().w(INTERFACE_NAME, "[jsbridge]handleAdClick failed, adsDTO is null.");
                return;
            }
            WebView webView = (WebView) this.f21108e.get();
            Context contextA = (webView == null || webView.getContext() == null) ? e.a() : webView.getContext();
            AthenaTracker.W(adsDTO);
            J0.b(contextA, adsDTO, new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, 0, 0), false);
        } catch (Throwable th2) {
            b4.b().w(INTERFACE_NAME, "[jsbridge]handleAdClick failed, error: " + th2);
        }
    }

    public void m(String str, ValueCallback valueCallback) {
        WebView webView;
        WeakReference weakReference = this.f21108e;
        if (weakReference == null || (webView = (WebView) weakReference.get()) == null) {
            return;
        }
        try {
            webView.evaluateJavascript(str, valueCallback);
        } catch (Exception unused) {
            b4.b().w(INTERFACE_NAME, "evaluate javascript failed:" + str);
        }
    }

    @JavascriptInterface
    public String getAppVersionCode() {
        if (e.a() == null) {
            b4.b().w(INTERFACE_NAME, "[jsbridge]getAppVersionCode failed, HSCoreUtil is not init.");
            return "";
        }
        String strP = c.p();
        b4.b().d(INTERFACE_NAME, "[jsbridge]getAppVersionCode: " + strP);
        return strP;
    }

    @JavascriptInterface
    public String getAppVersionName() {
        if (e.a() == null) {
            b4.b().w(INTERFACE_NAME, "[jsbridge]getAppVersionName failed, HSCoreUtil is not init.");
            return "";
        }
        String strQ = c.q();
        b4.b().d(INTERFACE_NAME, "[jsbridge]getAppVersionName: " + strQ);
        return strQ;
    }

    @JavascriptInterface
    public String getDeviceInfo() {
        if (e.a() == null) {
            b4.b().w(INTERFACE_NAME, "[jsbridge]getDeviceInfo failed, HSCoreUtil is not init.");
            return "";
        }
        DeviceDTO deviceDTO = new DeviceDTO();
        deviceDTO.setBrand(c.a());
        deviceDTO.setModel(c.f());
        deviceDTO.setOsType(1);
        deviceDTO.setOsApiLevel(String.valueOf(c.g()));
        deviceDTO.setLanguage(Locale.getDefault().getLanguage());
        deviceDTO.setPsCountryCode(DeviceUtil.d());
        deviceDTO.setCpu(DeviceUtil.c());
        deviceDTO.setGaid(DeviceUtil.e());
        String strD = GsonUtil.d(deviceDTO);
        b4.b().d(INTERFACE_NAME, "[jsbridge]getDeviceInfo");
        return strD;
    }

    @JavascriptInterface
    public long getPsVersion() {
        if (e.a() == null) {
            b4.b().w(INTERFACE_NAME, "[jsbridge]getPsVersion failed, HSCoreUtil is not init.");
            return 0L;
        }
        PackageInfo packageInfoC = h0.c(e.a());
        if (packageInfoC == null) {
            return 0L;
        }
        long longVersionCode = Build.VERSION.SDK_INT >= 28 ? packageInfoC.getLongVersionCode() : packageInfoC.versionCode;
        b4.b().d(INTERFACE_NAME, "[jsbridge]getPsVersion: " + longVersionCode);
        return longVersionCode;
    }

    @JavascriptInterface
    public String getSdkVersionCode() {
        if (e.a() == null) {
            b4.b().w(INTERFACE_NAME, "[jsbridge]getSdkVersionCode failed, HSCoreUtil is not init.");
            return "";
        }
        String strValueOf = String.valueOf(c.m());
        b4.b().d(INTERFACE_NAME, "[jsbridge]getSdkVersionCode: " + strValueOf);
        return strValueOf;
    }

    @JavascriptInterface
    public void handleAdClick(final String str) {
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                this.f60047a.l(str);
            }
        });
    }

    @JavascriptInterface
    public boolean isAppInstalled(String str) {
        try {
            if (e.a() != null) {
                return (TextUtils.isEmpty(str) || e.a().getPackageManager().getPackageInfo(str, 0) == null) ? false : true;
            }
            b4.b().w(INTERFACE_NAME, "[jsbridge]isAppInstalled failed, HSCoreUtil is not init.");
            return false;
        } catch (Exception unused) {
            b4.b().w(INTERFACE_NAME, "the package name is " + str + " is not installed");
        }
    }

    @JavascriptInterface
    public boolean isMaterialExist(String str, int i10, boolean z10) {
        if (e.a() == null) {
            b4.b().w(INTERFACE_NAME, "[jsbridge]isMaterialExit, HSCoreUtil is not init.");
            return false;
        }
        b4.b().w(INTERFACE_NAME, "isMaterialExit: url is " + str + " source is " + i10 + ", isVastAd is " + z10);
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (str.startsWith(this.f21106c) || str.startsWith(this.f21107d)) {
                int i11 = 4;
                if (i10 != 4) {
                    i11 = z10 ? 3 : 1;
                }
                str = DiskLruCacheUtil.e(str, i11);
            }
            File file = new File(str);
            b4.b().w(INTERFACE_NAME, "[jsbridge]isMaterialExit: file path is " + str);
            return file.exists() && file.isFile();
        } catch (Throwable th2) {
            b4.b().w(INTERFACE_NAME, "getMaterialPathByUrl, error:" + th2);
            return false;
        }
    }

    @JavascriptInterface
    public boolean openPsDetail(String str, String str2) {
        if (b.l()) {
            b4.b().d(INTERFACE_NAME, "[jsbridge]start openPsDetail: showId = " + str + ", adInfo = " + str2);
        }
        try {
            if (!e.h()) {
                b4.b().w(INTERFACE_NAME, "[jsbridge]openPsDetail failed, HSCoreUtil is not init.");
                return false;
            }
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(str2, AdsDTO.class);
            if (adsDTO == null) {
                AthenaTracker.F(null, str, false);
                AthenaTracker.E(null, str, null, false);
                b4.b().w(INTERFACE_NAME, "[jsbridge]openPsDetail failed, adsDTO is null.");
                return false;
            }
            adsDTO.setUuid(str);
            AdxImpBean adxImpBean = new AdxImpBean();
            adxImpBean.pmid = adsDTO.getJsCodeSeatId();
            adxImpBean.triggerId = adsDTO.getJsTriggerId();
            adxImpBean.requestId = adsDTO.getJsRequestId();
            adsDTO.setImpBeanRequest(adxImpBean);
            adsDTO.setPslinkInfo(J0.F(adsDTO));
            AthenaTracker.F(adsDTO.getJsTriggerId(), str, false);
            return i(adsDTO);
        } catch (Exception e10) {
            b4.b().w(INTERFACE_NAME, "[jsbridge]openPsDetail failed, error: " + Log.getStackTraceString(e10));
            AthenaTracker.F(null, str, false);
            AthenaTracker.E(null, str, null, false);
            return false;
        }
    }

    @Nullable
    public WebResourceResponse shouldInterceptRequest(String str) {
        File fileC;
        try {
            if (e.a() == null) {
                b4.b().w(INTERFACE_NAME, "[jsbridge]handleAdClick failed, HSCoreUtil is not init.");
                return null;
            }
            if (!TextUtils.isEmpty(str) && str.startsWith(AgentPageJsBridge.AGENT_PAGE_START_URL)) {
                b4.b().d(INTERFACE_NAME, "shouldInterceptRequest-----> url = " + str);
                Uri uri = Uri.parse(str);
                String queryParameter = uri.getQueryParameter(this.f21105b);
                b4.b().e(INTERFACE_NAME, "shouldInterceptRequest----> sourceValue = " + queryParameter);
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
                b4.b().e(INTERFACE_NAME, "shouldInterceptRequest----> path = " + path);
                String str2 = new String(Base64.decode(path, 0));
                b4.b().e(INTERFACE_NAME, "shouldInterceptRequest----> realUrl = " + str2);
                if (str2.startsWith(this.f21106c) || str2.startsWith(this.f21107d)) {
                    IDiskCache iDiskCacheG = TextUtils.equals(queryParameter, String.valueOf(4)) ? DiskLruCacheUtil.g(4) : DiskLruCacheUtil.g(1);
                    fileC = iDiskCacheG != null ? iDiskCacheG.c(new ImageCacheURL(str2)) : null;
                } else {
                    fileC = new File(str2);
                }
                if (fileC != null && fileC.exists() && fileC.length() > 0) {
                    String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str));
                    return Build.VERSION.SDK_INT >= 26 ? new WebResourceResponse(mimeTypeFromExtension, "UTF-8", Files.newInputStream(fileC.toPath(), new OpenOption[0])) : new WebResourceResponse(mimeTypeFromExtension, "UTF-8", new FileInputStream(fileC));
                }
                return null;
            }
            return null;
        } catch (Throwable th2) {
            b4.b().w(INTERFACE_NAME, "[jsbridge]shouldInterceptRequest failed, error: " + th2);
        }
    }

    @JavascriptInterface
    public void showAdmAdFromJs(String str, String str2, String str3, String str4, String str5) {
        AdsDTO adsDTO;
        if (!isAlphaNumeric(str4)) {
            b4.b().d(INTERFACE_NAME, "[jsbridge] showId is invalid，showId =null");
            str4 = "";
        }
        if (!e.h()) {
            b4.b().w(INTERFACE_NAME, "[jsbridge]openPsDetail failed, HSCoreUtil is not init.");
            g(d(str4, 2, TaErrorCode.CODE_UNINIT), null);
            return;
        }
        try {
            adsDTO = (AdsDTO) GsonUtil.a(str5, AdsDTO.class);
        } catch (Exception unused) {
            b4.b().w(INTERFACE_NAME, "showAdmAdFromJs: adInfo is not available");
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
        adsDTO.setPslinkInfo(J0.F(adsDTO));
        AthenaTracker.B(adsDTO, 1, 0);
        v2 v2Var = new v2(new p3.b().e(adsDTO.getCodeSeatId()).g());
        v2Var.g(new a(v2Var, this, adsDTO));
        g(d(str4, 1, 0), null);
        v2Var.H(adsDTO);
    }

    @JavascriptInterface
    public void trackAdShow(String str) {
        try {
            if (e.a() == null) {
                b4.b().w(INTERFACE_NAME, "[jsbridge]trackAdShow failed, HSCoreUtil is not init.");
                return;
            }
            AdsDTO adsDTO = (AdsDTO) GsonUtil.a(str, AdsDTO.class);
            if (adsDTO == null) {
                b4.b().w(INTERFACE_NAME, "[jsbridge]handleShow failed, adsDTO is null.");
                return;
            }
            adsDTO.setShowReportTimeType(1);
            q2.a(adsDTO);
            DownUpPointBean downUpPointBean = new DownUpPointBean(0.0f, 0.0f, 0.0f, 0.0f, adsDTO.getImageWidth().intValue(), adsDTO.getImageHeight().intValue());
            adsDTO.setClickid(n2.a());
            Y0.o(adsDTO.getShowTrackingUrls(), adsDTO, downUpPointBean);
            x xVar = x.f22413a;
            xVar.C(adsDTO);
            xVar.Q();
            if (adsDTO.getImpBeanRequest() != null) {
                O.g().k(adsDTO.getImpBeanRequest().pmid);
                if (adsDTO.getSource() == 4) {
                    Y.f20925a.q(adsDTO.getAdCreativeId(), adsDTO.getCodeSeatId());
                } else if (adsDTO.isOfflineAd()) {
                    adsDTO.setShowNum(Integer.valueOf(adsDTO.getShowNum().intValue() + 1));
                    p.F().q(adsDTO);
                } else {
                    i0.f21895a.a(adsDTO);
                }
            }
            AdsDTO adsDTOM233clone = adsDTO.m233clone();
            adsDTOM233clone.setShowReportTimeType(2);
            q2.b(adsDTOM233clone);
        } catch (Throwable th2) {
            b4.b().w(INTERFACE_NAME, "[jsbridge]handleShow failed, error: " + th2);
        }
    }

    @JavascriptInterface
    public void trackJSEvent(String str, int i10, String str2) {
        try {
            if (e.a() == null) {
                b4.b().w(INTERFACE_NAME, "[jsbridge]trackJSEvent failed, HSCoreUtil is not init.");
                return;
            }
            if (!TextUtils.isEmpty(str) && i10 > 0 && !TextUtils.isEmpty(str2)) {
                AthenaTracker.P(null, str, str2, i10);
                return;
            }
            b4.b().w(INTERFACE_NAME, "[jsbridge]trackJSEvent failed, info is empty.");
        } catch (Throwable th2) {
            b4.b().w(INTERFACE_NAME, "[jsbridge]handleShow failed, error: " + th2);
        }
    }

    public void updateWebViewReference(WebView webView) {
        this.f21108e = new WeakReference(webView);
        Context context = webView == null ? null : webView.getContext();
        if (e.a() != null || context == null) {
            return;
        }
        e.i(context);
    }

    public HisavanaAdJsBridge(WebView webView) {
        this.f21108e = new WeakReference(webView);
        Context context = webView == null ? null : webView.getContext();
        if (e.a() != null || context == null) {
            return;
        }
        e.i(context);
    }
}
