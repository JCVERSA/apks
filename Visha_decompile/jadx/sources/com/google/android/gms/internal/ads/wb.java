package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import androidx.media3.common.C;
import defpackage.a6e;
import defpackage.bsj;
import defpackage.kfh;
import defpackage.n7g;
import defpackage.qfg;
import defpackage.trj;
import defpackage.urj;
import defpackage.vrj;
import defpackage.wrj;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

public final class wb {
    public static final urj d = new urj(2, C.TIME_UNSET, null);
    public static final urj e = new urj(3, C.TIME_UNSET, null);
    public final a6e a = bsj.a(kfh.f("ExoPlayer:Loader:ProgressiveMediaPeriod"), new qfg() {
        @Override
        public final void zza(Object obj) {
            ((ExecutorService) obj).shutdown();
        }
    });
    public zzzm b;
    public IOException c;

    public wb(String str) {
    }

    public static urj b(boolean z, long j) {
        return new urj(z ? 1 : 0, j, null);
    }

    public final long a(vrj vrjVar, trj trjVar, int i) {
        Looper looperMyLooper = Looper.myLooper();
        n7g.b(looperMyLooper);
        this.c = null;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new zzzm(this, looperMyLooper, vrjVar, trjVar, i, jElapsedRealtime).zzc(0L);
        return jElapsedRealtime;
    }

    public final void g() {
        zzzm zzzmVar = this.b;
        n7g.b(zzzmVar);
        zzzmVar.zza(false);
    }

    public final void h() {
        this.c = null;
    }

    public final void i(int i) throws IOException {
        IOException iOException = this.c;
        if (iOException != null) {
            throw iOException;
        }
        zzzm zzzmVar = this.b;
        if (zzzmVar != null) {
            zzzmVar.zzb(i);
        }
    }

    public final void j(wrj wrjVar) {
        zzzm zzzmVar = this.b;
        if (zzzmVar != null) {
            zzzmVar.zza(true);
        }
        a6e a6eVar = this.a;
        a6eVar.execute(new zzzp(wrjVar));
        a6eVar.zza();
    }

    public final boolean k() {
        return this.c != null;
    }

    public final boolean l() {
        return this.b != null;
    }
}
