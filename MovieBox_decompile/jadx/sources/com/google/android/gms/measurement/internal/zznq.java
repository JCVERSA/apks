package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.common.util.Clock;

public final class zznq extends zznr {
    private final AlarmManager zza;
    private zzav zzb;
    private Integer zzc;

    protected zznq(zznv zznvVar) {
        super(zznvVar);
        this.zza = (AlarmManager) zza().getSystemService(NotificationCompat.CATEGORY_ALARM);
    }

    private final int zzv() {
        if (this.zzc == null) {
            this.zzc = Integer.valueOf(("measurement" + zza().getPackageName()).hashCode());
        }
        return this.zzc.intValue();
    }

    private final PendingIntent zzw() {
        Context contextZza = zza();
        return com.google.android.gms.internal.measurement.zzcw.zza(contextZza, 0, new Intent().setClassName(contextZza, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), com.google.android.gms.internal.measurement.zzcw.zza);
    }

    private final zzav zzx() {
        if (this.zzb == null) {
            this.zzb = new zznp(this, this.zzg.zzk());
        }
        return this.zzb;
    }

    @TargetApi(24)
    private final void zzy() {
        JobScheduler jobScheduler = (JobScheduler) zza().getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(zzv());
        }
    }

    @Override
    public final zzoo g_() {
        return super.g_();
    }

    @Override
    public final Context zza() {
        return super.zza();
    }

    @Override
    public final Clock zzb() {
        return super.zzb();
    }

    @Override
    protected final boolean zzc() {
        AlarmManager alarmManager = this.zza;
        if (alarmManager != null) {
            alarmManager.cancel(zzw());
        }
        if (Build.VERSION.SDK_INT < 24) {
            return false;
        }
        zzy();
        return false;
    }

    @Override
    public final zzab zzd() {
        return super.zzd();
    }

    @Override
    public final zzag zze() {
        return super.zze();
    }

    @Override
    public final zzaz zzf() {
        return super.zzf();
    }

    @Override
    public final zzt zzg() {
        return super.zzg();
    }

    @Override
    public final zzal zzh() {
        return super.zzh();
    }

    @Override
    public final zzgh zzi() {
        return super.zzi();
    }

    @Override
    public final zzgo zzj() {
        return super.zzj();
    }

    @Override
    public final zzha zzk() {
        return super.zzk();
    }

    @Override
    public final zzhv zzl() {
        return super.zzl();
    }

    @Override
    public final zzhl zzm() {
        return super.zzm();
    }

    @Override
    public final zzmw zzn() {
        return super.zzn();
    }

    @Override
    public final zznu zzo() {
        return super.zzo();
    }

    @Override
    public final zzos zzq() {
        return super.zzq();
    }

    @Override
    public final void zzr() {
        super.zzr();
    }

    @Override
    public final void zzs() {
        super.zzs();
    }

    @Override
    public final void zzt() {
        super.zzt();
    }

    public final void zzu() {
        zzal();
        zzj().zzp().zza("Unscheduling upload");
        AlarmManager alarmManager = this.zza;
        if (alarmManager != null) {
            alarmManager.cancel(zzw());
        }
        zzx().zza();
        if (Build.VERSION.SDK_INT >= 24) {
            zzy();
        }
    }

    public final void zza(long j10) {
        zzal();
        Context contextZza = zza();
        if (!zzos.zza(contextZza)) {
            zzj().zzc().zza("Receiver not registered/enabled");
        }
        if (!zzos.zza(contextZza, false)) {
            zzj().zzc().zza("Service not registered/enabled");
        }
        zzu();
        zzj().zzp().zza("Scheduling upload, millis", Long.valueOf(j10));
        long jElapsedRealtime = zzb().elapsedRealtime() + j10;
        if (j10 < Math.max(0L, zzbh.zzy.zza(null).longValue()) && !zzx().zzc()) {
            zzx().zza(j10);
        }
        if (Build.VERSION.SDK_INT < 24) {
            AlarmManager alarmManager = this.zza;
            if (alarmManager != null) {
                alarmManager.setInexactRepeating(2, jElapsedRealtime, Math.max(zzbh.zzt.zza(null).longValue(), j10), zzw());
                return;
            }
            return;
        }
        Context contextZza2 = zza();
        ComponentName componentName = new ComponentName(contextZza2, "com.google.android.gms.measurement.AppMeasurementJobService");
        int iZzv = zzv();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString(EventConstants.KEY_ACTION, "com.google.android.gms.measurement.UPLOAD");
        com.google.android.gms.internal.measurement.zzcv.zza(contextZza2, new JobInfo.Builder(iZzv, componentName).setMinimumLatency(j10).setOverrideDeadline(j10 << 1).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }
}
