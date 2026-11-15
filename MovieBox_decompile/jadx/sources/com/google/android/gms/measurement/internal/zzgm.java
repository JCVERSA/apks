package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.tasks.OnFailureListener;
import java.time.Duration;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLong;

public final class zzgm {
    private static zzgm zza;
    private static final Duration zzb = Duration.ofMinutes(30);
    private final zzhy zzc;
    private final TelemetryLoggingClient zzd;
    private final AtomicLong zze = new AtomicLong(-1);

    private zzgm(Context context, zzhy zzhyVar) {
        this.zzd = TelemetryLogging.getClient(context, TelemetryLoggingOptions.builder().setApi("measurement:api").build());
        this.zzc = zzhyVar;
    }

    static zzgm zza(zzhy zzhyVar) {
        if (zza == null) {
            zza = new zzgm(zzhyVar.zza(), zzhyVar);
        }
        return zza;
    }

    final void zza(long j10, Exception exc) {
        this.zze.set(j10);
    }

    public final synchronized void zza(int i10, int i11, long j10, long j11, int i12) {
        final long jElapsedRealtime = this.zzc.zzb().elapsedRealtime();
        if (this.zze.get() != -1 && jElapsedRealtime - this.zze.get() <= zzb.toMillis()) {
            return;
        }
        this.zzd.log(new TelemetryData(0, Arrays.asList(new MethodInvocation(36301, i11, 0, j10, j11, null, null, 0, i12)))).addOnFailureListener(new OnFailureListener() {
            @Override
            public final void onFailure(Exception exc) {
                this.zza.zza(jElapsedRealtime, exc);
            }
        });
    }
}
