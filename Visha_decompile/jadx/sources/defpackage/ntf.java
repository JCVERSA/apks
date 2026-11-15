package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

public final class ntf implements b1g, iue {
    public final hmh b;
    public final b0g c;
    public final k1g d;
    public final AtomicBoolean e = new AtomicBoolean();
    public final AtomicBoolean f = new AtomicBoolean();

    public ntf(hmh hmhVar, b0g b0gVar, k1g k1gVar) {
        this.b = hmhVar;
        this.c = b0gVar;
        this.d = k1gVar;
    }

    private final void a() {
        if (this.e.compareAndSet(false, true)) {
            this.c.zza();
        }
    }

    @Override
    public final void zzdn(hue hueVar) {
        if (this.b.e == 1 && hueVar.j) {
            a();
        }
        if (hueVar.j && this.f.compareAndSet(false, true)) {
            this.d.zza();
        }
    }

    @Override
    public final synchronized void zzt() {
        if (this.b.e != 1) {
            a();
        }
    }
}
