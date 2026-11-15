package defpackage;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import com.cloud.hisavana.sdk.common.bean.PreloadH5Entry;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class atd {
    public static final atd a = new atd();
    public static final String b = "05MCJTA6GF3qZyZcN5Kwag==";
    public static final String c = "WebViewPreloader";
    public static final List d = new ArrayList();
    public static final LinkedHashMap e = new LinkedHashMap(1, 0.75f, true);
    public static long f;

    public static final void h(PreloadH5Entry preloadH5Entry, Context context) {
        y45.j(preloadH5Entry, "$preloadH5Entry");
        y45.j(context, "$context");
        try {
            d.remove(preloadH5Entry);
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
        } catch (Throwable th) {
            ikd.b().w(c, "release error: " + th.getMessage());
        }
    }

    public static final void i(AdsDTO adsDTO, Context context) {
        y45.j(adsDTO, "$adsDTO");
        y45.j(context, "$context");
        try {
            t6 t6Var = t6.a;
            if (!t6Var.g(adsDTO)) {
                ikd.b().w(c, "preload: offline ad or default ad not available");
                return;
            }
            if (!NetStateManager.checkNetworkState(false)) {
                ikd.b().w(c, "preload: network not available");
                return;
            }
            if (!t6Var.h(adsDTO.getRealLandUrl())) {
                ikd.b().w(c, "preload: invalid url " + adsDTO.getRealLandUrl());
                return;
            }
            LinkedHashMap linkedHashMap = e;
            if (linkedHashMap.containsKey(adsDTO.getUuid())) {
                ikd.b().d(c, "preload: uuid " + adsDTO.getUuid() + " is preloading");
                return;
            }
            int size = d.size() + linkedHashMap.size();
            long jCurrentTimeMillis = System.currentTimeMillis();
            ikd.b().d(c, "preload: start to load uuid " + adsDTO.getUuid() + ", currentTotal " + size + ", url is " + adsDTO.getRealLandUrl());
            if (size < 1) {
                PreloadH5Entry preloadH5EntryD = a.d(context, adsDTO);
                String uuid = adsDTO.getUuid();
                y45.i(uuid, "getUuid(...)");
                linkedHashMap.put(uuid, preloadH5EntryD);
                preloadH5EntryD.load();
                return;
            }
            if (linkedHashMap.isEmpty()) {
                return;
            }
            if (jCurrentTimeMillis - f < 2000) {
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
                PreloadH5Entry preloadH5EntryD2 = a.d(context, adsDTO);
                String uuid2 = adsDTO.getUuid();
                y45.i(uuid2, "getUuid(...)");
                linkedHashMap.put(uuid2, preloadH5EntryD2);
                preloadH5EntryD2.load();
                f = jCurrentTimeMillis;
            }
        } catch (Throwable th) {
            ikd.b().w(c, "preload error: " + th.getMessage());
        }
    }

    public static final void m(String str) {
        PreloadH5Entry preloadH5Entry;
        if (str == null || (preloadH5Entry = (PreloadH5Entry) e.remove(str)) == null) {
            return;
        }
        preloadH5Entry.release();
    }

    public final PreloadH5Entry d(Context context, AdsDTO adsDTO) {
        ActionWebView actionWebView = new ActionWebView(new MutableContextWrapper(context.getApplicationContext()));
        ikd.b().d(c, "createNewPreloadEntry, webView is " + actionWebView);
        return new PreloadH5Entry(actionWebView, adsDTO, null, 0, null, 0L, null, 124, null);
    }

    public final PreloadH5Entry e(Context context, AdsDTO adsDTO, PreloadH5Entry.PreloadCallback preloadCallback) {
        boolean z;
        PreloadH5Entry preloadH5EntryD;
        y45.j(context, "context");
        y45.j(adsDTO, "adsDTO");
        y45.j(preloadCallback, "callback");
        try {
            String realLandUrl = adsDTO.getRealLandUrl();
            LinkedHashMap linkedHashMap = e;
            PreloadH5Entry preloadH5Entry = (PreloadH5Entry) linkedHashMap.remove(adsDTO.getUuid());
            if (preloadH5Entry == null) {
                z = true;
                if (d.size() + linkedHashMap.size() >= 1 && !linkedHashMap.isEmpty()) {
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
                z = false;
            }
            d.add(preloadH5Entry);
            g(preloadH5Entry.getWebView(), context);
            preloadH5Entry.setCallback(preloadCallback);
            if (!t6.a.h(realLandUrl)) {
                adsDTO.setPreloadStatus(8);
                preloadH5Entry.setOverrideUrl(realLandUrl);
            } else if (z) {
                preloadH5Entry.load();
            }
            return preloadH5Entry;
        } catch (Throwable th) {
            ikd.b().w(c, "getPreloadH5Entry error: " + th.getMessage());
            return null;
        }
    }

    public final void f(final Context context, final PreloadH5Entry preloadH5Entry) {
        y45.j(context, "context");
        y45.j(preloadH5Entry, "preloadH5Entry");
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                atd.h(preloadH5Entry, context);
            }
        });
    }

    public final void g(WebView webView, Context context) {
        Context context2 = webView.getContext();
        MutableContextWrapper mutableContextWrapper = context2 instanceof MutableContextWrapper ? (MutableContextWrapper) context2 : null;
        if (mutableContextWrapper == null) {
            return;
        }
        mutableContextWrapper.setBaseContext(context);
    }

    public final void j(final String str) {
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                atd.m(str);
            }
        });
    }

    public final boolean k(AdsDTO adsDTO) {
        y45.j(adsDTO, "adsDTO");
        try {
            Integer dspType = adsDTO.getDspType();
            if (dspType != null && dspType.intValue() == 1 && !adsDTO.isOfflineAd() && adsDTO.getSource() != 4 && adsDTO.getPreloadEnable().booleanValue()) {
                t6 t6Var = t6.a;
                if (!t6Var.h(adsDTO.getClickUrl())) {
                    ikd.b().w(c, "clickurl is invalid: " + adsDTO.getClickUrl());
                    return false;
                }
                if (!t6Var.f(adsDTO)) {
                    ikd.b().w(c, "ad is not landing page conversion, ad id is " + adsDTO.getAdCreativeId());
                    return false;
                }
                HSCommonUtils hSCommonUtils = HSCommonUtils.a;
                String strN = hSCommonUtils.n(adsDTO.getClickUrl(), "d");
                if (strN != null && strN.length() != 0) {
                    String strI = hSCommonUtils.i(strN, b);
                    ikd.b().d(c, "current ad realLandUrl is " + strI);
                    adsDTO.setRealLandUrl(strI);
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            ikd.b().w(c, "checkAdPreloadEnableAndGetRealLandurl error: " + th.getMessage());
            return false;
        }
    }

    public final void l(final Context context, final AdsDTO adsDTO) {
        y45.j(context, "context");
        y45.j(adsDTO, "adsDTO");
        HSScopeHelper.a.p(new Runnable() {
            @Override
            public final void run() {
                atd.i(adsDTO, context);
            }
        });
    }
}
