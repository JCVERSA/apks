package com.mgtv.webview;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.hunantv.imgo.util.g;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;

public class MgSspWebView extends BaseWebView implements View.OnTouchListener {
    private static String g;
    public Activity b;
    public d c;
    private boolean h;
    private c i;
    private com.mgtv.webview.jsbridge.d j;
    private com.mgtv.webview.jsbridge.d k;
    private boolean l;
    private a m;

    public interface a {
        void a(int i, int i2, int i3, int i4);
    }

    public MgSspWebView(Context context) throws Exception {
        super(context);
        this.h = true;
        a(context);
    }

    private void e() {
    }

    public boolean b(String str) {
        return false;
    }

    @Override
    public boolean c(WebView webView, String str) {
        if (this.h) {
            System.currentTimeMillis();
            if (!str.toLowerCase().contains("data:image") && !str.toLowerCase().contains("data%3aimage") && !TextUtils.isEmpty(str)) {
                if (b(str)) {
                    return true;
                }
                if (!a(str)) {
                    try {
                        if (!str.startsWith("http:") && !str.startsWith("https:")) {
                            com.hunantv.imgo.util.a.a(this.b, new Intent("android.intent.action.VIEW", Uri.parse(str)));
                            return true;
                        }
                        d dVar = this.c;
                        if (dVar != null && dVar.b(webView, str)) {
                            return true;
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        return false;
    }

    @Override
    public boolean canScrollVertically(int i) {
        if (this.l) {
            return true;
        }
        return super.canScrollVertically(i);
    }

    public void d(String str) {
        com.mgtv.webview.jsbridge.d dVar = this.j;
        if (dVar != null) {
            dVar.a(str);
        }
    }

    @Override
    public void loadUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        g = str;
        try {
            if (a(str)) {
                return;
            }
            super.loadUrl(g);
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        a aVar = this.m;
        if (aVar != null) {
            aVar.a(i, i2, i3, i4);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0019  */
    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (action == 2) {
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (action == 3) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        return false;
    }

    public void a(d dVar) {
        this.c = dVar;
    }

    @Override
    public void b(WebView webView, String str) {
        d dVar = this.c;
        if (dVar != null) {
            dVar.a(webView, str);
        }
        if (!getSettings().getLoadsImagesAutomatically()) {
            getSettings().setLoadsImagesAutomatically(true);
        }
        c(getTitle());
    }

    public MgSspWebView(Context context, AttributeSet attributeSet) throws Exception {
        super(context, attributeSet);
        this.h = true;
        a(context);
    }

    @Override
    @RequiresApi(api = 21)
    public void a(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        d dVar = this.c;
        if (dVar != null) {
            dVar.a(webView, webResourceRequest, webResourceResponse);
        }
    }

    @Override
    public void a(WebView webView, int i, String str, String str2) {
        d dVar = this.c;
        if (dVar != null) {
            dVar.a(webView, i, str, str2);
        }
    }

    public MgSspWebView(Context context, AttributeSet attributeSet, int i) throws Exception {
        super(context, attributeSet, i);
        this.h = true;
        a(context);
    }

    @Override
    public void a(WebView webView, String str) {
        d dVar = this.c;
        if (dVar != null) {
            dVar.a(webView, str, (Bitmap) null);
        }
    }

    public String b() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("brand", com.hunantv.imgo.util.b.F());
            jSONObject.put("os", com.hunantv.imgo.util.b.q());
            jSONObject.put(CommonUrlParts.MODEL, com.hunantv.imgo.util.b.p());
            jSONObject.put("network", com.hunantv.imgo.net.c.d());
            jSONObject.put("version ", com.hunantv.imgo.util.b.e());
            jSONObject.put(DownloadFacadeEnum.USER_DID, com.hunantv.imgo.util.b.t());
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    @SuppressLint({"NewApi", "SetJavaScriptEnabled"})
    private void a(Context context) {
        this.h = true;
        if (context instanceof Activity) {
            this.b = (Activity) context;
        } else {
            this.b = com.hunantv.imgo.util.a.a(context);
        }
        WebSettings settings = getSettings();
        settings.setDefaultTextEncodingName("UTF-8");
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        settings.setSupportMultipleWindows(true);
        settings.setAllowContentAccess(true);
        settings.setDomStorageEnabled(true);
        settings.setPluginState(WebSettings.PluginState.ON);
        settings.setAllowFileAccess(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setCacheMode(-1);
        settings.setLoadsImagesAutomatically(true);
        settings.setMixedContentMode(0);
        settings.setUserAgentString(g.b(context));
        CookieManager.getInstance().setAcceptCookie(true);
        a((WebView) this, true);
        a();
        e();
    }

    public void c(@Nullable String str) {
        d dVar = this.c;
        if (dVar != null) {
            dVar.b(str);
        }
    }

    @TargetApi(21)
    public static void a(@Nullable WebView webView, boolean z) {
        if (webView == null) {
            return;
        }
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView, z);
    }

    public boolean a(String str) {
        d dVar = this.c;
        return dVar != null && dVar.a(str);
    }

    public void a(c cVar) {
        this.i = cVar;
    }

    public void a() {
        a("closeWebView", new com.mgtv.webview.jsbridge.a() {
            @Override
            public void a(String str, com.mgtv.webview.jsbridge.d dVar) {
                if (MgSspWebView.this.i != null) {
                    MgSspWebView.this.i.a();
                }
            }
        });
        a("errorMsgReport", new com.mgtv.webview.jsbridge.a() {
            @Override
            public void a(String str, com.mgtv.webview.jsbridge.d dVar) {
                MgSspWebView.this.j = dVar;
                if (MgSspWebView.this.i != null) {
                    MgSspWebView.this.i.c(str);
                }
            }
        });
        a("login", new com.mgtv.webview.jsbridge.a() {
            @Override
            public void a(String str, com.mgtv.webview.jsbridge.d dVar) {
                MgSspWebView.this.j = dVar;
                if (MgSspWebView.this.i != null) {
                    MgSspWebView.this.i.b(str);
                }
            }
        });
        a("jumpPage", new com.mgtv.webview.jsbridge.a() {
            @Override
            public void a(String str, com.mgtv.webview.jsbridge.d dVar) {
                if (MgSspWebView.this.i != null) {
                    MgSspWebView.this.i.a(str);
                }
            }
        });
        a("getDeviceInfo", new com.mgtv.webview.jsbridge.a() {
            @Override
            public void a(String str, com.mgtv.webview.jsbridge.d dVar) {
                if (dVar != null) {
                    dVar.a(MgSspWebView.this.b());
                }
            }
        });
        a("getVideoInfo", new com.mgtv.webview.jsbridge.a() {
            @Override
            public void a(String str, com.mgtv.webview.jsbridge.d dVar) {
                if (MgSspWebView.this.i != null) {
                    dVar.a(MgSspWebView.this.i.c());
                }
            }
        });
        a("getUserInfo", new com.mgtv.webview.jsbridge.a() {
            @Override
            public void a(String str, com.mgtv.webview.jsbridge.d dVar) {
                if (MgSspWebView.this.i != null) {
                    dVar.a(MgSspWebView.this.i.d());
                }
            }
        });
        a("isWebViewActive", new com.mgtv.webview.jsbridge.a() {
            @Override
            public void a(String str, com.mgtv.webview.jsbridge.d dVar) {
                if (MgSspWebView.this.i != null) {
                    dVar.a(MgSspWebView.this.i.b());
                }
            }
        });
        a("pointQuery", new com.mgtv.webview.jsbridge.a() {
            @Override
            public void a(String str, com.mgtv.webview.jsbridge.d dVar) {
                if (MgSspWebView.this.i != null) {
                    dVar.a(MgSspWebView.this.i.d(str));
                }
            }
        });
        a("checkAuth", new com.mgtv.webview.jsbridge.a() {
            @Override
            public void a(String str, com.mgtv.webview.jsbridge.d dVar) {
                MgSspWebView.this.k = dVar;
                MgSspWebView.this.i.e(str);
            }
        });
        a("postBigData", new com.mgtv.webview.jsbridge.a() {
            @Override
            public void a(String str, com.mgtv.webview.jsbridge.d dVar) {
                try {
                    com.mgtv.data.aphone.a.a.a().a(str, new com.mgtv.data.aphone.a.b.b() {
                        @Override
                        public void a(int i, int i2, String str2) {
                        }

                        @Override
                        public void a(Object obj) {
                        }
                    });
                } catch (Throwable unused) {
                }
            }
        });
    }
}
