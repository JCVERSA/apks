package com.google.android.gms.internal.ads;

final class zzgwh extends zzgwk {
    private final int zzc;
    private final int zzd;

    public zzgwh(byte[] bArr, int i, int i2) {
        super(bArr);
        zzgwn.zzq(i, i + i2, bArr.length);
        this.zzc = i;
        this.zzd = i2;
    }

    @Override
    public final byte zza(int i) {
        zzgwn.zzy(i, this.zzd);
        return ((zzgwk) this).zza[this.zzc + i];
    }

    @Override
    public final byte zzb(int i) {
        return ((zzgwk) this).zza[this.zzc + i];
    }

    @Override
    public final int zzc() {
        return this.zzc;
    }

    @Override
    public final int zzd() {
        return this.zzd;
    }

    @Override
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(((zzgwk) this).zza, this.zzc + i, bArr, i2, i3);
    }
}
