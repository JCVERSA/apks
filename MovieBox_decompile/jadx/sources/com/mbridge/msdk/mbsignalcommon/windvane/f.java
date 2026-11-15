package com.mbridge.msdk.mbsignalcommon.windvane;

import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import org.json.JSONObject;

public class f {

    private static f f35731a = new f();

    private f() {
    }

    public static f a() {
        return f35731a;
    }

    public void b(Object obj, String str) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            String str2 = TextUtils.isEmpty(str) ? String.format("javascript:window.WindVane.onSuccess(%s,'');", aVar.f35714g) : String.format("javascript:window.WindVane.onSuccess(%s,'%s');", aVar.f35714g, i.a(str));
            WindVaneWebView windVaneWebView = aVar.f35709b;
            if (windVaneWebView == null || windVaneWebView.isDestoryed()) {
                return;
            }
            try {
                aVar.f35709b.loadUrl(str2);
            } catch (Exception e10) {
                e10.printStackTrace();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public void a(Object obj, String str, String str2) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            String str3 = TextUtils.isEmpty(str2) ? String.format("javascript:window.WindVane.fireEvent('%s', '');", str) : String.format("javascript:window.WindVane.fireEvent('%s','%s');", str, i.a(str2));
            WindVaneWebView windVaneWebView = aVar.f35709b;
            if (windVaneWebView == null || windVaneWebView.isDestoryed()) {
                return;
            }
            try {
                aVar.f35709b.loadUrl(str3);
            } catch (Exception e10) {
                e10.printStackTrace();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public void a(WebView webView, String str, String str2) {
        String str3;
        if (TextUtils.isEmpty(str2)) {
            str3 = String.format("javascript:window.WindVane.fireEvent('%s', '');", str);
        } else {
            str3 = String.format("javascript:window.WindVane.fireEvent('%s','%s');", str, i.a(str2));
        }
        if (webView != null) {
            if ((webView instanceof WindVaneWebView) && ((WindVaneWebView) webView).isDestoryed()) {
                return;
            }
            try {
                webView.loadUrl(str3);
            } catch (Exception e10) {
                e10.printStackTrace();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public void a(Object obj, String str) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (TextUtils.isEmpty(str)) {
                String.format("javascript:window.WindVane.onFailure(%s,'');", aVar.f35714g);
            } else {
                str = i.a(str);
            }
            String str2 = String.format("javascript:window.WindVane.onFailure(%s,'%s');", aVar.f35714g, str);
            WindVaneWebView windVaneWebView = aVar.f35709b;
            if (windVaneWebView == null || windVaneWebView.isDestoryed()) {
                return;
            }
            try {
                aVar.f35709b.loadUrl(str2);
            } catch (Exception e10) {
                e10.printStackTrace();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    public void a(WebView webView) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("api_version", "1.0.0");
            a().a(webView, com.mbridge.msdk.mbsignalcommon.base.e.f35609j, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception unused) {
            a().a(webView, com.mbridge.msdk.mbsignalcommon.base.e.f35609j, "");
        } catch (Throwable unused2) {
            a().a(webView, com.mbridge.msdk.mbsignalcommon.base.e.f35609j, "");
        }
    }
}
