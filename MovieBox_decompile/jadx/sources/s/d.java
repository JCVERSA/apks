package s;

import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.a2;
import androidx.compose.runtime.b2;
import androidx.compose.runtime.c2;
import androidx.compose.runtime.j2;
import androidx.compose.runtime.k1;
import androidx.compose.runtime.m2;
import androidx.compose.runtime.y0;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

public abstract class d {

    private final int f71389a;

    private final int f71390b;

    public static final class a extends d {

        public static final a f71391c = new a();

        private a() {
            super(1, 0, 2, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.D(eVar.b(q.a(0)));
        }

        @Override
        public String e(int i10) {
            return q.b(i10, q.a(0)) ? "distance" : super.e(i10);
        }
    }

    public static final class a0 extends d {

        public static final a0 f71392c = new a0();

        /* JADX WARN: Illegal instructions before constructor call */
        private a0() {
            int i10 = 0;
            super(i10, i10, 3, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.W0();
        }
    }

    public static final class b extends d {

        public static final b f71393c = new b();

        private b() {
            super(0, 2, 1, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            androidx.compose.runtime.c cVar = (androidx.compose.runtime.c) eVar.a(t.a(0));
            Object objA = eVar.a(t.a(1));
            if (objA instanceof c2) {
                a2Var.c(((c2) objA).b());
            }
            m2Var.G(cVar, objA);
        }

        @Override
        public String f(int i10) {
            if (t.b(i10, t.a(0))) {
                return "anchor";
            }
            return t.b(i10, t.a(1)) ? AppMeasurementSdk.ConditionalUserProperty.VALUE : super.f(i10);
        }
    }

    public static final class b0 extends d {

        public static final b0 f71394c = new b0();

        private b0() {
            super(1, 0, 2, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            int iB = eVar.b(q.a(0));
            int iE0 = m2Var.e0();
            int iC0 = m2Var.c0();
            int iD1 = m2Var.d1(iC0);
            int iC1 = m2Var.c1(iC0);
            for (int iMax = Math.max(iD1, iC1 - iB); iMax < iC1; iMax++) {
                Object obj = m2Var.f3501c[m2Var.R(iMax)];
                if (obj instanceof c2) {
                    a2Var.e(((c2) obj).b(), iE0 - iMax, -1, -1);
                } else if (obj instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj).x();
                }
            }
            m2Var.k1(iB);
        }

        @Override
        public String e(int i10) {
            return q.b(i10, q.a(0)) ? "count" : super.e(i10);
        }
    }

    public static final class c extends d {

        public static final c f71395c = new c();

        private c() {
            super(0, 2, 1, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            androidx.compose.runtime.internal.c cVar = (androidx.compose.runtime.internal.c) eVar.a(t.a(1));
            int iA = cVar != null ? cVar.a() : 0;
            s.a aVar = (s.a) eVar.a(t.a(0));
            if (iA > 0) {
                fVar = new k1(fVar, iA);
            }
            aVar.b(fVar, m2Var, a2Var);
        }

        @Override
        public String f(int i10) {
            if (t.b(i10, t.a(0))) {
                return "changes";
            }
            return t.b(i10, t.a(1)) ? "effectiveNodeIndex" : super.f(i10);
        }
    }

    public static final class c0 extends d {

        public static final c0 f71396c = new c0();

        private c0() {
            super(1, 2, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            int iF;
            int iE0;
            Object objA = eVar.a(t.a(0));
            androidx.compose.runtime.c cVar = (androidx.compose.runtime.c) eVar.a(t.a(1));
            int iB = eVar.b(q.a(0));
            if (objA instanceof c2) {
                a2Var.c(((c2) objA).b());
            }
            int iF2 = m2Var.F(cVar);
            Object objR0 = m2Var.R0(iF2, iB, objA);
            if (!(objR0 instanceof c2)) {
                if (objR0 instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) objR0).x();
                    return;
                }
                return;
            }
            int iE1 = m2Var.e0() - m2Var.a1(iF2, iB);
            c2 c2Var = (c2) objR0;
            androidx.compose.runtime.c cVarA = c2Var.a();
            if (cVarA == null || !cVarA.b()) {
                iF = -1;
                iE0 = -1;
            } else {
                iF = m2Var.F(cVarA);
                iE0 = m2Var.e0() - m2Var.b1(iF);
            }
            a2Var.e(c2Var.b(), iE1, iF, iE0);
        }

        @Override
        public String e(int i10) {
            return q.b(i10, q.a(0)) ? "groupSlotIndex" : super.e(i10);
        }

        @Override
        public String f(int i10) {
            if (t.b(i10, t.a(0))) {
                return AppMeasurementSdk.ConditionalUserProperty.VALUE;
            }
            return t.b(i10, t.a(1)) ? "anchor" : super.f(i10);
        }
    }

