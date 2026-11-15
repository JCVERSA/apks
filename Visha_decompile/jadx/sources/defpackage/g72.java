package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.j;
import kotlin.reflect.jvm.internal.impl.types.n;

public final class g72 extends b82 implements zo1, h72 {
    public static final a e = new a(null);
    public final sm9 c;
    public final boolean d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static g72 c(a aVar, mgb mgbVar, boolean z, boolean z2, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            if ((i & 4) != 0) {
                z2 = false;
            }
            return aVar.b(mgbVar, z, z2);
        }

        public final boolean a(mgb mgbVar) {
            mgbVar.I0();
            return (mgbVar.I0().c() instanceof hcb) || (mgbVar instanceof f07);
        }

        public final g72 b(mgb mgbVar, boolean z, boolean z2) {
            y45.j(mgbVar, "type");
            if (mgbVar instanceof g72) {
                return (g72) mgbVar;
            }
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (!z2 && !d(mgbVar, z)) {
                return null;
            }
            if (mgbVar instanceof fy3) {
                fy3 fy3Var = (fy3) mgbVar;
                y45.e(fy3Var.Q0().I0(), fy3Var.R0().I0());
            }
            return new g72(ky3.c(mgbVar).M0(false), z, defaultConstructorMarker);
        }

        public final boolean d(mgb mgbVar, boolean z) {
            if (!a(mgbVar)) {
                return false;
            }
            px0 px0VarC = mgbVar.I0().c();
            icb icbVar = px0VarC instanceof icb ? (icb) px0VarC : null;
            if (icbVar == null || icbVar.O0()) {
                return (z && (mgbVar.I0().c() instanceof hcb)) ? n.l(mgbVar) : !l37.a.a(mgbVar);
            }
            return true;
        }

        public a() {
        }
    }

    public g72(sm9 sm9Var, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(sm9Var, z);
    }

    @Override
    public boolean C0() {
        R0().I0();
        return R0().I0().c() instanceof hcb;
    }

    @Override
    public boolean J0() {
        return false;
    }

    @Override
    public sm9 M0(boolean z) {
        return z ? R0().M0(z) : this;
    }

    @Override
    public sm9 O0(j jVar) {
        y45.j(jVar, "newAttributes");
        return new g72(R0().O0(jVar), this.d);
    }

    @Override
    public sm9 R0() {
        return this.c;
    }

    public final sm9 U0() {
        return this.c;
    }

    @Override
    public g72 T0(sm9 sm9Var) {
        y45.j(sm9Var, "delegate");
        return new g72(sm9Var, this.d);
    }

    @Override
    public eh5 d0(eh5 eh5Var) {
        y45.j(eh5Var, "replacement");
        return tu9.d(eh5Var.L0(), this.d);
    }

    @Override
    public String toString() {
        return R0() + " & Any";
    }

    public g72(sm9 sm9Var, boolean z) {
        this.c = sm9Var;
        this.d = z;
    }
}
