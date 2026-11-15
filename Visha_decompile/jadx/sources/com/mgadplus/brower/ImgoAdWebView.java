package com.mgadplus.brower;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.model.InteractDeviceInfo;
import defpackage.d2d;
import defpackage.fyd;
import defpackage.h2d;
import defpackage.mbd;
import defpackage.mpd;
import defpackage.o7d;
import defpackage.ted;
import defpackage.y9d;
import defpackage.z9d;
import java.lang.reflect.Type;

public class ImgoAdWebView extends BaseWebView implements View.OnTouchListener {
    public static String u;
    public Activity b;
    public mbd c;
    public ted d;
    public boolean l;
    public o7d m;
    public y9d n;
    public z9d o;
    public z9d p;
    public z9d q;
    public z9d r;
    public boolean s;
    public boolean t;

    public class a implements d2d {
        public a() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                z9dVar.a(ImgoAdWebView.this.n.h());
            }
        }
    }

    public interface a0 {
    }

    public class b implements d2d {
        public b() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                ImgoAdWebView.this.n.g(str);
            }
        }
    }

    public class c implements d2d {
        public c() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                ImgoAdWebView.this.n.b(null, str);
            }
        }
    }

    public class d implements d2d {
        public d() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                ImgoAdWebView.this.n.j(str);
            }
        }
    }

    public class e implements d2d {
        public e() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
        }
    }

    public class f implements d2d {
        public f() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                ImgoAdWebView.this.n.i();
            }
            ImgoAdWebView.this.q = z9dVar;
        }
    }

    public class g implements d2d {
        public g() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
        }
    }

    public class h implements d2d {
        public h() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                z9dVar.a(ImgoAdWebView.this.n.h(str));
            }
        }
    }

    public class i implements d2d {
        public i() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            ImgoAdWebView.this.r = z9dVar;
            ImgoAdWebView.this.n.i(str);
        }
    }

    public class j implements d2d {
        public j() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
        }
    }

    public class k implements DownloadListener {
        public k() {
        }

        @Override
        public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            if (ImgoAdWebView.this.m != null) {
                ImgoAdWebView.this.m.a(str, str4);
            }
        }
    }

    public class l implements d2d {
        public l() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            ImgoAdWebView.this.p = z9dVar;
            if (ImgoAdWebView.this.n != null) {
                z9dVar.a(ImgoAdWebView.this.n.a(str));
            }
        }
    }

    public class m implements d2d {
        public m() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                z9dVar.a(ImgoAdWebView.this.n.a());
            }
        }
    }

    public class n implements d2d {
        public n() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                z9dVar.a(ImgoAdWebView.this.n.c());
            }
        }
    }

    public class o implements d2d {
        public o() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                ImgoAdWebView.this.n.b(str);
            }
        }
    }

    public class p implements d2d {
        public p() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                ImgoAdWebView.this.n.d();
            }
        }
    }

    public class q implements d2d {
        public q() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            ImgoAdWebView.this.o = z9dVar;
            if (ImgoAdWebView.this.n != null) {
                ImgoAdWebView.this.n.c(str);
            }
        }
    }

    public class r implements d2d {
        public r() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            ImgoAdWebView.this.o = z9dVar;
            if (ImgoAdWebView.this.n != null) {
                ImgoAdWebView.this.n.d(str);
            }
        }
    }

    public class s implements d2d {
        public s() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n == null || TextUtils.isEmpty(str)) {
                return;
            }
            ImgoAdWebView.this.n.e(str);
        }
    }

    public class t implements d2d {
        public t() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                ImgoAdWebView.this.n.a(null, str);
            }
        }
    }

    public class u implements d2d {
        public u() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                ImgoAdWebView.this.n.f(str);
            }
        }
    }

    public class v implements d2d {
        public v() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                z9dVar.a(ImgoAdWebView.this.n.b());
            }
        }
    }

    public class w implements d2d {
        public w() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                z9dVar.a(ImgoAdWebView.this.n.e());
            }
        }
    }

    public class x implements d2d {
        public x() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (z9dVar != null) {
                z9dVar.a(ImgoAdWebView.this.getNativeDeviceInfo());
            }
        }
    }

    public class y implements d2d {
        public y() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                z9dVar.a(ImgoAdWebView.this.n.f());
            }
        }
    }

    public class z implements d2d {
        public z() {
        }

        @Override
        public void a(String str, z9d z9dVar) {
            if (ImgoAdWebView.this.n != null) {
                z9dVar.a(ImgoAdWebView.this.n.g());
            }
        }
    }

    public ImgoAdWebView(Context context) throws Exception {
        super(context);
        this.l = true;
        this.s = false;
        a(context);
    }

    public final void a(Context context) {
        this.l = true;
        if (context instanceof Activity) {
            this.b = (Activity) context;
        } else {
            this.b = h2d.a(context);
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
        settings.setUserAgentString(mpd.E(context));
        CookieManager.getInstance().setAcceptCookie(true);
        a((WebView) this, true);
        e();
        v();
        setDownloadListener(new k());
    }

    public boolean b(String str) {
        return false;
    }

    public void c() {
        setOnTouchListener(this);
    }

    @Override
    public boolean canScrollVertically(int i2) {
        if (this.t) {
            return true;
        }
        return super.canScrollVertically(i2);
    }

    public void d() {
        setOnTouchListener(null);
    }

    public void e() {
        a("postADMonitor", new c());
        a("getMediaUrl", new l());
        a("getPluginConfig", new m());
        a("getSize", new n());
        a("openBrowser", new o());
        a("closeWebView", new p());
        a("showShareMenus", new q());
        a("shareTo", new r());
        a("switchBranch", new s());
        a("jumpPage", new t());
        a("changeFactor", new u());
        a("getBaseFolder", new v());
        a("getBranchInfo", new w());
        a("getDeviceInfo", new x());
        a("getVideoInfo", new y());
        a("getUserInfo", new z());
        a("getFactorInfo", new a());
        a("feedbackResult", new b());
        a("playNext", new d());
        a("switchBackground", new e());
        a("showLogin", new f());
        a("switchForeground", new g());
        a("pointQuery", new h());
        a("checkAuth", new i());
        a("postBigData", new j());
    }

    @Override
    public boolean g(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return super.g(webView, renderProcessGoneDetail);
    }

    public String getNativeDeviceInfo() {
        try {
            InteractDeviceInfo interactDeviceInfo = new InteractDeviceInfo();
            interactDeviceInfo.brand = mpd.b();
            interactDeviceInfo.os = com.mgmi.f.f.d();
            interactDeviceInfo.oaid = com.mgmi.f.f.m(null);
            interactDeviceInfo.osVersion = com.mgmi.f.f.d();
            interactDeviceInfo.model = mpd.e();
            interactDeviceInfo.network = com.mgmi.net.a.b();
            interactDeviceInfo.version = com.mgmi.f.f.g();
            interactDeviceInfo.appVersion = com.mgmi.f.f.g();
            interactDeviceInfo.did = com.mgmi.f.f.l(com.mgmi.ads.api.c.a());
            interactDeviceInfo.channel = com.mgmi.f.f.m();
            interactDeviceInfo.mod = mpd.e();
            interactDeviceInfo.androidid = com.mgmi.f.f.g(com.mgmi.ads.api.c.a());
            interactDeviceInfo.mf = mpd.w();
            interactDeviceInfo.f19net = String.valueOf(fyd.d(com.mgmi.ads.api.c.a()));
            interactDeviceInfo.carrier = mpd.H(com.mgmi.ads.api.c.a());
            interactDeviceInfo.pkgch = com.mgmi.platform.b.b.a().g();
            interactDeviceInfo.ch = com.mgmi.f.f.m();
            interactDeviceInfo.sver = "aphone-" + com.mgmi.f.f.d();
            interactDeviceInfo.aver = com.mgmi.f.f.e();
            return com.mgadplus.netlib.json.b.a(interactDeviceInfo, (Type) null);
        } catch (Throwable unused) {
            return "";
        }
    }

    public a0 getOnScrollChangedCallback() {
        return null;
    }

    @Override
    public void h(WebView webView, String str) {
        mbd mbdVar = this.c;
        if (mbdVar != null) {
            mbdVar.a(webView, str);
        }
        SourceKitLogger.b("ImgoAdWebView", "PageFinished =====> " + str);
        if (!getSettings().getLoadsImagesAutomatically()) {
            getSettings().setLoadsImagesAutomatically(true);
        }
        setWebTitle(getTitle());
    }

    @Override
    public void k(String str) {
        mbd mbdVar = this.c;
        if (mbdVar != null) {
            mbdVar.a(str);
        }
    }

    @Override
    public boolean l(WebView webView, String str) {
        if (this.l) {
            System.currentTimeMillis();
            if (!str.toLowerCase().contains("data:image") && !str.toLowerCase().contains("data%3aimage") && !TextUtils.isEmpty(str)) {
                if (b(str) || a(str)) {
                    return true;
                }
                try {
                    if (str.startsWith("http:") || str.startsWith("https:")) {
                        mbd mbdVar = this.c;
                        return mbdVar != null && mbdVar.b(webView, str);
                    }
                    h2d.h(this.b, str);
                    return true;
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }

    @Override
    public void loadUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        SourceKitLogger.c("ImgoAdWebView", "loadUrl =====> " + str);
        u = str;
        if (a(str)) {
            return;
        }
        try {
            super.loadUrl(u);
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        }
    }

    @Override
    public void onScrollChanged(int i2, int i3, int i4, int i5) {
        super.onScrollChanged(i2, i3, i4, i5);
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

    public void setAdProperty(boolean z2) {
        this.l = z2;
    }

    public void setHoldTouchEventSwitch(boolean z2) {
        this.t = z2;
    }

    public void setIslandpage(boolean z2) {
        this.s = z2;
    }

    public void setOnScrollChangedCallback(a0 a0Var) {
    }

    public void setWebTitle(@Nullable String str) {
        mbd mbdVar = this.c;
        if (mbdVar != null) {
            mbdVar.a(str);
        }
    }

    public void setWebViewDownloadCallBack(o7d o7dVar) {
        this.m = o7dVar;
    }

    public void setWebViewJsCallBack(y9d y9dVar) {
        this.n = y9dVar;
    }

    public void setWebViewLifeCycleCallback(mbd mbdVar) {
        this.c = mbdVar;
    }

    public void setWebViewRenderGoneCallback(ted tedVar) {
    }

    public final void v() {
    }

    @Override
    public void b(WebView webView, int i2, String str, String str2) {
        mbd mbdVar = this.c;
        if (mbdVar != null) {
            mbdVar.a(webView, i2, str, str2);
        }
    }

    @Override
    public void c(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        mbd mbdVar = this.c;
        if (mbdVar != null) {
            mbdVar.a(webView, webResourceRequest, webResourceResponse);
        }
    }

    @Override
    public void d(WebView webView, String str) {
        mbd mbdVar = this.c;
        if (mbdVar != null) {
            mbdVar.a(webView, str, (Bitmap) null);
        }
    }

    @Override
    public void b() {
        this.b = null;
        super.b();
    }

    public ImgoAdWebView(Context context, AttributeSet attributeSet) throws Exception {
        super(context, attributeSet);
        this.l = true;
        this.s = false;
        a(context);
    }

    public ImgoAdWebView(Context context, AttributeSet attributeSet, int i2) throws Exception {
        super(context, attributeSet, i2);
        this.l = true;
        this.s = false;
        a(context);
    }

    @TargetApi(21)
    public static void a(@Nullable WebView webView, boolean z2) {
        if (webView == null) {
            return;
        }
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView, z2);
    }

    public boolean a(String str) {
        mbd mbdVar = this.c;
        return mbdVar != null && mbdVar.b(str);
    }

    @Override
    public boolean a() {
        return this.s;
    }
}
