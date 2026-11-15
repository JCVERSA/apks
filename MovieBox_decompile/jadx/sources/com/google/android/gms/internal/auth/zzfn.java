package com.google.android.gms.internal.auth;

final class zzfn implements zzfu {
    private final zzfu[] zza;

    zzfn(zzfu... zzfuVarArr) {
        this.zza = zzfuVarArr;
    }

    @Override
    public final zzft zzb(Class cls) {
        zzfu[] zzfuVarArr = this.zza;
        for (int i10 = 0; i10 < 2; i10++) {
            zzfu zzfuVar = zzfuVarArr[i10];
            if (zzfuVar.zzc(cls)) {
                return zzfuVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override
    public final boolean zzc(Class cls) {
        zzfu[] zzfuVarArr = this.zza;
        for (int i10 = 0; i10 < 2; i10++) {
            if (zzfuVarArr[i10].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
