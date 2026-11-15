package com.google.android.gms.internal.ads;

import android.webkit.WebView;

final class zzfkx implements Runnable {
    final WebView zza;
    final String zzb;

    public zzfkx(d6 d6Var, WebView webView, String str) {
        this.zza = webView;
        this.zzb = str;
    }

    @Override
    public final void run() {
        d6.k(this.zza, this.zzb);
    }
}
