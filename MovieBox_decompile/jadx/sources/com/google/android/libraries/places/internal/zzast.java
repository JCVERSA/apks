package com.google.android.libraries.places.internal;

import java.io.IOException;

final class zzast extends zzasx {
    private final byte[] zza;
    private final int zzb;
    private int zzc;

    zzast(byte[] bArr, int i10, int i11) {
        super(null);
        if (bArr == null) {
            throw new NullPointerException("buffer");
        }
        int i12 = i10 + i11;
        int length = bArr.length;
        if ((i10 | i11 | (length - i12)) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        this.zza = bArr;
        this.zzc = i10;
        this.zzb = i12;
    }

    @Override
    public final void zzK(byte b10) throws IOException {
        try {
            byte[] bArr = this.zza;
            int i10 = this.zzc;
            this.zzc = i10 + 1;
            bArr[i10] = b10;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzasu(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e10);
        }
    }

    @Override
    public final void zzL(int i10, boolean z10) throws IOException {
        zzu(i10 << 3);
        zzK(z10 ? (byte) 1 : (byte) 0);
    }

    @Override
    public final void zzM(int i10, zzask zzaskVar) throws IOException {
        zzu((i10 << 3) | 2);
        zzu(zzaskVar.zzd());
        zzaskVar.zzh(this);
    }

    @Override
    public final void zza(byte[] bArr, int i10, int i11) throws IOException {
        zze(bArr, 0, i11);
    }

    @Override
    public final int zzb() {
        return this.zzb - this.zzc;
    }

    public final void zze(byte[] bArr, int i10, int i11) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.zza, this.zzc, i11);
            this.zzc += i11;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzasu(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), Integer.valueOf(i11)), e10);
        }
    }

    @Override
    public final void zzh(int i10, int i11) throws IOException {
        zzu((i10 << 3) | 5);
        zzi(i11);
    }

    @Override
    public final void zzi(int i10) throws IOException {
        try {
            byte[] bArr = this.zza;
            int i11 = this.zzc;
            int i12 = i11 + 1;
            this.zzc = i12;
            bArr[i11] = (byte) (i10 & 255);
            int i13 = i11 + 2;
            this.zzc = i13;
            bArr[i12] = (byte) ((i10 >> 8) & 255);
            int i14 = i11 + 3;
            this.zzc = i14;
            bArr[i13] = (byte) ((i10 >> 16) & 255);
            this.zzc = i11 + 4;
            bArr[i14] = (byte) ((i10 >> 24) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzasu(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e10);
        }
    }

    @Override
    public final void zzj(int i10, long j10) throws IOException {
        zzu((i10 << 3) | 1);
        zzk(j10);
    }

    @Override
    public final void zzk(long j10) throws IOException {
        try {
            byte[] bArr = this.zza;
            int i10 = this.zzc;
            int i11 = i10 + 1;
            this.zzc = i11;
            bArr[i10] = (byte) (((int) j10) & 255);
            int i12 = i10 + 2;
            this.zzc = i12;
            bArr[i11] = (byte) (((int) (j10 >> 8)) & 255);
            int i13 = i10 + 3;
            this.zzc = i13;
            bArr[i12] = (byte) (((int) (j10 >> 16)) & 255);
            int i14 = i10 + 4;
            this.zzc = i14;
            bArr[i13] = (byte) (((int) (j10 >> 24)) & 255);
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
        } catch (IndexOutOfBoundsException e10) {
            throw new zzasu(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e10);
        }
    }

    @Override
    public final void zzl(int i10, int i11) throws IOException {
        zzu(i10 << 3);
        zzm(i11);
    }

    @Override
    public final void zzm(int i10) throws IOException {
        if (i10 >= 0) {
            zzu(i10);
        } else {
            zzw(i10);
        }
    }

    @Override
    final void zzn(int i10, zzavf zzavfVar, zzavt zzavtVar) throws IOException {
        zzu((i10 << 3) | 2);
        zzu(((zzart) zzavfVar).zzak(zzavtVar));
        zzavtVar.zzj(zzavfVar, this.zze);
    }

    @Override
    public final void zzo(int i10, zzavf zzavfVar) throws IOException {
        zzu(11);
        zzt(2, i10);
        zzu(26);
        zzu(zzavfVar.zzaq());
        zzavfVar.zzaK(this);
        zzu(12);
    }

    @Override
    public final void zzp(int i10, zzask zzaskVar) throws IOException {
        zzu(11);
        zzt(2, i10);
        zzM(3, zzaskVar);
        zzu(12);
    }

    @Override
    public final void zzq(int i10, String str) throws IOException {
        zzu((i10 << 3) | 2);
        zzr(str);
    }

    public final void zzr(String str) throws IOException {
        int i10 = this.zzc;
        try {
            int iZzB = zzasx.zzB(str.length() * 3);
            int iZzB2 = zzasx.zzB(str.length());
            if (iZzB2 != iZzB) {
                zzu(zzaxc.zzc(str));
                byte[] bArr = this.zza;
                int i11 = this.zzc;
                this.zzc = zzaxc.zzb(str, bArr, i11, this.zzb - i11);
                return;
            }
            int i12 = i10 + iZzB2;
            this.zzc = i12;
            int iZzb = zzaxc.zzb(str, this.zza, i12, this.zzb - i12);
            this.zzc = i10;
            zzu((iZzb - i10) - iZzB2);
            this.zzc = iZzb;
        } catch (zzaxb e10) {
            this.zzc = i10;
            zzF(str, e10);
        } catch (IndexOutOfBoundsException e11) {
            throw new zzasu(e11);
        }
    }

    @Override
    public final void zzs(int i10, int i11) throws IOException {
        zzu((i10 << 3) | i11);
    }

    @Override
    public final void zzt(int i10, int i11) throws IOException {
        zzu(i10 << 3);
        zzu(i11);
    }

    @Override
    public final void zzu(int i10) throws IOException {
        while ((i10 & (-128)) != 0) {
            try {
                byte[] bArr = this.zza;
                int i11 = this.zzc;
                this.zzc = i11 + 1;
                bArr[i11] = (byte) ((i10 | 128) & 255);
                i10 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzasu(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e10);
            }
        }
        byte[] bArr2 = this.zza;
        int i12 = this.zzc;
        this.zzc = i12 + 1;
        bArr2[i12] = (byte) i10;
    }

    @Override
    public final void zzv(int i10, long j10) throws IOException {
        zzu(i10 << 3);
        zzw(j10);
    }

    @Override
    public final void zzw(long j10) throws IOException {
        if (!zzasx.zzb || this.zzb - this.zzc < 10) {
            while ((j10 & (-128)) != 0) {
                try {
                    byte[] bArr = this.zza;
                    int i10 = this.zzc;
                    this.zzc = i10 + 1;
                    bArr[i10] = (byte) ((((int) j10) | 128) & 255);
                    j10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new zzasu(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.zzc), Integer.valueOf(this.zzb), 1), e10);
                }
            }
            byte[] bArr2 = this.zza;
            int i11 = this.zzc;
            this.zzc = i11 + 1;
            bArr2[i11] = (byte) j10;
            return;
        }
        while (true) {
            int i12 = (int) j10;
            if ((j10 & (-128)) == 0) {
                byte[] bArr3 = this.zza;
                int i13 = this.zzc;
                this.zzc = 1 + i13;
                zzawx.zzn(bArr3, i13, (byte) i12);
                return;
            }
            byte[] bArr4 = this.zza;
            int i14 = this.zzc;
            this.zzc = i14 + 1;
            zzawx.zzn(bArr4, i14, (byte) ((i12 | 128) & 255));
            j10 >>>= 7;
        }
    }

    @Override
    public final void zzJ() {
    }
}
