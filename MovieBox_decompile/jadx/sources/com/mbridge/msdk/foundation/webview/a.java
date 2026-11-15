package com.mbridge.msdk.foundation.webview;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.mbridge.msdk.activity.MBCommonActivity;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.out.BaseTrackingListener;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
import org.mvel2.ast.ASTNode;

public class a implements BrowserView.e {

    private static String f35040o = "a";

    private int f35041a;

    private String f35043c;

    private boolean f35044d;

    private BaseTrackingListener f35045e;

    private BrowserView f35046f;

    private CampaignEx f35047g;

    private com.mbridge.msdk.click.a f35048h;

    private Context f35049i;

    private JumpLoaderResult f35051k;

    private long f35054n;

    private boolean f35042b = true;

    private boolean f35052l = false;

    private final Runnable f35053m = new RunnableC0471a();

    private Handler f35050j = new Handler(Looper.getMainLooper());

    class RunnableC0471a implements Runnable {
        RunnableC0471a() {
        }

        @Override
        public void run() {
            o0.b(a.f35040o, "webview js！超时上限：" + a.this.f35041a + "ms");
            if (a.this.f35048h != null && a.this.f35051k != null) {
                a.this.f35051k.setSuccess(false);
                a.this.f35051k.setUrl(a.this.f35043c);
                a.this.f35051k.setType(2);
                a.this.f35051k.setExceptionMsg("linktype 8 time out");
                a.this.f35048h.a(a.this.f35051k, a.this.f35047g, 1, false);
            }
            a aVar = a.this;
            if (aVar.d(null, aVar.f35043c) && !a.this.f35052l) {
                a.this.f35052l = true;
                a aVar2 = a.this;
                aVar2.a(aVar2.f35049i, a.this.f35043c, a.this.f35047g);
            }
            if (a.this.f35045e != null) {
                a.this.f35045e.onFinishRedirection(a.this.f35047g, a.this.f35043c);
            }
        }
    }

    class b implements Runnable {

        final String f35056a;

        b(String str) {
            this.f35056a = str;
        }

        @Override
        public void run() {
            if (a.this.f35048h != null && a.this.f35051k != null) {
                a.this.f35051k.setSuccess(true);
                a.this.f35051k.setUrl(this.f35056a);
                a.this.f35051k.setType(2);
                a.this.f35048h.a(a.this.f35051k, a.this.f35047g, 1, true);
            }
            if (a.this.f35045e != null) {
                a.this.f35045e.onFinishRedirection(a.this.f35047g, this.f35056a);
            }
        }
    }

    class c implements Runnable {

        final String f35058a;

        c(String str) {
            this.f35058a = str;
        }

        @Override
        public void run() {
            if (a.this.f35045e != null) {
                a.this.f35045e.onFinishRedirection(a.this.f35047g, this.f35058a);
            }
            if (a.this.f35048h == null || a.this.f35051k == null) {
                return;
            }
            a.this.f35051k.setSuccess(true);
            a.this.f35051k.setUrl(this.f35058a);
            a.this.f35051k.setType(2);
            a.this.f35048h.a(a.this.f35051k, a.this.f35047g, 1, true);
        }
    }

    class d implements Runnable {

        final String f35060a;

        final String f35061b;

        d(String str, String str2) {
            this.f35060a = str;
            this.f35061b = str2;
        }

        @Override
        public void run() {
            if (a.this.f35045e != null) {
                a.this.f35045e.onFinishRedirection(a.this.f35047g, this.f35060a);
            }
            if (a.this.f35048h == null || a.this.f35051k == null) {
                return;
            }
            a.this.f35051k.setSuccess(false);
            a.this.f35051k.setUrl(this.f35060a);
            a.this.f35051k.setType(2);
            a.this.f35051k.setExceptionMsg(this.f35061b);
            a.this.f35048h.a(a.this.f35051k, a.this.f35047g, 1, true);
        }
    }

    public a(Context context, CampaignEx campaignEx, com.mbridge.msdk.click.a aVar, BrowserView browserView, BaseTrackingListener baseTrackingListener) {
        this.f35041a = 10000;
        this.f35051k = null;
        this.f35049i = context;
        this.f35047g = campaignEx;
        this.f35046f = browserView;
        this.f35045e = baseTrackingListener;
        g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        gVarD = gVarD == null ? h.b().a() : gVarD;
        this.f35048h = aVar;
        this.f35051k = new JumpLoaderResult();
        this.f35041a = (int) gVarD.o0();
    }

    @Override
    public void a() {
    }

