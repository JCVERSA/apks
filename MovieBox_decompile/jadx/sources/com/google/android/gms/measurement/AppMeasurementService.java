package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.internal.zzmy;
import com.google.android.gms.measurement.internal.zznc;

public final class AppMeasurementService extends Service implements zznc {
    private zzmy<AppMeasurementService> zza;

    private final zzmy<AppMeasurementService> zza() {
        if (this.zza == null) {
            this.zza = new zzmy<>(this);
        }
        return this.zza;
    }

    @Override
    @Nullable
    public final IBinder onBind(@NonNull Intent intent) {
        return zza().zza(intent);
    }

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
    public final int onStartCommand(@NonNull Intent intent, int i10, int i11) {
        return zza().zza(intent, i10, i11);
    }

    @Override
    public final boolean onUnbind(@NonNull Intent intent) {
        return zza().zzc(intent);
    }

    @Override
    public final void zza(@NonNull Intent intent) {
        WakefulBroadcastReceiver.completeWakefulIntent(intent);
    }

    @Override
    public final void zza(@NonNull JobParameters jobParameters, boolean z10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean zza(int i10) {
        return stopSelfResult(i10);
    }
}
