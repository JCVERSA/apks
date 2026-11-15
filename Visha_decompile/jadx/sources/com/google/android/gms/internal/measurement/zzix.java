package com.google.android.gms.internal.measurement;

final class zzix extends zzja {
    private final int zzc;

    public zzix(byte[] bArr, int i, int i2) {
        super(bArr);
        zzjd.zzj(0, i2, bArr.length);
        this.zzc = i2;
    }

    @Override
    public final byte zza(int i) {
        int i2 = this.zzc;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.zza[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + i2);
    }

    @Override
    public final byte zzb(int i) {
        return this.zza[i];
    }

    @Override
    public final int zzc() {
        return 0;
    }

    @Override
    public final int zzd() {
        return this.zzc;
    }
}
