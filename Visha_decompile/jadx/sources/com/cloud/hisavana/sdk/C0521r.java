package com.cloud.hisavana.sdk;

import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.C0521r;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.common.widget.TadmWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import defpackage.c74;
import defpackage.hvd;
import defpackage.ikd;
import defpackage.jcc;
import defpackage.s9;
import defpackage.ul4;
import defpackage.y45;
import defpackage.yi5;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;

public final class C0521r {
    public int f;
    public WebView h;
    public AdsDTO i;
    public hvd j;
    public long l;
    public boolean m;
    public final String a = "AdmHandler";
    public float b = -1.0f;
    public float c = -1.0f;
    public float d = -1.0f;
    public float e = -1.0f;
    public final yi5 g = kotlin.b.a(c.a);
    public final b k = new b();
    public long n = System.currentTimeMillis();

    public interface a {
        void a(String str, int i);

        boolean a(String str);
    }

    public static final class b implements a {
        public b() {
        }

        @Override
        public boolean a(String str) {
            y45.j(str, "url");
            return C0521r.this.k(str);
        }

        @Override
        public void a(String str, int i) {
            hvd hvdVar = C0521r.this.j;
            if (hvdVar != null) {
                hvdVar.a(str, i);
            }
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Ljcc;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "()Ljcc;"}, k = 3, mv = {1, 9, 0})
    public static final class c extends Lambda implements c74 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override
        public final jcc invoke() {
            return new jcc(ul4.a());
        }
    }

    public static final boolean g(C0521r c0521r, AdsDTO adsDTO, TadmWebView tadmWebView, View view, MotionEvent motionEvent) {
        y45.j(c0521r, "this$0");
        y45.j(adsDTO, "$mAdBean");
        y45.j(tadmWebView, "$admWebView");
        if (motionEvent != null) {
            c0521r.i().onTouchEvent(motionEvent);
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1 && (!c0521r.m || c0521r.l == 0 || System.currentTimeMillis() - c0521r.l > 200)) {
                    c0521r.d = motionEvent.getX();
                    c0521r.e = motionEvent.getY();
                    c0521r.l = System.currentTimeMillis();
                    ikd.b().d(c0521r.a, "simulateClickByCoordinate,isADXI01Style->" + c0521r.m + ",mAdBean.isAdmNormalClick() ->" + adsDTO.isAdmNormalClick() + ",mGestureDetector.isClicked -> " + c0521r.i().a());
                    if (c0521r.m) {
                        HSCommonUtils.a.v(tadmWebView);
                    }
                    if (c0521r.i().a() && !adsDTO.isAdmNormalClick()) {
                        c0521r.f(false);
                    }
                }
            } else if (!c0521r.m || c0521r.l == 0 || System.currentTimeMillis() - c0521r.l > 200) {
                c0521r.b = motionEvent.getX();
                c0521r.c = motionEvent.getY();
            }
        }
        return false;
    }

    public final void c() {
        WebView webView = this.h;
        if (webView != null) {
            try {
                webView.clearHistory();
                webView.clearCache(true);
                webView.loadUrl("about:blank");
                webView.freeMemory();
                webView.destroy();
            } catch (Exception unused) {
            }
        }
        this.h = null;
        if (this.m) {
            s9.a.d(this.n);
        }
        this.j = null;
    }

    public final void d(final TadmWebView tadmWebView, final AdsDTO adsDTO, hvd hvdVar) {
        y45.j(tadmWebView, "admWebView");
        y45.j(adsDTO, "mAdBean");
        y45.j(hvdVar, "loadAdmListener");
        tadmWebView.addJavascriptInterface(new c0(this.k), "loadError");
        tadmWebView.setWebViewClient(new d0(this.k));
        tadmWebView.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return C0521r.g(this.b, adsDTO, tadmWebView, view, motionEvent);
            }
        });
        this.i = adsDTO;
        this.j = hvdVar;
        this.f = 0;
    }

    public final void e(String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    s9.a.g(this.n, str);
                }
            } catch (Throwable unused) {
                return;
            }
        }
        hvd hvdVar = this.j;
        if (hvdVar != null) {
            hvdVar.a();
        }
    }

    public final void f(boolean z) {
        hvd hvdVar = this.j;
        this.f = hvdVar != null ? hvdVar.a(this.b, this.c, this.d, this.e, z) : 0;
    }

    public final jcc i() {
        return (jcc) this.g.getValue();
    }

    public final void j(boolean z) {
        this.m = z;
    }

    public final boolean k(String str) {
        AdsDTO adsDTO;
        if (!i().a()) {
            return false;
        }
        int i = this.f;
        if (i == 0) {
            AdsDTO adsDTO2 = this.i;
            if (adsDTO2 != null) {
                adsDTO2.setClickUrl(str);
            }
            AdsDTO adsDTO3 = this.i;
            if (adsDTO3 != null) {
                adsDTO3.setUpdateClickUrl(true);
            }
            f(true);
        } else if (i == -1 || (i == 5 && (adsDTO = this.i) != null && adsDTO.isJumpToHalfscreen())) {
            if (this.m) {
                e(str);
            } else {
                if (this.h == null) {
                    try {
                        WebView webView = new WebView(ul4.a());
                        this.h = webView;
                        webView.setWebViewClient(new WebViewClient());
                        WebView webView2 = this.h;
                        WebSettings settings = webView2 != null ? webView2.getSettings() : null;
                        if (settings != null) {
                            settings.setJavaScriptEnabled(true);
                        }
                    } catch (Exception unused) {
                        ikd.b().w(this.a, "create web view error");
                    }
                }
                WebView webView3 = this.h;
                if (webView3 != null) {
                    webView3.loadUrl(str);
                }
            }
        }
        return true;
    }
}
