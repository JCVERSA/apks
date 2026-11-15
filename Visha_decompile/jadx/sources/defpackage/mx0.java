package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.livecaption.constant.ICode;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.k;
import kotlin.reflect.jvm.internal.impl.types.m;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.types.n;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public interface mx0 extends m, vcb {

    public static final class a {

        public static final class C0424a extends TypeCheckerState.b.a {
            public final mx0 a;
            public final TypeSubstitutor b;

            public C0424a(mx0 mx0Var, TypeSubstitutor typeSubstitutor) {
                this.a = mx0Var;
                this.b = typeSubstitutor;
            }

            @Override
            public tm9 a(TypeCheckerState typeCheckerState, gh5 gh5Var) {
                y45.j(typeCheckerState, ICode.CALL.CALL_KEY_STATE);
                y45.j(gh5Var, "type");
                mx0 mx0Var = this.a;
                TypeSubstitutor typeSubstitutor = this.b;
                gh5 gh5VarC = mx0Var.C(gh5Var);
                y45.h(gh5VarC, "null cannot be cast to non-null type org.jetbrains.kotlin.types.KotlinType");
                eh5 eh5VarN = typeSubstitutor.n((eh5) gh5VarC, Variance.INVARIANT);
                y45.i(eh5VarN, "substitutor.safeSubstitu…VARIANT\n                )");
                tm9 tm9VarA = mx0Var.a(eh5VarN);
                y45.g(tm9VarA);
                return tm9VarA;
            }
        }

        public static TypeVariance A(mx0 mx0Var, kcb kcbVar) {
            y45.j(kcbVar, "$receiver");
            if (kcbVar instanceof hcb) {
                Variance varianceH = ((hcb) kcbVar).h();
                y45.i(varianceH, "this.variance");
                return ucb.a(varianceH);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + kcbVar + ", " + xq8.b(kcbVar.getClass())).toString());
        }

        public static boolean B(mx0 mx0Var, gh5 gh5Var, o54 o54Var) {
            y45.j(gh5Var, "$receiver");
            y45.j(o54Var, "fqName");
            if (gh5Var instanceof eh5) {
                return ((eh5) gh5Var).getAnnotations().h(o54Var);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + gh5Var + ", " + xq8.b(gh5Var.getClass())).toString());
        }

        public static boolean C(mx0 mx0Var, kcb kcbVar, tbb tbbVar) {
            y45.j(kcbVar, "$receiver");
            if (!(kcbVar instanceof hcb)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + kcbVar + ", " + xq8.b(kcbVar.getClass())).toString());
            }
            if (tbbVar == null ? true : tbbVar instanceof sbb) {
                return TypeUtilsKt.m((hcb) kcbVar, (sbb) tbbVar, null, 4, null);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + kcbVar + ", " + xq8.b(kcbVar.getClass())).toString());
        }

        public static boolean D(mx0 mx0Var, tm9 tm9Var, tm9 tm9Var2) {
            y45.j(tm9Var, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
            y45.j(tm9Var2, "b");
            if (!(tm9Var instanceof sm9)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
            }
            if (tm9Var2 instanceof sm9) {
                return ((sm9) tm9Var).G0() == ((sm9) tm9Var2).G0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var2 + ", " + xq8.b(tm9Var2.getClass())).toString());
        }

        public static gh5 E(mx0 mx0Var, List list) {
            y45.j(list, "types");
            return r45.a(list);
        }

        public static boolean F(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                return d.w0((sbb) tbbVar, e.a.b);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static boolean G(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                return ((sbb) tbbVar).c() instanceof qw0;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static boolean H(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                px0 px0VarC = ((sbb) tbbVar).c();
                qw0 qw0Var = px0VarC instanceof qw0 ? (qw0) px0VarC : null;
                return (qw0Var == null || !dq6.a(qw0Var) || qw0Var.getKind() == ClassKind.ENUM_ENTRY || qw0Var.getKind() == ClassKind.ANNOTATION_CLASS) ? false : true;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static boolean I(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                return ((sbb) tbbVar).d();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static boolean J(mx0 mx0Var, gh5 gh5Var) {
            y45.j(gh5Var, "$receiver");
            if (gh5Var instanceof eh5) {
                return fh5.a((eh5) gh5Var);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + gh5Var + ", " + xq8.b(gh5Var.getClass())).toString());
        }

        public static boolean K(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                px0 px0VarC = ((sbb) tbbVar).c();
                qw0 qw0Var = px0VarC instanceof qw0 ? (qw0) px0VarC : null;
                return (qw0Var != null ? qw0Var.c0() : null) instanceof g05;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static boolean L(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                return tbbVar instanceof IntegerLiteralTypeConstructor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static boolean M(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                return tbbVar instanceof IntersectionTypeConstructor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static boolean N(mx0 mx0Var, tm9 tm9Var) {
            y45.j(tm9Var, "$receiver");
            if (tm9Var instanceof sm9) {
                return ((sm9) tm9Var).J0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
        }

        public static boolean O(mx0 mx0Var, gh5 gh5Var) {
            y45.j(gh5Var, "$receiver");
            return gh5Var instanceof z17;
        }

        public static boolean P(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                return d.w0((sbb) tbbVar, e.a.c);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static boolean Q(mx0 mx0Var, gh5 gh5Var) {
            y45.j(gh5Var, "$receiver");
            if (gh5Var instanceof eh5) {
                return n.l((eh5) gh5Var);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + gh5Var + ", " + xq8.b(gh5Var.getClass())).toString());
        }

        public static boolean R(mx0 mx0Var, rr0 rr0Var) {
            y45.j(rr0Var, "$receiver");
            return rr0Var instanceof nr0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean S(mx0 mx0Var, tm9 tm9Var) {
            y45.j(tm9Var, "$receiver");
            if (tm9Var instanceof eh5) {
                return d.s0((eh5) tm9Var);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
        }

        public static boolean T(mx0 mx0Var, rr0 rr0Var) {
            y45.j(rr0Var, "$receiver");
            if (rr0Var instanceof f07) {
                return ((f07) rr0Var).U0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + rr0Var + ", " + xq8.b(rr0Var.getClass())).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean U(mx0 mx0Var, tm9 tm9Var) {
            y45.j(tm9Var, "$receiver");
            if (!(tm9Var instanceof sm9)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
            }
            if (!fh5.a((eh5) tm9Var)) {
                sm9 sm9Var = (sm9) tm9Var;
                if (!(sm9Var.I0().c() instanceof ebb) && (sm9Var.I0().c() != null || (tm9Var instanceof nr0) || (tm9Var instanceof f07) || (tm9Var instanceof g72) || (sm9Var.I0() instanceof IntegerLiteralTypeConstructor) || V(mx0Var, tm9Var))) {
                    return true;
                }
            }
            return false;
        }

        public static boolean V(mx0 mx0Var, tm9 tm9Var) {
            return (tm9Var instanceof vm9) && mx0Var.f(((vm9) tm9Var).Q());
        }

        public static boolean W(mx0 mx0Var, hbb hbbVar) {
            y45.j(hbbVar, "$receiver");
            if (hbbVar instanceof mcb) {
                return ((mcb) hbbVar).b();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + hbbVar + ", " + xq8.b(hbbVar.getClass())).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean X(mx0 mx0Var, tm9 tm9Var) {
            y45.j(tm9Var, "$receiver");
            if (tm9Var instanceof sm9) {
                return TypeUtilsKt.p((eh5) tm9Var);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean Y(mx0 mx0Var, tm9 tm9Var) {
            y45.j(tm9Var, "$receiver");
            if (tm9Var instanceof sm9) {
                return TypeUtilsKt.q((eh5) tm9Var);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
        }

        public static boolean Z(mx0 mx0Var, gh5 gh5Var) {
            y45.j(gh5Var, "$receiver");
            if (!(gh5Var instanceof mgb)) {
                return false;
            }
            ((mgb) gh5Var).I0();
            return false;
        }

        public static boolean a(mx0 mx0Var, tbb tbbVar, tbb tbbVar2) {
            y45.j(tbbVar, "c1");
            y45.j(tbbVar2, "c2");
            if (!(tbbVar instanceof sbb)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
            }
            if (tbbVar2 instanceof sbb) {
                return y45.e(tbbVar, tbbVar2);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar2 + ", " + xq8.b(tbbVar2.getClass())).toString());
        }

        public static boolean a0(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                px0 px0VarC = ((sbb) tbbVar).c();
                return px0VarC != null && d.B0(px0VarC);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static int b(mx0 mx0Var, gh5 gh5Var) {
            y45.j(gh5Var, "$receiver");
            if (gh5Var instanceof eh5) {
                return ((eh5) gh5Var).G0().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + gh5Var + ", " + xq8.b(gh5Var.getClass())).toString());
        }

        public static tm9 b0(mx0 mx0Var, iy3 iy3Var) {
            y45.j(iy3Var, "$receiver");
            if (iy3Var instanceof fy3) {
                return ((fy3) iy3Var).Q0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + iy3Var + ", " + xq8.b(iy3Var.getClass())).toString());
        }

        public static gbb c(mx0 mx0Var, tm9 tm9Var) {
            y45.j(tm9Var, "$receiver");
            if (tm9Var instanceof sm9) {
                return (gbb) tm9Var;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
        }

        public static gh5 c0(mx0 mx0Var, rr0 rr0Var) {
            y45.j(rr0Var, "$receiver");
            if (rr0Var instanceof f07) {
                return ((f07) rr0Var).T0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + rr0Var + ", " + xq8.b(rr0Var.getClass())).toString());
        }

        public static rr0 d(mx0 mx0Var, tm9 tm9Var) {
            y45.j(tm9Var, "$receiver");
            if (tm9Var instanceof sm9) {
                if (tm9Var instanceof vm9) {
                    return mx0Var.d(((vm9) tm9Var).Q());
                }
                if (tm9Var instanceof f07) {
                    return (f07) tm9Var;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
        }

        public static gh5 d0(mx0 mx0Var, gh5 gh5Var) {
            y45.j(gh5Var, "$receiver");
            if (gh5Var instanceof mgb) {
                return nx0.b((mgb) gh5Var);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + gh5Var + ", " + xq8.b(gh5Var.getClass())).toString());
        }

        public static h72 e(mx0 mx0Var, tm9 tm9Var) {
            y45.j(tm9Var, "$receiver");
            if (tm9Var instanceof sm9) {
                if (tm9Var instanceof g72) {
                    return (g72) tm9Var;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
        }

        public static TypeCheckerState e0(mx0 mx0Var, boolean z, boolean z2) {
            return kotlin.reflect.jvm.internal.impl.types.checker.a.b(z, z2, mx0Var, null, null, 24, null);
        }

        public static k43 f(mx0 mx0Var, iy3 iy3Var) {
            y45.j(iy3Var, "$receiver");
            if (iy3Var instanceof fy3) {
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + iy3Var + ", " + xq8.b(iy3Var.getClass())).toString());
        }

        public static tm9 f0(mx0 mx0Var, h72 h72Var) {
            y45.j(h72Var, "$receiver");
            if (h72Var instanceof g72) {
                return ((g72) h72Var).U0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + h72Var + ", " + xq8.b(h72Var.getClass())).toString());
        }

        public static iy3 g(mx0 mx0Var, gh5 gh5Var) {
            y45.j(gh5Var, "$receiver");
            if (gh5Var instanceof eh5) {
                mgb mgbVarL0 = ((eh5) gh5Var).L0();
                if (mgbVarL0 instanceof fy3) {
                    return (fy3) mgbVarL0;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + gh5Var + ", " + xq8.b(gh5Var.getClass())).toString());
        }

        public static int g0(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                return ((sbb) tbbVar).getParameters().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static do8 h(mx0 mx0Var, iy3 iy3Var) {
            y45.j(iy3Var, "$receiver");
            if (iy3Var instanceof fy3) {
                if (iy3Var instanceof co8) {
                    return (co8) iy3Var;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + iy3Var + ", " + xq8.b(iy3Var.getClass())).toString());
        }

        public static Collection h0(mx0 mx0Var, tm9 tm9Var) {
            y45.j(tm9Var, "$receiver");
            tbb tbbVarC = mx0Var.c(tm9Var);
            if (tbbVarC instanceof IntegerLiteralTypeConstructor) {
                return ((IntegerLiteralTypeConstructor) tbbVarC).i();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
        }

        public static tm9 i(mx0 mx0Var, gh5 gh5Var) {
            y45.j(gh5Var, "$receiver");
            if (gh5Var instanceof eh5) {
                mgb mgbVarL0 = ((eh5) gh5Var).L0();
                if (mgbVarL0 instanceof sm9) {
                    return (sm9) mgbVarL0;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + gh5Var + ", " + xq8.b(gh5Var.getClass())).toString());
        }

        public static hbb i0(mx0 mx0Var, qr0 qr0Var) {
            y45.j(qr0Var, "$receiver");
            if (qr0Var instanceof NewCapturedTypeConstructor) {
                return ((NewCapturedTypeConstructor) qr0Var).b();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + qr0Var + ", " + xq8.b(qr0Var.getClass())).toString());
        }

        public static hbb j(mx0 mx0Var, gh5 gh5Var) {
            y45.j(gh5Var, "$receiver");
            if (gh5Var instanceof eh5) {
                return TypeUtilsKt.a((eh5) gh5Var);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + gh5Var + ", " + xq8.b(gh5Var.getClass())).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static TypeCheckerState.b j0(mx0 mx0Var, tm9 tm9Var) {
            y45.j(tm9Var, "type");
            if (tm9Var instanceof sm9) {
                return new C0424a(mx0Var, k.c.a((eh5) tm9Var).c());
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
        }

        public static tm9 k(mx0 mx0Var, tm9 tm9Var, CaptureStatus captureStatus) {
            y45.j(tm9Var, "type");
            y45.j(captureStatus, "status");
            if (tm9Var instanceof sm9) {
                return kotlin.reflect.jvm.internal.impl.types.checker.d.b((sm9) tm9Var, captureStatus);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
        }

        public static Collection k0(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                Collection collectionK = ((sbb) tbbVar).k();
                y45.i(collectionK, "this.supertypes");
                return collectionK;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static CaptureStatus l(mx0 mx0Var, rr0 rr0Var) {
            y45.j(rr0Var, "$receiver");
            if (rr0Var instanceof f07) {
                return ((f07) rr0Var).R0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + rr0Var + ", " + xq8.b(rr0Var.getClass())).toString());
        }

        public static qr0 l0(mx0 mx0Var, rr0 rr0Var) {
            y45.j(rr0Var, "$receiver");
            if (rr0Var instanceof f07) {
                return ((f07) rr0Var).I0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + rr0Var + ", " + xq8.b(rr0Var.getClass())).toString());
        }

        public static gh5 m(mx0 mx0Var, tm9 tm9Var, tm9 tm9Var2) {
            y45.j(tm9Var, "lowerBound");
            y45.j(tm9Var2, "upperBound");
            if (!(tm9Var instanceof sm9)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + mx0Var + ", " + xq8.b(mx0Var.getClass())).toString());
            }
            if (tm9Var2 instanceof sm9) {
                return KotlinTypeFactory.d((sm9) tm9Var, (sm9) tm9Var2);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + mx0Var + ", " + xq8.b(mx0Var.getClass())).toString());
        }

        public static tbb m0(mx0 mx0Var, tm9 tm9Var) {
            y45.j(tm9Var, "$receiver");
            if (tm9Var instanceof sm9) {
                return ((sm9) tm9Var).I0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
        }

        public static hbb n(mx0 mx0Var, gh5 gh5Var, int i) {
            y45.j(gh5Var, "$receiver");
            if (gh5Var instanceof eh5) {
                return (hbb) ((eh5) gh5Var).G0().get(i);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + gh5Var + ", " + xq8.b(gh5Var.getClass())).toString());
        }

        public static tm9 n0(mx0 mx0Var, iy3 iy3Var) {
            y45.j(iy3Var, "$receiver");
            if (iy3Var instanceof fy3) {
                return ((fy3) iy3Var).R0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + iy3Var + ", " + xq8.b(iy3Var.getClass())).toString());
        }

        public static List o(mx0 mx0Var, gh5 gh5Var) {
            y45.j(gh5Var, "$receiver");
            if (gh5Var instanceof eh5) {
                return ((eh5) gh5Var).G0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + gh5Var + ", " + xq8.b(gh5Var.getClass())).toString());
        }

        public static gh5 o0(mx0 mx0Var, gh5 gh5Var, boolean z) {
            y45.j(gh5Var, "$receiver");
            if (gh5Var instanceof tm9) {
                return mx0Var.b((tm9) gh5Var, z);
            }
            if (!(gh5Var instanceof iy3)) {
                throw new IllegalStateException("sealed");
            }
            iy3 iy3Var = (iy3) gh5Var;
            return mx0Var.P(mx0Var.b(mx0Var.e(iy3Var), z), mx0Var.b(mx0Var.g(iy3Var), z));
        }

        public static p54 p(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                px0 px0VarC = ((sbb) tbbVar).c();
                y45.h(px0VarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return DescriptorUtilsKt.m((qw0) px0VarC);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static tm9 p0(mx0 mx0Var, tm9 tm9Var, boolean z) {
            y45.j(tm9Var, "$receiver");
            if (tm9Var instanceof sm9) {
                return ((sm9) tm9Var).M0(z);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tm9Var + ", " + xq8.b(tm9Var.getClass())).toString());
        }

        public static kcb q(mx0 mx0Var, tbb tbbVar, int i) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                Object obj = ((sbb) tbbVar).getParameters().get(i);
                y45.i(obj, "this.parameters[index]");
                return (kcb) obj;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static List r(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                List parameters = ((sbb) tbbVar).getParameters();
                y45.i(parameters, "this.parameters");
                return parameters;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static PrimitiveType s(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                px0 px0VarC = ((sbb) tbbVar).c();
                y45.h(px0VarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return d.P((qw0) px0VarC);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static PrimitiveType t(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                px0 px0VarC = ((sbb) tbbVar).c();
                y45.h(px0VarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                return d.S((qw0) px0VarC);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static gh5 u(mx0 mx0Var, kcb kcbVar) {
            y45.j(kcbVar, "$receiver");
            if (kcbVar instanceof hcb) {
                return TypeUtilsKt.j((hcb) kcbVar);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + kcbVar + ", " + xq8.b(kcbVar.getClass())).toString());
        }

        public static gh5 v(mx0 mx0Var, hbb hbbVar) {
            y45.j(hbbVar, "$receiver");
            if (hbbVar instanceof mcb) {
                return ((mcb) hbbVar).getType().L0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + hbbVar + ", " + xq8.b(hbbVar.getClass())).toString());
        }

        public static kcb w(mx0 mx0Var, tbb tbbVar) {
            y45.j(tbbVar, "$receiver");
            if (tbbVar instanceof sbb) {
                px0 px0VarC = ((sbb) tbbVar).c();
                if (px0VarC instanceof hcb) {
                    return (hcb) px0VarC;
                }
                return null;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + tbbVar + ", " + xq8.b(tbbVar.getClass())).toString());
        }

        public static gh5 x(mx0 mx0Var, gh5 gh5Var) {
            y45.j(gh5Var, "$receiver");
            if (gh5Var instanceof eh5) {
                return h05.g((eh5) gh5Var);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + gh5Var + ", " + xq8.b(gh5Var.getClass())).toString());
        }

        public static List y(mx0 mx0Var, kcb kcbVar) {
            y45.j(kcbVar, "$receiver");
            if (kcbVar instanceof hcb) {
                List upperBounds = ((hcb) kcbVar).getUpperBounds();
                y45.i(upperBounds, "this.upperBounds");
                return upperBounds;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + kcbVar + ", " + xq8.b(kcbVar.getClass())).toString());
        }

        public static TypeVariance z(mx0 mx0Var, hbb hbbVar) {
            y45.j(hbbVar, "$receiver");
            if (hbbVar instanceof mcb) {
                Variance varianceC = ((mcb) hbbVar).c();
                y45.i(varianceC, "this.projectionKind");
                return ucb.a(varianceC);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + hbbVar + ", " + xq8.b(hbbVar.getClass())).toString());
        }
    }

    gh5 P(tm9 tm9Var, tm9 tm9Var2);

    @Override
    tm9 a(gh5 gh5Var);

    @Override
    tm9 b(tm9 tm9Var, boolean z);

    @Override
    tbb c(tm9 tm9Var);

    @Override
    rr0 d(tm9 tm9Var);

    @Override
    tm9 e(iy3 iy3Var);

    @Override
    boolean f(tm9 tm9Var);

    @Override
    tm9 g(iy3 iy3Var);
}