    public boolean d(WebView webView, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            Uri uri = Uri.parse(str);
            if (!uri.getScheme().equals("http") && !uri.getScheme().equals("https")) {
                if (uri.getScheme().equals("intent")) {
                    Intent uri2 = Intent.parseUri(str, 1);
                    try {
                        String str2 = uri2.getPackage();
                        if (!TextUtils.isEmpty(str2) && this.f35049i.getPackageManager().getLaunchIntentForPackage(str2) != null) {
                            return false;
                        }
                    } catch (Throwable th2) {
                        o0.b(f35040o, th2.getMessage());
                    }
                    try {
                        String stringExtra = uri2.getStringExtra("browser_fallback_url");
                        if (!TextUtils.isEmpty(stringExtra)) {
                            Uri uri3 = Uri.parse(str);
                            if (uri3.getScheme().equals("http") || uri3.getScheme().equals("https")) {
                                return true;
                            }
                            str = stringExtra;
                        }
                    } catch (Throwable th3) {
                        o0.b(f35040o, th3.getMessage());
                    }
                }
                if (com.mbridge.msdk.click.c.d(this.f35049i, str)) {
                    o0.b(f35040o, "openDeepLink");
                    return false;
                }
            }
            return true;
        } catch (Throwable th4) {
            o0.b(f35040o, th4.getMessage());
            return true;
        }
    }

    private boolean e(WebView webView, String str) {
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
                        if (!TextUtils.isEmpty(str2) && this.f35049i.getPackageManager().getLaunchIntentForPackage(str2) != null) {
                            uri2.setFlags(ASTNode.DEOP);
                            this.f35049i.startActivity(uri2);
                            this.f35052l = true;
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
                            o0.b(f35040o, th2.getMessage());
                        }
                    } catch (Throwable th3) {
                        o0.b(f35040o, th3.getMessage());
                    }
                    o0.b(f35040o, th.getMessage());
                    return false;
                }
                if (com.mbridge.msdk.click.c.d(this.f35049i, str)) {
                    o0.b(f35040o, "openDeepLink");
                    this.f35052l = true;
                    return true;
                }
            }
            return false;
        } catch (Throwable th4) {
            o0.b(f35040o, th4.getMessage());
            return false;
        }
    }

    @Override
    public void c(WebView webView, String str) {
        if (this.f35054n == 0) {
            this.f35054n = System.currentTimeMillis();
            if (!this.f35044d) {
                this.f35044d = true;
                d();
            }
        }
        this.f35043c = str;
        this.f35042b = true;
    }

    @Override
    public boolean b(WebView webView, String str) {
        o0.b(f35040o, "shouldOverrideUrlLoading1  " + str);
        this.f35042b = false;
        if (s0.a.b(str) && s0.a.a(this.f35049i, str, null)) {
            this.f35052l = true;
        }
        boolean zE = e(webView, str);
        if (zE) {
            this.f35054n = 0L;
            this.f35042b = false;
            c();
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new b(str));
        }
        return zE;
    }

    @Override
    public void a(WebView webView, String str, Bitmap bitmap) {
        if (this.f35054n == 0) {
            this.f35054n = System.currentTimeMillis();
            if (!this.f35044d) {
                this.f35044d = true;
                d();
            }
            this.f35052l = false;
        }
        this.f35043c = str;
        this.f35042b = true;
    }

    private void c() {
        this.f35050j.removeCallbacks(this.f35053m);
    }

    @Override
    public void a(WebView webView, String str) {
        o0.b(f35040o, "onPageFinished1  " + str);
        if (this.f35042b) {
            this.f35054n = 0L;
            this.f35042b = false;
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new c(str));
            if (TextUtils.isEmpty(str)) {
                return;
            }
            c();
            Uri uri = Uri.parse(str);
            if ((uri.getScheme().equals("http") || uri.getScheme().equals("https")) && !this.f35052l) {
                this.f35052l = true;
                a(this.f35049i, str, this.f35047g);
            }
        }
    }

    private void d() {
        this.f35050j.postDelayed(this.f35053m, this.f35041a);
    }

    @Override
    public void a(WebView webView, int i10, String str, String str2) {
        o0.d(f35040o, str);
        c();
        com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new d(str2, str));
        if (!d(webView, str2) || this.f35052l) {
            return;
        }
        this.f35052l = true;
        a(this.f35049i, str2, this.f35047g);
    }

    public void a(Context context, String str, CampaignEx campaignEx) {
        if (context == null) {
            return;
        }
        if (campaignEx != null) {
            campaignEx.getCurrentLocalRid();
        }
        try {
            int i10 = MBCommonActivity.f33204e;
            Intent intent = new Intent(context, (Class<?>) MBCommonActivity.class);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            com.mbridge.msdk.foundation.webview.b.f35063a.put(str, this.f35046f);
            if (s0.a.d(str)) {
                str = "https://play.google.com/store/apps/details?id=" + str.replace(MiniAppConfigHelper.DEFAULT_JUMP_STORE_DEEPLINK, "");
            }
            intent.putExtra("url", str);
            o0.c("url", "webview url = " + str);
            intent.setFlags(805306368);
            intent.putExtra("mvcommon", campaignEx);
            context.startActivity(intent);
        } catch (Exception unused) {
            s0.a(context, str, this.f35045e, campaignEx, new ArrayList());
        }
    }
}
