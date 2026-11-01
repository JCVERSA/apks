package com.google.android.gms.iid;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;

public final class zzr {
    private final ScheduledExecutorService zzce;
    private zzt zzcf;
    private int zzcg;
    private final Context zzl;

    public zzr(Context context) {
        this(context, com.google.android.gms.internal.gcm.zzg.zzaa().zze(1, new NamedThreadFactory(ProtectedFastSSH.s("䏝")), 9));
    }

    private zzr(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zzcf = new zzt(this, null);
        this.zzcg = 1;
        this.zzl = context.getApplicationContext();
        this.zzce = scheduledExecutorService;
    }

    static Context zzd(zzr zzrVar) {
        return zzrVar.zzl;
    }

    private final synchronized <T> Task<T> zzd(zzz<T> zzzVar) {
        if (Log.isLoggable(ProtectedFastSSH.s("䏝"), 3)) {
            ProtectedFastSSH.s("䏝");
            String strValueOf = String.valueOf(zzzVar);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 9);
            sb.append(ProtectedFastSSH.s("䏞"));
            sb.append(strValueOf);
            sb.toString();
        }
        if (!this.zzcf.zze(zzzVar)) {
            zzt zztVar = new zzt(this, null);
            this.zzcf = zztVar;
            zztVar.zze(zzzVar);
        }
        return zzzVar.zzcq.getTask();
    }

    static ScheduledExecutorService zze(zzr zzrVar) {
        return zzrVar.zzce;
    }

    private final synchronized int zzs() {
        int i;
        i = this.zzcg;
        this.zzcg = i + 1;
        return i;
    }

    public final Task<Bundle> zzd(int i, Bundle bundle) {
        return zzd(new zzab(zzs(), 1, bundle));
    }
}
