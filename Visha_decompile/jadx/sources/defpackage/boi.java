package defpackage;

import com.google.android.gms.measurement.internal.e;

public abstract class boi extends ini {
    public boolean b;

    public boi(e eVar) {
        super(eVar);
        this.a.i();
    }

    public void h() {
    }

    public abstract boolean i();

    public final void j() {
        if (!m()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void k() {
        if (this.b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (i()) {
            return;
        }
        this.a.g();
        this.b = true;
    }

    public final void l() {
        if (this.b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        h();
        this.a.g();
        this.b = true;
    }

    public final boolean m() {
        return this.b;
    }
}
