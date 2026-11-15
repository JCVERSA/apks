package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.android.gms.measurement.internal.zzmy;
import com.google.android.gms.measurement.internal.zznc;

@TargetApi(24)
public final class AppMeasurementJobService extends JobService implements zznc {
    private zzmy<AppMeasurementJobService> zza;

    @Override
    public final void onCreate() {
        super.onCreate();
        zza().zza();
    }

    @Override
    public final void onDestroy() {
        zza().zzb();
        super.onDestroy();
    }

    @Override
    public final void onRebind(@NonNull Intent intent) {
        zza().zzb(intent);
    }

    @Override
    public final boolean onStartJob(@NonNull JobParameters jobParameters) {
        return zza().zza(jobParameters);
    }

    @Override
    public final boolean onStopJob(@NonNull JobParameters jobParameters) {
        return false;
    }

    @Override
    public final boolean onUnbind(@NonNull Intent intent) {
        return zza().zzc(intent);
    }

    @Override
    public final void zza(@NonNull Intent intent) {
    }

    private final zzmy<AppMeasurementJobService> zza() {
        if (this.zza == null) {
            this.zza = new zzmy<>(this);
        }
        return this.zza;
    }

    @Override
    @TargetApi(24)
    public final void zza(@NonNull JobParameters jobParameters, boolean z10) {
        jobFinished(jobParameters, false);
    }

    @Override
    public final boolean zza(int i10) {
        throw new UnsupportedOperationException();
    }
}
