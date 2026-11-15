package com.google.android.gms.internal.ads;

final class zzaph implements Runnable {
    final String zza;
    final long zzb;
    final c zzc;

    public zzaph(c cVar, String str, long j) {
        this.zza = str;
        this.zzb = j;
        this.zzc = cVar;
    }

    @Override
    public final void run() {
        c cVar = this.zzc;
        cVar.b.a(this.zza, this.zzb);
        cVar.b.b(cVar.toString());
    }
}
