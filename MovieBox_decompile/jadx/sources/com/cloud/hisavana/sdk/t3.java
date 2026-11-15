package com.cloud.hisavana.sdk;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import com.cloud.hisavana.sdk.common.bean.PreloadH5Entry;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class t3 {

    public static final t3 f22329a = new t3();

    private static final String f22330b = "05MCJTA6GF3qZyZcN5Kwag==";

    private static final String f22331c = "WebViewPreloader";

    private static final List f22332d = new ArrayList();

    private static final LinkedHashMap f22333e = new LinkedHashMap(1, 0.75f, true);

    private static long f22334f;

    private t3() {
    }

    private final PreloadH5Entry d(Context context, AdsDTO adsDTO) {
        ActionWebView actionWebView = new ActionWebView(new MutableContextWrapper(context.getApplicationContext()));
        b4.b().d(f22331c, "createNewPreloadEntry, webView is " + actionWebView);
        return new PreloadH5Entry(actionWebView, adsDTO, null, 0, null, 0L, null, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, null);
    }

    private final void g(WebView webView, Context context) {
        Context context2 = webView.getContext();
        MutableContextWrapper mutableContextWrapper = context2 instanceof MutableContextWrapper ? (MutableContextWrapper) context2 : null;
        if (mutableContextWrapper == null) {
            return;
        }
        mutableContextWrapper.setBaseContext(context);
    }

    public static final void h(PreloadH5Entry preloadH5Entry, Context context) {
        Intrinsics.h(preloadH5Entry, "$preloadH5Entry");
        Intrinsics.h(context, "$context");
        try {
            f22332d.remove(preloadH5Entry);
            ViewParent parent = preloadH5Entry.getWebView().getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(preloadH5Entry.getWebView());
            }
            Context context2 = preloadH5Entry.getWebView().getContext();
            MutableContextWrapper mutableContextWrapper = context2 instanceof MutableContextWrapper ? (MutableContextWrapper) context2 : null;
            if (mutableContextWrapper != null) {
                mutableContextWrapper.setBaseContext(context.getApplicationContext());
            }
            preloadH5Entry.release();
        } catch (Throwable th2) {
            b4.b().w(f22331c, "release error: " + th2.getMessage());
        }
    }

    public static final void i(AdsDTO adsDTO, Context context) {
        Intrinsics.h(adsDTO, "$adsDTO");
        Intrinsics.h(context, "$context");
        try {
            com.cloud.hisavana.sdk.common.util.b bVar = com.cloud.hisavana.sdk.common.util.b.f21563a;
            if (!bVar.g(adsDTO)) {
                b4.b().w(f22331c, "preload: offline ad or default ad not available");
                return;
            }
            if (!NetStateManager.checkNetworkState(false)) {
                b4.b().w(f22331c, "preload: network not available");
                return;
            }
            if (!bVar.h(adsDTO.getRealLandUrl())) {
                b4.b().w(f22331c, "preload: invalid url " + adsDTO.getRealLandUrl());
                return;
            }
            LinkedHashMap linkedHashMap = f22333e;
            if (linkedHashMap.containsKey(adsDTO.getUuid())) {
                b4.b().d(f22331c, "preload: uuid " + adsDTO.getUuid() + " is preloading");
                return;
            }
            int size = f22332d.size() + linkedHashMap.size();
            long jCurrentTimeMillis = System.currentTimeMillis();
            b4.b().d(f22331c, "preload: start to load uuid " + adsDTO.getUuid() + ", currentTotal " + size + ", url is " + adsDTO.getRealLandUrl());
            if (size < 1) {
                PreloadH5Entry preloadH5EntryD = f22329a.d(context, adsDTO);
                String uuid = adsDTO.getUuid();
                Intrinsics.g(uuid, "getUuid(...)");
                linkedHashMap.put(uuid, preloadH5EntryD);
                preloadH5EntryD.load();
                return;
            }
            if (linkedHashMap.isEmpty()) {
                return;
            }
            if (jCurrentTimeMillis - f22334f < 2000) {
                if (adsDTO.getPreloadStatus() < 2) {
                    adsDTO.setPreloadStatus(2);
                    return;
                }
                return;
            }
            Iterator it = linkedHashMap.entrySet().iterator();
            if (it.hasNext()) {
                PreloadH5Entry preloadH5Entry = (PreloadH5Entry) ((Map.Entry) it.next()).getValue();
                it.remove();
                AdsDTO adsDTO2 = preloadH5Entry.getAdsDTO();
                if (adsDTO2 != null) {
                    adsDTO2.setPreloadStatus(7);
                }
                preloadH5Entry.release();
                PreloadH5Entry preloadH5EntryD2 = f22329a.d(context, adsDTO);
                String uuid2 = adsDTO.getUuid();
                Intrinsics.g(uuid2, "getUuid(...)");
                linkedHashMap.put(uuid2, preloadH5EntryD2);
                preloadH5EntryD2.load();
                f22334f = jCurrentTimeMillis;
            }
        } catch (Throwable th2) {
            b4.b().w(f22331c, "preload error: " + th2.getMessage());
        }
    }

    public static final void m(String str) {
        PreloadH5Entry preloadH5Entry;
        if (str == null || (preloadH5Entry = (PreloadH5Entry) f22333e.remove(str)) == null) {
            return;
        }
        preloadH5Entry.release();
    }

    public final PreloadH5Entry e(Context context, AdsDTO adsDTO, PreloadH5Entry.PreloadCallback callback) {
        boolean z10;
        PreloadH5Entry preloadH5EntryD;
        Intrinsics.h(context, "context");
        Intrinsics.h(adsDTO, "adsDTO");
        Intrinsics.h(callback, "callback");
        try {
            String realLandUrl = adsDTO.getRealLandUrl();
            LinkedHashMap linkedHashMap = f22333e;
            PreloadH5Entry preloadH5Entry = (PreloadH5Entry) linkedHashMap.remove(adsDTO.getUuid());
            if (preloadH5Entry == null) {
                z10 = true;
                if (f22332d.size() + linkedHashMap.size() >= 1 && !linkedHashMap.isEmpty()) {
                    Iterator it = linkedHashMap.entrySet().iterator();
                    PreloadH5Entry preloadH5Entry2 = (PreloadH5Entry) ((Map.Entry) it.next()).getValue();
                    it.remove();
                    preloadH5Entry2.release();
                    preloadH5EntryD = d(context, adsDTO);
                } else {
                    preloadH5EntryD = d(context, adsDTO);
                }
                preloadH5Entry = preloadH5EntryD;
            } else {
                adsDTO.setPreloadStatus(6);
                z10 = false;
            }
            f22332d.add(preloadH5Entry);
            g(preloadH5Entry.getWebView(), context);
            preloadH5Entry.setCallback(callback);
            if (!com.cloud.hisavana.sdk.common.util.b.f21563a.h(realLandUrl)) {
                adsDTO.setPreloadStatus(8);
                preloadH5Entry.setOverrideUrl(realLandUrl);
            } else if (z10) {
                preloadH5Entry.load();
            }
            return preloadH5Entry;
        } catch (Throwable th2) {
            b4.b().w(f22331c, "getPreloadH5Entry error: " + th2.getMessage());
            return null;
        }
    }

    public final void f(final Context context, final PreloadH5Entry preloadH5Entry) {
        Intrinsics.h(context, "context");
        Intrinsics.h(preloadH5Entry, "preloadH5Entry");
        HSScopeHelper.f22503a.h(new Runnable() {
            @Override
            public final void run() {
                t3.h(preloadH5Entry, context);
            }
        });
    }

    public final void j(final String str) {
        HSScopeHelper.f22503a.h(new Runnable() {
            @Override
            public final void run() {
                t3.m(str);
            }
        });
    }

    public final boolean k(AdsDTO adsDTO) {
        Intrinsics.h(adsDTO, "adsDTO");
        try {
            Integer dspType = adsDTO.getDspType();
            if (dspType != null && dspType.intValue() == 1 && !adsDTO.isOfflineAd() && adsDTO.getSource() != 4 && adsDTO.getPreloadEnable().booleanValue()) {
                com.cloud.hisavana.sdk.common.util.b bVar = com.cloud.hisavana.sdk.common.util.b.f21563a;
                if (!bVar.h(adsDTO.getClickUrl())) {
                    b4.b().w(f22331c, "clickurl is invalid: " + adsDTO.getClickUrl());
                    return false;
                }
                if (!bVar.f(adsDTO)) {
                    b4.b().w(f22331c, "ad is not landing page conversion, ad id is " + adsDTO.getAdCreativeId());
                    return false;
                }
                com.cloud.hisavana.sdk.common.util.r rVar = com.cloud.hisavana.sdk.common.util.r.f21605a;
                String strK = rVar.k(adsDTO.getClickUrl(), DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D);
                if (strK != null && strK.length() != 0) {
                    String strG = rVar.g(strK, f22330b);
                    b4.b().d(f22331c, "current ad realLandUrl is " + strG);
                    adsDTO.setRealLandUrl(strG);
                    return true;
                }
            }
            return false;
        } catch (Throwable th2) {
            b4.b().w(f22331c, "checkAdPreloadEnableAndGetRealLandurl error: " + th2.getMessage());
            return false;
        }
    }

    public final void l(final Context context, final AdsDTO adsDTO) {
        Intrinsics.h(context, "context");
        Intrinsics.h(adsDTO, "adsDTO");
        HSScopeHelper.f22503a.h(new Runnable() {
            @Override
            public final void run() {
                t3.i(adsDTO, context);
            }
        });
    }
}
