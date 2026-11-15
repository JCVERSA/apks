package com.google.android.gms.internal.play_billing;

final class zzap extends zzaf {
    private final transient Object[] zza;
    private final transient int zzb;
    private final transient int zzc;

    zzap(Object[] objArr, int i10, int i11) {
        this.zza = objArr;
        this.zzb = i10;
        this.zzc = i11;
    }

    @Override
    public final Object get(int i10) {
        zzx.zza(i10, this.zzc, "index");
        Object obj = this.zza[i10 + i10 + this.zzb];
        obj.getClass();
        return obj;
    }

    @Override
    public final int size() {
        return this.zzc;
    }

    @Override
    final boolean zzf() {
        return true;
    }
}
