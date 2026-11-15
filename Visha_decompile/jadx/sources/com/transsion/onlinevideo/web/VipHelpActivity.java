package com.transsion.onlinevideo.web;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewStub;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.gson.Gson;
import com.just.agentweb.jsbridge.BridgeWebView;
import com.transsion.onlinevideo.OnlineBaseActivity;
import com.transsion.onlinevideo.R;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import defpackage.h27;
import defpackage.jf;
import defpackage.r0a;
import defpackage.wz5;
import java.util.Locale;

public class VipHelpActivity extends OnlineBaseActivity implements h27.b {
    public static final String U = OnlineVideoApiManager.getInstance().createBaseUrl();
    public BridgeWebView N;
    public int O;
    public int P;
    public String Q;
    public String R;
    public SeekBar S;
    public String T;

    public class a extends WebChromeClient {
        public a() {
        }

        @Override
        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
            VipHelpActivity.this.S.setProgress(i);
            VipHelpActivity.this.S.setVisibility(i == 100 ? 4 : 0);
        }
    }

    public class b extends WebViewClient {
        public b() {
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            return true;
        }
    }

    public static Intent q0(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) VipHelpActivity.class);
        intent.putExtra("title", str2);
        intent.putExtra("url", str);
        return intent;
    }

    @Override
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_vip);
        t0();
        View viewInflate = ((ViewStub) findViewById(R.id.title_bar)).inflate();
        TextView textView = (TextView) viewInflate.findViewById(R.id.title_bar_title);
        View viewFindViewById = viewInflate.findViewById(R.id.title_bar_back);
        this.S = (SeekBar) findViewById(R.id.sb_web);
        textView.setText(this.R);
        textView.setTextColor(getResources().getColor(R.color.os_text_primary_color));
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.s0(view);
            }
        });
        r0();
    }

    public final void r0() {
        BridgeWebView bridgeWebView = (BridgeWebView) findViewById(R.id.wb);
        this.N = bridgeWebView;
        WebSettings settings = bridgeWebView.getSettings();
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setDomStorageEnabled(true);
        settings.setSupportZoom(false);
        settings.setTextZoom(100);
        this.N.setGson(new Gson());
        this.N.loadUrl(this.Q);
        Log.d("VishaVip_jsNative", this.Q);
        String userAgentString = this.N.getSettings().getUserAgentString();
        this.N.setBackgroundColor(getColor(R.color.black));
        this.N.getSettings().setTextZoom(100);
        this.N.getSettings().setCacheMode(-1);
        this.N.getSettings().setUserAgentString(userAgentString + "; VISHAAPP" + jf.h(getApplicationContext()));
        this.N.setWebChromeClient(new a());
        this.N.setWebViewClient(new b());
    }

    public final void s0(View view) {
        wz5.E();
        finish();
    }

    public final void t0() {
        if (getIntent() != null) {
            StringBuilder sb = new StringBuilder("/?lang=");
            Locale locale = getResources().getConfiguration().locale;
            if (!TextUtils.isEmpty(locale.getLanguage())) {
                sb.append(locale.getLanguage());
            }
            if (!TextUtils.isEmpty(locale.getCountry())) {
                sb.append("-r");
                sb.append(locale.getCountry());
            }
            this.R = getIntent().getStringExtra("title");
            int intExtra = getIntent().getIntExtra("page", -1);
            this.O = intExtra;
            if (intExtra == 1) {
                this.Q = U + ((Object) sb);
                this.P = getIntent().getIntExtra("vip_id", -1);
                this.T = getIntent().getStringExtra("from");
            } else {
                this.Q = getIntent().getStringExtra("url");
            }
        }
        u0();
    }

    public final void u0() {
        if (r0a.g(this.Q) || !URLUtil.isNetworkUrl(this.Q)) {
            return;
        }
        String str = isDarkMode() ? "1" : "0";
        if (this.Q.contains("dark=")) {
            this.Q = this.Q.replaceAll("(dark=[^&]*)", "dark=" + str);
            return;
        }
        if (this.Q.contains("?")) {
            this.Q += "&dark=" + str;
            return;
        }
        this.Q += "?dark=" + str;
    }
}