    public static final class C0878d extends d {

        public static final C0878d f71397c = new C0878d();

        private C0878d() {
            super(0, 2, 1, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            int iA = ((androidx.compose.runtime.internal.c) eVar.a(t.a(0))).a();
            List list = (List) eVar.a(t.a(1));
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object obj = list.get(i10);
                Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
                int i11 = iA + i10;
                fVar.f(i11, obj);
                fVar.c(i11, obj);
            }
        }

        @Override
        public String f(int i10) {
            if (t.b(i10, t.a(0))) {
                return "effectiveNodeIndex";
            }
            return t.b(i10, t.a(1)) ? "nodes" : super.f(i10);
        }
    }

    public static final class d0 extends d {

        public static final d0 f71398c = new d0();

        /* JADX WARN: Illegal instructions before constructor call */
        private d0() {
            int i10 = 1;
            super(0, i10, i10, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.o1(eVar.a(t.a(0)));
        }

        @Override
        public String f(int i10) {
            return t.b(i10, t.a(0)) ? "data" : super.f(i10);
        }
    }

    public static final class e extends d {

        public static final e f71399c = new e();

        private e() {
            super(0, 4, 1, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            y0 y0Var = (y0) eVar.a(t.a(2));
            androidx.compose.runtime.m mVar = (androidx.compose.runtime.m) eVar.a(t.a(1));
            mVar.l(y0Var);
            androidx.compose.runtime.k.s("Could not resolve state for movable content");
            throw new KotlinNothingValueException();
        }

        @Override
        public String f(int i10) {
            if (t.b(i10, t.a(0))) {
                return "resolvedState";
            }
            if (t.b(i10, t.a(1))) {
                return "resolvedCompositionContext";
            }
            if (t.b(i10, t.a(2))) {
                return "from";
            }
            return t.b(i10, t.a(3)) ? "to" : super.f(i10);
        }
    }

    public static final class e0 extends d {

        public static final e0 f71400c = new e0();

        private e0() {
            super(0, 2, 1, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            ((Function2) eVar.a(t.a(1))).invoke(fVar.d(), eVar.a(t.a(0)));
        }

        @Override
        public String f(int i10) {
            if (t.b(i10, t.a(0))) {
                return AppMeasurementSdk.ConditionalUserProperty.VALUE;
            }
            return t.b(i10, t.a(1)) ? "block" : super.f(i10);
        }
    }

    public static final class f extends d {

        public static final f f71401c = new f();

        /* JADX WARN: Illegal instructions before constructor call */
        private f() {
            int i10 = 0;
            super(i10, i10, 3, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            androidx.compose.runtime.k.t(m2Var, a2Var);
        }
    }

    public static final class f0 extends d {

        public static final f0 f71402c = new f0();

        /* JADX WARN: Illegal instructions before constructor call */
        private f0() {
            int i10 = 1;
            super(i10, i10, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            Object objA = eVar.a(t.a(0));
            int iB = eVar.b(q.a(0));
            if (objA instanceof c2) {
                a2Var.c(((c2) objA).b());
            }
            Object objS0 = m2Var.S0(iB, objA);
            if (objS0 instanceof c2) {
                a2Var.e(((c2) objS0).b(), m2Var.e0() - m2Var.a1(m2Var.a0(), iB), -1, -1);
            } else if (objS0 instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) objS0).x();
            }
        }

        @Override
        public String e(int i10) {
            return q.b(i10, q.a(0)) ? "groupSlotIndex" : super.e(i10);
        }

        @Override
        public String f(int i10) {
            return t.b(i10, t.a(0)) ? AppMeasurementSdk.ConditionalUserProperty.VALUE : super.f(i10);
        }
    }

    public static final class g extends d {

        public static final g f71403c = new g();

        private g() {
            super(0, 2, 1, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            androidx.compose.runtime.internal.c cVar = (androidx.compose.runtime.internal.c) eVar.a(t.a(0));
            androidx.compose.runtime.c cVar2 = (androidx.compose.runtime.c) eVar.a(t.a(1));
            Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            cVar.b(s.f.d(m2Var, cVar2, fVar));
        }

        @Override
        public String f(int i10) {
            if (t.b(i10, t.a(0))) {
                return "effectiveNodeIndexOut";
            }
            return t.b(i10, t.a(1)) ? "anchor" : super.f(i10);
        }
    }

    public static final class g0 extends d {

        public static final g0 f71404c = new g0();

        private g0() {
            super(1, 0, 2, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            int iB = eVar.b(q.a(0));
            for (int i10 = 0; i10 < iB; i10++) {
                fVar.i();
            }
        }

        @Override
        public String e(int i10) {
            return q.b(i10, q.a(0)) ? "count" : super.e(i10);
        }
    }

