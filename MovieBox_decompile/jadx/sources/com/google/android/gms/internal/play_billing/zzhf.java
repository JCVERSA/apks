package com.google.android.gms.internal.play_billing;

import java.io.IOException;

final class zzhf extends zzhd {
    zzhf() {
    }

    @Override
    final int zza(Object obj) {
        return ((zzhe) obj).zza();
    }

    @Override
    final int zzb(Object obj) {
        return ((zzhe) obj).zzb();
    }

    @Override
    final Object zzc(Object obj) {
        zzex zzexVar = (zzex) obj;
        zzhe zzheVar = zzexVar.zzc;
        if (zzheVar != zzhe.zzc()) {
            return zzheVar;
        }
        zzhe zzheVarZzf = zzhe.zzf();
        zzexVar.zzc = zzheVarZzf;
        return zzheVarZzf;
    }

    @Override
    final Object zzd(Object obj) {
        return ((zzex) obj).zzc;
    }

    @Override
    final Object zze(Object obj, Object obj2) {
        if (zzhe.zzc().equals(obj2)) {
            return obj;
        }
        if (zzhe.zzc().equals(obj)) {
            return zzhe.zze((zzhe) obj, (zzhe) obj2);
        }
        ((zzhe) obj).zzd((zzhe) obj2);
        return obj;
    }

    @Override
    final void zzf(Object obj, int i10, long j10) {
        ((zzhe) obj).zzj(i10 << 3, Long.valueOf(j10));
    }

    @Override
    final void zzg(Object obj) {
        ((zzex) obj).zzc.zzh();
    }

    @Override
    final void zzh(Object obj, Object obj2) {
        ((zzex) obj).zzc = (zzhe) obj2;
    }

    @Override
    final void zzi(Object obj, zzhv zzhvVar) throws IOException {
        ((zzhe) obj).zzk(zzhvVar);
    }
}
