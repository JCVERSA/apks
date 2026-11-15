package com.cloud.hisavana.sdk.common.activity;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;
import defpackage.ikd;
import defpackage.jm4;
import defpackage.r6;

public class AdvertiserLinkActivity extends AppCompatActivity {
    public static final String O = "AdvertiserLinkActivity";
    public ActionWebView N;

    private void a() {
        if (r6.n() == 1) {
            setRequestedOrientation(1);
        } else if (r6.n() == 0) {
            setRequestedOrientation(0);
        }
    }

    private void b() {
        try {
            this.N = new ActionWebView(this);
            ((FrameLayout) findViewById(R.id.webview_container)).addView(this.N);
        } catch (Throwable th) {
            ikd.b().e(O, "create webview error: " + Log.getStackTraceString(th));
            this.N = null;
            finish();
        }
        ActionWebView actionWebView = this.N;
        if (actionWebView != null) {
            actionWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
            this.N.getSettings().setSupportZoom(true);
            this.N.getSettings().setUseWideViewPort(true);
            this.N.getSettings().setLoadWithOverviewMode(true);
            this.N.getSettings().setDisplayZoomControls(true);
            this.N.getSettings().setCacheMode(-1);
            this.N.getSettings().setDomStorageEnabled(true);
            this.N.setWebViewClient(new jm4());
        }
    }

    private void c() {
        if (this.N == null) {
            return;
        }
        String stringExtra = getIntent().getStringExtra("url");
        if (TextUtils.isEmpty(stringExtra)) {
            ikd.b().w(O, "url is null");
            return;
        }
        ikd.b().d(O, "url is: " + stringExtra);
        this.N.loadUrl(stringExtra);
    }

    private void d() {
        ImageView imageView = (ImageView) findViewById(R.id.im_back);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.u(view);
                }
            });
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        a();
        super.onCreate(bundle);
        setContentView(R.layout.activity_advertiser_link);
        View childAt = ((ViewGroup) findViewById(android.R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(true);
        }
        d();
        b();
        c();
    }

    @Override
    public void onDestroy() {
        try {
            ActionWebView actionWebView = this.N;
            if (actionWebView != null) {
                ViewParent parent = actionWebView.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.N);
                }
                this.N.stopLoading();
                this.N.getSettings().setJavaScriptEnabled(false);
                this.N.setWebChromeClient(null);
                this.N.clearHistory();
                this.N.removeAllViews();
                this.N.destroy();
                this.N = null;
            }
        } catch (Throwable th) {
            ikd.b().d(O, Log.getStackTraceString(th));
        }
        super.onDestroy();
    }

    public final void u(View view) {
        onBackPressed();
    }
}
