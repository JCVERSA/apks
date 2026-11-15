package com.google.android.libraries.places.internal;

final class zzauw implements zzavd {
    private final zzavd[] zza;

    zzauw(zzavd... zzavdVarArr) {
        this.zza = zzavdVarArr;
    }

    @Override
    public final zzavc zzb(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            zzavd zzavdVar = this.zza[i10];
            if (zzavdVar.zzc(cls)) {
                return zzavdVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override
    public final boolean zzc(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            if (this.zza[i10].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
