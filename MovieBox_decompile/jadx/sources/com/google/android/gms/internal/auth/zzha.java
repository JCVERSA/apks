package com.google.android.gms.internal.auth;

final class zzha extends zzgy {
    zzha() {
    }

    @Override
    final Object zza(Object obj) {
        return ((zzeu) obj).zzc;
    }

    @Override
    final Object zzb(Object obj, Object obj2) {
        zzgz zzgzVar = (zzgz) obj2;
        return zzgzVar.equals(zzgz.zza()) ? obj : zzgz.zzb((zzgz) obj, zzgzVar);
    }

    @Override
    final Object zzc() {
        return zzgz.zzc();
    }

    @Override
    final void zzd(Object obj, int i10, long j10) {
        ((zzgz) obj).zzf(i10 << 3, Long.valueOf(j10));
    }

    @Override
    final void zze(Object obj) {
        ((zzeu) obj).zzc.zzd();
    }

    @Override
    final void zzf(Object obj, Object obj2) {
        ((zzeu) obj).zzc = (zzgz) obj2;
    }
}
