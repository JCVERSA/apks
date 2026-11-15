package com.mbridge.msdk.mbsignalcommon.webEnvCheck;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.base.b;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;

public final class a {

    private static volatile Boolean f35684a;

    private static volatile Handler f35685b;

    private static Boolean f35686c;

    class RunnableC0491a implements Runnable {

        final Context f35687a;

        RunnableC0491a(Context context) {
            this.f35687a = context;
        }

        @Override
        public void run() {
            if (a.f35684a == null) {
                try {
                    Boolean unused = a.f35684a = Boolean.valueOf(a.a(this.f35687a));
                } catch (Exception unused2) {
                    Boolean unused3 = a.f35684a = Boolean.FALSE;
                }
            }
        }
    }

    public static boolean b(Context context) {
        g gVarB;
        try {
            gVarB = h.b().b(c.m().b());
        } catch (Exception unused) {
            gVarB = null;
        }
        if (gVarB != null) {
            f35686c = Boolean.valueOf(gVarB.C0());
        } else {
            f35686c = Boolean.FALSE;
        }
        Boolean bool = f35686c;
        if (bool == null || !bool.booleanValue()) {
            return true;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            if (f35684a == null) {
                try {
                    f35684a = Boolean.valueOf(a(context));
                } catch (Exception unused2) {
                    f35684a = Boolean.FALSE;
                }
            }
            if (f35684a == null) {
                f35684a = new Boolean(false);
            }
            return f35684a.booleanValue();
        }
        if (f35684a == null && f35685b == null) {
            f35685b = new Handler(Looper.getMainLooper());
            f35685b.post(new RunnableC0491a(context));
        }
        if (f35684a == null) {
            return true;
        }
        return f35684a.booleanValue();
    }

    public static boolean a(Context context) {
        WebView webView;
        try {
            webView = new WebView(context);
            webView.setWebViewClient(new b());
        } catch (Exception unused) {
            webView = null;
        }
        if (webView == null) {
            return false;
        }
        a(webView);
        return true;
    }

    private static void a(WebView webView) {
        try {
            webView.destroy();
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                o0.b("MBWebViewChecker", "destroy webview error", e10);
            }
        }
    }
}
