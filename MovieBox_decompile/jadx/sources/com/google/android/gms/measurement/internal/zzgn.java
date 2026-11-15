package com.google.android.gms.measurement.internal;

final class zzgn implements Runnable {
    private final int zza;
    private final String zzb;
    private final Object zzc;
    private final Object zzd;
    private final Object zze;
    private final zzgo zzf;

    zzgn(zzgo zzgoVar, int i10, String str, Object obj, Object obj2, Object obj3) {
        this.zza = i10;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        this.zze = obj3;
        this.zzf = zzgoVar;
    }

    @Override
    public final void run() {
        zzha zzhaVarZzn = this.zzf.zzu.zzn();
        if (!zzhaVarZzn.zzaf()) {
            this.zzf.zza(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (this.zzf.zza == 0) {
            if (this.zzf.zze().zzz()) {
                this.zzf.zza = 'C';
            } else {
                this.zzf.zza = 'c';
            }
        }
        if (this.zzf.zzb < 0) {
            this.zzf.zzb = 106000L;
        }
        String strSubstring = "2" + "01VDIWEA?".charAt(this.zza) + this.zzf.zza + this.zzf.zzb + ":" + zzgo.zza(true, this.zzb, this.zzc, this.zzd, this.zze);
        if (strSubstring.length() > 1024) {
            strSubstring = this.zzb.substring(0, 1024);
        }
        zzhe zzheVar = zzhaVarZzn.zzb;
        if (zzheVar != null) {
            zzheVar.zza(strSubstring, 1L);
        }
    }
}
