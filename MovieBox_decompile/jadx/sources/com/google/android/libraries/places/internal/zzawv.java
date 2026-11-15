package com.google.android.libraries.places.internal;

import sun.misc.Unsafe;

final class zzawv extends zzaww {
    zzawv(Unsafe unsafe) {
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

    /* JADX WARN: Failed to inline method: com.google.android.libraries.places.internal.zzawx.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Failed to inline method: com.google.android.libraries.places.internal.zzawx.zzj(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r5v0 'z10' boolean)' in method call: com.google.android.libraries.places.internal.zzawx.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r5v0 'z10' boolean)' in method call: com.google.android.libraries.places.internal.zzawx.zzj(java.lang.Object, long, boolean):void */
    @Override
    public final void zzc(Object obj, long j10, boolean z10) {
        if (zzawx.zzb) {
            zzawx.zzi(obj, j10, z10);
        } else {
            zzawx.zzj(obj, j10, z10);
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
