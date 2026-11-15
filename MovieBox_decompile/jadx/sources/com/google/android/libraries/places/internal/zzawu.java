package com.google.android.libraries.places.internal;

import sun.misc.Unsafe;

final class zzawu extends zzaww {
    zzawu(Unsafe unsafe) {
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
        if (zzawx.zzb) {
            zzawx.zzD(obj, j10, z10 ? (byte) 1 : (byte) 0);
        } else {
            zzawx.zzE(obj, j10, z10 ? (byte) 1 : (byte) 0);
        }
    }

    @Override
    public final void zzd(Object obj, long j10, byte b10) {
        if (zzawx.zzb) {
            zzawx.zzD(obj, j10, b10);
        } else {
            zzawx.zzE(obj, j10, b10);
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
        return zzawx.zzb ? zzawx.zzt(obj, j10) : zzawx.zzu(obj, j10);
    }
}
