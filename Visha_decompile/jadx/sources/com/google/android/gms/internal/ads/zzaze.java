package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
import defpackage.wue;

final class zzaze implements Runnable {
    final ValueCallback zza;
    final wue zzb;
    final WebView zzc;
    final boolean zzd;
    final zzazg zze;

    public zzaze(zzazg zzazgVar, final wue wueVar, final WebView webView, final boolean z) {
        this.zzb = wueVar;
        this.zzc = webView;
        this.zzd = z;
        this.zze = zzazgVar;
        this.zza = new ValueCallback() {
            @Override
            public final void onReceiveValue(Object obj) {
                this.a.zze.zzc(wueVar, webView, (String) obj, z);
            }
        };
    }

    @Override
    public final void run() {
        WebView webView = this.zzc;
        if (webView.getSettings().getJavaScriptEnabled()) {
            try {
                webView.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zza);
            } catch (Throwable unused) {
                this.zza.onReceiveValue("");
            }
        }
    }
}