    public static final class h extends d {

        public static final h f71405c = new h();

        /* JADX WARN: Illegal instructions before constructor call */
        private h() {
            int i10 = 1;
            super(0, i10, i10, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            for (Object obj : (Object[]) eVar.a(t.a(0))) {
                fVar.g(obj);
            }
        }

        @Override
        public String f(int i10) {
            return t.b(i10, t.a(0)) ? "nodes" : super.f(i10);
        }
    }

    public static final class h0 extends d {

        public static final h0 f71406c = new h0();

        /* JADX WARN: Illegal instructions before constructor call */
        private h0() {
            int i10 = 0;
            super(i10, i10, 3, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            Object objD = fVar.d();
            Intrinsics.f(objD, "null cannot be cast to non-null type androidx.compose.runtime.ComposeNodeLifecycleCallback");
            ((androidx.compose.runtime.h) objD).onReuse();
        }
    }

    public static final class i extends d {

        public static final i f71407c = new i();

        private i() {
            super(0, 2, 1, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            ((Function1) eVar.a(t.a(0))).invoke((androidx.compose.runtime.l) eVar.a(t.a(1)));
        }

        @Override
        public String f(int i10) {
            if (t.b(i10, t.a(0))) {
                return "anchor";
            }
            return t.b(i10, t.a(1)) ? "composition" : super.f(i10);
        }
    }

    public static final class j extends d {

        public static final j f71408c = new j();

        /* JADX WARN: Illegal instructions before constructor call */
        private j() {
            int i10 = 0;
            super(i10, i10, 3, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.T();
        }
    }

    public static final class k extends d {

        public static final k f71409c = new k();

        /* JADX WARN: Illegal instructions before constructor call */
        private k() {
            int i10 = 0;
            super(i10, i10, 3, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            s.f.e(m2Var, fVar, 0);
            m2Var.T();
        }
    }

    public static final class l extends d {

        public static final l f71410c = new l();

        /* JADX WARN: Illegal instructions before constructor call */
        private l() {
            int i10 = 1;
            super(0, i10, i10, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.W((androidx.compose.runtime.c) eVar.a(t.a(0)));
        }

        @Override
        public String f(int i10) {
            return t.b(i10, t.a(0)) ? "anchor" : super.f(i10);
        }
    }

    public static final class m extends d {

        public static final m f71411c = new m();

        /* JADX WARN: Illegal instructions before constructor call */
        private m() {
            int i10 = 0;
            super(i10, i10, 3, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.V(0);
        }
    }

    public static final class n extends d {

        public static final n f71412c = new n();

        private n() {
            super(1, 2, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            Object objInvoke = ((Function0) eVar.a(t.a(0))).invoke();
            androidx.compose.runtime.c cVar = (androidx.compose.runtime.c) eVar.a(t.a(1));
            int iB = eVar.b(q.a(0));
            Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            m2Var.s1(cVar, objInvoke);
            fVar.c(iB, objInvoke);
            fVar.g(objInvoke);
        }

        @Override
        public String e(int i10) {
            return q.b(i10, q.a(0)) ? "insertIndex" : super.e(i10);
        }

        @Override
        public String f(int i10) {
            if (t.b(i10, t.a(0))) {
                return "factory";
            }
            return t.b(i10, t.a(1)) ? "groupAnchor" : super.f(i10);
        }
    }

    public static final class o extends d {

        public static final o f71413c = new o();

        private o() {
            super(0, 2, 1, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            j2 j2Var = (j2) eVar.a(t.a(1));
            androidx.compose.runtime.c cVar = (androidx.compose.runtime.c) eVar.a(t.a(0));
            m2Var.I();
            m2Var.v0(j2Var, cVar.d(j2Var), false);
            m2Var.U();
        }

        @Override
        public String f(int i10) {
            if (t.b(i10, t.a(0))) {
                return "anchor";
            }
            return t.b(i10, t.a(1)) ? "from" : super.f(i10);
        }
    }

    public static final class p extends d {

        public static final p f71414c = new p();

        private p() {
            super(0, 3, 1, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            j2 j2Var = (j2) eVar.a(t.a(1));
            androidx.compose.runtime.c cVar = (androidx.compose.runtime.c) eVar.a(t.a(0));
            s.c cVar2 = (s.c) eVar.a(t.a(2));
            m2 m2VarX = j2Var.x();
            try {
                cVar2.d(fVar, m2VarX, a2Var);
                Unit unit = Unit.f64096a;
                m2VarX.L(true);
                m2Var.I();
                m2Var.v0(j2Var, cVar.d(j2Var), false);
                m2Var.U();
            } catch (Throwable th2) {
                m2VarX.L(false);
                throw th2;
            }
        }

        @Override
        public String f(int i10) {
            if (t.b(i10, t.a(0))) {
                return "anchor";
            }
            if (t.b(i10, t.a(1))) {
                return "from";
            }
            return t.b(i10, t.a(2)) ? "fixups" : super.f(i10);
        }
    }

