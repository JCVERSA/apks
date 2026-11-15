package defpackage;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.blankj.utilcode.util.LogUtils;
import com.just.agentweb.AgentWeb;
import com.just.agentweb.AgentWebConfig;
import com.just.agentweb.DefaultWebClient;
import com.just.agentweb.IAgentWebSettings;
import com.just.agentweb.PermissionInterceptor;
import com.just.agentweb.WebChromeClient;
import com.just.agentweb.WebViewClient;
import com.just.agentweb.jsbridge.BridgeWebView;
import com.transsion.onlinevideo.R;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.vishaweb.IWebLoadStatusCallback;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.apache.commons.lang3.BooleanUtils;

public class al4 {
    public static final String i = "visha_" + al4.class.getSimpleName();
    public AgentWeb a;
    public IWebLoadStatusCallback b;
    public Activity c;
    public WebView d;
    public String e;
    public WebViewClient f = new a();
    public WebChromeClient g = new c();
    public PermissionInterceptor h = new PermissionInterceptor() {
        @Override
        public final boolean intercept(String str, String[] strArr, String str2) {
            return al4.m(str, strArr, str2);
        }
    };

    public class b extends lfc {
        public b() {
        }

        @Override
        public void bindAgentWebSupport(AgentWeb agentWeb) {
            this.mAgentWeb = agentWeb;
        }
    }

    public class c extends WebChromeClient {
        public c() {
        }

        @Override
        public Bitmap getDefaultVideoPoster() {
            return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        }

        @Override
        public View getVideoLoadingProgressView() {
            return null;
        }

        @Override
        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
            if (al4.this.b != null) {
                al4.this.b.A(webView, i);
            }
        }

        @Override
        public void onReceivedIcon(WebView webView, Bitmap bitmap) {
            super.onReceivedIcon(webView, bitmap);
            if (al4.this.b != null) {
                al4.this.b.C(webView, bitmap);
            }
        }

