package com.google.android.gms.internal.identity;

final class zzev extends zzet {
    private final zzex zza;

    zzev(zzex zzexVar, int i10) {
        super(zzexVar.size(), i10);
        this.zza = zzexVar;
    }

    @Override
    protected final Object zza(int i10) {
        return this.zza.get(i10);
    }
}
