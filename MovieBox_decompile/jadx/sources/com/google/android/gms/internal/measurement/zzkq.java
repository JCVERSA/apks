package com.google.android.gms.internal.measurement;

final class zzkq implements zzlt {
    private static final zzkz zza = new zzkp();
    private final zzkz zzb;

    public zzkq() {
        this(new zzkr(zzju.zza(), zza));
    }

    @Override
    public final <T> zzlu<T> zza(Class<T> cls) {
        zzlw.zza((Class<?>) cls);
        zzla zzlaVarZza = this.zzb.zza(cls);
        if (zzlaVarZza.zzc()) {
            return zzli.zza(zzlw.zza(), zzjj.zza(), zzlaVarZza.zza());
        }
        return zzlg.zza(cls, zzlaVarZza, zzlm.zza(), zzko.zza(), zzlw.zza(), zzks.zza[zzlaVarZza.zzb().ordinal()] != 1 ? zzjj.zza() : null, zzkx.zza());
    }

    private zzkq(zzkz zzkzVar) {
        this.zzb = (zzkz) zzjv.zza(zzkzVar, "messageInfoFactory");
    }
}
