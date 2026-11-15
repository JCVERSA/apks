package androidx.compose.foundation.lazy;

import androidx.compose.runtime.e1;
import androidx.compose.runtime.n2;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class v {

    private final e1 f2829a;

    private final e1 f2830b;

    private boolean f2831c;

    private Object f2832d;

    private final androidx.compose.foundation.lazy.layout.u f2833e;

    /* JADX WARN: Illegal instructions before constructor call */
    public v() {
        int i10 = 0;
        this(i10, i10, 3, null);
    }

    private final void f(int i10) {
        this.f2830b.setIntValue(i10);
    }

    private final void g(int i10, int i11) {
        if (i10 >= 0.0f) {
            e(i10);
            this.f2833e.e(i10);
            f(i11);
        } else {
            throw new IllegalArgumentException(("Index should be non-negative (" + i10 + ')').toString());
        }
    }

    public final int a() {
        return this.f2829a.getIntValue();
    }

    public final androidx.compose.foundation.lazy.layout.u b() {
        return this.f2833e;
    }

    public final int c() {
        return this.f2830b.getIntValue();
    }

    public final void d(int i10, int i11) {
        g(i10, i11);
        this.f2832d = null;
    }

    public final void e(int i10) {
        this.f2829a.setIntValue(i10);
    }

    public final void h(m mVar) {
        n nVarO = mVar.o();
        this.f2832d = nVarO != null ? nVarO.getKey() : null;
        if (this.f2831c || mVar.d() > 0) {
            this.f2831c = true;
            int iP = mVar.p();
            if (iP >= 0.0f) {
                n nVarO2 = mVar.o();
                g(nVarO2 != null ? nVarO2.getIndex() : 0, iP);
            } else {
                throw new IllegalStateException(("scrollOffset should be non-negative (" + iP + ')').toString());
            }
        }
    }

    public final void i(int i10) {
        if (i10 >= 0.0f) {
            f(i10);
            return;
        }
        throw new IllegalStateException(("scrollOffset should be non-negative (" + i10 + ')').toString());
    }

    public final int j(k kVar, int i10) {
        int iA = androidx.compose.foundation.lazy.layout.n.a(kVar, this.f2832d, i10);
        if (i10 != iA) {
            e(iA);
            this.f2833e.e(i10);
        }
        return iA;
    }

    public v(int i10, int i11) {
        this.f2829a = n2.a(i10);
        this.f2830b = n2.a(i11);
        this.f2833e = new androidx.compose.foundation.lazy.layout.u(i10, 30, 100);
    }

    public v(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11);
    }
}
