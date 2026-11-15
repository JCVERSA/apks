package defpackage;

import com.google.android.gms.measurement.internal.e;

public abstract class nlh extends zug {
    public boolean b;

    public nlh(e eVar) {
        super(eVar);
        this.a.i();
    }

    public final void h() {
        if (!l()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void i() {
        if (this.b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (m()) {
            return;
        }
        this.a.g();
        this.b = true;
    }

    public final void j() {
        if (this.b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        k();
        this.a.g();
        this.b = true;
    }

    public void k() {
    }

    public final boolean l() {
        return this.b;
    }

    public abstract boolean m();
}
