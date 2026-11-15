package com.mgtv.ssp.activity;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import com.mgtv.ssp.R;
import com.mgtv.webview.MgSspWebView;
import com.mgtv.webview.d;

public abstract class SspBaseWebActivity extends AppCompatActivity implements View.OnClickListener {
    protected boolean a;
    protected String b;
    protected View c;
    protected View d;
    protected MgSspWebView e;
    protected View f;
    protected View g;
    protected TextView h;
    protected TextView i;

    public void b(String str) {
        if (this.h == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.h.setText(str);
    }

    private void f() {
        View view = this.d;
        if (view != null) {
            view.setOnClickListener(this);
        }
        View view2 = this.g;
        if (view2 != null) {
            view2.setOnClickListener(this);
        }
    }

    private void g() {
        View view = this.f;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public void h() {
        View view = this.f;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void a() {
    }

    public abstract int b();

    public abstract void c();

    public void d() {
        MgSspWebView mgSspWebView = this.e;
        if (mgSspWebView != null) {
            mgSspWebView.a(new d() {
                @Override
                public void a(WebView webView, String str, Bitmap bitmap) {
                    super.a(webView, str, bitmap);
                }

                @Override
                public void a(WebView webView, String str) {
                    super.a(webView, str);
                    SspBaseWebActivity.this.h();
                }

                @Override
                public void a(WebView webView, int i, String str, String str2) {
                    super.a(webView, i, str, str2);
                    SspBaseWebActivity.this.h();
                    if (TextUtils.isEmpty(str2) || !str2.equals(SspBaseWebActivity.this.b)) {
                        return;
                    }
                    SspBaseWebActivity sspBaseWebActivity = SspBaseWebActivity.this;
                    sspBaseWebActivity.b(sspBaseWebActivity.getString(R.string.load_failed));
                }

                @Override
                public void a(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                    super.a(webView, webResourceRequest, webResourceResponse);
                    SspBaseWebActivity.this.h();
                    if (webResourceRequest == null || webResourceRequest.getUrl() == null || !webResourceRequest.getUrl().toString().equals(SspBaseWebActivity.this.b)) {
                        return;
                    }
                    SspBaseWebActivity sspBaseWebActivity = SspBaseWebActivity.this;
                    sspBaseWebActivity.b(sspBaseWebActivity.getString(R.string.load_failed));
                }
            });
        }
    }

    public void e() {
        MgSspWebView mgSspWebView = this.e;
        if (mgSspWebView != null) {
            mgSspWebView.clearHistory();
            this.e.clearView();
            this.e.destroy();
            this.e = null;
        }
    }

    @Override
    public void onClick(View view) {
        String str;
        if (view.getId() != R.id.close_web) {
            if (view.getId() != R.id.error_view || (str = this.b) == null) {
                return;
            }
            a(str);
            return;
        }
        MgSspWebView mgSspWebView = this.e;
        if (mgSspWebView == null || !mgSspWebView.canGoBack()) {
            finish();
        } else {
            this.e.goBack();
        }
    }

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        try {
            Window window = getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(Color.parseColor("#000000"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        setContentView(b());
        c();
        d();
        a();
        a(this.b);
        f();
    }

    @Override
    public void onDestroy() {
        e();
        super.onDestroy();
    }

    public void a(String str) {
        if (this.e != null) {
            this.b = str;
            g();
            this.e.loadUrl(str);
            return;
        }
        b(getString(R.string.page_empty));
    }
}
