package com.google.android.gms.internal.fido;

final class zzaw extends zzat {
    static final zzat zza = new zzaw(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    zzaw(Object[] objArr, int i10) {
        this.zzb = objArr;
        this.zzc = i10;
    }

    @Override
    public final Object get(int i10) {
        zzam.zza(i10, this.zzc, "index");
        Object obj = this.zzb[i10];
        obj.getClass();
        return obj;
    }

    @Override
    public final int size() {
        return this.zzc;
    }

    @Override
    final int zza(Object[] objArr, int i10) {
        System.arraycopy(this.zzb, 0, objArr, 0, this.zzc);
        return this.zzc;
    }

    @Override
    final int zzb() {
        return this.zzc;
    }

    @Override
    final int zzc() {
        return 0;
    }

    @Override
    final Object[] zze() {
        return this.zzb;
    }
}
