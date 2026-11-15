package defpackage;

import com.google.android.gms.ads.internal.overlay.zzr;
import java.util.concurrent.atomic.AtomicBoolean;

public final class xuf implements zzr {
    public final u0g b;
    public final AtomicBoolean c = new AtomicBoolean(false);
    public final AtomicBoolean d = new AtomicBoolean(false);

    public xuf(u0g u0gVar) {
        this.b = u0gVar;
    }

    private final void b() {
        AtomicBoolean atomicBoolean = this.d;
        if (atomicBoolean.get()) {
            return;
        }
        atomicBoolean.set(true);
        this.b.zza();
    }

    public final boolean a() {
        return this.c.get();
    }

    @Override
    public final void zzdE() {
    }

    @Override
    public final void zzdi() {
    }

    @Override
    public final void zzdo() {
        b();
    }

    @Override
    public final void zzdp() {
        this.b.zzc();
    }

    @Override
    public final void zzdr() {
    }

    @Override
    public final void zzds(int i) {
        this.c.set(true);
        b();
    }
}
