package com.google.android.libraries.places.internal;

import com.cloud.tmc.integration.event.EventConstants;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import okhttp3.internal.http2.Settings;

final class zzbsu {
    private final zzbsr zza;
    private final zzbts zzb;
    private int zzc;
    private final zzbsq zzd;

    public zzbsu(zzbsr zzbsrVar, zzbts zzbtsVar) {
        this.zza = zzbsrVar;
        zzmt.zzc(zzbtsVar, "frameWriter");
        this.zzb = zzbtsVar;
        this.zzc = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.zzd = new zzbsq(this, 0, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
    }

    public final int zza(zzbsq zzbsqVar, int i10) {
        if (zzbsqVar == null) {
            int iZzb = this.zzd.zzb(i10);
            zzg();
            return iZzb;
        }
        int iZzb2 = zzbsqVar.zzb(i10);
        zzbst zzbstVar = new zzbst(null);
        zzbsqVar.zzf(zzbsqVar.zze(), zzbstVar);
        if (!zzbstVar.zza()) {
            return iZzb2;
        }
        zzf();
        return iZzb2;
    }

    public final zzbsq zzc(zzbsp zzbspVar, int i10) {
        return new zzbsq(this, i10, this.zzc, zzbspVar);
    }

    public final void zze(boolean z10, zzbsq zzbsqVar, zzbwb zzbwbVar, boolean z11) {
        zzmt.zzc(zzbwbVar, EventConstants.KEY_SOURCE);
        int iZze = zzbsqVar.zze();
        boolean zZzk = zzbsqVar.zzk();
        int iZzg = (int) zzbwbVar.zzg();
        if (zZzk || iZze < iZzg) {
            if (!zZzk && iZze > 0) {
                zzbsqVar.zzj(zzbwbVar, iZze, false);
            }
            zzbsqVar.zzi(zzbwbVar, (int) zzbwbVar.zzg(), z10);
        } else {
            zzbsqVar.zzj(zzbwbVar, iZzg, z10);
        }
        if (z11) {
            zzf();
        }
    }

    public final void zzf() {
        try {
            this.zzb.zzg();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public final void zzg() {
        int i10;
        zzbsq[] zzbsqVarArrZzV = this.zza.zzV();
        Collections.shuffle(Arrays.asList(zzbsqVarArrZzV));
        int length = zzbsqVarArrZzV.length;
        int iZzd = this.zzd.zzd();
        while (true) {
            i10 = 0;
            if (length <= 0 || iZzd <= 0) {
                break;
            }
            int iCeil = (int) Math.ceil(iZzd / length);
            for (int i11 = 0; i11 < length && iZzd > 0; i11++) {
                zzbsq zzbsqVar = zzbsqVarArrZzV[i11];
                int iMin = Math.min(iZzd, Math.min(zzbsqVar.zzc(), iCeil));
                if (iMin > 0) {
                    zzbsqVar.zzg(iMin);
                    iZzd -= iMin;
                }
                if (zzbsqVar.zzc() > 0) {
                    zzbsqVarArrZzV[i10] = zzbsqVar;
                    i10++;
                }
            }
            length = i10;
        }
        zzbst zzbstVar = new zzbst(null);
        zzbsq[] zzbsqVarArrZzV2 = this.zza.zzV();
        int length2 = zzbsqVarArrZzV2.length;
        while (i10 < length2) {
            zzbsq zzbsqVar2 = zzbsqVarArrZzV2[i10];
            zzbsqVar2.zzf(zzbsqVar2.zza(), zzbstVar);
            zzbsqVar2.zzh();
            i10++;
        }
        if (zzbstVar.zza()) {
            zzf();
        }
    }

    public final boolean zzh(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Invalid initial window size: " + i10);
        }
        int i11 = i10 - this.zzc;
        this.zzc = i10;
        for (zzbsq zzbsqVar : this.zza.zzV()) {
            zzbsqVar.zzb(i11);
        }
        return i11 > 0;
    }
}
