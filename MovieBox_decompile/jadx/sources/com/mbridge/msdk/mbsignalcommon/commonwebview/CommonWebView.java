package com.mbridge.msdk.mbsignalcommon.commonwebview;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.webview.ProgressBar;
import com.mbridge.msdk.mbsignalcommon.base.BaseWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import java.util.ArrayList;
import org.mvel2.ast.ASTNode;

public class CommonWebView extends LinearLayout {
    public static int DEFAULT_JUMP_TIMEOUT = 10000;

    private int f35622a;

    private int f35623b;

    protected ToolBar f35624c;

    protected ToolBar f35625d;

    protected ProgressBar f35626e;

    private RelativeLayout f35627f;

    private View.OnClickListener f35628g;

    private com.mbridge.msdk.mbsignalcommon.commonwebview.b f35629h;

    private com.mbridge.msdk.mbsignalcommon.commonwebview.a f35630i;

    protected BaseWebView f35631j;

    private View.OnClickListener f35632k;

    private View.OnClickListener f35633l;

    private View.OnClickListener f35634m;

    private View.OnClickListener f35635n;

    private Handler f35636o;

    private int f35637p;

    private WebViewClient f35638q;

    private String f35639r;

    private i f35640s;

    private boolean f35641t;

    private final Runnable f35642u;

    class a implements Runnable {
        a() {
        }

        @Override
        public void run() {
            o0.b("CommonWebView", "webview js!！超时上限：" + CommonWebView.this.f35637p + "ms");
            if (CommonWebView.this.f35640s != null) {
                CommonWebView.this.f35641t = false;
                CommonWebView.this.f35640s.a(CommonWebView.this.f35639r);
            }
        }
    }

    class b extends WebViewClient {
        b() {
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            o0.c("CommonWebView", "newProgress! 开始! = " + str);
            CommonWebView.this.f35626e.setVisible(true);
            CommonWebView.this.f35626e.setProgressState(5);
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (webView != null) {
                try {
                    ViewGroup viewGroup = (ViewGroup) webView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    if (webView instanceof WindVaneWebView) {
                        ((WindVaneWebView) webView).release();
                    } else {
                        webView.destroy();
                    }
                } catch (Throwable th2) {
                    o0.b("CommonWebView", th2.getMessage());
                }
            }
            return true;
        }
    }

    class c extends WebChromeClient {

        class a implements Runnable {
            a() {
            }

            @Override
            public void run() {
                CommonWebView.this.f35626e.setVisible(false);
            }
        }

        c() {
        }

