package defpackage;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.media3.datasource.cache.CacheDataSink;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.overlay.zzm;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzv;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class djf extends WebChromeClient {
    public final ejf a;

    public djf(ejf ejfVar) {
        this.a = ejfVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Context b(WebView webView) {
        if (!(webView instanceof ejf)) {
            return webView.getContext();
        }
        ejf ejfVar = (ejf) webView;
        Activity activityZzi = ejfVar.zzi();
        return activityZzi != null ? activityZzi : ejfVar.getContext();
    }

    public final boolean a(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z) {
        zzb zzbVarZzd;
        try {
            ejf ejfVar = this.a;
            if (ejfVar != null && ejfVar.zzN() != null && ejfVar.zzN().zzd() != null && (zzbVarZzd = ejfVar.zzN().zzd()) != null && !zzbVarZzd.zzc()) {
                zzbVarZzd.zzb("window." + str + "('" + str3 + "')");
                return false;
            }
            zzv.zzq();
            AlertDialog.Builder builderZzL = zzs.zzL(context);
            builderZzL.setTitle(str2);
            if (z) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                TextView textView = new TextView(context);
                textView.setText(str3);
                EditText editText = new EditText(context);
                editText.setText(str4);
                linearLayout.addView(textView);
                linearLayout.addView(editText);
                builderZzL.setView(linearLayout).setPositiveButton(R.string.ok, new bjf(jsPromptResult, editText)).setNegativeButton(R.string.cancel, new ajf(jsPromptResult)).setOnCancelListener(new zif(jsPromptResult)).create().show();
            } else {
                builderZzL.setMessage(str3).setPositiveButton(R.string.ok, new yif(jsResult)).setNegativeButton(R.string.cancel, new xif(jsResult)).setOnCancelListener(new wif(jsResult)).create().show();
            }
            return true;
        } catch (WindowManager.BadTokenException e) {
            int i = zze.zza;
            zzo.zzk("Fail to display Dialog.", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof ejf)) {
            int i = zze.zza;
            zzo.zzj("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        zzm zzmVarZzL = ((ejf) webView).zzL();
        if (zzmVarZzL != null) {
            zzmVarZzL.zzb();
        } else {
            int i2 = zze.zza;
            zzo.zzj("Tried to close an AdWebView not associated with an overlay.");
        }
    }

    @Override
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String str = "JS: " + consoleMessage.message() + " (" + consoleMessage.sourceId() + StringUtils.PROCESS_POSTFIX_DELIMITER + consoleMessage.lineNumber() + ")";
        if (str.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i = cjf.a[consoleMessage.messageLevel().ordinal()];
        if (i == 1) {
            int i2 = zze.zza;
            zzo.zzg(str);
        } else if (i == 2) {
            int i3 = zze.zza;
            zzo.zzj(str);
        } else if (i == 3 || i == 4 || i != 5) {
            int i4 = zze.zza;
            zzo.zzi(str);
        } else {
            int i5 = zze.zza;
            zzo.zze(str);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        ejf ejfVar = this.a;
        if (ejfVar.zzH() != null) {
            webView2.setWebViewClient(ejfVar.zzH());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    @Override
    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        long j4 = CacheDataSink.DEFAULT_FRAGMENT_SIZE - j3;
        if (j4 <= 0) {
            quotaUpdater.updateQuota(j);
            return;
        }
        if (j == 0) {
            if (j2 > j4 || j2 > 1048576) {
                j2 = 0;
            }
        } else if (j2 == 0) {
            j2 = Math.min(j + Math.min(131072L, j4), 1048576L);
        } else {
            if (j2 <= Math.min(1048576 - j, j4)) {
                j += j2;
            }
            j2 = j;
        }
        quotaUpdater.updateQuota(j2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0024  */
    @Override
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        boolean z;
        if (callback != null) {
            ejf ejfVar = this.a;
            zzv.zzq();
            if (zzs.zzB(ejfVar.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
                z = true;
            } else {
                zzv.zzq();
                if (zzs.zzB(ejfVar.getContext(), "android.permission.ACCESS_COARSE_LOCATION")) {
                    z = true;
                } else {
                    z = false;
                }
            }
            if (((Boolean) zzbd.zzc().b(cye.kd)).booleanValue()) {
                callback.invoke(str, false, true);
            } else {
                callback.invoke(str, z, true);
            }
            if (((Boolean) zzbd.zzc().b(cye.ld)).booleanValue()) {
                int i = zze.zza;
                zzo.zze("AdWebChromeClient.onGeolocationPermissionsShowPrompt()");
            }
        }
    }

    @Override
    public final void onHideCustomView() {
        zzm zzmVarZzL = this.a.zzL();
        if (zzmVarZzL != null) {
            zzmVarZzL.zzg();
        } else {
            int i = zze.zza;
            zzo.zzj("Could not get ad overlay when hiding custom view.");
        }
    }

    @Override
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return a(b(webView), "alert", str, str2, null, jsResult, null, false);
    }

    @Override
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return a(b(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return a(b(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return a(b(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    @Override
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        zzm zzmVarZzL = this.a.zzL();
        if (zzmVarZzL != null) {
            zzmVarZzL.zzC(view, customViewCallback);
            zzmVarZzL.zzA(i);
        } else {
            int i2 = zze.zza;
            zzo.zzj("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
        }
    }

    @Override
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }
}
