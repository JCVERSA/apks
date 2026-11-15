package com.google.android.libraries.places.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class zzbtu {
    zzbtt[] zza;
    int zzb;
    private final zzbwd zzf;
    private final List zze = new ArrayList();
    int zzc = 0;
    int zzd = 0;
    private int zzg = 4096;
    private int zzh = 4096;

    zzbtu(int i10, int i11, zzbws zzbwsVar) {
        zzbtt[] zzbttVarArr = new zzbtt[8];
        this.zza = zzbttVarArr;
        this.zzb = zzbttVarArr.length - 1;
        this.zzf = zzbwh.zzb(zzbwsVar);
    }

    private final int zzf(int i10) {
        return this.zzb + 1 + i10;
    }

    private final int zzg(int i10) {
        int i11;
        int i12 = 0;
        if (i10 > 0) {
            int length = this.zza.length;
            while (true) {
                length--;
                i11 = this.zzb;
                if (length < i11 || i10 <= 0) {
                    break;
                }
                int i13 = this.zza[length].zzj;
                i10 -= i13;
                this.zzd -= i13;
                this.zzc--;
                i12++;
            }
            zzbtt[] zzbttVarArr = this.zza;
            int i14 = i11 + 1;
            System.arraycopy(zzbttVarArr, i14, zzbttVarArr, i14 + i12, this.zzc);
            this.zzb += i12;
        }
        return i12;
    }

    private final int zzh() throws IOException {
        return this.zzf.zzc() & 255;
    }

    private final zzbwf zzi(int i10) throws IOException {
        if (zzm(i10)) {
            return zzbtw.zzb[i10].zzh;
        }
        int length = zzbtw.zzb.length;
        int iZzf = zzf(i10 - 61);
        if (iZzf >= 0) {
            zzbtt[] zzbttVarArr = this.zza;
            if (iZzf < zzbttVarArr.length) {
                return zzbttVarArr[iZzf].zzh;
            }
        }
        throw new IOException("Header index too large " + (i10 + 1));
    }

    private final void zzj() {
        int i10 = this.zzh;
        int i11 = this.zzd;
        if (i10 < i11) {
            if (i10 == 0) {
                zzk();
            } else {
                zzg(i11 - i10);
            }
        }
    }

    private final void zzk() {
        Arrays.fill(this.zza, (Object) null);
        this.zzb = this.zza.length - 1;
        this.zzc = 0;
        this.zzd = 0;
    }

    private final void zzl(int i10, zzbtt zzbttVar) {
        this.zze.add(zzbttVar);
        int i11 = zzbttVar.zzj;
        int i12 = this.zzh;
        if (i11 > i12) {
            zzk();
            return;
        }
        zzg((this.zzd + i11) - i12);
        int i13 = this.zzc + 1;
        zzbtt[] zzbttVarArr = this.zza;
        int length = zzbttVarArr.length;
        if (i13 > length) {
            zzbtt[] zzbttVarArr2 = new zzbtt[length + length];
            System.arraycopy(zzbttVarArr, 0, zzbttVarArr2, length, length);
            this.zzb = this.zza.length - 1;
            this.zza = zzbttVarArr2;
        }
        int i14 = this.zzb;
        this.zzb = i14 - 1;
        this.zza[i14] = zzbttVar;
        this.zzc++;
        this.zzd += i11;
    }

    private static final boolean zzm(int i10) {
        if (i10 < 0) {
            return false;
        }
        int length = zzbtw.zzb.length;
        return i10 <= 60;
    }

    final int zza(int i10, int i11) throws IOException {
        int i12 = i10 & i11;
        if (i12 < i11) {
            return i12;
        }
        int i13 = 0;
        while (true) {
            int iZzh = zzh();
            if ((iZzh & 128) == 0) {
                return i11 + (iZzh << i13);
            }
            i11 += (iZzh & 127) << i13;
            i13 += 7;
        }
    }

    public final List zzb() {
        ArrayList arrayList = new ArrayList(this.zze);
        this.zze.clear();
        return arrayList;
    }

    final zzbwf zzc() throws IOException {
        int iZzh = zzh();
        int i10 = iZzh & 128;
        long jZza = zza(iZzh, 127);
        if (i10 != 128) {
            return this.zzf.zzy(jZza);
        }
        zzbwd zzbwdVar = this.zzf;
        zzbud zzbudVarZza = zzbud.zza();
        zzbwl zzbwlVar = (zzbwl) zzbwdVar;
        zzbwlVar.zzD(jZza);
        byte[] bArrZzb = zzbudVarZza.zzb(zzbwlVar.zzb.zzH(jZza));
        zzbwe zzbweVar = zzbwf.zza;
        return zzbwe.zzb(bArrZzb);
    }

    final void zzd(int i10) {
        this.zzg = i10;
        this.zzh = i10;
        zzj();
    }

    final void zze() throws IOException {
        while (true) {
            zzbwl zzbwlVar = (zzbwl) this.zzf;
            if (zzbwlVar.zzc) {
                throw new IllegalStateException("closed");
            }
            zzbwb zzbwbVar = zzbwlVar.zzb;
            if (zzbwbVar.zzG() && zzbwlVar.zza.zza(zzbwbVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return;
            }
            byte bZzc = this.zzf.zzc();
            int i10 = bZzc & 255;
            if (i10 == 128) {
                throw new IOException("index == 0");
            }
            if ((bZzc & 128) == 128) {
                int iZza = zza(i10, 127);
                int i11 = iZza - 1;
                if (!zzm(i11)) {
                    int length = zzbtw.zzb.length;
                    int iZzf = zzf(iZza - 62);
                    if (iZzf >= 0) {
                        zzbtt[] zzbttVarArr = this.zza;
                        if (iZzf <= zzbttVarArr.length - 1) {
                            this.zze.add(zzbttVarArr[iZzf]);
                        }
                    }
                    throw new IOException("Header index too large " + iZza);
                }
                this.zze.add(zzbtw.zzb[i11]);
            } else if (i10 == 64) {
                zzbwf zzbwfVarZzc = zzc();
                zzbtw.zzc(zzbwfVarZzc);
                zzl(-1, new zzbtt(zzbwfVarZzc, zzc()));
            } else if ((bZzc & 64) == 64) {
                zzl(-1, new zzbtt(zzi(zza(i10, 63) - 1), zzc()));
            } else if ((bZzc & 32) == 32) {
                int iZza2 = zza(i10, 31);
                this.zzh = iZza2;
                if (iZza2 < 0 || iZza2 > this.zzg) {
                    throw new IOException("Invalid dynamic table size update " + iZza2);
                }
                zzj();
            } else if (i10 == 16 || i10 == 0) {
                zzbwf zzbwfVarZzc2 = zzc();
                zzbtw.zzc(zzbwfVarZzc2);
                this.zze.add(new zzbtt(zzbwfVarZzc2, zzc()));
            } else {
                this.zze.add(new zzbtt(zzi(zza(i10, 15) - 1), zzc()));
            }
        }
    }
}
