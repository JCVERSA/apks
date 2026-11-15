package com.google.android.libraries.places.internal;

import java.util.List;

final class zzaur extends zzaut {
    private zzaur() {
        throw null;
    }

    @Override
    final List zza(Object obj, long j10) {
        zzauc zzaucVar = (zzauc) zzawx.zzf(obj, j10);
        if (zzaucVar.zzc()) {
            return zzaucVar;
        }
        int size = zzaucVar.size();
        zzauc zzaucVarZzd = zzaucVar.zzd(size == 0 ? 10 : size + size);
        zzawx.zzs(obj, j10, zzaucVarZzd);
        return zzaucVarZzd;
    }

    @Override
    final void zzb(Object obj, long j10) {
        ((zzauc) zzawx.zzf(obj, j10)).zzb();
    }

    @Override
    final void zzc(Object obj, Object obj2, long j10) {
        zzauc zzaucVarZzd = (zzauc) zzawx.zzf(obj, j10);
        zzauc zzaucVar = (zzauc) zzawx.zzf(obj2, j10);
        int size = zzaucVarZzd.size();
        int size2 = zzaucVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzaucVarZzd.zzc()) {
                zzaucVarZzd = zzaucVarZzd.zzd(size2 + size);
            }
            zzaucVarZzd.addAll(zzaucVar);
        }
        if (size > 0) {
            zzaucVar = zzaucVarZzd;
        }
        zzawx.zzs(obj, j10, zzaucVar);
    }

    zzaur(zzauq zzauqVar) {
        super(null);
    }
}
