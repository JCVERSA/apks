package defpackage;

import com.google.android.gms.ads.internal.util.zzbd;
import com.google.android.gms.ads.internal.util.zze;

public final class q6f extends lff {
    public final zzbd d;
    public final Object c = new Object();
    public boolean e = false;
    public int f = 0;

    public q6f(zzbd zzbdVar) {
        this.d = zzbdVar;
    }

    public final m6f g() {
        m6f m6fVar = new m6f(this);
        zze.zza("createNewReference: Trying to acquire lock");
        synchronized (this.c) {
            zze.zza("createNewReference: Lock acquired");
            f(new n6f(this, m6fVar), new o6f(this, m6fVar));
            wd8.o(this.f >= 0);
            this.f++;
        }
        zze.zza("createNewReference: Lock released");
        return m6fVar;
    }

    public final void h() {
        zze.zza("markAsDestroyable: Trying to acquire lock");
        synchronized (this.c) {
            zze.zza("markAsDestroyable: Lock acquired");
            wd8.o(this.f >= 0);
            zze.zza("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.e = true;
            i();
        }
        zze.zza("markAsDestroyable: Lock released");
    }

    public final void i() {
        zze.zza("maybeDestroy: Trying to acquire lock");
        synchronized (this.c) {
            try {
                zze.zza("maybeDestroy: Lock acquired");
                wd8.o(this.f >= 0);
                if (this.e && this.f == 0) {
                    zze.zza("No reference is left (including root). Cleaning up engine.");
                    f(new p6f(this), new hff());
                } else {
                    zze.zza("There are still references to the engine. Not destroying.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zze.zza("maybeDestroy: Lock released");
    }

    public final void j() {
        zze.zza("releaseOneReference: Trying to acquire lock");
        synchronized (this.c) {
            zze.zza("releaseOneReference: Lock acquired");
            wd8.o(this.f > 0);
            zze.zza("Releasing 1 reference for JS Engine");
            this.f--;
            i();
        }
        zze.zza("releaseOneReference: Lock released");
    }
}
