package defpackage;

import com.google.android.gms.ads.internal.util.zze;

public final class m6f extends lff {
    public final Object c = new Object();
    public final q6f d;
    public boolean e;

    public m6f(q6f q6fVar) {
        this.d = q6fVar;
    }

    public final void h() {
        zze.zza("release: Trying to acquire lock");
        synchronized (this.c) {
            try {
                zze.zza("release: Lock acquired");
                if (this.e) {
                    zze.zza("release: Lock already released");
                    return;
                }
                this.e = true;
                f(new j6f(this), new hff());
                f(new k6f(this), new l6f(this));
                zze.zza("release: Lock released");
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
