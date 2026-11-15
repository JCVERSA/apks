package com.google.android.libraries.places.internal;

final class zzasd extends zzash {
    private final int zzc;

    zzasd(byte[] bArr, int i10, int i11) {
        super(bArr);
        zzask.zzj(0, i11, bArr.length);
        this.zzc = i11;
    }

    @Override
    public final byte zza(int i10) {
        int i11 = this.zzc;
        if (((i11 - (i10 + 1)) | i10) >= 0) {
            return this.zza[i10];
        }
        if (i10 < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
    }

    @Override
    final byte zzb(int i10) {
        return this.zza[i10];
    }

    @Override
    protected final int zzc() {
        return 0;
    }

    @Override
    public final int zzd() {
        return this.zzc;
    }
}
