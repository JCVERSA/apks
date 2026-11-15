package com.google.android.gms.iid;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import java.util.concurrent.ExecutorService;

public abstract class zze extends Service {
    private Binder zzbc;
    private int zzbd;
    final ExecutorService zzbb = com.google.android.gms.internal.gcm.zzg.zzaa().zzd(new NamedThreadFactory("EnhancedIntentService"), 9);
    private final Object lock = new Object();
    private int zzbe = 0;

    public final void zzf(Intent intent) {
        if (intent != null) {
            WakefulBroadcastReceiver.completeWakefulIntent(intent);
        }
        synchronized (this.lock) {
            try {
                int i10 = this.zzbe - 1;
                this.zzbe = i10;
                if (i10 == 0) {
                    stopSelfResult(this.zzbd);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public abstract void handleIntent(Intent intent);

    @Override
    public final synchronized IBinder onBind(Intent intent) {
        try {
            Log.isLoggable("EnhancedIntentService", 3);
            if (this.zzbc == null) {
                this.zzbc = new zzi(this);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.zzbc;
    }

    @Override
    public final int onStartCommand(Intent intent, int i10, int i11) {
        synchronized (this.lock) {
            this.zzbd = i11;
            this.zzbe++;
        }
        if (intent == null) {
            zzf(intent);
            return 2;
        }
        this.zzbb.execute(new zzf(this, intent, intent));
        return 3;
    }
}
