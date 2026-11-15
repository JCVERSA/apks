package com.google.android.libraries.places.internal;

abstract class zzass extends zzasx {
    final byte[] zza;
    final int zzb;
    int zzc;
    int zzd;

    zzass(int i10) {
        super(null);
        if (i10 < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        byte[] bArr = new byte[Math.max(i10, 20)];
        this.zza = bArr;
        this.zzb = bArr.length;
    }

    @Override
    public final int zzb() {
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
    }

    final void zzc(byte b10) {
        int i10 = this.zzc;
        this.zzc = i10 + 1;
        this.zza[i10] = b10;
        this.zzd++;
    }

    final void zzd(int i10) {
        int i11 = this.zzc;
        int i12 = i11 + 1;
        this.zzc = i12;
        byte[] bArr = this.zza;
        bArr[i11] = (byte) (i10 & 255);
        int i13 = i11 + 2;
        this.zzc = i13;
        bArr[i12] = (byte) ((i10 >> 8) & 255);
        int i14 = i11 + 3;
        this.zzc = i14;
        bArr[i13] = (byte) ((i10 >> 16) & 255);
        this.zzc = i11 + 4;
        bArr[i14] = (byte) ((i10 >> 24) & 255);
        this.zzd += 4;
    }

    final void zze(long j10) {
        int i10 = this.zzc;
        int i11 = i10 + 1;
        this.zzc = i11;
        byte[] bArr = this.zza;
        bArr[i10] = (byte) (j10 & 255);
        int i12 = i10 + 2;
        this.zzc = i12;
        bArr[i11] = (byte) ((j10 >> 8) & 255);
        int i13 = i10 + 3;
        this.zzc = i13;
        bArr[i12] = (byte) ((j10 >> 16) & 255);
        int i14 = i10 + 4;
        this.zzc = i14;
        bArr[i13] = (byte) (255 & (j10 >> 24));
        int i15 = i10 + 5;
        this.zzc = i15;
        bArr[i14] = (byte) (((int) (j10 >> 32)) & 255);
        int i16 = i10 + 6;
        this.zzc = i16;
        bArr[i15] = (byte) (((int) (j10 >> 40)) & 255);
        int i17 = i10 + 7;
        this.zzc = i17;
        bArr[i16] = (byte) (((int) (j10 >> 48)) & 255);
        this.zzc = i10 + 8;
        bArr[i17] = (byte) (((int) (j10 >> 56)) & 255);
        this.zzd += 8;
    }

    final void zzf(int i10) {
        if (!zzasx.zzb) {
            while ((i10 & (-128)) != 0) {
                byte[] bArr = this.zza;
                int i11 = this.zzc;
                this.zzc = i11 + 1;
                bArr[i11] = (byte) ((i10 | 128) & 255);
                this.zzd++;
                i10 >>>= 7;
            }
            byte[] bArr2 = this.zza;
            int i12 = this.zzc;
            this.zzc = i12 + 1;
            bArr2[i12] = (byte) i10;
            this.zzd++;
            return;
        }
        long j10 = this.zzc;
        while ((i10 & (-128)) != 0) {
            byte[] bArr3 = this.zza;
            int i13 = this.zzc;
            this.zzc = i13 + 1;
            zzawx.zzn(bArr3, i13, (byte) ((i10 | 128) & 255));
            i10 >>>= 7;
        }
        byte[] bArr4 = this.zza;
        int i14 = this.zzc;
        this.zzc = i14 + 1;
        zzawx.zzn(bArr4, i14, (byte) i10);
        this.zzd += (int) (((long) this.zzc) - j10);
    }

    final void zzg(long j10) {
        if (zzasx.zzb) {
            long j11 = this.zzc;
            while (true) {
                int i10 = (int) j10;
                if ((j10 & (-128)) == 0) {
                    byte[] bArr = this.zza;
                    int i11 = this.zzc;
                    this.zzc = i11 + 1;
                    zzawx.zzn(bArr, i11, (byte) i10);
                    this.zzd += (int) (((long) this.zzc) - j11);
                    return;
                }
                byte[] bArr2 = this.zza;
                int i12 = this.zzc;
                this.zzc = i12 + 1;
                zzawx.zzn(bArr2, i12, (byte) ((i10 | 128) & 255));
                j10 >>>= 7;
            }
        } else {
            while (true) {
                int i13 = (int) j10;
                if ((j10 & (-128)) == 0) {
                    byte[] bArr3 = this.zza;
                    int i14 = this.zzc;
                    this.zzc = i14 + 1;
                    bArr3[i14] = (byte) i13;
                    this.zzd++;
                    return;
                }
                byte[] bArr4 = this.zza;
                int i15 = this.zzc;
                this.zzc = i15 + 1;
                bArr4[i15] = (byte) ((i13 | 128) & 255);
                this.zzd++;
                j10 >>>= 7;
            }
        }
    }
}
