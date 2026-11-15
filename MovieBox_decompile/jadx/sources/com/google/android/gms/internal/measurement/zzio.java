package com.google.android.gms.internal.measurement;

final class zzio extends zziv {
    private final int zzc;
    private final int zzd;

    zzio(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzik.zza(i10, i10 + i11, bArr.length);
        this.zzc = i10;
        this.zzd = i11;
    }

    @Override
    public final byte zza(int i10) {
        int iZzb = zzb();
        if (((iZzb - (i10 + 1)) | i10) >= 0) {
            return this.zzb[this.zzc + i10];
        }
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + iZzb);
    }

    @Override
    final byte zzb(int i10) {
        return this.zzb[this.zzc + i10];
    }

    @Override
    protected final int zzc() {
        return this.zzc;
    }

    @Override
    public final int zzb() {
        return this.zzd;
    }
}
