package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;

final class zzhl extends zzhm {
    zzhl(Unsafe unsafe) {
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

    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.play_billing.zzhn.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Failed to inline method: com.google.android.gms.internal.play_billing.zzhn.zzj(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r5v0 'z10' boolean)' in method call: com.google.android.gms.internal.play_billing.zzhn.zzi(java.lang.Object, long, boolean):void */
    /* JADX WARN: Unknown register number '(r5v0 'z10' boolean)' in method call: com.google.android.gms.internal.play_billing.zzhn.zzj(java.lang.Object, long, boolean):void */
    @Override
    public final void zzc(Object obj, long j10, boolean z10) {
        if (zzhn.zzb) {
            zzhn.zzi(obj, j10, z10);
        } else {
            zzhn.zzj(obj, j10, z10);
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
