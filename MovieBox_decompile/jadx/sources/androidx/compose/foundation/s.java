package androidx.compose.foundation;

import androidx.compose.ui.node.m1;
import androidx.compose.ui.node.n1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class s extends androidx.compose.ui.f.c implements m1, androidx.compose.ui.node.p {

    public static final a f2856q = new a(null);

    public static final int f2857r = 8;

    private boolean f2858n;

    private final boolean f2859o;

    private androidx.compose.ui.layout.l f2860p;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final t C1() {
        if (!j1()) {
            return null;
        }
        m1 m1VarA = n1.a(this, t.f2879p);
        if (m1VarA instanceof t) {
            return (t) m1VarA;
        }
        return null;
    }

    private final void D1() {
        t tVarC1;
        androidx.compose.ui.layout.l lVar = this.f2860p;
        if (lVar != null) {
            Intrinsics.e(lVar);
            if (!lVar.F() || (tVarC1 = C1()) == null) {
                return;
            }
            tVarC1.C1(this.f2860p);
        }
    }

    @Override
    public Object D() {
        return f2856q;
    }

    public final void E1(boolean z10) {
        if (z10 == this.f2858n) {
            return;
        }
        if (z10) {
            D1();
        } else {
            t tVarC1 = C1();
            if (tVarC1 != null) {
                tVarC1.C1(null);
            }
        }
        this.f2858n = z10;
    }

    @Override
    public boolean h1() {
        return this.f2859o;
    }

    @Override
    public void v(androidx.compose.ui.layout.l lVar) {
        this.f2860p = lVar;
        if (this.f2858n) {
            if (lVar.F()) {
                D1();
                return;
            }
            t tVarC1 = C1();
            if (tVarC1 != null) {
                tVarC1.C1(null);
            }
        }
    }
}
