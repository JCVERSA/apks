package defpackage;

import androidx.media3.common.C;

public abstract class wk0 {
    public int b;

    public final void a(int i) {
        this.b = i | this.b;
    }

    public void b() {
        this.b = 0;
    }

    public final void d(int i) {
        this.b = (~i) & this.b;
    }

    public final boolean e(int i) {
        return (this.b & i) == i;
    }

    public final boolean f() {
        return e(268435456);
    }

    public final boolean g() {
        return e(Integer.MIN_VALUE);
    }

    public final boolean h() {
        return e(4);
    }

    public final boolean i() {
        return e(C.BUFFER_FLAG_FIRST_SAMPLE);
    }

    public final boolean j() {
        return e(1);
    }

    public final void k(int i) {
        this.b = i;
    }
}
