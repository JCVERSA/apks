package defpackage;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.widget.Button;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.b;
import com.transsion.athena.data.TrackData;
import com.transsion.cloud.data.SpaceBean;
import com.transsion.netdisk.R;
import com.transsion.playercommon.vishaweb.VishaWebViewActivity;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.OSSnackbar;
import com.transsion.widgetslib.dialog.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

public final class v31 {
    public static final a c = new a(null);
    public final Context a;
    public final WebView b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public v31(Context context, WebView webView) {
        y45.j(context, "context");
        y45.j(webView, "webView");
        this.a = context;
        this.b = webView;
    }

    public static final void i(final String str, final v31 v31Var) {
        if (str != null) {
            v31Var.b.post(new Runnable() {
                @Override
                public final void run() {
                    v31.j(this.b, str);
                }
            });
        }
        Context context = v31Var.a;
        if (context instanceof Activity) {
            ((Activity) context).finish();
        }
    }

    public static final void j(v31 v31Var, String str) {
        v31Var.b.evaluateJavascript(str, null);
    }

    public static final void k(final v31 v31Var, final String str) {
        if (e07.f(v31Var.a)) {
            if (str != null) {
                v31Var.b.post(new Runnable() {
                    @Override
                    public final void run() {
                        v31.m(this.b, str);
                    }
                });
                return;
            }
            return;
        }
        OSSnackbar.a aVar = OSSnackbar.b;
        Context context = v31Var.a;
        int i = R.string.no_network_connect;
        String string = context.getString(i);
        y45.i(string, "getString(...)");
        OSSnackbar oSSnackbarA = aVar.a(context, string);
        String string2 = v31Var.a.getString(i);
        y45.i(string2, "getString(...)");
        oSSnackbarA.e(string2, new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                v31.l(this.b, view);
            }
        }).f();
    }

    public static final void l(v31 v31Var, View view) {
        v31Var.a.startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
    }

    public static final void m(v31 v31Var, String str) {
        v31Var.b.evaluateJavascript(str, null);
    }

    public static final void n(DialogInterface dialogInterface, int i) {
    }

    public static final void o(final String str, final v31 v31Var, DialogInterface dialogInterface, int i) {
        if (str != null) {
            v31Var.b.post(new Runnable() {
                @Override
                public final void run() {
                    v31.p(this.b, str);
                }
            });
        }
    }

    public static final void p(v31 v31Var, String str) {
        v31Var.b.evaluateJavascript(str, null);
    }

    @JavascriptInterface
    public final void close(final String str) {
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                v31.i(str, this);
            }
        });
    }

    @JavascriptInterface
    public final void cloudWebViewAthena(long j, String str, String str2, String str3) {
        y45.j(str, NotificationCompat.CATEGORY_EVENT);
        y45.j(str2, "flag");
        y45.j(str3, "type");
        Log.e("CloudSpaceJsInterface", "cloudWebViewAthena");
        if (str2.length() > 0) {
            TrackData trackData = new TrackData();
            trackData.add(str2, str3);
            Bundle bundle = new Bundle();
            bundle.putString(str2, str3);
            p06.q0(trackData, bundle, str, j);
        }
    }

    @JavascriptInterface
    public final void commit(final String str) {
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                v31.k(this.b, str);
            }
        });
    }

    @JavascriptInterface
    public final void copyTextToClipboard(String str, String str2) {
        y45.j(str, "text");
        y45.j(str2, "message");
        Object systemService = this.a.getSystemService("clipboard");
        y45.h(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(AnnotatedPrivateKey.LABEL, str));
    }

    @JavascriptInterface
    public final String getBaseInfo() {
        com.transsion.utils.deviceinfo.a.C0257a c0257a = com.transsion.utils.deviceinfo.a.d;
        String strA = c0257a.a();
        v96 v96Var = v96.a;
        String strB = v96Var.b(this.a);
        String strC = v96Var.c();
        String strD = v96Var.d(this.a);
        String strA2 = v96Var.a();
        String strM = c0257a.b().m();
        String strF = c0257a.b().f();
        String strA3 = ga2.a();
        y45.i(strA3, "getModelName(...)");
        String strD2 = zdc.d();
        String strD3 = b.d();
        y45.i(strD3, "getAppVersionName(...)");
        String strB2 = pp3.b();
        y45.i(strB2, "getOsVersion(...)");
        String language = LanguageUtils.b().getLanguage();
        y45.i(language, "getLanguage(...)");
        String strI = ek4.i(new SpaceBean("vishaplayer", strA, "", strB, strC, strD, strA2, strM, strF, strA3, strD2, strD3, strB2, language, com.transsion.palmsdk.b.m(), com.transsion.palmsdk.b.k(), 2));
        y45.i(strI, "toJson(...)");
        return strI;
    }

    @JavascriptInterface
    public final void handlePaySuccess() {
        Context context = this.a;
        if (context instanceof VishaWebViewActivity) {
            ((VishaWebViewActivity) context).a0 = true;
        }
        Log.e("CloudSpaceJsInterface", "handlePaySuccess");
    }

    @JavascriptInterface
    public final void hideLoading() {
    }

    @JavascriptInterface
    public final void loginCloud(String str) {
        if (com.transsion.palmsdk.b.s()) {
            com.transsion.palmsdk.b.E(this.b, str);
            return;
        }
        Context context = this.a;
        if (context instanceof Activity) {
            com.transsion.palmsdk.b.g((Activity) context);
        }
    }

    @JavascriptInterface
    public final void setActionBarTitle(int i) {
        Log.e("CloudSpaceJsInterface", "setActionBarTitle");
    }

    @JavascriptInterface
    public final void setIsFilled(String str) {
        y45.j(str, "isFill");
        Log.e("CloudSpaceJsInterface", "setIsFilled");
    }

    @JavascriptInterface
    public final void setUnsubscribed() {
        Log.e("CloudSpaceJsInterface", "setUnsubscribed");
    }

    @JavascriptInterface
    public final void setWebViewProgress() {
        Log.e("CloudSpaceJsInterface", "setWebViewProgress");
    }

    @JavascriptInterface
    public final void showDialog(String str, String str2, String str3, String str4, final String str5) {
        Button buttonE;
        y45.j(str, "title");
        y45.j(str3, "positiveText");
        y45.j(str4, "negativeText");
        d dVarA = new d.a(this.a).B(str).k(str2).w(str3, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                v31.o(str5, this, dialogInterface, i);
            }
        }).n(str4, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                v31.n(dialogInterface, i);
            }
        }).a();
        if (dVarA != null) {
            dVarA.show();
        }
        if (dVarA == null || (buttonE = dVarA.e(-1)) == null) {
            return;
        }
        buttonE.setEnabled(true);
    }

    @JavascriptInterface
    public final void showLoading(String str) {
    }

    @JavascriptInterface
    public final void showToast(String str) {
        ToastUtils.x(str, new Object[0]);
    }

    @JavascriptInterface
    public final void updateSpaceData(String str, boolean z, String str2) {
        y45.j(str, "data");
        y45.j(str2, "extendedData");
        h27.c().e(1186, new Object[0]);
    }

    @JavascriptInterface
    public final void upgradeSuccessWarn(String str, String str2) {
        y45.j(str, "spaceData");
        y45.j(str2, "time");
        Log.e("CloudSpaceJsInterface", "upgradeSuccessWarn");
    }
}
