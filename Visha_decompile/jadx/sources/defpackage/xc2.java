package defpackage;

import kotlinx.coroutines.b;

public final class xc2 implements b {
    public final uc2 b;

    public xc2(uc2 uc2Var) {
        this.b = uc2Var;
    }

    @Override
    public void a(Throwable th) {
        this.b.dispose();
    }

    public String toString() {
        return "DisposeOnCancel[" + this.b + ']';
    }
}
