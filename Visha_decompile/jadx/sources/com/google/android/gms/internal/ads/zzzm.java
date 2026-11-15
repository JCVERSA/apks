package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import defpackage.a6e;
import defpackage.n7g;
import defpackage.trj;
import defpackage.urj;
import defpackage.vrj;
import defpackage.zrg;
import java.io.IOException;

@SuppressLint({"HandlerLeak"})
final class zzzm extends Handler implements Runnable {
    final wb zza;
    private final vrj zzb;
    private final long zzc;

    @Nullable
    private trj zzd;

    @Nullable
    private IOException zze;
    private int zzf;

    @Nullable
    private Thread zzg;
    private boolean zzh;
    private volatile boolean zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzzm(wb wbVar, Looper looper, vrj vrjVar, trj trjVar, int i, long j) {
        super(looper);
        this.zza = wbVar;
        this.zzb = vrjVar;
        this.zzd = trjVar;
        this.zzc = j;
    }

    private final void zzd() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = jElapsedRealtime - this.zzc;
        trj trjVar = this.zzd;
        trjVar.getClass();
        trjVar.h(this.zzb, jElapsedRealtime, j, this.zzf);
        this.zze = null;
        wb wbVar = this.zza;
        a6e a6eVar = wbVar.a;
        zzzm zzzmVar = wbVar.b;
        zzzmVar.getClass();
        a6eVar.execute(zzzmVar);
    }

    @Override
    public final void handleMessage(Message message) {
        if (this.zzi) {
            return;
        }
        int i = message.what;
        if (i == 1) {
            zzd();
            return;
        }
        if (i == 4) {
            throw ((Error) message.obj);
        }
        wb wbVar = this.zza;
        wbVar.b = null;
        long j = this.zzc;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = jElapsedRealtime - j;
        trj trjVar = this.zzd;
        trjVar.getClass();
        if (this.zzh) {
            trjVar.f(this.zzb, jElapsedRealtime, j2, false);
            return;
        }
        int i2 = message.what;
        if (i2 == 2) {
            try {
                trjVar.n(this.zzb, jElapsedRealtime, j2);
                return;
            } catch (RuntimeException e) {
                zrg.d("LoadTask", "Unexpected exception handling load completed", e);
                this.zza.c = new zzzq(e);
                return;
            }
        }
        if (i2 != 3) {
            return;
        }
        IOException iOException = (IOException) message.obj;
        this.zze = iOException;
        int i3 = this.zzf + 1;
        this.zzf = i3;
        urj urjVarK = trjVar.k(this.zzb, jElapsedRealtime, j2, iOException, i3);
        if (urjVarK.a == 3) {
            wbVar.c = this.zze;
        } else if (urjVarK.a != 2) {
            if (urjVarK.a == 1) {
                this.zzf = 1;
            }
            zzc(urjVarK.b != C.TIME_UNSET ? urjVarK.b : Math.min((this.zzf - 1) * 1000, 5000));
        }
    }

    @Override
    public final void run() {
        boolean z;
        try {
            synchronized (this) {
                z = this.zzh;
                this.zzg = Thread.currentThread();
            }
            if (!z) {
                vrj vrjVar = this.zzb;
                Trace.beginSection("load:" + vrjVar.getClass().getSimpleName());
                try {
                    vrjVar.zzh();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            synchronized (this) {
                this.zzg = null;
                Thread.interrupted();
            }
            if (this.zzi) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e) {
            if (this.zzi) {
                return;
            }
            obtainMessage(3, e).sendToTarget();
        } catch (Error e2) {
            if (!this.zzi) {
                zrg.d("LoadTask", "Unexpected error loading stream", e2);
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (Exception e3) {
            if (this.zzi) {
                return;
            }
            zrg.d("LoadTask", "Unexpected exception loading stream", e3);
            obtainMessage(3, new zzzq(e3)).sendToTarget();
        } catch (OutOfMemoryError e4) {
            if (this.zzi) {
                return;
            }
            zrg.d("LoadTask", "OutOfMemory error loading stream", e4);
            obtainMessage(3, new zzzq(e4)).sendToTarget();
        }
    }

    public final void zza(boolean z) {
        this.zzi = z;
        this.zze = null;
        if (hasMessages(1)) {
            this.zzh = true;
            removeMessages(1);
            if (!z) {
                sendEmptyMessage(2);
            }
        } else {
            synchronized (this) {
                try {
                    this.zzh = true;
                    this.zzb.zzg();
                    Thread thread = this.zzg;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            this.zza.b = null;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            trj trjVar = this.zzd;
            trjVar.getClass();
            trjVar.f(this.zzb, jElapsedRealtime, jElapsedRealtime - this.zzc, true);
            this.zzd = null;
        }
    }

    public final void zzb(int i) throws IOException {
        IOException iOException = this.zze;
        if (iOException != null && this.zzf > i) {
            throw iOException;
        }
    }

    public final void zzc(long j) {
        wb wbVar = this.zza;
        n7g.f(wbVar.b == null);
        wbVar.b = this;
        if (j > 0) {
            sendEmptyMessageDelayed(1, j);
        } else {
            zzd();
        }
    }
}
