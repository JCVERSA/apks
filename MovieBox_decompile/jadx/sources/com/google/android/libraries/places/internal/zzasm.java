package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Arrays;

final class zzasm extends zzasq {
    private final byte[] zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;

    zzasm(byte[] bArr, int i10, int i11, boolean z10, zzasl zzaslVar) {
        super(null);
        this.zzk = Integer.MAX_VALUE;
        this.zzf = bArr;
        this.zzg = i11;
        this.zzi = 0;
    }

    private final void zzL() {
        int i10 = this.zzg + this.zzh;
        this.zzg = i10;
        int i11 = this.zzk;
        if (i10 <= i11) {
            this.zzh = 0;
            return;
        }
        int i12 = i10 - i11;
        this.zzh = i12;
        this.zzg = i10 - i12;
    }

    @Override
    public final void zzA(int i10) {
        this.zzk = i10;
        zzL();
    }

    public final void zzB(int i10) throws IOException {
        if (i10 >= 0) {
            int i11 = this.zzg;
            int i12 = this.zzi;
            if (i10 <= i11 - i12) {
                this.zzi = i12 + i10;
                return;
            }
        }
        if (i10 >= 0) {
            throw zzauf.zzj();
        }
        throw zzauf.zzf();
    }

    @Override
    public final boolean zzC() throws IOException {
        return this.zzi == this.zzg;
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
            if (this.zzg - this.zzi < 10) {
                while (i12 < 10) {
                    if (zza() < 0) {
                        i12++;
                    }
                }
                throw zzauf.zze();
            }
            while (i12 < 10) {
                byte[] bArr = this.zzf;
                int i13 = this.zzi;
                this.zzi = i13 + 1;
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
        int i10 = this.zzi;
        if (i10 == this.zzg) {
            throw zzauf.zzj();
        }
        byte[] bArr = this.zzf;
        this.zzi = i10 + 1;
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
        return this.zzi;
    }

    @Override
    public final int zze(int i10) throws zzauf {
        if (i10 < 0) {
            throw zzauf.zzf();
        }
        int i11 = i10 + this.zzi;
        if (i11 < 0) {
            throw zzauf.zzg();
        }
        int i12 = this.zzk;
        if (i11 > i12) {
            throw zzauf.zzj();
        }
        this.zzk = i11;
        zzL();
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
        int i10 = this.zzi;
        if (this.zzg - i10 < 4) {
            throw zzauf.zzj();
        }
        byte[] bArr = this.zzf;
        this.zzi = i10 + 4;
        int i11 = bArr[i10] & 255;
        int i12 = bArr[i10 + 1] & 255;
        int i13 = bArr[i10 + 2] & 255;
        return ((bArr[i10 + 3] & 255) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    public final int zzj() throws IOException {
        int i10;
        int i11 = this.zzi;
        int i12 = this.zzg;
        if (i12 != i11) {
            byte[] bArr = this.zzf;
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 >= 0) {
                this.zzi = i13;
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
                this.zzi = i14;
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
            this.zzj = 0;
            return 0;
        }
        int iZzj = zzj();
        this.zzj = iZzj;
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
        int i10 = this.zzi;
        if (this.zzg - i10 < 8) {
            throw zzauf.zzj();
        }
        byte[] bArr = this.zzf;
        this.zzi = i10 + 8;
        long j10 = bArr[i10];
        long j11 = (((long) bArr[i10 + 1]) & 255) << 8;
        long j12 = bArr[i10 + 2];
        long j13 = bArr[i10 + 3];
        return ((((long) bArr[i10 + 7]) & 255) << 56) | (j10 & 255) | j11 | ((j12 & 255) << 16) | ((j13 & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    public final long zzr() throws IOException {
        long j10;
        long j11;
        int i10 = this.zzi;
        int i11 = this.zzg;
        if (i11 != i10) {
            byte[] bArr = this.zzf;
            int i12 = i10 + 1;
            byte b10 = bArr[i10];
            if (b10 >= 0) {
                this.zzi = i12;
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
                this.zzi = i13;
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
        if (iZzj > 0) {
            int i10 = this.zzg;
            int i11 = this.zzi;
            if (iZzj <= i10 - i11) {
                zzask zzaskVarZzl = zzask.zzl(this.zzf, i11, iZzj);
                this.zzi += iZzj;
                return zzaskVarZzl;
            }
        }
        if (iZzj == 0) {
            return zzask.zzb;
        }
        if (iZzj > 0) {
            int i12 = this.zzg;
            int i13 = this.zzi;
            if (iZzj <= i12 - i13) {
                int i14 = iZzj + i13;
                this.zzi = i14;
                return new zzash(Arrays.copyOfRange(this.zzf, i13, i14));
            }
        }
        if (iZzj <= 0) {
            throw zzauf.zzf();
        }
        throw zzauf.zzj();
    }

    @Override
    public final String zzx() throws IOException {
        int iZzj = zzj();
        if (iZzj > 0) {
            int i10 = this.zzg;
            int i11 = this.zzi;
            if (iZzj <= i10 - i11) {
                String str = new String(this.zzf, i11, iZzj, zzaud.zzb);
                this.zzi += iZzj;
                return str;
            }
        }
        if (iZzj == 0) {
            return "";
        }
        if (iZzj < 0) {
            throw zzauf.zzf();
        }
        throw zzauf.zzj();
    }

    @Override
    public final String zzy() throws IOException {
        int iZzj = zzj();
        if (iZzj > 0) {
            int i10 = this.zzg;
            int i11 = this.zzi;
            if (iZzj <= i10 - i11) {
                String strZzd = zzaxc.zzd(this.zzf, i11, iZzj);
                this.zzi += iZzj;
                return strZzd;
            }
        }
        if (iZzj == 0) {
            return "";
        }
        if (iZzj <= 0) {
            throw zzauf.zzf();
        }
        throw zzauf.zzj();
    }

    @Override
    public final void zzz(int i10) throws zzauf {
        if (this.zzj != i10) {
            throw zzauf.zzb();
        }
    }
}
