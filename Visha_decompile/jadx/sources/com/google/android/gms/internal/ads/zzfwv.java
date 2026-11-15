package com.google.android.gms.internal.ads;

import defpackage.v2i;
import java.util.List;

final class zzfwv extends zzfww {
    final transient int zza;
    final transient int zzb;
    final zzfww zzc;

    public zzfwv(zzfww zzfwwVar, int i, int i2) {
        this.zzc = zzfwwVar;
        this.zza = i;
        this.zzb = i2;
    }

    @Override
    public final Object get(int i) {
        v2i.a(i, this.zzb, "index");
        return this.zzc.get(i + this.zza);
    }

    @Override
    public final int size() {
        return this.zzb;
    }

    @Override
    public final List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override
    public final int zzb() {
        return this.zzc.zzc() + this.zza + this.zzb;
    }

    @Override
    public final int zzc() {
        return this.zzc.zzc() + this.zza;
    }

    @Override
    public final boolean zzf() {
        return true;
    }

    @Override
    public final Object[] zzg() {
        return this.zzc.zzg();
    }

    @Override
    public final zzfww subList(int i, int i2) {
        v2i.k(i, i2, this.zzb);
        int i3 = this.zza;
        return this.zzc.subList(i + i3, i2 + i3);
    }
}
