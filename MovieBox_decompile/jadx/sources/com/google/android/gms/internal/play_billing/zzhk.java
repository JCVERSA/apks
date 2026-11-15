package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;

final class zzhk extends zzhm {
    zzhk(Unsafe unsafe) {
        super(unsafe);
    }

    @Override
    public final double zza(Object obj, long j10) {
        return Double.longBitsToDouble(this.zza.getLong(obj, j10));
    }

    @Override
    public final float zzb(Object obj, long j10) {
        return Float.intBitsToFloat(this.zza.getInt(obj, j10));
    }

    @Override
    public final void zzc(Object obj, long j10, boolean z10) {
        if (zzhn.zzb) {
            zzhn.zzD(obj, j10, z10 ? (byte) 1 : (byte) 0);
        } else {
            zzhn.zzE(obj, j10, z10 ? (byte) 1 : (byte) 0);
        }
    }

    @Override
    public final void zzd(Object obj, long j10, byte b10) {
        if (zzhn.zzb) {
            zzhn.zzD(obj, j10, b10);
        } else {
            zzhn.zzE(obj, j10, b10);
        }
    }

    @Override
    public final void zze(Object obj, long j10, double d10) {
        this.zza.putLong(obj, j10, Double.doubleToLongBits(d10));
    }

    @Override
    public final void zzf(Object obj, long j10, float f10) {
        this.zza.putInt(obj, j10, Float.floatToIntBits(f10));
    }

    @Override
    public final boolean zzg(Object obj, long j10) {
        return zzhn.zzb ? zzhn.zzt(obj, j10) : zzhn.zzu(obj, j10);
    }
}
