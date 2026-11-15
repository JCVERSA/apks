package com.doman.core.d;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Patterns;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.doman.core.CoreMain;
import com.doman.core.webview.WsWebView;

public class p {
    private static p a;

    public class AnonymousClass3 implements Runnable {
        final Activity a;
        final boolean b;
        final String c;
        final com.doman.core.a.j d;
        final String e;

        public AnonymousClass3(Activity activity, boolean z, String str, com.doman.core.a.j jVar, String str2) {
            this.a = activity;
            this.b = z;
            this.c = str;
            this.d = jVar;
            this.e = str2;
        }

        @Override
        public final void run() {
            if (f.a()) {
                try {
                    new WsWebView(this.a);
                } catch (Throwable unused) {
                }
                try {
                    Activity activity = this.a;
                    if (activity == null || activity.isFinishing() || !this.b || !p.b(this.c)) {
                        return;
                    }
                    final ViewGroup viewGroup = (ViewGroup) this.a.findViewById(R.id.content);
                    final FrameLayout frameLayout = (FrameLayout) this.a.getLayoutInflater().inflate(com.doman.core.R.layout.ad, (ViewGroup) null);
                    o.b(viewGroup, frameLayout);
                    o.a(viewGroup, frameLayout);
                    WindowManager windowManager = this.a.getWindowManager();
                    int width = windowManager.getDefaultDisplay().getWidth();
                    int height = windowManager.getDefaultDisplay().getHeight();
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(frameLayout.getLayoutParams());
                    int i = width + height;
                    if (width < height) {
                        layoutParams.width = width;
                        layoutParams.height = height;
                    } else {
                        layoutParams.width = height;
                        layoutParams.height = width;
                    }
                    frameLayout.setLayoutParams(layoutParams);
                    final WsWebView wsWebView = (WsWebView) frameLayout.findViewById(com.doman.core.R.id.webview);
                    com.doman.core.webview.a.a().a(wsWebView);
                    if (this.d.h) {
                        com.doman.core.webview.a.a();
                        com.doman.core.webview.a.b();
                    }
                    wsWebView.setVisibility(4);
                    frameLayout.setVisibility(4);
                    if (i <= 0 || i <= width || i <= height) {
                        i = 8000;
                    }
                    frameLayout.animate().translationX(i);
                    if (!TextUtils.isEmpty(this.e)) {
                        wsWebView.getSettings().setUserAgentString(this.e);
                    }
                    wsWebView.getSettings().getUserAgentString();
                    wsWebView.setWebChromeClient(new WebChromeClient() {
                        private String b = "WsWebChromeClient";

                        @Override
                        public final void onProgressChanged(WebView webView, int i2) {
                            super.onProgressChanged(webView, i2);
                        }

                        @Override
                        public final void onReceivedTitle(WebView webView, String str) {
                            super.onReceivedTitle(webView, str);
                        }
                    });
                    wsWebView.setWebViewClient(new WebViewClient() {
                        @Override
                        public final void onPageFinished(WebView webView, String str) {
                            super.onPageFinished(webView, str);
                            wsWebView.setVisibility(0);
                            frameLayout.setVisibility(0);
                        }

                        @Override
                        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                            super.onPageStarted(webView, str, bitmap);
                        }

                        @Override
                        public final void onReceivedError(WebView webView, int i2, String str, String str2) {
                            super.onReceivedError(webView, i2, str, str2);
                        }

                        @Override
                        public final boolean shouldOverrideUrlLoading(WebView webView, final String str) {
                            try {
                                if (!f.a() || !j.a(str, AnonymousClass3.this.d.g)) {
                                    return false;
                                }
                                CoreMain.mhandler.postDelayed(new Runnable() {
                                    @Override
                                    public final void run() {
                                        a.c(AnonymousClass3.this.a, str);
                                    }
                                }, AnonymousClass3.this.d.c);
                                g.a("BRWS", "shouldOverrideUrlLoading nocontain :".concat(String.valueOf(str)));
                                return false;
                            } catch (Throwable unused2) {
                                return false;
                            }
                        }
                    });
                    if (f.a()) {
                        p.a(wsWebView, this.c);
                        n.a(new Runnable() {
                            @Override
                            public final void run() {
                                try {
                                    Thread.sleep(AnonymousClass3.this.d.i);
                                    p.a(p.this, wsWebView, viewGroup, frameLayout);
                                } catch (Exception unused2) {
                                }
                            }
                        });
                    }
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public static p a() {
        if (a == null) {
            synchronized (p.class) {
                try {
                    if (a == null) {
                        a = new p();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    private static Context b() {
        Activity resumeActivity = CoreMain.getInstance().getResumeActivity();
        return resumeActivity == null ? CoreMain.getInstance().getContext() : resumeActivity;
    }

    public static void a(com.doman.core.a.j jVar) {
        String str;
        String str2;
        p pVarA = a();
        String str3 = jVar.f;
        String str4 = jVar.d;
        boolean zIsAppOnForeground = CoreMain.isAppOnForeground(CoreMain.getInstance().getContext());
        Activity resumeActivity = CoreMain.getInstance().getResumeActivity();
        if (resumeActivity == null) {
            str = com.doman.core.webview.c.aq;
            str2 = "player page is null";
        } else if (resumeActivity.isFinishing()) {
            str = com.doman.core.webview.c.aq;
            str2 = "player page is finished";
        } else {
            if (zIsAppOnForeground) {
                if (TextUtils.isEmpty(str3) || !f.a()) {
                    return;
                }
                CoreMain.mhandler.post(pVarA.new AnonymousClass3(resumeActivity, zIsAppOnForeground, str3, jVar, str4));
                return;
            }
            str = com.doman.core.webview.c.aq;
            str2 = "app is not on";
        }
        com.doman.core.webview.c.a(str, str2);
    }

    public static void b(String str, String str2) {
        if (j.a(str, str2)) {
            Context contextB = b();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            a.a(contextB, new Intent("android.intent.action.VIEW", Uri.parse(str)));
        }
    }

    public static void a(p pVar, final WsWebView wsWebView, final ViewGroup viewGroup, final FrameLayout frameLayout) {
        CoreMain.mhandler.post(new Runnable() {
            @Override
            public final void run() {
                frameLayout.setVisibility(8);
                o.b(viewGroup, frameLayout);
                p.a(wsWebView);
            }
        });
    }

    public static boolean b(String str) {
        try {
            return URLUtil.isValidUrl(str) && Patterns.WEB_URL.matcher(str).matches();
        } catch (Exception unused) {
        }
    }

    public static void a(WsWebView wsWebView) {
        g.a("BRWS", "distoryWebView distoryWebView 1");
        if (wsWebView == null) {
            g.a("BRWS", "distoryWebView distoryWebView 2");
        } else {
            try {
                wsWebView.destroy();
            } catch (Exception unused) {
            }
        }
    }

    public static void a(WsWebView wsWebView, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        wsWebView.loadUrl(str);
    }

    public static void a(String str, String str2) {
        Context contextB;
        if (!j.a(str, str2) || (contextB = b()) == null || a.a(contextB, str) == null) {
            return;
        }
        a.b(contextB, str);
    }
}
