package defpackage;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator;
import kotlin.reflect.jvm.internal.impl.types.checker.b;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.model.ArgumentList;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;

public final class lu7 implements mx0 {
    public final Map a;
    public final b.a b;
    public final c c;
    public final KotlinTypePreparator d;
    public final s74 e;

    public static final class a extends TypeCheckerState {
        public final lu7 k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(boolean z, boolean z2, lu7 lu7Var, KotlinTypePreparator kotlinTypePreparator, c cVar) {
            super(z, z2, true, lu7Var, kotlinTypePreparator, cVar);
            this.k = lu7Var;
        }

        @Override
        public boolean f(gh5 gh5Var, gh5 gh5Var2) {
            y45.j(gh5Var, "subType");
            y45.j(gh5Var2, "superType");
            if (!(gh5Var instanceof eh5)) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (gh5Var2 instanceof eh5) {
                return ((Boolean) this.k.e.invoke(gh5Var, gh5Var2)).booleanValue();
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public lu7(Map map, b.a aVar, c cVar, KotlinTypePreparator kotlinTypePreparator, s74 s74Var) {
        y45.j(aVar, "equalityAxioms");
        y45.j(cVar, "kotlinTypeRefiner");
        y45.j(kotlinTypePreparator, "kotlinTypePreparator");
        this.a = map;
        this.b = aVar;
        this.c = cVar;
        this.d = kotlinTypePreparator;
        this.e = s74Var;
    }

    @Override
    public List A(tbb tbbVar) {
        return mx0.a.r(this, tbbVar);
    }

    @Override
    public p54 A0(tbb tbbVar) {
        return mx0.a.p(this, tbbVar);
    }

    @Override
    public boolean B(tm9 tm9Var) {
        y45.j(tm9Var, "<this>");
        return U(c(tm9Var));
    }

    @Override
    public PrimitiveType B0(tbb tbbVar) {
        return mx0.a.t(this, tbbVar);
    }

    @Override
    public tm9 C(gh5 gh5Var) {
        tm9 tm9VarE;
        y45.j(gh5Var, "<this>");
        iy3 iy3VarI = I(gh5Var);
        if (iy3VarI != null && (tm9VarE = e(iy3VarI)) != null) {
            return tm9VarE;
        }
        tm9 tm9VarA = a(gh5Var);
        y45.g(tm9VarA);
        return tm9VarA;
    }

    @Override
    public gh5 C0(gh5 gh5Var, boolean z) {
        return mx0.a.o0(this, gh5Var, z);
    }

    @Override
    public Collection D(tbb tbbVar) {
        return mx0.a.k0(this, tbbVar);
    }

    @Override
    public boolean D0(gh5 gh5Var) {
        y45.j(gh5Var, "<this>");
        return (gh5Var instanceof tm9) && w((tm9) gh5Var);
    }

    @Override
    public boolean E(tm9 tm9Var) {
        return mx0.a.X(this, tm9Var);
    }

    @Override
    public h72 E0(tm9 tm9Var) {
        return mx0.a.e(this, tm9Var);
    }

    @Override
    public gh5 F(List list) {
        return mx0.a.E(this, list);
    }

    @Override
    public gh5 G(gh5 gh5Var) {
        tm9 tm9VarB;
        y45.j(gh5Var, "<this>");
        tm9 tm9VarA = a(gh5Var);
        return (tm9VarA == null || (tm9VarB = b(tm9VarA, true)) == null) ? gh5Var : tm9VarB;
    }

    public final boolean G0(sbb sbbVar, sbb sbbVar2) {
        if (this.b.a(sbbVar, sbbVar2)) {
            return true;
        }
        Map map = this.a;
        if (map == null) {
            return false;
        }
        sbb sbbVar3 = (sbb) map.get(sbbVar);
        sbb sbbVar4 = (sbb) this.a.get(sbbVar2);
        if (sbbVar3 == null || !y45.e(sbbVar3, sbbVar2)) {
            return sbbVar4 != null && y45.e(sbbVar4, sbbVar);
        }
        return true;
    }

    @Override
    public boolean H(tbb tbbVar, tbb tbbVar2) {
        y45.j(tbbVar, "c1");
        y45.j(tbbVar2, "c2");
        if (!(tbbVar instanceof sbb)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (tbbVar2 instanceof sbb) {
            return mx0.a.a(this, tbbVar, tbbVar2) || G0((sbb) tbbVar, (sbb) tbbVar2);
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public TypeCheckerState H0(boolean z, boolean z2) {
        if (this.e != null) {
            return new a(z, z2, this, this.d, this.c);
        }
        return kotlin.reflect.jvm.internal.impl.types.checker.a.a(z, z2, this, this.d, this.c);
    }

    @Override
    public iy3 I(gh5 gh5Var) {
        return mx0.a.g(this, gh5Var);
    }

    @Override
    public tbb J(gh5 gh5Var) {
        y45.j(gh5Var, "<this>");
        tm9 tm9VarA = a(gh5Var);
        if (tm9VarA == null) {
            tm9VarA = C(gh5Var);
        }
        return c(tm9VarA);
    }

    @Override
    public boolean K(tbb tbbVar) {
        return mx0.a.L(this, tbbVar);
    }

    @Override
    public tm9 L(h72 h72Var) {
        return mx0.a.f0(this, h72Var);
    }

    @Override
    public boolean M(tbb tbbVar) {
        return mx0.a.F(this, tbbVar);
    }

    @Override
    public boolean N(rr0 rr0Var) {
        return mx0.a.T(this, rr0Var);
    }

    @Override
    public hbb O(gbb gbbVar, int i) {
        y45.j(gbbVar, "<this>");
        if (gbbVar instanceof tm9) {
            return k0((gh5) gbbVar, i);
        }
        if (gbbVar instanceof ArgumentList) {
            hbb hbbVar = ((ArgumentList) gbbVar).get(i);
            y45.i(hbbVar, "get(index)");
            return hbbVar;
        }
        throw new IllegalStateException(("unknown type argument list type: " + gbbVar + ", " + xq8.b(gbbVar.getClass())).toString());
    }

    @Override
    public gh5 P(tm9 tm9Var, tm9 tm9Var2) {
        return mx0.a.m(this, tm9Var, tm9Var2);
    }

    @Override
    public boolean Q(rr0 rr0Var) {
        return mx0.a.R(this, rr0Var);
    }

    @Override
    public int R(gbb gbbVar) {
        y45.j(gbbVar, "<this>");
        if (gbbVar instanceof tm9) {
            return o0((gh5) gbbVar);
        }
        if (gbbVar instanceof ArgumentList) {
            return ((ArgumentList) gbbVar).size();
        }
        throw new IllegalStateException(("unknown type argument list type: " + gbbVar + ", " + xq8.b(gbbVar.getClass())).toString());
    }

    @Override
    public boolean S(tbb tbbVar) {
        return mx0.a.M(this, tbbVar);
    }

    @Override
    public boolean T(tbb tbbVar) {
        return mx0.a.K(this, tbbVar);
    }

    @Override
    public boolean U(tbb tbbVar) {
        return mx0.a.G(this, tbbVar);
    }

    @Override
    public TypeVariance V(kcb kcbVar) {
        return mx0.a.A(this, kcbVar);
    }

    @Override
    public Collection W(tm9 tm9Var) {
        return mx0.a.h0(this, tm9Var);
    }

    @Override
    public CaptureStatus X(rr0 rr0Var) {
        return mx0.a.l(this, rr0Var);
    }

    @Override
    public boolean Y(gh5 gh5Var) {
        y45.j(gh5Var, "<this>");
        return w(C(gh5Var)) != w(q(gh5Var));
    }

    @Override
    public boolean Z(gh5 gh5Var) {
        y45.j(gh5Var, "<this>");
        tm9 tm9VarA = a(gh5Var);
        return (tm9VarA != null ? E0(tm9VarA) : null) != null;
    }

    @Override
    public tm9 a(gh5 gh5Var) {
        return mx0.a.i(this, gh5Var);
    }

    @Override
    public kcb a0(tbb tbbVar) {
        return mx0.a.w(this, tbbVar);
    }

    @Override
    public tm9 b(tm9 tm9Var, boolean z) {
        return mx0.a.p0(this, tm9Var, z);
    }

    @Override
    public do8 b0(iy3 iy3Var) {
        return mx0.a.h(this, iy3Var);
    }

    @Override
    public tbb c(tm9 tm9Var) {
        return mx0.a.m0(this, tm9Var);
    }

    @Override
    public int c0(tbb tbbVar) {
        return mx0.a.g0(this, tbbVar);
    }

    @Override
    public rr0 d(tm9 tm9Var) {
        return mx0.a.d(this, tm9Var);
    }

    @Override
    public boolean d0(gh5 gh5Var) {
        return mx0.a.Z(this, gh5Var);
    }

    @Override
    public tm9 e(iy3 iy3Var) {
        return mx0.a.b0(this, iy3Var);
    }

    @Override
    public kcb e0(tbb tbbVar, int i) {
        return mx0.a.q(this, tbbVar, i);
    }

    @Override
    public boolean f(tm9 tm9Var) {
        return mx0.a.U(this, tm9Var);
    }

    @Override
    public boolean f0(gh5 gh5Var) {
        return mx0.a.O(this, gh5Var);
    }

    @Override
    public tm9 g(iy3 iy3Var) {
        return mx0.a.n0(this, iy3Var);
    }

    @Override
    public hbb g0(tm9 tm9Var, int i) {
        y45.j(tm9Var, "<this>");
        if (i < 0 || i >= o0(tm9Var)) {
            return null;
        }
        return k0(tm9Var, i);
    }

    @Override
    public List h(kcb kcbVar) {
        return mx0.a.y(this, kcbVar);
    }

    @Override
    public boolean h0(tbb tbbVar) {
        return mx0.a.P(this, tbbVar);
    }

    @Override
    public boolean i(gh5 gh5Var) {
        y45.j(gh5Var, "<this>");
        iy3 iy3VarI = I(gh5Var);
        if (iy3VarI == null) {
            return false;
        }
        y0(iy3VarI);
        return false;
    }

    @Override
    public boolean i0(tbb tbbVar) {
        return mx0.a.H(this, tbbVar);
    }

    @Override
    public gh5 j(hbb hbbVar) {
        return mx0.a.v(this, hbbVar);
    }

    @Override
    public tm9 j0(tm9 tm9Var) {
        tm9 tm9VarL;
        y45.j(tm9Var, "<this>");
        h72 h72VarE0 = E0(tm9Var);
        return (h72VarE0 == null || (tm9VarL = L(h72VarE0)) == null) ? tm9Var : tm9VarL;
    }

    @Override
    public tm9 k(tm9 tm9Var, CaptureStatus captureStatus) {
        return mx0.a.k(this, tm9Var, captureStatus);
    }

    @Override
    public hbb k0(gh5 gh5Var, int i) {
        return mx0.a.n(this, gh5Var, i);
    }

    @Override
    public gh5 l(rr0 rr0Var) {
        return mx0.a.c0(this, rr0Var);
    }

    @Override
    public boolean l0(gh5 gh5Var) {
        return mx0.a.Q(this, gh5Var);
    }

    @Override
    public TypeCheckerState.b m(tm9 tm9Var) {
        return mx0.a.j0(this, tm9Var);
    }

    @Override
    public boolean m0(gh5 gh5Var) {
        return mx0.a.J(this, gh5Var);
    }

    @Override
    public List n(gh5 gh5Var) {
        return mx0.a.o(this, gh5Var);
    }

    @Override
    public boolean n0(kcb kcbVar, tbb tbbVar) {
        return mx0.a.C(this, kcbVar, tbbVar);
    }

    @Override
    public boolean o(tm9 tm9Var) {
        y45.j(tm9Var, "<this>");
        return K(c(tm9Var));
    }

    @Override
    public int o0(gh5 gh5Var) {
        return mx0.a.b(this, gh5Var);
    }

    @Override
    public boolean p(tm9 tm9Var) {
        return mx0.a.S(this, tm9Var);
    }

    @Override
    public boolean p0(hbb hbbVar) {
        return mx0.a.W(this, hbbVar);
    }

    @Override
    public tm9 q(gh5 gh5Var) {
        tm9 tm9VarG;
        y45.j(gh5Var, "<this>");
        iy3 iy3VarI = I(gh5Var);
        if (iy3VarI != null && (tm9VarG = g(iy3VarI)) != null) {
            return tm9VarG;
        }
        tm9 tm9VarA = a(gh5Var);
        y45.g(tm9VarA);
        return tm9VarA;
    }

    @Override
    public gbb q0(tm9 tm9Var) {
        return mx0.a.c(this, tm9Var);
    }

    @Override
    public PrimitiveType r(tbb tbbVar) {
        return mx0.a.s(this, tbbVar);
    }

    @Override
    public boolean r0(tm9 tm9Var) {
        return mx0.a.Y(this, tm9Var);
    }

    @Override
    public gh5 s(kcb kcbVar) {
        return mx0.a.u(this, kcbVar);
    }

    @Override
    public qr0 s0(rr0 rr0Var) {
        return mx0.a.l0(this, rr0Var);
    }

    @Override
    public hbb t(gh5 gh5Var) {
        return mx0.a.j(this, gh5Var);
    }

    @Override
    public boolean t0(tbb tbbVar) {
        return mx0.a.I(this, tbbVar);
    }

    @Override
    public hbb u(qr0 qr0Var) {
        return mx0.a.i0(this, qr0Var);
    }

    @Override
    public boolean u0(gh5 gh5Var) {
        y45.j(gh5Var, "<this>");
        return h0(J(gh5Var)) && !l0(gh5Var);
    }

    @Override
    public boolean v(tm9 tm9Var, tm9 tm9Var2) {
        return mx0.a.D(this, tm9Var, tm9Var2);
    }

    @Override
    public boolean v0(gh5 gh5Var) {
        y45.j(gh5Var, "<this>");
        tm9 tm9VarA = a(gh5Var);
        return (tm9VarA != null ? d(tm9VarA) : null) != null;
    }

    @Override
    public boolean w(tm9 tm9Var) {
        return mx0.a.N(this, tm9Var);
    }

    @Override
    public gh5 w0(gh5 gh5Var) {
        return mx0.a.d0(this, gh5Var);
    }

    @Override
    public boolean x(gh5 gh5Var, o54 o54Var) {
        return mx0.a.B(this, gh5Var, o54Var);
    }

    @Override
    public boolean x0(tbb tbbVar) {
        return mx0.a.a0(this, tbbVar);
    }

    @Override
    public List y(tm9 tm9Var, tbb tbbVar) {
        y45.j(tm9Var, "<this>");
        y45.j(tbbVar, "constructor");
        return null;
    }

    @Override
    public k43 y0(iy3 iy3Var) {
        mx0.a.f(this, iy3Var);
        return null;
    }

    @Override
    public TypeVariance z(hbb hbbVar) {
        return mx0.a.z(this, hbbVar);
    }

    @Override
    public gh5 z0(gh5 gh5Var) {
        return mx0.a.x(this, gh5Var);
    }
}
