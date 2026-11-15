package com.google.android.gms.internal.play_billing;

final class zzal extends zzaf {
    static final zzaf zza = new zzal(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    zzal(Object[] objArr, int i10) {
        this.zzb = objArr;
        this.zzc = i10;
    }

    @Override
    public final Object get(int i10) {
        zzx.zza(i10, this.zzc, "index");
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
    final boolean zzf() {
        return false;
    }

    @Override
    final Object[] zzg() {
        return this.zzb;
    }
}