        @Override
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            if (al4.this.b != null) {
                al4.this.b.o(webView, str);
            }
        }

        @Override
        public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
            super.onReceivedTouchIconUrl(webView, str, z);
            if (al4.this.b != null) {
                al4.this.b.l(webView, str);
            }
        }
    }

    public static al4 g(String str) {
        al4 al4Var = new al4();
        al4Var.e = str;
        return al4Var;
    }

    public static boolean m(String str, String[] strArr, String str2) {
        return false;
    }

    public boolean e() {
        return l() ? this.d.canGoBack() : this.a.getWebCreator().getWebView().canGoBack();
    }

    public void f(Activity activity, ViewGroup viewGroup, int i2, ViewGroup.LayoutParams layoutParams) {
        this.c = activity;
        if (ge.e()) {
            AgentWebConfig.debug();
        }
        BridgeWebView bridgeWebView = new BridgeWebView(this.c);
        this.d = bridgeWebView;
        bridgeWebView.setBackgroundColor(this.c.getResources().getColor(R.color.transparent, this.c.getTheme()));
        u(this.d);
        this.a = AgentWeb.with(this.c).setAgentWebParent(viewGroup, i2, layoutParams).useDefaultIndicator(this.c.getResources().getColor(R.color.sniffer_web_progress_color, null), this.c.getResources().getColor(R.color.sniffer_web_progress_bg_color, null), 2).setWebLayout(null).setWebView(this.d).setAgentWebWebSettings(h()).setWebViewClient(this.f).setWebChromeClient(this.g).setPermissionInterceptor(this.h).setSecurityType(AgentWeb.SecurityType.STRICT_CHECK).setAgentWebUIController(new jeb(this.c)).setOpenOtherPageWays(DefaultWebClient.OpenOtherPageWays.DERECT).createAgentWeb().ready().go(i());
    }

    public IAgentWebSettings h() {
        return new b();
    }

    public String i() {
        return TextUtils.isEmpty(this.e) ? "https://www.google.com" : this.e;
    }

    public WebView j() {
        return l() ? this.d : this.a.getWebCreator().getWebView();
    }

    public void k() {
        if (l()) {
            this.d.goBack();
        } else {
            this.a.getWebCreator().getWebView().goBack();
        }
    }

    public final boolean l() {
        AgentWeb agentWeb = this.a;
        boolean z = agentWeb == null || agentWeb.getWebCreator().getWebView() == null;
        if (z && this.d == null) {
            Context contextF = this.c;
            if (contextF == null) {
                contextF = MainApp.f();
            }
            this.d = new BridgeWebView(contextF);
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v4 */
    public final void n(int[] iArr, View view, String str) {
        ?? r5 = ("1".equals(str) || BooleanUtils.TRUE.equalsIgnoreCase(str)) ? 1 : 0;
        iArr[0] = r5;
        s(view, r5);
    }

    public final boolean o(float[] fArr, float[] fArr2, boolean[] zArr, final int[] iArr, int i2, WebView webView, final View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            fArr[0] = motionEvent.getX();
            fArr2[0] = motionEvent.getY();
            zArr[0] = false;
            iArr[0] = -1;
            s(view, true);
        } else if (actionMasked == 2) {
            if (zArr[0]) {
                int i3 = iArr[0];
                if (i3 == 1) {
                    s(view, true);
                } else if (i3 == 0) {
                    s(view, false);
                }
            } else {
                float x = motionEvent.getX() - fArr[0];
                float y = motionEvent.getY() - fArr2[0];
                if (Math.abs(x) > i2 && Math.abs(x) > Math.abs(y)) {
                    zArr[0] = true;
                    s(view, true);
                    float scale = webView.getScale();
                    if (scale <= 0.0f) {
                        scale = 1.0f;
                    }
                    webView.evaluateJavascript("(window.__visha_canScrollXLast?window.__visha_canScrollXLast(" + x + "):(window.__visha_canScrollX?window.__visha_canScrollX(" + (motionEvent.getX() / scale) + StringUtils.COMMA + (motionEvent.getY() / scale) + StringUtils.COMMA + x + "):1))", new ValueCallback() {
                        @Override
                        public final void onReceiveValue(Object obj) {
                            this.a.n(iArr, view, (String) obj);
                        }
                    });
                }
            }
        } else if (actionMasked == 1 || actionMasked == 3) {
            s(view, false);
            zArr[0] = false;
            iArr[0] = -1;
        }
        return false;
    }

    public void p() {
        AgentWeb agentWeb = this.a;
        if (agentWeb != null) {
            agentWeb.destroy();
        }
    }

    public void q() {
        AgentWeb agentWeb = this.a;
        if (agentWeb != null) {
            agentWeb.onPause();
        }
    }

    public void r() {
        AgentWeb agentWeb = this.a;
        if (agentWeb != null) {
            agentWeb.onResume();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void s(View view, boolean z) {
        for (ViewParent parent = view.getParent(); parent != 0; parent = ((View) parent).getParent()) {
            parent.requestDisallowInterceptTouchEvent(z);
            if (!(parent instanceof View)) {
                return;
            }
        }
    }

    public void t(IWebLoadStatusCallback iWebLoadStatusCallback) {
        this.b = iWebLoadStatusCallback;
    }

    public final void u(final WebView webView) {
        final int scaledTouchSlop = ViewConfiguration.get(this.c).getScaledTouchSlop();
        final float[] fArr = new float[1];
        final float[] fArr2 = new float[1];
        final boolean[] zArr = new boolean[1];
        final int[] iArr = new int[1];
        webView.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.o(fArr, fArr2, zArr, iArr, scaledTouchSlop, webView, view, motionEvent);
            }
        });
    }

    public class a extends WebViewClient {
        public a() {
        }

        @Override
        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
            if (al4.this.b != null) {
                al4.this.b.z(webView, str);
            }
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            LogUtils.j(al4.i, "onPageFinished_url:" + str, "webview_geturl:" + webView.getUrl());
            super.onPageFinished(webView, str);
            webView.evaluateJavascript("(function(){if(window.__visha_canScrollXLast){return;}window.__visha_lastTouch={x:0,y:0};var save=function(x,y){try{window.__visha_lastTouch.x=x;window.__visha_lastTouch.y=y;}catch(e){}};var onTouch=function(e){try{var t=(e.touches&&e.touches[0])||(e.changedTouches&&e.changedTouches[0]);if(t){save(t.clientX,t.clientY);}}catch(ex){}};var onPointer=function(e){try{if(e&&typeof e.clientX==='number'){save(e.clientX,e.clientY);}}catch(ex){}};document.addEventListener('touchstart',onTouch,true);document.addEventListener('touchmove',onTouch,true);document.addEventListener('pointerdown',onPointer,true);document.addEventListener('pointermove',onPointer,true);var nameMatch=function(s){try{return !!(s && /swiper|slick|carousel|banner|slider|flickity|owl|splide|glide|keen|embla/i.test(s));}catch(e){return false;}};var attrMatch=function(el){try{if(!el||!el.getAttribute){return false;}var a=['data-swiper','data-slick','data-flickity','data-carousel','data-slider','data-banner','data-owl','data-splide','data-glide','data-keen','data-embla'];for(var i=0;i<a.length;i++){var v=el.getAttribute(a[i]);if(v!=null){return true;}}var role=el.getAttribute('role')||'';var ard=el.getAttribute('aria-roledescription')||'';if(role && /tablist|listbox|region/i.test(role) && ard && /carousel|slider/i.test(ard)){return true;}return false;}catch(e){return false;}};var maybeCarouselByStyle=function(el){try{if(!el){return false;}var st=window.getComputedStyle(el);if(!st){return false;}var ta=(st.touchAction||st.getPropertyValue('touch-action')||'');if(ta && /pan-x|none/i.test(ta)){return true;}var tf=(st.transform||'');var wc=(st.willChange||'');if((tf && tf!=='none') || (wc && /transform/i.test(wc))){if((el.children&&el.children.length>1) || (el.childElementCount&&el.childElementCount>1)){return true;}}return false;}catch(e){return false;}};window.__visha_canScrollX=function(x,y,dx){try{var el=document.elementFromPoint(x,y);var desired=(dx<0)?1:-1;while(el){var cls=(function(e){try{return (e&&e.className&&e.className.toString)?e.className.toString():'';}catch(ex){return '';} })(el);var id=(function(e){try{return e&&e.id?String(e.id):'';}catch(ex){return '';} })(el);if(nameMatch(cls) || nameMatch(id) || attrMatch(el) || maybeCarouselByStyle(el)){return 1;}var style=window.getComputedStyle(el);var overflowX=style?style.overflowX:'';var can=(overflowX==='auto'||overflowX==='scroll');if(can && el.scrollWidth>el.clientWidth+1){if(desired>0){if(el.scrollLeft<el.scrollWidth-el.clientWidth-1){return 1;}}else{if(el.scrollLeft>1){return 1;}}}el=el.parentElement;}}catch(e){}return 0;};window.__visha_canScrollXLast=function(dx){try{var p=window.__visha_lastTouch||{x:0,y:0};return window.__visha_canScrollX(p.x,p.y,dx);}catch(e){return 1;}};})();", null);
            if (al4.this.b != null) {
                al4.this.b.onPageFinished(webView, str);
            }
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            LogUtils.j(al4.i, "onPageStarted_url:" + str);
            super.onPageStarted(webView, str, bitmap);
            if (al4.this.b != null) {
                al4.this.b.g(webView, str, bitmap);
            }
        }

        @Override
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (al4.this.b != null) {
                al4.this.b.B(webView, webResourceRequest, webResourceError);
            }
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            return true;
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            LogUtils.j(al4.i, "shouldOverrideUrlLoading url=", webResourceRequest.getUrl());
            return super.shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            LogUtils.j(al4.i, "shouldOverrideUrlLoading url=", str);
            return false;
        }
    }
}