        @Override
        public void onProgressChanged(WebView webView, int i10) {
            o0.c("CommonWebView", "newProgress! = " + i10);
            if (i10 == 100) {
                CommonWebView.this.f35626e.setProgressState(7);
                new Handler().postDelayed(new a(), 200L);
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override
        public void onClick(View view) {
            BaseWebView baseWebView = CommonWebView.this.f35631j;
            if (baseWebView != null) {
                baseWebView.stopLoading();
                String str = (String) view.getTag();
                if (TextUtils.equals(str, ToolBar.BACKWARD)) {
                    CommonWebView.this.f35625d.getItem(ToolBar.FORWARD).setEnabled(true);
                    if (CommonWebView.this.f35631j.canGoBack()) {
                        CommonWebView.this.f35631j.goBack();
                    }
                    CommonWebView.this.f35625d.getItem(ToolBar.BACKWARD).setEnabled(CommonWebView.this.f35631j.canGoBack());
                    if (CommonWebView.this.f35632k != null) {
                        CommonWebView.this.f35632k.onClick(view);
                        return;
                    }
                    return;
                }
                if (TextUtils.equals(str, ToolBar.FORWARD)) {
                    CommonWebView.this.f35625d.getItem(ToolBar.BACKWARD).setEnabled(true);
                    if (CommonWebView.this.f35631j.canGoForward()) {
                        CommonWebView.this.f35631j.goForward();
                    }
                    CommonWebView.this.f35625d.getItem(ToolBar.FORWARD).setEnabled(CommonWebView.this.f35631j.canGoForward());
                    if (CommonWebView.this.f35633l != null) {
                        CommonWebView.this.f35633l.onClick(view);
                        return;
                    }
                    return;
                }
                if (TextUtils.equals(str, ToolBar.REFRESH)) {
                    CommonWebView.this.f35625d.getItem(ToolBar.BACKWARD).setEnabled(CommonWebView.this.f35631j.canGoBack());
                    CommonWebView.this.f35625d.getItem(ToolBar.FORWARD).setEnabled(CommonWebView.this.f35631j.canGoForward());
                    CommonWebView.this.f35631j.reload();
                    if (CommonWebView.this.f35634m != null) {
                        CommonWebView.this.f35634m.onClick(view);
                        return;
                    }
                    return;
                }
                if (TextUtils.equals(str, ToolBar.EXITS)) {
                    if (CommonWebView.this.f35628g != null) {
                        CommonWebView.this.f35628g.onClick(view);
                    }
                } else if (TextUtils.equals(str, ToolBar.OPEN_BY_BROWSER)) {
                    if (CommonWebView.this.f35635n != null) {
                        CommonWebView.this.f35635n.onClick(view);
                    }
                    com.mbridge.msdk.click.c.c(CommonWebView.this.getContext(), CommonWebView.this.f35631j.getUrl());
                }
            }
        }
    }

    class e extends WebViewClient {
        e() {
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            CommonWebView.this.f35625d.getItem(ToolBar.BACKWARD).setEnabled(true);
            CommonWebView.this.f35625d.getItem(ToolBar.FORWARD).setEnabled(false);
            return false;
        }
    }

    class f extends WebViewClient {
        f() {
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (s0.a.b(str)) {
                s0.a.a(CommonWebView.this.getContext(), str, null);
            }
            return CommonWebView.this.a(webView, str);
        }
    }

    class g extends WebViewClient {
        g() {
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
            CommonWebView.this.f35641t = false;
            CommonWebView.this.a();
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            CommonWebView.this.f35639r = str;
            if (CommonWebView.this.f35641t) {
                return;
            }
            CommonWebView.this.f35641t = true;
            CommonWebView.this.c();
        }

        @Override
        public void onReceivedError(WebView webView, int i10, String str, String str2) {
            CommonWebView.this.f35641t = false;
            CommonWebView.this.a();
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            CommonWebView.this.f35639r = str;
            if (CommonWebView.this.f35641t) {
                CommonWebView.this.a();
            }
            CommonWebView.this.f35641t = true;
            CommonWebView.this.c();
            return false;
        }
    }

    public interface h {
        void a();
    }

    public interface i {
        void a(String str);
    }

    public CommonWebView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f35642u = new a();
        init();
    }

    public void addWebChromeClient(WebChromeClient webChromeClient) {
        this.f35630i.a(webChromeClient);
    }

    public void addWebViewClient(WebViewClient webViewClient) {
        this.f35629h.a(webViewClient);
    }

    public View findToolBarButton(String str) {
        ToolBar toolBar;
        ToolBar toolBar2 = this.f35624c;
        View item = toolBar2 != null ? toolBar2.getItem(str) : null;
        return (item != null || (toolBar = this.f35625d) == null) ? item : toolBar.getItem(str);
    }

    public String getUrl() {
        BaseWebView baseWebView = this.f35631j;
        return baseWebView == null ? "" : baseWebView.getUrl();
    }

    public WebView getWebView() {
        return this.f35631j;
    }

    public void hideCustomizedToolBar() {
        ToolBar toolBar = this.f35624c;
        if (toolBar != null) {
            toolBar.setVisibility(8);
        }
    }

    public void hideDefaultToolBar() {
        ToolBar toolBar = this.f35625d;
        if (toolBar != null) {
            toolBar.setVisibility(8);
        }
    }

    public void hideToolBarButton(String str) {
        View viewFindToolBarButton = findToolBarButton(str);
        if (viewFindToolBarButton != null) {
            viewFindToolBarButton.setVisibility(8);
        }
    }

