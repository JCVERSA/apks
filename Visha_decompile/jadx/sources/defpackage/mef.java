package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;

public final class mef {
    public final Object a = new Object();
    public volatile int c = 1;
    public volatile long b = 0;

    public mef(nef nefVar) {
    }

    public final void a() {
        long jCurrentTimeMillis = zzv.zzC().currentTimeMillis();
        synchronized (this.a) {
            try {
                if (this.c == 3) {
                    if (this.b + ((Long) zzbd.zzc().b(cye.W5)).longValue() <= jCurrentTimeMillis) {
                        this.c = 1;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        long jCurrentTimeMillis2 = zzv.zzC().currentTimeMillis();
        synchronized (this.a) {
            try {
                if (this.c != 2) {
                    return;
                }
                this.c = 3;
                if (this.c == 3) {
                    this.b = jCurrentTimeMillis2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
