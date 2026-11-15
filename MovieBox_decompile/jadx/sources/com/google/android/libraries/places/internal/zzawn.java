package com.google.android.libraries.places.internal;

import java.io.IOException;

abstract class zzawn {
    zzawn() {
    }

    abstract int zza(Object obj);

    abstract int zzb(Object obj);

    abstract Object zzc(Object obj);

    abstract Object zzd(Object obj);

    abstract Object zze(Object obj, Object obj2);

    abstract Object zzf();

    abstract Object zzg(Object obj);

    abstract void zzh(Object obj, int i10, int i11);

    abstract void zzi(Object obj, int i10, long j10);

    abstract void zzj(Object obj, int i10, Object obj2);

    abstract void zzk(Object obj, int i10, zzask zzaskVar);

    abstract void zzl(Object obj, int i10, long j10);

    abstract void zzm(Object obj);

    abstract void zzn(Object obj, Object obj2);

    abstract void zzo(Object obj, Object obj2);

    final boolean zzp(Object obj, zzavs zzavsVar) throws IOException {
        int iZzd = zzavsVar.zzd();
        int i10 = iZzd >>> 3;
        int i11 = iZzd & 7;
        if (i11 == 0) {
            zzl(obj, i10, zzavsVar.zzl());
            return true;
        }
        if (i11 == 1) {
            zzi(obj, i10, zzavsVar.zzk());
            return true;
        }
        if (i11 == 2) {
            zzk(obj, i10, zzavsVar.zzp());
            return true;
        }
        if (i11 != 3) {
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                throw zzauf.zza();
            }
            zzh(obj, i10, zzavsVar.zzf());
            return true;
        }
        Object objZzf = zzf();
        int i12 = i10 << 3;
        while (zzavsVar.zzc() != Integer.MAX_VALUE && zzp(objZzf, zzavsVar)) {
        }
        if ((4 | i12) != zzavsVar.zzd()) {
            throw zzauf.zzb();
        }
        zzg(objZzf);
        zzj(obj, i10, objZzf);
        return true;
    }

    abstract boolean zzq(zzavs zzavsVar);

    abstract void zzr(Object obj, zzasy zzasyVar) throws IOException;

    abstract void zzs(Object obj, zzasy zzasyVar) throws IOException;
}