    public static final class r extends d {

        public static final r f71415c = new r();

        private r() {
            super(1, 0, 2, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.w0(eVar.b(q.a(0)));
        }

        @Override
        public String e(int i10) {
            return q.b(i10, q.a(0)) ? "offset" : super.e(i10);
        }
    }

    public static final class s extends d {

        public static final s f71416c = new s();

        private s() {
            super(3, 0, 2, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            fVar.b(eVar.b(q.a(0)), eVar.b(q.a(1)), eVar.b(q.a(2)));
        }

        @Override
        public String e(int i10) {
            if (q.b(i10, q.a(0))) {
                return "from";
            }
            if (q.b(i10, q.a(1))) {
                return "to";
            }
            return q.b(i10, q.a(2)) ? "count" : super.e(i10);
        }
    }

    public static final class u extends d {

        public static final u f71417c = new u();

        /* JADX WARN: Illegal instructions before constructor call */
        private u() {
            int i10 = 1;
            super(i10, i10, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            androidx.compose.runtime.c cVar = (androidx.compose.runtime.c) eVar.a(t.a(0));
            int iB = eVar.b(q.a(0));
            fVar.i();
            Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            fVar.f(iB, m2Var.B0(cVar));
        }

        @Override
        public String e(int i10) {
            return q.b(i10, q.a(0)) ? "insertIndex" : super.e(i10);
        }

        @Override
        public String f(int i10) {
            return t.b(i10, t.a(0)) ? "groupAnchor" : super.f(i10);
        }
    }

    public static final class v extends d {

        public static final v f71418c = new v();

        /* JADX WARN: Illegal instructions before constructor call */
        private v() {
            int i10 = 1;
            super(0, i10, i10, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            a2Var.c((b2) eVar.a(t.a(0)));
        }

        @Override
        public String f(int i10) {
            return t.b(i10, t.a(0)) ? AppMeasurementSdk.ConditionalUserProperty.VALUE : super.f(i10);
        }
    }

    public static final class w extends d {

        public static final w f71419c = new w();

        /* JADX WARN: Illegal instructions before constructor call */
        private w() {
            int i10 = 0;
            super(i10, i10, 3, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            androidx.compose.runtime.k.K(m2Var, a2Var);
        }
    }

    public static final class x extends d {

        public static final x f71420c = new x();

        /* JADX WARN: Illegal instructions before constructor call */
        private x() {
            int i10 = 2;
            super(i10, 0, i10, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            fVar.a(eVar.b(q.a(0)), eVar.b(q.a(1)));
        }

        @Override
        public String e(int i10) {
            if (q.b(i10, q.a(0))) {
                return "removeIndex";
            }
            return q.b(i10, q.a(1)) ? "count" : super.e(i10);
        }
    }

    public static final class y extends d {

        public static final y f71421c = new y();

        /* JADX WARN: Illegal instructions before constructor call */
        private y() {
            int i10 = 0;
            super(i10, i10, 3, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            m2Var.O0();
        }
    }

    public static final class z extends d {

        public static final z f71422c = new z();

        /* JADX WARN: Illegal instructions before constructor call */
        private z() {
            int i10 = 1;
            super(0, i10, i10, null);
        }

        @Override
        public void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
            a2Var.a((Function0) eVar.a(t.a(0)));
        }

        @Override
        public String f(int i10) {
            return t.b(i10, t.a(0)) ? "effect" : super.f(i10);
        }
    }

    public d(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11);
    }

    public abstract void a(s.e eVar, androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var);

    public final int b() {
        return this.f71389a;
    }

    public final String c() {
        String strG = Reflection.b(getClass()).g();
        return strG == null ? "" : strG;
    }

    public final int d() {
        return this.f71390b;
    }

    public String e(int i10) {
        return "IntParameter(" + i10 + ')';
    }

    public String f(int i10) {
        return "ObjectParameter(" + i10 + ')';
    }

    public String toString() {
        return c();
    }

    private d(int i10, int i11) {
        this.f71389a = i10;
        this.f71390b = i11;
    }

    public d(int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11, null);
    }

    public static final class q {
        public static final boolean b(int i10, int i11) {
            return i10 == i11;
        }

        public static int a(int i10) {
            return i10;
        }
    }

    public static final class t {
        public static final boolean b(int i10, int i11) {
            return i10 == i11;
        }

        public static int a(int i10) {
            return i10;
        }
    }
}
