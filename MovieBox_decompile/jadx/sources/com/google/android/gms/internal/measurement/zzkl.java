package com.google.android.gms.internal.measurement;

import java.util.List;

final class zzkl implements zzkm {
    zzkl() {
    }

    private static <E> zzkc<E> zzc(Object obj, long j10) {
        return (zzkc) zzml.zze(obj, j10);
    }

    @Override
    public final <L> List<L> zza(Object obj, long j10) {
        zzkc zzkcVarZzc = zzc(obj, j10);
        if (zzkcVarZzc.zzc()) {
            return zzkcVarZzc;
        }
        int size = zzkcVarZzc.size();
        zzkc zzkcVarZza = zzkcVarZzc.zza(size == 0 ? 10 : size << 1);
        zzml.zza(obj, j10, zzkcVarZza);
        return zzkcVarZza;
    }

    @Override
    public final void zzb(Object obj, long j10) {
        zzc(obj, j10).zzb();
    }

    @Override
    public final <E> void zza(Object obj, Object obj2, long j10) {
        zzkc zzkcVarZzc = zzc(obj, j10);
        zzkc zzkcVarZzc2 = zzc(obj2, j10);
        int size = zzkcVarZzc.size();
        int size2 = zzkcVarZzc2.size();
        if (size > 0 && size2 > 0) {
            if (!zzkcVarZzc.zzc()) {
                zzkcVarZzc = zzkcVarZzc.zza(size2 + size);
            }
            zzkcVarZzc.addAll(zzkcVarZzc2);
        }
        if (size > 0) {
            zzkcVarZzc2 = zzkcVarZzc;
        }
        zzml.zza(obj, j10, zzkcVarZzc2);
    }
}
