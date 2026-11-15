package com.mbridge.msdk.click;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.util.HashMap;

public class o {

    private static final String f33527r = "o";

    private int f33528a;

    private int f33529b;

    private com.mbridge.msdk.setting.g f33531d;

    private f f33532e;

    private String f33533f;

    private String f33534g;

    private WebView f33535h;

    private boolean f33536i;

    private String f33537j;

    private int f33538k;

    private boolean f33540m;

    boolean f33541n;

    boolean f33542o;

    private boolean f33539l = false;

    private final Runnable f33543p = new d();

    private final Runnable f33544q = new e();

    private Handler f33530c = new Handler(Looper.getMainLooper());

    class a implements Runnable {

        final String f33545a;

        final String f33546b;

        final Context f33547c;

        a(String str, String str2, Context context) {
            this.f33545a = str;
            this.f33546b = str2;
            this.f33547c = context;
        }

        @Override
        public void run() {
            o oVar = o.this;
            oVar.a(this.f33545a, this.f33546b, this.f33547c, oVar.f33533f);
        }
    }

    class b extends WebViewClient {

        final String f33549a;

        final String f33550b;

        final Context f33551c;

        b(String str, String str2, Context context) {
            this.f33549a = str;
            this.f33550b = str2;
            this.f33551c = context;
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            try {
                webView.loadUrl("javascript:window.navigator.vibrate([]);");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            try {
                webView.loadUrl("javascript:window.navigator.vibrate([]);");
                if (o.this.f33540m) {
                    o.this.f33538k = 0;
                    o.this.f();
                    return;
                }
                o.this.f33542o = false;
                if (webView.getTag() == null) {
                    webView.setTag("has_first_started");
                } else {
                    o.this.f33541n = true;
                }
                synchronized (o.f33527r) {
                    try {
                        o.this.f33533f = str;
                        if (o.this.f33532e == null || !o.this.f33532e.a(str)) {
                            o.this.h();
                        } else {
                            o.this.f33540m = true;
                            o.this.f();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            synchronized (o.f33527r) {
                o.this.f33540m = true;
                o.this.b();
                o.this.f();
            }
            if (o.this.f33532e != null) {
                o.this.f33532e.a(i10, webView.getUrl(), str, o.this.f33537j);
            }
        }

        @Override
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            try {
                if (MBridgeConstans.IS_SP_CBT_CF && sslErrorHandler != null) {
                    sslErrorHandler.cancel();
                }
                if (TextUtils.isEmpty(this.f33549a) || TextUtils.isEmpty(this.f33550b)) {
                    return;
                }
                new com.mbridge.msdk.foundation.same.report.h(this.f33551c).a(this.f33550b, this.f33549a, webView.getUrl());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            try {
                synchronized (o.f33527r) {
                    o.this.f33540m = true;
                    o.this.b();
                    o.this.f();
                }
                if (o.this.f33532e != null) {
                    o.this.f33532e.a(-1, webView.getUrl(), "WebView render process crash.", o.this.f33537j);
                }
                if (webView != null) {
                    webView.destroy();
                }
                return true;
            } catch (Throwable th2) {
                o0.b(o.f33527r, th2.getMessage());
                return true;
            }
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            synchronized (o.f33527r) {
                try {
                    o oVar = o.this;
                    oVar.f33542o = true;
                    oVar.c();
                    if (o.this.f33540m) {
                        o.this.d();
                        o.this.f();
                        return true;
                    }
                    o.this.f33533f = str;
                    if (o.this.f33532e != null && o.this.f33532e.c(str)) {
                        o.this.f33540m = true;
                        o.this.d();
                        o.this.f();
                        return true;
                    }
                    if (o.this.f33536i) {
                        HashMap map = new HashMap();
                        if (o.this.f33535h.getUrl() != null) {
                            map.put("Referer", o.this.f33535h.getUrl());
                        }
                        o.this.f33535h.loadUrl(str, map);
                    } else {
                        o.this.f33535h.loadUrl(str);
                    }
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    class c extends WebChromeClient {
        c() {
        }

        @Override
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return true;
        }

        @Override
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            return true;
        }

        @Override
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            return true;
        }

        @Override
        public void onProgressChanged(WebView webView, int i10) {
            if (i10 == 100) {
                try {
                    webView.loadUrl("javascript:window.navigator.vibrate([]);");
                    if (!o.this.f33540m) {
                        o oVar = o.this;
                        if (!oVar.f33542o) {
                            oVar.g();
                        }
                    }
                    if (o.this.f33532e != null) {
                        o.this.f33532e.b(webView.getUrl());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override
        public void run() {
            o.this.f33539l = true;
            o.this.f33538k = 1;
            o.this.e();
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override
        public void run() {
            o.this.f33539l = true;
            o.this.f33538k = 2;
            o.this.e();
        }
    }

    interface f {
        void a(int i10, String str, String str2, String str3);

        void a(String str, boolean z10, String str2);

        boolean a(String str);

        boolean b(String str);

        boolean c(String str);
    }

    public o() {
        this.f33528a = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
        this.f33529b = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
        com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        this.f33531d = gVarD;
        if (gVarD == null) {
            this.f33531d = com.mbridge.msdk.setting.h.b().a();
        }
        this.f33536i = this.f33531d.I0();
        this.f33528a = (int) this.f33531d.o0();
        this.f33529b = (int) this.f33531d.o0();
    }

    public void c() {
        this.f33530c.removeCallbacks(this.f33543p);
    }

    public void d() {
        this.f33530c.removeCallbacks(this.f33544q);
    }

    public void e() {
        synchronized (f33527r) {
            try {
                try {
                    b();
                    this.f33535h.destroy();
                    f fVar = this.f33532e;
                    if (fVar != null) {
                        fVar.a(this.f33533f, this.f33539l, this.f33537j);
                    }
                } catch (Exception e10) {
                    o0.b(f33527r, e10.getMessage());
                } catch (Throwable th2) {
                    o0.b(f33527r, th2.getMessage());
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public void f() {
        synchronized (f33527r) {
            try {
                try {
                    try {
                        b();
                        f fVar = this.f33532e;
                        if (fVar != null) {
                            fVar.a(this.f33533f, this.f33539l, this.f33537j);
                        }
                    } catch (Throwable th2) {
                        o0.b(f33527r, th2.getMessage());
                    }
                } catch (Exception e10) {
                    o0.b(f33527r, e10.getMessage());
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public void g() {
        c();
        i();
    }

    public void h() {
        d();
        j();
    }

    private void i() {
        this.f33530c.postDelayed(this.f33543p, this.f33529b);
    }

    private void j() {
        this.f33530c.postDelayed(this.f33544q, this.f33528a);
    }

    public void b() {
        c();
        d();
    }

    public void a(String str, String str2, Context context, String str3, String str4, f fVar) {
        if (fVar != null) {
            this.f33534g = str4;
            this.f33533f = str3;
            this.f33532e = fVar;
            a(str, str2, context);
            return;
        }
        throw new NullPointerException("OverrideUrlLoadingListener can not be null");
    }

    public void a(String str, String str2, Context context, String str3, f fVar) {
        if (fVar != null) {
            this.f33533f = str3;
            this.f33532e = fVar;
            a(str, str2, context);
            return;
        }
        throw new NullPointerException("OverrideUrlLoadingListener can not be null");
    }

    private void a(String str, String str2, Context context) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            a(str, str2, context, this.f33533f);
        } else {
            this.f33530c.post(new a(str, str2, context));
        }
    }

    public void a(String str, String str2, Context context, String str3) {
        try {
            a(context, str, str2);
            if (!TextUtils.isEmpty(this.f33534g)) {
                this.f33535h.getSettings().setDefaultTextEncodingName("utf-8");
                this.f33529b = 2000;
                this.f33528a = 2000;
                o0.c(f33527r, this.f33534g);
                this.f33535h.loadDataWithBaseURL(str3, this.f33534g, "*/*", "utf-8", str3);
                return;
            }
            if (this.f33536i) {
                HashMap map = new HashMap();
                if (this.f33535h.getUrl() != null) {
                    map.put("Referer", this.f33535h.getUrl());
                }
                this.f33535h.loadUrl(str3, map);
                return;
            }
            this.f33535h.loadUrl(str3);
        } catch (Throwable th2) {
            try {
                f fVar = this.f33532e;
                if (fVar != null) {
                    fVar.a(0, this.f33533f, th2.getMessage(), this.f33537j);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void a(Context context, String str, String str2) {
        WebView webView = new WebView(context);
        this.f33535h = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.f33535h.getSettings().setCacheMode(2);
        this.f33535h.getSettings().setLoadsImagesAutomatically(false);
        this.f33535h.setWebViewClient(new b(str2, str, context));
        this.f33535h.setWebChromeClient(new c());
    }
}
