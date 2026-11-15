package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.OutputStream;

final class zzasv extends zzass {
    private final OutputStream zzg;

    zzasv(OutputStream outputStream, int i10) {
        super(i10);
        if (outputStream == null) {
            throw new NullPointerException("out");
        }
        this.zzg = outputStream;
    }

    private final void zzH() throws IOException {
        this.zzg.write(this.zza, 0, this.zzc);
        this.zzc = 0;
    }

    private final void zzI(int i10) throws IOException {
        if (this.zzb - this.zzc < i10) {
            zzH();
        }
    }

    @Override
    public final void zzJ() throws IOException {
        if (this.zzc > 0) {
            zzH();
        }
    }

    @Override
    public final void zzK(byte b10) throws IOException {
        if (this.zzc == this.zzb) {
            zzH();
        }
        zzc(b10);
    }

    @Override
    public final void zzL(int i10, boolean z10) throws IOException {
        zzI(11);
        zzf(i10 << 3);
        zzc(z10 ? (byte) 1 : (byte) 0);
    }

    @Override
    public final void zzM(int i10, zzask zzaskVar) throws IOException {
        zzu((i10 << 3) | 2);
        zzu(zzaskVar.zzd());
        zzaskVar.zzh(this);
    }

    @Override
    public final void zza(byte[] bArr, int i10, int i11) throws IOException {
        zzr(bArr, 0, i11);
    }

    @Override
    public final void zzh(int i10, int i11) throws IOException {
        zzI(14);
        zzf((i10 << 3) | 5);
        zzd(i11);
    }

    @Override
    public final void zzi(int i10) throws IOException {
        zzI(4);
        zzd(i10);
    }

    @Override
    public final void zzj(int i10, long j10) throws IOException {
        zzI(18);
        zzf((i10 << 3) | 1);
        zze(j10);
    }

    @Override
    public final void zzk(long j10) throws IOException {
        zzI(8);
        zze(j10);
    }

    @Override
    public final void zzl(int i10, int i11) throws IOException {
        zzI(20);
        zzf(i10 << 3);
        if (i11 >= 0) {
            zzf(i11);
        } else {
            zzg(i11);
        }
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
        zzx(str);
    }

    public final void zzr(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.zzb;
        int i13 = this.zzc;
        int i14 = i12 - i13;
        if (i14 >= i11) {
            System.arraycopy(bArr, 0, this.zza, i13, i11);
            this.zzc += i11;
            this.zzd += i11;
            return;
        }
        System.arraycopy(bArr, 0, this.zza, i13, i14);
        this.zzc = this.zzb;
        this.zzd += i14;
        zzH();
        int i15 = i11 - i14;
        if (i15 <= this.zzb) {
            System.arraycopy(bArr, i14, this.zza, 0, i15);
            this.zzc = i15;
        } else {
            this.zzg.write(bArr, i14, i15);
        }
        this.zzd += i15;
    }

    @Override
    public final void zzs(int i10, int i11) throws IOException {
        zzu((i10 << 3) | i11);
    }

    @Override
    public final void zzt(int i10, int i11) throws IOException {
        zzI(20);
        zzf(i10 << 3);
        zzf(i11);
    }

    @Override
    public final void zzu(int i10) throws IOException {
        zzI(5);
        zzf(i10);
    }

    @Override
    public final void zzv(int i10, long j10) throws IOException {
        zzI(20);
        zzf(i10 << 3);
        zzg(j10);
    }

    @Override
    public final void zzw(long j10) throws IOException {
        zzI(10);
        zzg(j10);
    }

    public final void zzx(String str) throws IOException {
        int iZzc;
        try {
            int length = str.length() * 3;
            int iZzB = zzasx.zzB(length);
            int i10 = iZzB + length;
            int i11 = this.zzb;
            if (i10 > i11) {
                byte[] bArr = new byte[length];
                int iZzb = zzaxc.zzb(str, bArr, 0, length);
                zzu(iZzb);
                zzr(bArr, 0, iZzb);
                return;
            }
            if (i10 > i11 - this.zzc) {
                zzH();
            }
            int iZzB2 = zzasx.zzB(str.length());
            int i12 = this.zzc;
            try {
                if (iZzB2 == iZzB) {
                    int i13 = i12 + iZzB2;
                    this.zzc = i13;
                    int iZzb2 = zzaxc.zzb(str, this.zza, i13, this.zzb - i13);
                    this.zzc = i12;
                    iZzc = (iZzb2 - i12) - iZzB2;
                    zzf(iZzc);
                    this.zzc = iZzb2;
                } else {
                    iZzc = zzaxc.zzc(str);
                    zzf(iZzc);
                    this.zzc = zzaxc.zzb(str, this.zza, this.zzc, iZzc);
                }
                this.zzd += iZzc;
            } catch (zzaxb e10) {
                this.zzd -= this.zzc - i12;
                this.zzc = i12;
                throw e10;
            } catch (ArrayIndexOutOfBoundsException e11) {
                throw new zzasu(e11);
            }
        } catch (zzaxb e12) {
            zzF(str, e12);
        }
    }
}
