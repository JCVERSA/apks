package com.mgadplus.brower;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.just.agentweb.DefaultWebClient;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgmi.R;
import com.mgmi.platform.e;
import defpackage.g4d;
import defpackage.h2d;
import defpackage.k7d;
import defpackage.l4d;
import defpackage.mbd;
import defpackage.o7d;

public class CustomWebActivity extends Activity {
    public ImgoAdWebView b;
    public LinearLayout c;
    public ImageView d;
    public RelativeLayout e;
    public TextView f;
    public String g;
    public long h;
    public String i;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            CustomWebActivity.this.finish();
        }
    }

    public class b implements o7d {
        public b() {
        }

        @Override
        public void a(String str, String str2) {
            CustomWebActivity.this.k(str, str2);
        }
    }

    public class d extends com.mgmi.ViewGroup.a.a.b {
        public final String f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(com.mgmi.ViewGroup.a.a aVar, String str) {
            super(aVar);
            this.f = str;
        }

        @Override
        public void a() {
            super.a();
            Context contextA = e.a();
            if (contextA == null) {
                contextA = CustomWebActivity.this;
            }
            k7d.c(contextA).d(g4d.a(), this.f);
        }

        @Override
        public void b() {
            super.b();
            com.mgmi.e.b.a().a(e.a(), g4d.a(), com.mgmi.e.c.CONVERTION_TYPE_USER_CANCEL_DOWNLOAD, null, null);
        }
    }

    public static void c(Context context, ResolveInfo resolveInfo, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public static void d(Context context, String str, String str2, com.mgmi.ads.api.d dVar) {
        if (f(context, str)) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) CustomWebActivity.class);
        intent.putExtra("url", str);
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra("uuid", str2);
        }
        h2d.d(context, intent);
    }

    public static boolean f(Context context, String str) {
        ResolveInfo resolveInfoB;
        if (!g(str) || (resolveInfoB = h2d.b(context, str)) == null) {
            return false;
        }
        c(context, resolveInfoB, str);
        return true;
    }

    public static boolean g(String str) {
        return (TextUtils.isEmpty(str) || str.startsWith(DefaultWebClient.HTTP_SCHEME) || str.startsWith("https://") || str.startsWith("file:///") || str.startsWith("javascript:") || str.startsWith("yy:")) ? false : true;
    }

    public final void b() {
        this.h = System.currentTimeMillis();
    }

    @Override
    public void finish() {
        super.finish();
    }

    public boolean h(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        if (o(str2)) {
            return true;
        }
        return (str.contains("/") ? str.substring(str.lastIndexOf("/") + 1) : "").contains(".apk");
    }

    public final void j(String str) {
        if (this.b == null) {
            try {
                this.b = (ImgoAdWebView) findViewById(R.id.webViewPage);
            } catch (Exception e) {
                SourceKitLogger.b("CustomWebActivity", e.toString());
                return;
            }
        }
        ImgoAdWebView imgoAdWebView = this.b;
        if (imgoAdWebView != null) {
            imgoAdWebView.setWebViewDownloadCallBack(new b());
            this.b.setWebViewLifeCycleCallback(new c());
            m(str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    public final void k(String str, String str2) {
        if (h(str, str2)) {
            if (!TextUtils.isEmpty(this.i) && this.i.equals("intent_show")) {
                com.mgmi.ViewGroup.a.a aVar = new com.mgmi.ViewGroup.a.a(this);
                aVar.a((CharSequence) getResources().getString(R.string.mgmi_confirm_download)).b(R.string.mgmi_common_cancel).c(R.string.mgmi_common_confim).a(false).a(new d(aVar, str));
                aVar.b();
            } else {
                Context contextA = e.a();
                ?? r2 = this;
                if (contextA != null) {
                    r2 = contextA;
                }
                k7d.c(r2).d(g4d.a(), str);
            }
        }
    }

    public final void m(String str) {
        try {
            this.b.loadUrl(str);
        } catch (Exception e) {
            SourceKitLogger.a("CustomWebActivity", "init webview exception" + e.getMessage());
        }
    }

    public final boolean o(String str) {
        return TextUtils.equals(str, "application/vnd.android.package-archive");
    }

    @Override
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        setContentView(R.layout.mgad_custom_webview);
        this.c = (LinearLayout) findViewById(R.id.llBackView);
        this.d = (ImageView) findViewById(R.id.ivProgress);
        this.e = (RelativeLayout) findViewById(R.id.rlLoadingError);
        this.f = (TextView) findViewById(R.id.txtCenterTitle);
        ImgoAdWebView imgoAdWebView = (ImgoAdWebView) findViewById(R.id.webViewPage);
        this.b = imgoAdWebView;
        imgoAdWebView.setIslandpage(true);
        this.c.setOnClickListener(new a());
        String stringExtra = getIntent().getStringExtra("url");
        this.i = getIntent().getStringExtra("intent_show");
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.g = getIntent().getStringExtra("uuid");
        j(stringExtra);
    }

    @Override
    public void onDestroy() {
        ImgoAdWebView imgoAdWebView = this.b;
        if (imgoAdWebView != null) {
            imgoAdWebView.b();
        }
        super.onDestroy();
        ImgoAdWebView imgoAdWebView2 = this.b;
        if (imgoAdWebView2 != null) {
            imgoAdWebView2.destroy();
            this.b = null;
        }
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !this.b.canGoBack()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.b.goBack();
        return true;
    }

    @Override
    public void onPause() {
        ImgoAdWebView imgoAdWebView = this.b;
        if (imgoAdWebView != null) {
            imgoAdWebView.onPause();
        }
        super.onPause();
    }

    @Override
    public void onResume() {
        ImgoAdWebView imgoAdWebView = this.b;
        if (imgoAdWebView != null) {
            imgoAdWebView.onResume();
        }
        super.onResume();
    }

    public class c extends mbd {
        public c() {
        }

        @Override
        public void a(String str) {
            super.a(str);
            if (TextUtils.isEmpty(str) || CustomWebActivity.this.f == null) {
                return;
            }
            CustomWebActivity.this.f.setText(str);
        }

        @Override
        public boolean b(String str) {
            return CustomWebActivity.f(CustomWebActivity.this, str);
        }

        @Override
        public void a(WebView webView, String str, Bitmap bitmap) {
            super.a(webView, str, bitmap);
            l4d.f(CustomWebActivity.this.d, 0);
            l4d.f(CustomWebActivity.this.e, 8);
        }

        @Override
        public void a(WebView webView, String str) {
            super.a(webView, str);
            CustomWebActivity.this.b();
            l4d.f(CustomWebActivity.this.d, 8);
        }

        @Override
        public void a(WebView webView, int i, String str, String str2) {
            l4d.f(CustomWebActivity.this.e, 0);
        }

        @Override
        public void a(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            SourceKitLogger.a("CustomWebActivity", "onReceivedHttpError getStatusCode:" + webResourceResponse.getStatusCode());
            super.a(webView, webResourceRequest, webResourceResponse);
        }
    }
}
