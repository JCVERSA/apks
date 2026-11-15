package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzpn;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

final class zziy implements Callable<List<zzno>> {
    private final zzo zza;
    private final Bundle zzb;
    private final zzic zzc;

    zziy(zzic zzicVar, zzo zzoVar, Bundle bundle) {
        this.zza = zzoVar;
        this.zzb = bundle;
        this.zzc = zzicVar;
    }

    @Override
    public final List<zzno> call() throws Exception {
        this.zzc.zza.zzr();
        zznv zznvVar = this.zzc.zza;
        zzo zzoVar = this.zza;
        Bundle bundle = this.zzb;
        zznvVar.zzl().zzt();
        if (!zzpn.zza() || !zznvVar.zze().zze(zzoVar.zza, zzbh.zzch) || zzoVar.zza == null) {
            return new ArrayList();
        }
        if (bundle != null) {
            int[] intArray = bundle.getIntArray("uriSources");
            long[] longArray = bundle.getLongArray("uriTimestamps");
            if (intArray != null) {
                if (longArray == null || longArray.length != intArray.length) {
                    zznvVar.zzj().zzg().zza("Uri sources and timestamps do not match");
                } else {
                    for (int i10 = 0; i10 < intArray.length; i10++) {
                        zzal zzalVarZzf = zznvVar.zzf();
                        String str = zzoVar.zza;
                        int i11 = intArray[i10];
                        long j10 = longArray[i10];
                        Preconditions.checkNotEmpty(str);
                        zzalVarZzf.zzt();
                        zzalVarZzf.zzal();
                        try {
                            int iDelete = zzalVarZzf.e_().delete("trigger_uris", "app_id=? and source=? and timestamp_millis<=?", new String[]{str, String.valueOf(i11), String.valueOf(j10)});
                            zzalVarZzf.zzj().zzp().zza("Pruned " + iDelete + " trigger URIs. appId, source, timestamp", str, Integer.valueOf(i11), Long.valueOf(j10));
                        } catch (SQLiteException e10) {
                            zzalVarZzf.zzj().zzg().zza("Error pruning trigger URIs. appId", zzgo.zza(str), e10);
                        }
                    }
                }
            }
        }
        return zznvVar.zzf().zzk(zzoVar.zza);
    }
}
