package com.cloud.hisavana.sdk.common.activity;

import android.R;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.widget.webview.ActionWebView;

public class AdvertiserLinkActivity extends AppCompatActivity {

    private static final String f21146b = "AdvertiserLinkActivity";

    private ActionWebView f21147a;

    private void P() {
        if (c7.b.j() == 1) {
            setRequestedOrientation(1);
        } else if (c7.b.j() == 0) {
            setRequestedOrientation(0);
        }
    }

    public void Q(View view) {
        onBackPressed();
    }

    private void R() {
        try {
            this.f21147a = new ActionWebView(this);
            ((FrameLayout) findViewById(R$id.webview_container)).addView(this.f21147a);
        } catch (Throwable th2) {
            b4.b().e(f21146b, "create webview error: " + Log.getStackTraceString(th2));
            this.f21147a = null;
            finish();
        }
        ActionWebView actionWebView = this.f21147a;
        if (actionWebView != null) {
            actionWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
            this.f21147a.getSettings().setSupportZoom(true);
            this.f21147a.getSettings().setUseWideViewPort(true);
            this.f21147a.getSettings().setLoadWithOverviewMode(true);
            this.f21147a.getSettings().setDisplayZoomControls(true);
            this.f21147a.getSettings().setCacheMode(-1);
            this.f21147a.getSettings().setDomStorageEnabled(true);
            this.f21147a.setWebViewClient(new g7.j());
        }
    }

    private void S() {
        if (this.f21147a == null) {
            return;
        }
        String stringExtra = getIntent().getStringExtra("url");
        if (TextUtils.isEmpty(stringExtra)) {
            b4.b().w(f21146b, "url is null");
            return;
        }
        b4.b().d(f21146b, "url is: " + stringExtra);
        this.f21147a.loadUrl(stringExtra);
    }

    private void U() {
        ImageView imageView = (ImageView) findViewById(R$id.im_back);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f21287a.Q(view);
                }
            });
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        P();
        super.onCreate(bundle);
        setContentView(R$layout.activity_advertiser_link);
        View childAt = ((ViewGroup) findViewById(R.id.content)).getChildAt(0);
        if (childAt != null) {
            childAt.setFitsSystemWindows(true);
        }
        U();
        R();
        S();
    }

    @Override
    protected void onDestroy() {
        try {
            ActionWebView actionWebView = this.f21147a;
            if (actionWebView != null) {
                ViewParent parent = actionWebView.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.f21147a);
                }
                this.f21147a.stopLoading();
                this.f21147a.getSettings().setJavaScriptEnabled(false);
                this.f21147a.setWebChromeClient(null);
                this.f21147a.clearHistory();
                this.f21147a.removeAllViews();
                this.f21147a.destroy();
                this.f21147a = null;
            }
        } catch (Throwable th2) {
            b4.b().d(f21146b, Log.getStackTraceString(th2));
        }
        super.onDestroy();
    }
}
