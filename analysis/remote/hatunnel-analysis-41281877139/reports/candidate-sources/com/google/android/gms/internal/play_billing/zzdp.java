package com.google.android.gms.internal.play_billing;

import app.fast.ssh.ProtectedFastSSH;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class zzdp extends zzdb {
    private zzdk zzd;
    private ScheduledFuture zze;

    private zzdp(zzdk zzdkVar) {
        this.zzd = zzdkVar;
    }

    static zzdk zzr(zzdp zzdpVar) {
        return zzdpVar.zzd;
    }

    static zzdk zzs(zzdk zzdkVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzdp zzdpVar = new zzdp(zzdkVar);
        zzdm zzdmVar = new zzdm(zzdpVar);
        zzdpVar.zze = scheduledExecutorService.schedule(zzdmVar, 28500L, timeUnit);
        zzdkVar.zzb(zzdmVar, zzda.zza);
        return zzdpVar;
    }

    static ScheduledFuture zzt(zzdp zzdpVar) {
        return zzdpVar.zze;
    }

    static void zzu(zzdp zzdpVar, ScheduledFuture scheduledFuture) {
        zzdpVar.zze = null;
    }

    @Override
    protected final String zzd() {
        zzdk zzdkVar = this.zzd;
        ScheduledFuture scheduledFuture = this.zze;
        if (zzdkVar == null) {
            return null;
        }
        String str = ProtectedFastSSH.s("莻") + zzdkVar.toString() + ProtectedFastSSH.s("莼");
        if (scheduledFuture == null) {
            return str;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return str;
        }
        return str + ProtectedFastSSH.s("莽") + delay + ProtectedFastSSH.s("莾");
    }

    @Override
    protected final void zzg() {
        zzdk zzdkVar = this.zzd;
        if ((this.valueField instanceof zzcu.zza) & (zzdkVar != null)) {
            Object obj = this.valueField;
            zzdkVar.cancel((obj instanceof zzcu.zza) && ((zzcu.zza) obj).zzc);
        }
        ScheduledFuture scheduledFuture = this.zze;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zzd = null;
        this.zze = null;
    }
}
