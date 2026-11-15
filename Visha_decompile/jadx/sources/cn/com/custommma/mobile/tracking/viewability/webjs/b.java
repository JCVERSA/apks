package cn.com.custommma.mobile.tracking.viewability.webjs;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import cn.com.custommma.mobile.tracking.api.Countly;
import defpackage.oe5;
import defpackage.rq5;
import defpackage.ubc;
import defpackage.yr1;
import java.util.HashMap;

public abstract class b {

    public class a extends WebViewClient {

        public class DialogInterfaceOnClickListenerC0021a implements DialogInterface.OnClickListener {
            public final SslErrorHandler b;

            public DialogInterfaceOnClickListenerC0021a(SslErrorHandler sslErrorHandler) {
                this.b = sslErrorHandler;
            }

            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                this.b.proceed();
                dialogInterface.dismiss();
            }
        }

        public class DialogInterfaceOnClickListenerC0022b implements DialogInterface.OnClickListener {
            public final SslErrorHandler b;

            public DialogInterfaceOnClickListenerC0022b(SslErrorHandler sslErrorHandler) {
                this.b = sslErrorHandler;
            }

            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                this.b.cancel();
                dialogInterface.dismiss();
            }
        }

        public a(b bVar) {
        }

        /* JADX WARN: Code duplicated, block: B:22:0x005f  */
        public final boolean a(WebView webView, String str) {
            byte b;
            try {
                Uri uri = Uri.parse(str);
                oe5.a("MyWebViewClient:handlerWebJsMessage:" + uri);
                if (uri.getScheme().equalsIgnoreCase("mmaViewabilitySDK")) {
                    String authority = uri.getAuthority();
                    int iHashCode = authority.hashCode();
                    if (iHashCode != -2140382874) {
                        if (iHashCode != 180591085) {
                            if (iHashCode == 917049731 && authority.equals("stopViewability")) {
                                b = 0;
                            } else {
                                b = -1;
                            }
                        } else if (authority.equals("getJSCacheData")) {
                            b = 2;
                        } else {
                            b = -1;
                        }
                    } else if (authority.equals("saveJSCacheData")) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                    if (b == 0) {
                        d(uri);
                    } else if (b == 1) {
                        c(uri);
                    } else if (b == 2) {
                        b(uri);
                    }
                    return true;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }

        public final void b(Uri uri) {
            boolean booleanQueryParameter = uri.getBooleanQueryParameter("clear", false);
            String strC = b.h(null).c(b.g(null));
            if (!TextUtils.isEmpty(strC)) {
                String str = String.format("javascript:sendCacheMessage(JSON.stringify(%s))", strC);
                oe5.a("onGetJSCacheData->clear:" + booleanQueryParameter + "  conetent:" + str);
                b.a(null).loadUrl(str);
            }
            if (booleanQueryParameter) {
                b.h(null).a(b.g(null));
            }
        }

        public final void c(Uri uri) {
            String queryParameter = uri.getQueryParameter("data");
            if (TextUtils.isEmpty(queryParameter)) {
                rq5.d("saveJSCacheData protocol params data is empty.");
            } else {
                b.h(null).f(b.g(null), queryParameter);
            }
        }

        public final void d(Uri uri) {
            String queryParameter = uri.getQueryParameter("AdviewabilityID");
            if (TextUtils.isEmpty(queryParameter)) {
                rq5.d("stopViewability protocol params adviewabilityid is empty.");
                return;
            }
            ubc.a(b.f(null).get(queryParameter));
            if (Countly.n) {
                b.c(null).sendBroadcast(new Intent(Countly.q));
            }
        }

        @Override
        public void onPageFinished(WebView webView, String str) {
        }

        @Override
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        }

        @Override
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            if (!(b.c(null) instanceof Activity)) {
                sslErrorHandler.proceed();
                return;
            }
            if (((Activity) b.c(null)).isDestroyed() || ((Activity) b.c(null)).isFinishing()) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(b.c(null));
            builder.setMessage("该网站的证书存在安全问题");
            builder.setPositiveButton("继续", new DialogInterfaceOnClickListenerC0021a(sslErrorHandler));
            builder.setNegativeButton("取消", new DialogInterfaceOnClickListenerC0022b(sslErrorHandler));
            builder.create().show();
        }

        @Override
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            return true;
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return a(webView, str);
        }

        public a(b bVar, ViewAbilityJsExplorer$1 viewAbilityJsExplorer$1) {
            this(bVar);
        }
    }

    public static WebView a(b bVar) {
        throw null;
    }

    public static WebView b(b bVar, WebView webView) {
        throw null;
    }

    public static Context c(b bVar) {
        throw null;
    }

    public static boolean d(b bVar, boolean z) {
        throw null;
    }

    public static void e(b bVar) {
        throw null;
    }

    public static HashMap f(b bVar) {
        throw null;
    }

    public static String g(b bVar) {
        throw null;
    }

    public static yr1 h(b bVar) {
        throw null;
    }
}
