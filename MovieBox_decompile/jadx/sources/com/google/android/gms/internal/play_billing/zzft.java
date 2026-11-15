package com.google.android.gms.internal.play_billing;

final class zzft implements zzga {
    private final zzga[] zza;

    zzft(zzga... zzgaVarArr) {
        this.zza = zzgaVarArr;
    }

    @Override
    public final zzfz zzb(Class cls) {
        for (int i10 = 0; i10 < 2; i10++) {
            zzga zzgaVar = this.zza[i10];
            if (zzgaVar.zzc(cls)) {
                return zzgaVar.zzb(cls);
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
