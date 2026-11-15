package com.transsion.xuanniao.account.help.view;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ConsoleMessage;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.webkit.ProxyConfig;
import androidx.webkit.WebSettingsCompat;
import androidx.webkit.WebViewFeature;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.NoWifiPage;
import defpackage.qp7;
import defpackage.tk7;
import defpackage.vl7;
import defpackage.wl7;
import defpackage.xj;
import defpackage.zp7;

public class WebViewActivity extends BaseActivity {
    public WebView e;
    public b f;
    public String g;
    public ProgressBar h;
    public NoWifiPage i;

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[ConsoleMessage.MessageLevel.values().length];
            a = iArr;
            try {
                iArr[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static void B0(Context context, int i, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            if (vl7.d(context, "com.android.chrome")) {
                intent.setPackage("com.android.chrome");
            }
            context.startActivity(intent);
        } catch (Exception unused) {
            Intent intent2 = new Intent(context, (Class<?>) WebViewActivity.class);
            intent2.putExtra("title", i);
            intent2.putExtra("url", str);
            context.startActivity(intent2);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R.layout.xn_activity_web_view);
            this.g = getIntent().getStringExtra("url");
            this.h = (ProgressBar) findViewById(R.id.progress_bar);
            int intExtra = getIntent().getIntExtra("title", -1);
            if (intExtra != -1) {
                getActionBar().setTitle(getString(intExtra));
            }
            getActionBar().setDisplayHomeAsUpEnabled(true);
            WebView webView = (WebView) findViewById(R.id.webView);
            this.e = webView;
            WebSettings settings = webView.getSettings();
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            settings.setSupportZoom(true);
            settings.setBuiltInZoomControls(true);
            settings.setDisplayZoomControls(false);
            settings.setCacheMode(1);
            settings.setAllowFileAccess(false);
            settings.setAllowContentAccess(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setJavaScriptEnabled(false);
            settings.setMixedContentMode(0);
            settings.setDomStorageEnabled(true);
            if (Build.VERSION.SDK_INT < 33 && WebViewFeature.isFeatureSupported(WebViewFeature.FORCE_DARK)) {
                int i = getResources().getConfiguration().uiMode & 48;
                if (i == 0 || i == 16) {
                    WebSettingsCompat.setForceDark(this.e.getSettings(), 0);
                } else if (i == 32) {
                    WebSettingsCompat.setForceDark(this.e.getSettings(), 2);
                }
            }
            this.e.setWebViewClient(new zp7(this));
            this.e.setWebChromeClient(new d(this));
            if (TextUtils.isEmpty(this.g) || !this.g.startsWith(ProxyConfig.MATCH_HTTP)) {
                return;
            }
            this.e.loadUrl(this.g);
        } catch (Exception unused) {
            finish();
        }
    }

    @Override
    public void onDestroy() {
        WebView webView = this.e;
        if (webView != null) {
            ViewParent parent = webView.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(this.e);
            }
            this.e.stopLoading();
            this.e.removeAllViews();
            this.e.destroy();
        }
        super.onDestroy();
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !this.e.canGoBack()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.e.goBack();
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void onResume() {
        NetworkCapabilities networkCapabilities;
        com.transsion.widgetslib.dialog.d dVar;
        super.onResume();
        ConnectivityManager connectivityManager = (ConnectivityManager) getApplicationContext().getSystemService("connectivity");
        if (connectivityManager != null) {
            try {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3))) {
                    NoWifiPage noWifiPage = this.i;
                    if (noWifiPage != null) {
                        noWifiPage.OppO00p(this);
                    }
                    b bVar = this.f;
                    if (bVar == null || (dVar = bVar.a) == null) {
                        return;
                    }
                    dVar.dismiss();
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.i == null) {
            NoWifiPage noWifiPage2 = new NoWifiPage(this);
            this.i = noWifiPage2;
            noWifiPage2.setReload(new qp7(this));
        }
        this.i.OppO0O0(this);
        if (this.f == null) {
            this.f = new b(this, new c(this));
        }
        com.transsion.widgetslib.dialog.d dVar2 = this.f.a;
        if (dVar2 != null ? dVar2.isShowing() : false) {
            return;
        }
        if (getIntent().getBooleanExtra("isFAQ", false)) {
            xj.U(this).Y();
        } else {
            xj.U(this).Z0();
        }
        b bVar2 = this.f;
        String str = this.g;
        com.transsion.widgetslib.dialog.d dVar3 = bVar2.a;
        if (dVar3 != null) {
            if (dVar3.isShowing()) {
                return;
            }
            bVar2.a.show();
            return;
        }
        com.transsion.widgetslib.dialog.d dVarF = new com.transsion.widgetslib.dialog.d.a(bVar2.b, R.style.dialog_soft_input).D(R.layout.xn_privacy_no_net_dialog).B(bVar2.b.getString(R.string.xn_no_net)).w(bVar2.b.getString(R.string.xn_got_it), new com.transsion.xuanniao.account.help.view.a(bVar2)).F();
        bVar2.a = dVarF;
        ((TextView) dVarF.findViewById(R.id.note)).setText(bVar2.b.r0(R.string.xn_privacy_no_net, ""));
        TextView textView = (TextView) bVar2.a.findViewById(R.id.urlTextView);
        textView.setText(str);
        textView.setOnClickListener(new tk7(bVar2, str));
        textView.setOnLongClickListener(new wl7(bVar2, str));
    }
}
