package com.google.android.gms.measurement.internal;

final class zzhz implements Runnable {
    final boolean zza;
    final g zzb;

    public zzhz(g gVar, boolean z) {
        this.zzb = gVar;
        this.zza = z;
    }

    @Override
    public final void run() {
        boolean zO = this.zzb.a.o();
        boolean zN = this.zzb.a.n();
        this.zzb.a.k(this.zza);
        if (zN == this.zza) {
            this.zzb.a.b().u().b("Default data collection state already set to", Boolean.valueOf(this.zza));
        }
        if (this.zzb.a.o() == zO || this.zzb.a.o() != this.zzb.a.n()) {
            this.zzb.a.b().w().c("Default data collection is different than actual status", Boolean.valueOf(this.zza), Boolean.valueOf(zO));
        }
        this.zzb.O();
    }
}
