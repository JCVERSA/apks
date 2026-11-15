package defpackage;

import android.graphics.SurfaceTexture;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzs;
import java.util.concurrent.TimeUnit;

public final class zgf {
    public long b;
    public final long a = TimeUnit.MILLISECONDS.toNanos(((Long) zzbd.zzc().b(cye.T)).longValue());
    public boolean c = true;

    public final void a(SurfaceTexture surfaceTexture, final qgf qgfVar) {
        if (qgfVar == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (!this.c) {
            long j = timestamp - this.b;
            if (Math.abs(j) < this.a) {
                return;
            }
        }
        this.c = false;
        this.b = timestamp;
        zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                qgfVar.zzk();
            }
        });
    }

    public final void b() {
        this.c = true;
    }
}
