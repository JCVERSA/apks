package com.cloud.hisavana.sdk;

import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cloud.hisavana.sdk.common.widget.TadmWebView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

public final class q {

    private int f22187f;

    private WebView f22189h;

    private AdsDTO f22190i;

    private f4 f22191j;

    private long f22193l;

    private boolean f22194m;

    private final String f22182a = "AdmHandler";

    private float f22183b = -1.0f;

    private float f22184c = -1.0f;

    private float f22185d = -1.0f;

    private float f22186e = -1.0f;

    private final Lazy f22188g = LazyKt.b(c.f22197a);

    private final b f22192k = new b();

    private long f22195n = System.currentTimeMillis();

    public interface a {
        void a(String str, int i10);

        boolean a(String str);
    }

    public static final class b implements a {
        b() {
        }

        @Override
        public boolean a(String url) {
            Intrinsics.h(url, "url");
            return q.this.k(url);
        }

        @Override
        public void a(String str, int i10) {
            f4 f4Var = q.this.f22191j;
            if (f4Var != null) {
                f4Var.a(str, i10);
            }
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lg7/n;", "a", "()Lg7/n;"}, k = 3, mv = {1, 9, 0})
    static final class c extends Lambda implements Function0<g7.n> {

        public static final c f22197a = new c();

        c() {
            super(0);
        }

        @Override
        public final g7.n invoke() {
            return new g7.n(com.cloud.sdk.commonutil.util.e.a());
        }
    }

    private final void e(String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    com.cloud.hisavana.sdk.common.util.e.f21568a.g(this.f22195n, str);
                }
            } catch (Throwable unused) {
                return;
            }
        }
        f4 f4Var = this.f22191j;
        if (f4Var != null) {
            f4Var.a();
        }
    }

    private final void f(boolean z10) {
        f4 f4Var = this.f22191j;
        this.f22187f = f4Var != null ? f4Var.b(this.f22183b, this.f22184c, this.f22185d, this.f22186e, z10) : 0;
    }

    public static final boolean g(q this$0, AdsDTO mAdBean, TadmWebView admWebView, View view, MotionEvent motionEvent) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(mAdBean, "$mAdBean");
        Intrinsics.h(admWebView, "$admWebView");
        if (motionEvent != null) {
            this$0.i().onTouchEvent(motionEvent);
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1 && (!this$0.f22194m || this$0.f22193l == 0 || System.currentTimeMillis() - this$0.f22193l > 200)) {
                    this$0.f22185d = motionEvent.getX();
                    this$0.f22186e = motionEvent.getY();
                    this$0.f22193l = System.currentTimeMillis();
                    b4.b().d(this$0.f22182a, "simulateClickByCoordinate,isADXI01Style->" + this$0.f22194m + ",mAdBean.isAdmNormalClick() ->" + mAdBean.isAdmNormalClick() + ",mGestureDetector.isClicked -> " + this$0.i().a());
                    if (this$0.f22194m) {
                        com.cloud.hisavana.sdk.common.util.r.f21605a.r(admWebView);
                    }
                    if (this$0.i().a() && !mAdBean.isAdmNormalClick()) {
                        this$0.f(false);
                    }
                }
            } else if (!this$0.f22194m || this$0.f22193l == 0 || System.currentTimeMillis() - this$0.f22193l > 200) {
                this$0.f22183b = motionEvent.getX();
                this$0.f22184c = motionEvent.getY();
            }
        }
        return false;
    }

    private final g7.n i() {
        return (g7.n) this.f22188g.getValue();
    }

    public final boolean k(String str) {
        AdsDTO adsDTO;
        if (!i().a()) {
            return false;
        }
        int i10 = this.f22187f;
        if (i10 == 0) {
            AdsDTO adsDTO2 = this.f22190i;
            if (adsDTO2 != null) {
                adsDTO2.setClickUrl(str);
            }
            AdsDTO adsDTO3 = this.f22190i;
            if (adsDTO3 != null) {
                adsDTO3.setUpdateClickUrl(true);
            }
            f(true);
        } else if (i10 == -1 || (i10 == 5 && (adsDTO = this.f22190i) != null && adsDTO.isJumpToHalfscreen())) {
            if (this.f22194m) {
                e(str);
            } else {
                if (this.f22189h == null) {
                    try {
                        WebView webView = new WebView(com.cloud.sdk.commonutil.util.e.a());
                        this.f22189h = webView;
                        webView.setWebViewClient(new WebViewClient());
                        WebView webView2 = this.f22189h;
                        WebSettings settings = webView2 != null ? webView2.getSettings() : null;
                        if (settings != null) {
                            settings.setJavaScriptEnabled(true);
                        }
                    } catch (Exception unused) {
                        b4.b().w(this.f22182a, "create web view error");
                    }
                }
                WebView webView3 = this.f22189h;
                if (webView3 != null) {
                    webView3.loadUrl(str);
                }
            }
        }
        return true;
    }

    public final void c() {
        WebView webView = this.f22189h;
        if (webView != null) {
            try {
                webView.clearHistory();
                webView.clearCache(true);
                webView.loadUrl(TmcConstants.LOAD_BASE_DATA_URL);
                webView.freeMemory();
                webView.destroy();
            } catch (Exception unused) {
            }
        }
        this.f22189h = null;
        if (this.f22194m) {
            com.cloud.hisavana.sdk.common.util.e.f21568a.d(this.f22195n);
        }
        this.f22191j = null;
    }

    public final void d(final TadmWebView admWebView, final AdsDTO mAdBean, f4 loadAdmListener) {
        Intrinsics.h(admWebView, "admWebView");
        Intrinsics.h(mAdBean, "mAdBean");
        Intrinsics.h(loadAdmListener, "loadAdmListener");
        admWebView.addJavascriptInterface(new p4(this.f22192k), "loadError");
        admWebView.setWebViewClient(new t4(this.f22192k));
        admWebView.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return q.g(this.f22214a, mAdBean, admWebView, view, motionEvent);
            }
        });
        this.f22190i = mAdBean;
        this.f22191j = loadAdmListener;
        this.f22187f = 0;
    }

    public final void j(boolean z10) {
        this.f22194m = z10;
    }
}
