package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

final class zzaso extends zzasq {
    private final InputStream zzf;
    private final byte[] zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private int zzm;

    zzaso(InputStream inputStream, int i10, zzasn zzasnVar) {
        super(null);
        this.zzm = Integer.MAX_VALUE;
        byte[] bArr = zzaud.zzd;
        this.zzf = inputStream;
        this.zzg = new byte[4096];
        this.zzh = 0;
        this.zzj = 0;
        this.zzl = 0;
    }

    private final List zzL(int i10) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i10 > 0) {
            int iMin = Math.min(i10, 4096);
            byte[] bArr = new byte[iMin];
            int i11 = 0;
            while (i11 < iMin) {
                int i12 = this.zzf.read(bArr, i11, iMin - i11);
                if (i12 == -1) {
                    throw zzauf.zzj();
                }
                this.zzl += i12;
                i11 += i12;
            }
            i10 -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private final void zzM() {
        int i10 = this.zzh + this.zzi;
        this.zzh = i10;
        int i11 = this.zzl + i10;
        int i12 = this.zzm;
        if (i11 <= i12) {
            this.zzi = 0;
            return;
        }
        int i13 = i11 - i12;
        this.zzi = i13;
        this.zzh = i10 - i13;
    }

    private final void zzN(int i10) throws IOException {
        if (zzO(i10)) {
            return;
        }
        if (i10 <= (this.zzc - this.zzl) - this.zzj) {
            throw zzauf.zzj();
        }
        throw zzauf.zzi();
    }

    private final boolean zzO(int i10) throws IOException {
        int i11 = this.zzj;
        int i12 = i11 + i10;
        int i13 = this.zzh;
        if (i12 <= i13) {
            throw new IllegalStateException("refillBuffer() called when " + i10 + " bytes were already available in buffer");
        }
        int i14 = this.zzc;
        int i15 = this.zzl;
        if (i10 > (i14 - i15) - i11 || i15 + i11 + i10 > this.zzm) {
            return false;
        }
        if (i11 > 0) {
            if (i13 > i11) {
                byte[] bArr = this.zzg;
                System.arraycopy(bArr, i11, bArr, 0, i13 - i11);
            }
            i15 = this.zzl + i11;
            this.zzl = i15;
            i13 = this.zzh - i11;
            this.zzh = i13;
            this.zzj = 0;
        }
        try {
            int i16 = this.zzf.read(this.zzg, i13, Math.min(4096 - i13, (this.zzc - i15) - i13));
            if (i16 == 0 || i16 < -1 || i16 > 4096) {
                throw new IllegalStateException(String.valueOf(this.zzf.getClass()) + "#read(byte[]) returned invalid result: " + i16 + "\nThe InputStream implementation is buggy.");
            }
            if (i16 <= 0) {
                return false;
            }
            this.zzh += i16;
            zzM();
            if (this.zzh >= i10) {
                return true;
            }
            return zzO(i10);
        } catch (zzauf e10) {
            e10.zzk();
            throw e10;
        }
    }

    private final byte[] zzP(int i10, boolean z10) throws IOException {
        byte[] bArrZzQ = zzQ(i10);
        if (bArrZzQ != null) {
            return bArrZzQ;
        }
        int i11 = this.zzj;
        int i12 = this.zzh;
        int i13 = i12 - i11;
        this.zzl += i12;
        this.zzj = 0;
        this.zzh = 0;
        List<byte[]> listZzL = zzL(i10 - i13);
        byte[] bArr = new byte[i10];
        System.arraycopy(this.zzg, i11, bArr, 0, i13);
        for (byte[] bArr2 : listZzL) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i13, length);
            i13 += length;
        }
        return bArr;
    }

    private final byte[] zzQ(int i10) throws IOException {
        if (i10 == 0) {
            return zzaud.zzd;
        }
        int i11 = this.zzl;
        int i12 = this.zzj;
        int i13 = i11 + i12 + i10;
        if (i13 - this.zzc > 0) {
            throw zzauf.zzi();
        }
        int i14 = this.zzm;
        if (i13 > i14) {
            zzB((i14 - i11) - i12);
            throw zzauf.zzj();
        }
        int i15 = this.zzh - i12;
        int i16 = i10 - i15;
        if (i16 >= 4096) {
            try {
                if (i16 > this.zzf.available()) {
                    return null;
                }
            } catch (zzauf e10) {
                e10.zzk();
                throw e10;
            }
        }
        byte[] bArr = new byte[i10];
        System.arraycopy(this.zzg, this.zzj, bArr, 0, i15);
        this.zzl += this.zzh;
        this.zzj = 0;
        this.zzh = 0;
        while (i15 < i10) {
            try {
                int i17 = this.zzf.read(bArr, i15, i10 - i15);
                if (i17 == -1) {
                    throw zzauf.zzj();
                }
                this.zzl += i17;
                i15 += i17;
            } catch (zzauf e11) {
                e11.zzk();
                throw e11;
            }
        }
        return bArr;
    }

    @Override
    public final void zzA(int i10) {
        this.zzm = i10;
        zzM();
    }

    public final void zzB(int i10) throws IOException {
        int i11 = this.zzh;
        int i12 = this.zzj;
        int i13 = i11 - i12;
        if (i10 <= i13 && i10 >= 0) {
            this.zzj = i12 + i10;
            return;
        }
        if (i10 < 0) {
            throw zzauf.zzf();
        }
        int i14 = this.zzl;
        int i15 = i14 + i12;
        int i16 = this.zzm;
        if (i15 + i10 > i16) {
            zzB((i16 - i14) - i12);
            throw zzauf.zzj();
        }
        this.zzl = i15;
        this.zzh = 0;
        this.zzj = 0;
        while (i13 < i10) {
            try {
                long j10 = i10 - i13;
                try {
                    long jSkip = this.zzf.skip(j10);
                    if (jSkip < 0 || jSkip > j10) {
                        throw new IllegalStateException(String.valueOf(this.zzf.getClass()) + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i13 += (int) jSkip;
                    }
                } catch (zzauf e10) {
                    e10.zzk();
                    throw e10;
                }
            } catch (Throwable th2) {
                this.zzl += i13;
                zzM();
                throw th2;
            }
        }
        this.zzl += i13;
        zzM();
        if (i13 >= i10) {
            return;
        }
        int i17 = this.zzh;
        int i18 = i17 - this.zzj;
        this.zzj = i17;
        zzN(1);
        while (true) {
            int i19 = i10 - i18;
            int i20 = this.zzh;
            if (i19 <= i20) {
                this.zzj = i19;
                return;
            } else {
                i18 += i20;
                this.zzj = i20;
                zzN(1);
            }
        }
    }

    @Override
    public final boolean zzC() throws IOException {
        return this.zzj == this.zzh && !zzO(1);
    }

    @Override
    public final boolean zzD() throws IOException {
        return zzr() != 0;
    }

    @Override
    public final boolean zzE(int i10) throws IOException {
        int iZzm;
        int i11 = i10 & 7;
        int i12 = 0;
        if (i11 == 0) {
            if (this.zzh - this.zzj < 10) {
                while (i12 < 10) {
                    if (zza() < 0) {
                        i12++;
                    }
                }
                throw zzauf.zze();
            }
            while (i12 < 10) {
                byte[] bArr = this.zzg;
                int i13 = this.zzj;
                this.zzj = i13 + 1;
                if (bArr[i13] < 0) {
                    i12++;
                }
            }
            throw zzauf.zze();
            return true;
        }
        if (i11 == 1) {
            zzB(8);
            return true;
        }
        if (i11 == 2) {
            zzB(zzj());
            return true;
        }
        if (i11 != 3) {
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                throw zzauf.zza();
            }
            zzB(4);
            return true;
        }
        do {
            iZzm = zzm();
            if (iZzm == 0) {
                break;
            }
        } while (zzE(iZzm));
        zzz(((i10 >>> 3) << 3) | 4);
        return true;
    }

    public final byte zza() throws IOException {
        if (this.zzj == this.zzh) {
            zzN(1);
        }
        byte[] bArr = this.zzg;
        int i10 = this.zzj;
        this.zzj = i10 + 1;
        return bArr[i10];
    }

    @Override
    public final double zzb() throws IOException {
        return Double.longBitsToDouble(zzq());
    }

    @Override
    public final float zzc() throws IOException {
        return Float.intBitsToFloat(zzi());
    }

    @Override
    public final int zzd() {
        return this.zzl + this.zzj;
    }

    @Override
    public final int zze(int i10) throws zzauf {
        if (i10 < 0) {
            throw zzauf.zzf();
        }
        int i11 = this.zzl + this.zzj;
        int i12 = this.zzm;
        int i13 = i10 + i11;
        if (i13 > i12) {
            throw zzauf.zzj();
        }
        this.zzm = i13;
        zzM();
        return i12;
    }

    @Override
    public final int zzf() throws IOException {
        return zzj();
    }

    @Override
    public final int zzg() throws IOException {
        return zzi();
    }

    @Override
    public final int zzh() throws IOException {
        return zzj();
    }

    public final int zzi() throws IOException {
        int i10 = this.zzj;
        if (this.zzh - i10 < 4) {
            zzN(4);
            i10 = this.zzj;
        }
        byte[] bArr = this.zzg;
        this.zzj = i10 + 4;
        int i11 = bArr[i10] & 255;
        int i12 = bArr[i10 + 1] & 255;
        int i13 = bArr[i10 + 2] & 255;
        return ((bArr[i10 + 3] & 255) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    public final int zzj() throws IOException {
        int i10;
        int i11 = this.zzj;
        int i12 = this.zzh;
        if (i12 != i11) {
            byte[] bArr = this.zzg;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.zzj = i13;
                return b10;
            }
            if (i12 - i13 >= 9) {
                int i14 = i11 + 2;
                int i15 = (bArr[i13] << 7) ^ b10;
                if (i15 < 0) {
                    i10 = i15 ^ (-128);
                } else {
                    int i16 = i11 + 3;
                    int i17 = (bArr[i14] << 14) ^ i15;
                    if (i17 >= 0) {
                        i10 = i17 ^ 16256;
                    } else {
                        int i18 = i11 + 4;
                        int i19 = i17 ^ (bArr[i16] << 21);
                        if (i19 < 0) {
                            i10 = (-2080896) ^ i19;
                        } else {
                            i16 = i11 + 5;
                            byte b11 = bArr[i18];
                            int i20 = (i19 ^ (b11 << 28)) ^ 266354560;
                            if (b11 < 0) {
                                i18 = i11 + 6;
                                if (bArr[i16] < 0) {
                                    i16 = i11 + 7;
                                    if (bArr[i18] < 0) {
                                        i18 = i11 + 8;
                                        if (bArr[i16] < 0) {
                                            i16 = i11 + 9;
                                            if (bArr[i18] < 0) {
                                                int i21 = i11 + 10;
                                                if (bArr[i16] >= 0) {
                                                    i14 = i21;
                                                    i10 = i20;
                                                }
                                            }
                                        }
                                    }
                                }
                                i10 = i20;
                            }
                            i10 = i20;
                        }
                        i14 = i18;
                    }
                    i14 = i16;
                }
                this.zzj = i14;
                return i10;
            }
        }
        return (int) zzs();
    }

    @Override
    public final int zzk() throws IOException {
        return zzi();
    }

    @Override
    public final int zzl() throws IOException {
        return zzasq.zzF(zzj());
    }

    @Override
    public final int zzm() throws IOException {
        if (zzC()) {
            this.zzk = 0;
            return 0;
        }
        int iZzj = zzj();
        this.zzk = iZzj;
        if ((iZzj >>> 3) != 0) {
            return iZzj;
        }
        throw zzauf.zzc();
    }

    @Override
    public final int zzn() throws IOException {
        return zzj();
    }

    @Override
    public final long zzo() throws IOException {
        return zzq();
    }

    @Override
    public final long zzp() throws IOException {
        return zzr();
    }

    public final long zzq() throws IOException {
        int i10 = this.zzj;
        if (this.zzh - i10 < 8) {
            zzN(8);
            i10 = this.zzj;
        }
        byte[] bArr = this.zzg;
        this.zzj = i10 + 8;
        long j10 = bArr[i10];
        long j11 = (((long) bArr[i10 + 1]) & 255) << 8;
        long j12 = bArr[i10 + 2];
        long j13 = bArr[i10 + 3];
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (j10 & 255) | j11 | ((j12 & 255) << 16) | ((j13 & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    public final long zzr() throws IOException {
        long j10;
        long j11;
        int i10 = this.zzj;
        int i11 = this.zzh;
        if (i11 != i10) {
            byte[] bArr = this.zzg;
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.zzj = i12;
                return b10;
            }
            if (i11 - i12 >= 9) {
                int i13 = i10 + 2;
                int i14 = (bArr[i12] << 7) ^ b10;
                if (i14 < 0) {
                    j10 = i14 ^ (-128);
                } else {
                    int i15 = i10 + 3;
                    int i16 = (bArr[i13] << 14) ^ i14;
                    if (i16 >= 0) {
                        j10 = i16 ^ 16256;
                    } else {
                        int i17 = i10 + 4;
                        int i18 = i16 ^ (bArr[i15] << 21);
                        if (i18 < 0) {
                            long j12 = (-2080896) ^ i18;
                            i13 = i17;
                            j10 = j12;
                        } else {
                            i15 = i10 + 5;
                            long j13 = (((long) bArr[i17]) << 28) ^ ((long) i18);
                            if (j13 >= 0) {
                                j10 = j13 ^ 266354560;
                            } else {
                                i13 = i10 + 6;
                                long j14 = (((long) bArr[i15]) << 35) ^ j13;
                                if (j14 < 0) {
                                    j11 = -34093383808L;
                                } else {
                                    int i19 = i10 + 7;
                                    long j15 = j14 ^ (((long) bArr[i13]) << 42);
                                    if (j15 >= 0) {
                                        j10 = j15 ^ 4363953127296L;
                                    } else {
                                        i13 = i10 + 8;
                                        j14 = j15 ^ (((long) bArr[i19]) << 49);
                                        if (j14 < 0) {
                                            j11 = -558586000294016L;
                                        } else {
                                            i19 = i10 + 9;
                                            long j16 = (j14 ^ (((long) bArr[i13]) << 56)) ^ 71499008037633920L;
                                            if (j16 < 0) {
                                                i13 = i10 + 10;
                                                if (bArr[i19] >= 0) {
                                                    j10 = j16;
                                                }
                                            } else {
                                                j10 = j16;
                                            }
                                        }
                                    }
                                    i13 = i19;
                                }
                                j10 = j14 ^ j11;
                            }
                        }
                    }
                    i13 = i15;
                }
                this.zzj = i13;
                return j10;
            }
        }
        return zzs();
    }

    final long zzs() throws IOException {
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            byte bZza = zza();
            j10 |= ((long) (bZza & 127)) << i10;
            if ((bZza & 128) == 0) {
                return j10;
            }
        }
        throw zzauf.zze();
    }

    @Override
    public final long zzt() throws IOException {
        return zzq();
    }

    @Override
    public final long zzu() throws IOException {
        return zzasq.zzH(zzr());
    }

    @Override
    public final long zzv() throws IOException {
        return zzr();
    }

    @Override
    public final zzask zzw() throws IOException {
        int iZzj = zzj();
        int i10 = this.zzh;
        int i11 = this.zzj;
        if (iZzj <= i10 - i11 && iZzj > 0) {
            zzask zzaskVarZzl = zzask.zzl(this.zzg, i11, iZzj);
            this.zzj += iZzj;
            return zzaskVarZzl;
        }
        if (iZzj == 0) {
            return zzask.zzb;
        }
        if (iZzj < 0) {
            throw zzauf.zzf();
        }
        byte[] bArrZzQ = zzQ(iZzj);
        if (bArrZzQ != null) {
            return zzask.zzl(bArrZzQ, 0, bArrZzQ.length);
        }
        int i12 = this.zzj;
        int i13 = this.zzh;
        int i14 = i13 - i12;
        this.zzl += i13;
        this.zzj = 0;
        this.zzh = 0;
        List<byte[]> listZzL = zzL(iZzj - i14);
        byte[] bArr = new byte[iZzj];
        System.arraycopy(this.zzg, i12, bArr, 0, i14);
        for (byte[] bArr2 : listZzL) {
            int length = bArr2.length;
            System.arraycopy(bArr2, 0, bArr, i14, length);
            i14 += length;
        }
        return new zzash(bArr);
    }

    @Override
    public final String zzx() throws IOException {
        int iZzj = zzj();
        if (iZzj > 0) {
            int i10 = this.zzh;
            int i11 = this.zzj;
            if (iZzj <= i10 - i11) {
                String str = new String(this.zzg, i11, iZzj, zzaud.zzb);
                this.zzj += iZzj;
                return str;
            }
        }
        if (iZzj == 0) {
            return "";
        }
        if (iZzj < 0) {
            throw zzauf.zzf();
        }
        if (iZzj > this.zzh) {
            return new String(zzP(iZzj, false), zzaud.zzb);
        }
        zzN(iZzj);
        String str2 = new String(this.zzg, this.zzj, iZzj, zzaud.zzb);
        this.zzj += iZzj;
        return str2;
    }

    @Override
    public final String zzy() throws IOException {
        byte[] bArrZzP;
        int iZzj = zzj();
        int i10 = this.zzj;
        int i11 = this.zzh;
        if (iZzj <= i11 - i10 && iZzj > 0) {
            bArrZzP = this.zzg;
            this.zzj = i10 + iZzj;
        } else {
            if (iZzj == 0) {
                return "";
            }
            if (iZzj < 0) {
                throw zzauf.zzf();
            }
            i10 = 0;
            if (iZzj <= i11) {
                zzN(iZzj);
                bArrZzP = this.zzg;
                this.zzj = iZzj;
            } else {
                bArrZzP = zzP(iZzj, false);
            }
        }
        return zzaxc.zzd(bArrZzP, i10, iZzj);
    }

    @Override
    public final void zzz(int i10) throws zzauf {
        if (this.zzk != i10) {
            throw zzauf.zzb();
        }
    }
}
