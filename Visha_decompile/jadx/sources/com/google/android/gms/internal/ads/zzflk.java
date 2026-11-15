package com.google.android.gms.internal.ads;

import android.webkit.WebView;

final class zzflk implements Runnable {
    final e6 zza;
    private final WebView zzb;

    public zzflk(e6 e6Var) {
        this.zza = e6Var;
        this.zzb = e6Var.e;
    }

    @Override
    public final void run() {
        this.zzb.destroy();
    }
}