    public void hideToolBarTitle() {
        this.f35624c.hideTitle();
    }

    public void init() {
        setOrientation(1);
        setGravity(17);
        this.f35627f = new RelativeLayout(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 1.0f;
        addView(this.f35627f, layoutParams);
        this.f35622a = t0.a(getContext(), 40.0f);
        this.f35623b = t0.a(getContext(), 40.0f);
        this.f35629h = new com.mbridge.msdk.mbsignalcommon.commonwebview.b();
        this.f35630i = new com.mbridge.msdk.mbsignalcommon.commonwebview.a();
        initWebview();
    }

    public void initWebview() {
        try {
            if (this.f35631j == null) {
                this.f35631j = new BaseWebView(getContext());
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(10);
            this.f35631j.setLayoutParams(layoutParams);
            BaseWebView baseWebView = this.f35631j;
            com.mbridge.msdk.mbsignalcommon.base.b bVar = baseWebView.mWebViewClient;
            baseWebView.setWebViewClient(this.f35629h);
            this.f35631j.setWebChromeClient(this.f35630i);
            addWebViewClient(bVar);
        } catch (Throwable th2) {
            o0.b("CommonWebView", "webview is error", th2);
        }
        this.f35627f.addView(this.f35631j);
    }

    public void loadUrl(String str) {
        this.f35631j.loadUrl(str);
        if (this.f35638q != null) {
            c();
        }
    }

    public void onBackwardClicked(View.OnClickListener onClickListener) {
        this.f35632k = onClickListener;
    }

    public void onForwardClicked(View.OnClickListener onClickListener) {
        this.f35633l = onClickListener;
    }

    public void onOpenByBrowserClicked(View.OnClickListener onClickListener) {
        this.f35635n = onClickListener;
    }

    public void onRefreshClicked(View.OnClickListener onClickListener) {
        this.f35634m = onClickListener;
    }

    public void removeWebChromeClient(WebChromeClient webChromeClient) {
        this.f35630i.b(webChromeClient);
    }

    public void removeWebViewClient(WebViewClient webViewClient) {
        this.f35629h.b(webViewClient);
    }

    public void setCustomizedToolBarFloating() {
        ((ViewGroup) this.f35624c.getParent()).removeView(this.f35624c);
        this.f35627f.addView(this.f35624c);
    }

    public void setCustomizedToolBarUnfloating() {
        ((ViewGroup) this.f35624c.getParent()).removeView(this.f35624c);
        addView(this.f35624c, 0);
    }

    public void setExitsClickListener(View.OnClickListener onClickListener) {
        this.f35628g = onClickListener;
    }

    public void setPageLoadTimtout(int i10) {
        this.f35637p = i10;
        if (this.f35636o == null) {
            this.f35636o = new Handler(Looper.getMainLooper());
        }
        if (this.f35638q == null) {
            g gVar = new g();
            this.f35638q = gVar;
            addWebViewClient(gVar);
        }
    }

    public void setPageLoadTimtoutListener(i iVar) {
        this.f35640s = iVar;
    }

    public void setToolBarTitle(String str, int i10) {
        this.f35624c.setTitle(str, i10);
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        addWebChromeClient(webChromeClient);
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        addWebViewClient(webViewClient);
    }

    public void showCustomizedToolBar() {
        ToolBar toolBar = this.f35624c;
        if (toolBar != null) {
            toolBar.setVisibility(0);
        }
    }

    public void showDefaultToolBar() {
        ToolBar toolBar = this.f35625d;
        if (toolBar != null) {
            toolBar.setVisibility(0);
        }
    }

    public void showToolBarButton(String str) {
        View viewFindToolBarButton = findToolBarButton(str);
        if (viewFindToolBarButton != null) {
            viewFindToolBarButton.setVisibility(0);
        }
    }

    public void showToolBarTitle() {
        this.f35624c.showTitle();
    }

    public void useCustomizedToolBar(ArrayList<ToolBar.b> arrayList, boolean z10) {
        a(arrayList, z10);
    }

    public void useDeeplink() {
        addWebViewClient(new f());
    }

    public void useDefaultToolBar() {
        b();
    }

    public void useProgressBar() {
        ProgressBar progressBar = new ProgressBar(getContext());
        this.f35626e = progressBar;
        progressBar.setLayoutParams(new LinearLayout.LayoutParams(-1, 4));
        addWebViewClient(new b());
        addWebChromeClient(new c());
        addView(this.f35626e);
        this.f35626e.initResource(true);
    }

    private void b() {
        if (this.f35625d != null) {
            return;
        }
        this.f35625d = new ToolBar(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, this.f35623b);
        layoutParams.bottomMargin = 0;
        this.f35625d.setLayoutParams(layoutParams);
        this.f35625d.setBackgroundColor(-1);
        this.f35625d.setOnItemClickListener(new d());
        addWebViewClient(new e());
        addView(this.f35625d);
    }

    public void c() {
        this.f35636o.postDelayed(this.f35642u, this.f35637p);
    }

    public void setToolBarTitle(String str) {
        this.f35624c.setTitle(str);
    }

    public void useCustomizedToolBar(ArrayList<ToolBar.b> arrayList) {
        a(arrayList, false);
    }

    public CommonWebView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35642u = new a();
        init();
    }

    private void a(ArrayList<ToolBar.b> arrayList, boolean z10) {
        if (this.f35624c != null) {
            return;
        }
        ToolBar.a aVar = new ToolBar.a();
        aVar.a(40);
        aVar.b(80);
        ToolBar toolBar = new ToolBar(getContext(), aVar, arrayList);
        this.f35624c = toolBar;
        toolBar.setBackgroundColor(Color.argb(153, 255, 255, 255));
        if (z10) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f35622a);
            layoutParams.addRule(10);
            this.f35624c.setLayoutParams(layoutParams);
            this.f35627f.addView(this.f35624c);
            return;
        }
        this.f35624c.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f35622a));
        addView(this.f35624c, 0);
    }

    public CommonWebView(Context context) {
        super(context);
        this.f35642u = new a();
        init();
    }

    public boolean a(WebView webView, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Uri uri = Uri.parse(str);
            if (!uri.getScheme().equals("http") && !uri.getScheme().equals("https")) {
                if (uri.getScheme().equals("intent")) {
                    Intent uri2 = Intent.parseUri(str, 1);
                    try {
                        String str2 = uri2.getPackage();
                        if (!TextUtils.isEmpty(str2) && getContext().getPackageManager().getLaunchIntentForPackage(str2) != null) {
                            uri2.setComponent(null);
                            uri2.setSelector(null);
                            uri2.setFlags(ASTNode.DEOP);
                            getContext().startActivity(uri2);
                            return true;
                        }
                        try {
                            String stringExtra = uri2.getStringExtra("browser_fallback_url");
                            if (!TextUtils.isEmpty(stringExtra)) {
                                Uri uri3 = Uri.parse(str);
                                if (!uri3.getScheme().equals("http") && !uri3.getScheme().equals("https")) {
                                    str = stringExtra;
                                }
                                webView.loadUrl(stringExtra);
                                return false;
                            }
                        } catch (Throwable th2) {
                            o0.b("CommonWebView", th2.getMessage());
                        }
                    } catch (Throwable th3) {
                        o0.b("CommonWebView", th3.getMessage());
                    }
                    o0.b("CommonWebView", th.getMessage());
                    return false;
                }
                if (com.mbridge.msdk.click.c.d(getContext(), str)) {
                    o0.b("CommonWebView", "openDeepLink");
                    return true;
                }
                if (!TextUtils.isEmpty(str)) {
                    return !(str.startsWith("http") || str.startsWith("https"));
                }
            }
            return false;
        } catch (Throwable th4) {
            o0.b("CommonWebView", th4.getMessage());
            return false;
        }
    }

    public void a() {
        this.f35636o.removeCallbacks(this.f35642u);
    }
}
