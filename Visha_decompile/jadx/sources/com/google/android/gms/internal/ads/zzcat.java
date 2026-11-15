package com.google.android.gms.internal.ads;

final class zzcat implements Runnable {
    final boolean zza;
    final zzcau zzb;

    public zzcat(zzcau zzcauVar, boolean z) {
        this.zza = z;
        this.zzb = zzcauVar;
    }

    @Override
    public final void run() {
        this.zzb.b("windowVisibilityChanged", "isVisible", String.valueOf(this.zza));
    }
}
