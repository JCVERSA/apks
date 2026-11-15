package com.transsion.web.fragment;

import android.content.Intent;
import android.net.Uri;
import android.webkit.JavascriptInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.v;
import com.github.lzyzsd.jsbridge.BridgeWebView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.web.api.WebJavascriptInterface;
import com.transsion.web.bean.ApiRequestData;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;
import org.json.JSONObject;

public final class WebFragmentV2$addJsInterface$2 extends WebJavascriptInterface {

    final WebFragmentV2 f55900a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WebFragmentV2$addJsInterface$2(WebFragmentV2 webFragmentV2, BridgeWebView bridgeWebView) {
        super(bridgeWebView);
        this.f55900a = webFragmentV2;
    }

    public static final void A(WebFragmentV2 webFragmentV2) {
        BridgeWebView bridgeWebViewK0 = webFragmentV2.k0();
        if (bridgeWebViewK0.canGoBack()) {
            bridgeWebViewK0.goBack();
        }
    }

    public static final void B(WebFragmentV2 webFragmentV2, String str, String str2) {
        com.transsion.web.share.k kVar;
        if (webFragmentV2.getActivity() == null || (kVar = webFragmentV2.mWebShareUtil) == null) {
            return;
        }
        FragmentActivity activity = webFragmentV2.getActivity();
        Intrinsics.e(activity);
        kVar.h(activity, str, str2);
    }

    public static final void C(WebFragmentV2 webFragmentV2, String str, String str2) {
        com.transsion.web.share.k kVar = webFragmentV2.mWebShareUtil;
        if (kVar != null) {
            FragmentManager childFragmentManager = webFragmentV2.getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            kVar.k(str, str2, childFragmentManager);
        }
    }

    public static final void D(WebFragmentV2 webFragmentV2, final String str) {
        final BridgeWebView bridgeWebViewK0 = webFragmentV2.k0();
        bridgeWebViewK0.post(new Runnable() {
            @Override
            public final void run() {
                WebFragmentV2$addJsInterface$2.E(bridgeWebViewK0, str);
            }
        });
    }

    public static final void E(BridgeWebView bridgeWebView, String str) {
        try {
            bridgeWebView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static final void F(WebFragmentV2 webFragmentV2) {
        webFragmentV2.d0().f71261f.setVisibility(0);
    }

    public static final void G(String str) {
        com.tn.lib.widget.toast.core.h.f40484a.l(str);
    }

    public static final void y(WebFragmentV2 webFragmentV2) {
        FragmentActivity activity = webFragmentV2.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public static final void z(WebFragmentV2 webFragmentV2) {
        webFragmentV2.d0().f71261f.setVisibility(8);
    }

    @Override
    @JavascriptInterface
    public void close(String str, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        super.close(str, callbackId);
        FragmentActivity activity = this.f55900a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f55900a;
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    WebFragmentV2$addJsInterface$2.y(webFragmentV2);
                }
            });
        }
    }

    @Override
    @JavascriptInterface
    public void closeLoading(String str, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        super.closeLoading(str, callbackId);
        FragmentActivity activity = this.f55900a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f55900a;
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    WebFragmentV2$addJsInterface$2.z(webFragmentV2);
                }
            });
        }
    }

    @Override
    @JavascriptInterface
    public void goBack(String str, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        super.goBack(str, callbackId);
        FragmentActivity activity = this.f55900a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f55900a;
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    WebFragmentV2$addJsInterface$2.A(webFragmentV2);
                }
            });
        }
    }

    @Override
    @JavascriptInterface
    public void h5ShareNative(final String data, final String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        super.h5ShareNative(data, callbackId);
        FragmentActivity activity = this.f55900a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f55900a;
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    WebFragmentV2$addJsInterface$2.B(webFragmentV2, data, callbackId);
                }
            });
        }
    }

    @Override
    @JavascriptInterface
    public void nativeShare(final String data, final String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        super.nativeShare(data, callbackId);
        FragmentActivity activity = this.f55900a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f55900a;
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    WebFragmentV2$addJsInterface$2.C(webFragmentV2, data, callbackId);
                }
            });
        }
    }

    @Override
    @JavascriptInterface
    public void openApp(final String data, String callbackId) {
        Intrinsics.h(data, "data");
        Intrinsics.h(callbackId, "callbackId");
        super.openApp(data, callbackId);
        FragmentActivity activity = this.f55900a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f55900a;
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    WebFragmentV2$addJsInterface$2.D(webFragmentV2, data);
                }
            });
        }
    }

    @Override
    @JavascriptInterface
    public void openLoading(String str, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        super.openLoading(str, callbackId);
        FragmentActivity activity = this.f55900a.getActivity();
        if (activity != null) {
            final WebFragmentV2 webFragmentV2 = this.f55900a;
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    WebFragmentV2$addJsInterface$2.F(webFragmentV2);
                }
            });
        }
    }

    @Override
    @JavascriptInterface
    public void openToast(final String str, String callbackId) {
        FragmentActivity activity;
        Intrinsics.h(callbackId, "callbackId");
        super.openToast(str, callbackId);
        if (str == null || (activity = this.f55900a.getActivity()) == null) {
            return;
        }
        activity.runOnUiThread(new Runnable() {
            @Override
            public final void run() {
                WebFragmentV2$addJsInterface$2.G(str);
            }
        });
    }

    @Override
    @JavascriptInterface
    public void request(String str, String callbackId) {
        String api;
        String methods;
        Intrinsics.h(callbackId, "callbackId");
        super.request(str, callbackId);
        try {
            wf.a.f74274a.c(getTAG(), "request :" + str + ", callbackId:" + callbackId, true);
            ApiRequestData apiRequestDataC = lw.a.f66161a.c(str);
            if (apiRequestDataC != null && (api = apiRequestDataC.getApi()) != null && api.length() != 0 && (methods = apiRequestDataC.getMethods()) != null && methods.length() != 0) {
                String host = apiRequestDataC.getHost();
                if (host == null) {
                    host = gg.a.f61067a.a();
                }
                kotlinx.coroutines.k.d(v.a(this.f55900a), y0.b(), null, new WebFragmentV2$addJsInterface$2$request$1(apiRequestDataC, this.f55900a, host + apiRequestDataC.getApi(), this, callbackId, null), 2, null);
                return;
            }
            this.f55900a.k0().sendResponse("", callbackId);
        } catch (Throwable th2) {
            wf.a.f74274a.c(getTAG(), "requestm error :" + th2, true);
            this.f55900a.k0().sendResponse("", callbackId);
        }
    }

    @Override
    @JavascriptInterface
    public void startPage(String str, String callbackId) {
        Intrinsics.h(callbackId, "callbackId");
        super.startPage(str, callbackId);
        try {
            wf.a.f74274a.c(getTAG(), "startPage :" + str, true);
            if (str == null) {
                str = "{}";
            }
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("pageName");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("extra");
            Navigator navigatorC = TheRouter.c(strOptString);
            lw.a aVar = lw.a.f66161a;
            aVar.b(navigatorC, aVar.a(jSONObjectOptJSONObject));
            ij.k.p(navigatorC);
        } catch (Exception unused) {
        }
    }
}
