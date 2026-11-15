package com.google.android.libraries.places.internal;

import java.io.IOException;

final class zzawp extends zzawn {
    zzawp() {
    }

    @Override
    final int zza(Object obj) {
        return ((zzawo) obj).zza();
    }

    @Override
    final int zzb(Object obj) {
        return ((zzawo) obj).zzb();
    }

    @Override
    final Object zzc(Object obj) {
        zzatu zzatuVar = (zzatu) obj;
        zzawo zzawoVar = zzatuVar.zzc;
        if (zzawoVar != zzawo.zzc()) {
            return zzawoVar;
        }
        zzawo zzawoVarZzf = zzawo.zzf();
        zzatuVar.zzc = zzawoVarZzf;
        return zzawoVarZzf;
    }

    @Override
    final Object zzd(Object obj) {
        return ((zzatu) obj).zzc;
    }

    @Override
    final Object zze(Object obj, Object obj2) {
        if (zzawo.zzc().equals(obj2)) {
            return obj;
        }
        if (zzawo.zzc().equals(obj)) {
            return zzawo.zze((zzawo) obj, (zzawo) obj2);
        }
        ((zzawo) obj).zzd((zzawo) obj2);
        return obj;
    }

    @Override
    final Object zzf() {
        return zzawo.zzf();
    }

    @Override
    final Object zzg(Object obj) {
        ((zzawo) obj).zzh();
        return obj;
    }

    @Override
    final void zzh(Object obj, int i10, int i11) {
        ((zzawo) obj).zzj((i10 << 3) | 5, Integer.valueOf(i11));
    }

    @Override
    final void zzi(Object obj, int i10, long j10) {
        ((zzawo) obj).zzj((i10 << 3) | 1, Long.valueOf(j10));
    }

    @Override
    final void zzj(Object obj, int i10, Object obj2) {
        ((zzawo) obj).zzj((i10 << 3) | 3, obj2);
    }

    @Override
    final void zzk(Object obj, int i10, zzask zzaskVar) {
        ((zzawo) obj).zzj((i10 << 3) | 2, zzaskVar);
    }

    @Override
    final void zzl(Object obj, int i10, long j10) {
        ((zzawo) obj).zzj(i10 << 3, Long.valueOf(j10));
    }

    @Override
    final void zzm(Object obj) {
        ((zzatu) obj).zzc.zzh();
    }

    @Override
    final void zzn(Object obj, Object obj2) {
        ((zzatu) obj).zzc = (zzawo) obj2;
    }

    @Override
    final void zzo(Object obj, Object obj2) {
        ((zzatu) obj).zzc = (zzawo) obj2;
    }

    @Override
    final boolean zzq(zzavs zzavsVar) {
        return false;
    }

    @Override
    final void zzr(Object obj, zzasy zzasyVar) throws IOException {
        ((zzawo) obj).zzk(zzasyVar);
    }

    @Override
    final void zzs(Object obj, zzasy zzasyVar) throws IOException {
        ((zzawo) obj).zzl(zzasyVar);
    }
}
