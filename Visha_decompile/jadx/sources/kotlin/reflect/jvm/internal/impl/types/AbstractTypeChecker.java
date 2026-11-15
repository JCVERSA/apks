package kotlin.reflect.jvm.internal.impl.types;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.livecaption.constant.ICode;
import defpackage.b4;
import defpackage.bq9;
import defpackage.c74;
import defpackage.d81;
import defpackage.e74;
import defpackage.gbb;
import defpackage.gh5;
import defpackage.h72;
import defpackage.hbb;
import defpackage.i81;
import defpackage.kcb;
import defpackage.q45;
import defpackage.rr0;
import defpackage.tbb;
import defpackage.tcb;
import defpackage.tm9;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.types.model.ArgumentList;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;

public final class AbstractTypeChecker {
    public static final AbstractTypeChecker a = new AbstractTypeChecker();
    public static boolean b;

    public class a {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[TypeVariance.values().length];
            try {
                iArr[TypeVariance.INV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TypeVariance.OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TypeVariance.IN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
            int[] iArr2 = new int[TypeCheckerState.LowerCapturedTypePolicy.values().length];
            try {
                iArr2[TypeCheckerState.LowerCapturedTypePolicy.CHECK_ONLY_LOWER.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[TypeCheckerState.LowerCapturedTypePolicy.CHECK_SUBTYPE_AND_LOWER.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[TypeCheckerState.LowerCapturedTypePolicy.SKIP_LOWER.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            b = iArr2;
        }
    }

    public static final boolean b(tcb tcbVar, tm9 tm9Var) {
        if (!(tm9Var instanceof rr0)) {
            return false;
        }
        hbb hbbVarU = tcbVar.u(tcbVar.s0((rr0) tm9Var));
        return !tcbVar.p0(hbbVarU) && tcbVar.o(tcbVar.q(tcbVar.j(hbbVarU)));
    }

    public static final boolean c(tcb tcbVar, tm9 tm9Var) {
        tbb tbbVarC = tcbVar.c(tm9Var);
        if (tbbVarC instanceof q45) {
            Collection collectionD = tcbVar.D(tbbVarC);
            if (!(collectionD instanceof Collection) || !collectionD.isEmpty()) {
                Iterator it = collectionD.iterator();
                while (it.hasNext()) {
                    tm9 tm9VarA = tcbVar.a((gh5) it.next());
                    if (tm9VarA != null && tcbVar.o(tm9VarA)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final boolean d(tcb tcbVar, tm9 tm9Var) {
        return tcbVar.o(tm9Var) || b(tcbVar, tm9Var);
    }

    public static final boolean e(tcb tcbVar, TypeCheckerState typeCheckerState, tm9 tm9Var, tm9 tm9Var2, boolean z) {
        Collection<gh5> collectionW = tcbVar.W(tm9Var);
        if ((collectionW instanceof Collection) && collectionW.isEmpty()) {
            return false;
        }
        for (gh5 gh5Var : collectionW) {
            if (y45.e(tcbVar.J(gh5Var), tcbVar.c(tm9Var2)) || (z && t(a, typeCheckerState, tm9Var2, gh5Var, false, 8, null))) {
                return true;
            }
        }
        return false;
    }

    public static boolean t(AbstractTypeChecker abstractTypeChecker, TypeCheckerState typeCheckerState, gh5 gh5Var, gh5 gh5Var2, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        return abstractTypeChecker.s(typeCheckerState, gh5Var, gh5Var2, z);
    }

    public final Boolean a(TypeCheckerState typeCheckerState, tm9 tm9Var, tm9 tm9Var2) {
        tcb tcbVarJ = typeCheckerState.j();
        if (!tcbVarJ.o(tm9Var) && !tcbVarJ.o(tm9Var2)) {
            return null;
        }
        if (d(tcbVarJ, tm9Var) && d(tcbVarJ, tm9Var2)) {
            return Boolean.TRUE;
        }
        if (tcbVarJ.o(tm9Var)) {
            if (e(tcbVarJ, typeCheckerState, tm9Var, tm9Var2, false)) {
                return Boolean.TRUE;
            }
        } else if (tcbVarJ.o(tm9Var2) && (c(tcbVarJ, tm9Var) || e(tcbVarJ, typeCheckerState, tm9Var2, tm9Var, true))) {
            return Boolean.TRUE;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:81:0x0128  */
    /* JADX WARN: Code duplicated, block: B:83:0x0134  */
    public final Boolean f(TypeCheckerState typeCheckerState, tm9 tm9Var, tm9 tm9Var2) {
        tm9 tm9VarL;
        kcb kcbVarM;
        tcb tcbVarJ = typeCheckerState.j();
        boolean z = false;
        if (tcbVarJ.m0(tm9Var) || tcbVarJ.m0(tm9Var2)) {
            if (typeCheckerState.m()) {
                return Boolean.TRUE;
            }
            return (!tcbVarJ.w(tm9Var) || tcbVarJ.w(tm9Var2)) ? Boolean.valueOf(b4.a.b(tcbVarJ, tcbVarJ.b(tm9Var, false), tcbVarJ.b(tm9Var2, false))) : Boolean.FALSE;
        }
        if (tcbVarJ.r0(tm9Var) && tcbVarJ.r0(tm9Var2)) {
            return Boolean.valueOf(a.p(tcbVarJ, tm9Var, tm9Var2) || typeCheckerState.n());
        }
        if (tcbVarJ.E(tm9Var) || tcbVarJ.E(tm9Var2)) {
            return Boolean.valueOf(typeCheckerState.n());
        }
        h72 h72VarE0 = tcbVarJ.E0(tm9Var2);
        if (h72VarE0 == null || (tm9VarL = tcbVarJ.L(h72VarE0)) == null) {
            tm9VarL = tm9Var2;
        }
        rr0 rr0VarD = tcbVarJ.d(tm9VarL);
        gh5 gh5VarL = rr0VarD != null ? tcbVarJ.l(rr0VarD) : null;
        if (rr0VarD != null && gh5VarL != null) {
            if (tcbVarJ.w(tm9Var2)) {
                gh5VarL = tcbVarJ.C0(gh5VarL, true);
            } else if (tcbVarJ.Z(tm9Var2)) {
                gh5VarL = tcbVarJ.w0(gh5VarL);
            }
            gh5 gh5Var = gh5VarL;
            int i = a.b[typeCheckerState.g(tm9Var, rr0VarD).ordinal()];
            if (i == 1) {
                return Boolean.valueOf(t(a, typeCheckerState, tm9Var, gh5Var, false, 8, null));
            }
            if (i == 2 && t(a, typeCheckerState, tm9Var, gh5Var, false, 8, null)) {
                return Boolean.TRUE;
            }
        }
        tbb tbbVarC = tcbVarJ.c(tm9Var2);
        if (tcbVarJ.S(tbbVarC)) {
            tcbVarJ.w(tm9Var2);
            Collection collectionD = tcbVarJ.D(tbbVarC);
            if ((collectionD instanceof Collection) && collectionD.isEmpty()) {
                z = true;
            } else {
                Iterator it = collectionD.iterator();
                while (it.hasNext()) {
                    if (!t(a, typeCheckerState, tm9Var, (gh5) it.next(), false, 8, null)) {
                    }
                }
                z = true;
            }
            return Boolean.valueOf(z);
        }
        tbb tbbVarC2 = tcbVarJ.c(tm9Var);
        if (tm9Var instanceof rr0) {
            kcbVarM = a.m(typeCheckerState.j(), tm9Var2, tm9Var);
            if (kcbVarM != null && tcbVarJ.n0(kcbVarM, tcbVarJ.c(tm9Var2))) {
                return Boolean.TRUE;
            }
        } else if (tcbVarJ.S(tbbVarC2)) {
            Collection collectionD2 = tcbVarJ.D(tbbVarC2);
            if ((collectionD2 instanceof Collection) && collectionD2.isEmpty()) {
                kcbVarM = a.m(typeCheckerState.j(), tm9Var2, tm9Var);
                if (kcbVarM != null) {
                    return Boolean.TRUE;
                }
            } else {
                Iterator it2 = collectionD2.iterator();
                while (it2.hasNext()) {
                    if (!(((gh5) it2.next()) instanceof rr0)) {
                    }
                }
                kcbVarM = a.m(typeCheckerState.j(), tm9Var2, tm9Var);
                if (kcbVarM != null) {
                    return Boolean.TRUE;
                }
            }
        }
        return null;
    }

    public final List g(TypeCheckerState typeCheckerState, tm9 tm9Var, tbb tbbVar) {
        TypeCheckerState.b bVarM;
        tcb tcbVarJ = typeCheckerState.j();
        List listY = tcbVarJ.y(tm9Var, tbbVar);
        if (listY != null) {
            return listY;
        }
        if (!tcbVarJ.U(tbbVar) && tcbVarJ.B(tm9Var)) {
            return y71.k();
        }
        if (tcbVarJ.i0(tbbVar)) {
            if (!tcbVarJ.H(tcbVarJ.c(tm9Var), tbbVar)) {
                return y71.k();
            }
            tm9 tm9VarK = tcbVarJ.k(tm9Var, CaptureStatus.FOR_SUBTYPING);
            if (tm9VarK != null) {
                tm9Var = tm9VarK;
            }
            return x71.e(tm9Var);
        }
        bq9 bq9Var = new bq9();
        typeCheckerState.k();
        ArrayDeque arrayDequeH = typeCheckerState.h();
        y45.g(arrayDequeH);
        Set setI = typeCheckerState.i();
        y45.g(setI);
        arrayDequeH.push(tm9Var);
        while (!arrayDequeH.isEmpty()) {
            if (setI.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + tm9Var + ". Supertypes = " + i81.y0(setI, null, null, null, 0, null, null, 63, null)).toString());
            }
            tm9 tm9Var2 = (tm9) arrayDequeH.pop();
            y45.i(tm9Var2, "current");
            if (setI.add(tm9Var2)) {
                tm9 tm9VarK2 = tcbVarJ.k(tm9Var2, CaptureStatus.FOR_SUBTYPING);
                if (tm9VarK2 == null) {
                    tm9VarK2 = tm9Var2;
                }
                if (tcbVarJ.H(tcbVarJ.c(tm9VarK2), tbbVar)) {
                    bq9Var.add(tm9VarK2);
                    bVarM = TypeCheckerState.b.c.a;
                } else {
                    bVarM = tcbVarJ.o0(tm9VarK2) == 0 ? TypeCheckerState.b.C0410b.a : typeCheckerState.j().m(tm9VarK2);
                }
                if (y45.e(bVarM, TypeCheckerState.b.c.a)) {
                    bVarM = null;
                }
                if (bVarM != null) {
                    tcb tcbVarJ2 = typeCheckerState.j();
                    Iterator it = tcbVarJ2.D(tcbVarJ2.c(tm9Var2)).iterator();
                    while (it.hasNext()) {
                        arrayDequeH.add(bVarM.a(typeCheckerState, (gh5) it.next()));
                    }
                }
            }
        }
        typeCheckerState.e();
        return bq9Var;
    }

    public final List h(TypeCheckerState typeCheckerState, tm9 tm9Var, tbb tbbVar) {
        return w(typeCheckerState, g(typeCheckerState, tm9Var, tbbVar));
    }

    public final boolean i(TypeCheckerState typeCheckerState, gh5 gh5Var, gh5 gh5Var2, boolean z) {
        tcb tcbVarJ = typeCheckerState.j();
        gh5 gh5VarO = typeCheckerState.o(typeCheckerState.p(gh5Var));
        gh5 gh5VarO2 = typeCheckerState.o(typeCheckerState.p(gh5Var2));
        AbstractTypeChecker abstractTypeChecker = a;
        Boolean boolF = abstractTypeChecker.f(typeCheckerState, tcbVarJ.C(gh5VarO), tcbVarJ.q(gh5VarO2));
        if (boolF == null) {
            Boolean boolC = typeCheckerState.c(gh5VarO, gh5VarO2, z);
            return boolC != null ? boolC.booleanValue() : abstractTypeChecker.u(typeCheckerState, tcbVarJ.C(gh5VarO), tcbVarJ.q(gh5VarO2));
        }
        boolean zBooleanValue = boolF.booleanValue();
        typeCheckerState.c(gh5VarO, gh5VarO2, z);
        return zBooleanValue;
    }

    public final TypeVariance j(TypeVariance typeVariance, TypeVariance typeVariance2) {
        y45.j(typeVariance, "declared");
        y45.j(typeVariance2, "useSite");
        TypeVariance typeVariance3 = TypeVariance.INV;
        if (typeVariance == typeVariance3) {
            return typeVariance2;
        }
        if (typeVariance2 == typeVariance3 || typeVariance == typeVariance2) {
            return typeVariance;
        }
        return null;
    }

    public final boolean k(TypeCheckerState typeCheckerState, gh5 gh5Var, gh5 gh5Var2) {
        y45.j(typeCheckerState, ICode.CALL.CALL_KEY_STATE);
        y45.j(gh5Var, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        y45.j(gh5Var2, "b");
        tcb tcbVarJ = typeCheckerState.j();
        if (gh5Var == gh5Var2) {
            return true;
        }
        AbstractTypeChecker abstractTypeChecker = a;
        if (abstractTypeChecker.o(tcbVarJ, gh5Var) && abstractTypeChecker.o(tcbVarJ, gh5Var2)) {
            gh5 gh5VarO = typeCheckerState.o(typeCheckerState.p(gh5Var));
            gh5 gh5VarO2 = typeCheckerState.o(typeCheckerState.p(gh5Var2));
            tm9 tm9VarC = tcbVarJ.C(gh5VarO);
            if (!tcbVarJ.H(tcbVarJ.J(gh5VarO), tcbVarJ.J(gh5VarO2))) {
                return false;
            }
            if (tcbVarJ.o0(tm9VarC) == 0) {
                return tcbVarJ.Y(gh5VarO) || tcbVarJ.Y(gh5VarO2) || tcbVarJ.w(tm9VarC) == tcbVarJ.w(tcbVarJ.C(gh5VarO2));
            }
        }
        return t(abstractTypeChecker, typeCheckerState, gh5Var, gh5Var2, false, 8, null) && t(abstractTypeChecker, typeCheckerState, gh5Var2, gh5Var, false, 8, null);
    }

    public final List l(TypeCheckerState typeCheckerState, tm9 tm9Var, tbb tbbVar) {
        TypeCheckerState.b bVar;
        y45.j(typeCheckerState, ICode.CALL.CALL_KEY_STATE);
        y45.j(tm9Var, "subType");
        y45.j(tbbVar, "superConstructor");
        tcb tcbVarJ = typeCheckerState.j();
        if (tcbVarJ.B(tm9Var)) {
            return a.h(typeCheckerState, tm9Var, tbbVar);
        }
        if (!tcbVarJ.U(tbbVar) && !tcbVarJ.K(tbbVar)) {
            return a.g(typeCheckerState, tm9Var, tbbVar);
        }
        bq9<tm9> bq9Var = new bq9();
        typeCheckerState.k();
        ArrayDeque arrayDequeH = typeCheckerState.h();
        y45.g(arrayDequeH);
        Set setI = typeCheckerState.i();
        y45.g(setI);
        arrayDequeH.push(tm9Var);
        while (!arrayDequeH.isEmpty()) {
            if (setI.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + tm9Var + ". Supertypes = " + i81.y0(setI, null, null, null, 0, null, null, 63, null)).toString());
            }
            tm9 tm9Var2 = (tm9) arrayDequeH.pop();
            y45.i(tm9Var2, "current");
            if (setI.add(tm9Var2)) {
                if (tcbVarJ.B(tm9Var2)) {
                    bq9Var.add(tm9Var2);
                    bVar = TypeCheckerState.b.c.a;
                } else {
                    bVar = TypeCheckerState.b.C0410b.a;
                }
                if (y45.e(bVar, TypeCheckerState.b.c.a)) {
                    bVar = null;
                }
                if (bVar != null) {
                    tcb tcbVarJ2 = typeCheckerState.j();
                    Iterator it = tcbVarJ2.D(tcbVarJ2.c(tm9Var2)).iterator();
                    while (it.hasNext()) {
                        arrayDequeH.add(bVar.a(typeCheckerState, (gh5) it.next()));
                    }
                }
            }
        }
        typeCheckerState.e();
        ArrayList arrayList = new ArrayList();
        for (tm9 tm9Var3 : bq9Var) {
            AbstractTypeChecker abstractTypeChecker = a;
            y45.i(tm9Var3, "it");
            d81.C(arrayList, abstractTypeChecker.h(typeCheckerState, tm9Var3, tbbVar));
        }
        return arrayList;
    }

    public final kcb m(tcb tcbVar, gh5 gh5Var, gh5 gh5Var2) {
        gh5 gh5VarJ;
        int iO0 = tcbVar.o0(gh5Var);
        int i = 0;
        while (true) {
            if (i >= iO0) {
                return null;
            }
            hbb hbbVarK0 = tcbVar.k0(gh5Var, i);
            hbb hbbVar = tcbVar.p0(hbbVarK0) ? null : hbbVarK0;
            if (hbbVar != null && (gh5VarJ = tcbVar.j(hbbVar)) != null) {
                boolean z = tcbVar.v0(tcbVar.j0(tcbVar.C(gh5VarJ))) && tcbVar.v0(tcbVar.j0(tcbVar.C(gh5Var2)));
                if (y45.e(gh5VarJ, gh5Var2) || (z && y45.e(tcbVar.J(gh5VarJ), tcbVar.J(gh5Var2)))) {
                    return tcbVar.e0(tcbVar.J(gh5Var), i);
                }
                kcb kcbVarM = m(tcbVar, gh5VarJ, gh5Var2);
                if (kcbVarM != null) {
                    return kcbVarM;
                }
            }
            i++;
        }
    }

    public final boolean n(TypeCheckerState typeCheckerState, tm9 tm9Var) {
        tcb tcbVarJ = typeCheckerState.j();
        tbb tbbVarC = tcbVarJ.c(tm9Var);
        if (tcbVarJ.U(tbbVarC)) {
            return tcbVarJ.h0(tbbVarC);
        }
        if (tcbVarJ.h0(tcbVarJ.c(tm9Var))) {
            return true;
        }
        typeCheckerState.k();
        ArrayDeque arrayDequeH = typeCheckerState.h();
        y45.g(arrayDequeH);
        Set setI = typeCheckerState.i();
        y45.g(setI);
        arrayDequeH.push(tm9Var);
        while (!arrayDequeH.isEmpty()) {
            if (setI.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + tm9Var + ". Supertypes = " + i81.y0(setI, null, null, null, 0, null, null, 63, null)).toString());
            }
            tm9 tm9Var2 = (tm9) arrayDequeH.pop();
            y45.i(tm9Var2, "current");
            if (setI.add(tm9Var2)) {
                TypeCheckerState.b bVar = tcbVarJ.B(tm9Var2) ? TypeCheckerState.b.c.a : TypeCheckerState.b.C0410b.a;
                if (y45.e(bVar, TypeCheckerState.b.c.a)) {
                    bVar = null;
                }
                if (bVar == null) {
                    continue;
                } else {
                    tcb tcbVarJ2 = typeCheckerState.j();
                    Iterator it = tcbVarJ2.D(tcbVarJ2.c(tm9Var2)).iterator();
                    while (it.hasNext()) {
                        tm9 tm9VarA = bVar.a(typeCheckerState, (gh5) it.next());
                        if (tcbVarJ.h0(tcbVarJ.c(tm9VarA))) {
                            typeCheckerState.e();
                            return true;
                        }
                        arrayDequeH.add(tm9VarA);
                    }
                }
            }
        }
        typeCheckerState.e();
        return false;
    }

    public final boolean o(tcb tcbVar, gh5 gh5Var) {
        return (!tcbVar.t0(tcbVar.J(gh5Var)) || tcbVar.i(gh5Var) || tcbVar.Z(gh5Var) || tcbVar.f0(gh5Var) || !y45.e(tcbVar.c(tcbVar.C(gh5Var)), tcbVar.c(tcbVar.q(gh5Var)))) ? false : true;
    }

    public final boolean p(tcb tcbVar, tm9 tm9Var, tm9 tm9Var2) {
        tm9 tm9VarL;
        tm9 tm9VarL2;
        h72 h72VarE0 = tcbVar.E0(tm9Var);
        if (h72VarE0 == null || (tm9VarL = tcbVar.L(h72VarE0)) == null) {
            tm9VarL = tm9Var;
        }
        h72 h72VarE1 = tcbVar.E0(tm9Var2);
        if (h72VarE1 == null || (tm9VarL2 = tcbVar.L(h72VarE1)) == null) {
            tm9VarL2 = tm9Var2;
        }
        if (tcbVar.c(tm9VarL) != tcbVar.c(tm9VarL2)) {
            return false;
        }
        if (tcbVar.Z(tm9Var) || !tcbVar.Z(tm9Var2)) {
            return !tcbVar.w(tm9Var) || tcbVar.w(tm9Var2);
        }
        return false;
    }

    public final boolean q(TypeCheckerState typeCheckerState, gbb gbbVar, tm9 tm9Var) {
        boolean zK;
        y45.j(typeCheckerState, "<this>");
        y45.j(gbbVar, "capturedSubArguments");
        y45.j(tm9Var, "superType");
        tcb tcbVarJ = typeCheckerState.j();
        tbb tbbVarC = tcbVarJ.c(tm9Var);
        int iR = tcbVarJ.R(gbbVar);
        int iC0 = tcbVarJ.c0(tbbVarC);
        if (iR != iC0 || iR != tcbVarJ.o0(tm9Var)) {
            return false;
        }
        for (int i = 0; i < iC0; i++) {
            hbb hbbVarK0 = tcbVarJ.k0(tm9Var, i);
            if (!tcbVarJ.p0(hbbVarK0)) {
                gh5 gh5VarJ = tcbVarJ.j(hbbVarK0);
                hbb hbbVarO = tcbVarJ.O(gbbVar, i);
                tcbVarJ.z(hbbVarO);
                TypeVariance typeVariance = TypeVariance.INV;
                gh5 gh5VarJ2 = tcbVarJ.j(hbbVarO);
                AbstractTypeChecker abstractTypeChecker = a;
                TypeVariance typeVarianceJ = abstractTypeChecker.j(tcbVarJ.V(tcbVarJ.e0(tbbVarC, i)), tcbVarJ.z(hbbVarK0));
                if (typeVarianceJ == null) {
                    return typeCheckerState.m();
                }
                if (typeVarianceJ != typeVariance || (!abstractTypeChecker.v(tcbVarJ, gh5VarJ2, gh5VarJ, tbbVarC) && !abstractTypeChecker.v(tcbVarJ, gh5VarJ, gh5VarJ2, tbbVarC))) {
                    if (typeCheckerState.g > 100) {
                        throw new IllegalStateException(("Arguments depth is too high. Some related argument: " + gh5VarJ2).toString());
                    }
                    typeCheckerState.g++;
                    int i2 = a.a[typeVarianceJ.ordinal()];
                    if (i2 == 1) {
                        zK = abstractTypeChecker.k(typeCheckerState, gh5VarJ2, gh5VarJ);
                    } else if (i2 == 2) {
                        zK = t(abstractTypeChecker, typeCheckerState, gh5VarJ2, gh5VarJ, false, 8, null);
                    } else {
                        if (i2 != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        zK = t(abstractTypeChecker, typeCheckerState, gh5VarJ, gh5VarJ2, false, 8, null);
                    }
                    typeCheckerState.g--;
                    if (!zK) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public final boolean r(TypeCheckerState typeCheckerState, gh5 gh5Var, gh5 gh5Var2) {
        y45.j(typeCheckerState, ICode.CALL.CALL_KEY_STATE);
        y45.j(gh5Var, "subType");
        y45.j(gh5Var2, "superType");
        return t(this, typeCheckerState, gh5Var, gh5Var2, false, 8, null);
    }

    public final boolean s(TypeCheckerState typeCheckerState, gh5 gh5Var, gh5 gh5Var2, boolean z) {
        y45.j(typeCheckerState, ICode.CALL.CALL_KEY_STATE);
        y45.j(gh5Var, "subType");
        y45.j(gh5Var2, "superType");
        if (gh5Var == gh5Var2) {
            return true;
        }
        if (typeCheckerState.f(gh5Var, gh5Var2)) {
            return i(typeCheckerState, gh5Var, gh5Var2, z);
        }
        return false;
    }

    public final boolean u(final TypeCheckerState typeCheckerState, tm9 tm9Var, final tm9 tm9Var2) {
        gh5 gh5VarJ;
        final tcb tcbVarJ = typeCheckerState.j();
        if (b) {
            if (!tcbVarJ.f(tm9Var) && !tcbVarJ.S(tcbVarJ.c(tm9Var))) {
                typeCheckerState.l(tm9Var);
            }
            if (!tcbVarJ.f(tm9Var2)) {
                typeCheckerState.l(tm9Var2);
            }
        }
        boolean z = false;
        if (!kotlin.reflect.jvm.internal.impl.types.a.a.d(typeCheckerState, tm9Var, tm9Var2)) {
            return false;
        }
        AbstractTypeChecker abstractTypeChecker = a;
        Boolean boolA = abstractTypeChecker.a(typeCheckerState, tcbVarJ.C(tm9Var), tcbVarJ.q(tm9Var2));
        if (boolA != null) {
            boolean zBooleanValue = boolA.booleanValue();
            TypeCheckerState.d(typeCheckerState, tm9Var, tm9Var2, false, 4, null);
            return zBooleanValue;
        }
        tbb tbbVarC = tcbVarJ.c(tm9Var2);
        boolean z2 = true;
        if ((tcbVarJ.H(tcbVarJ.c(tm9Var), tbbVarC) && tcbVarJ.c0(tbbVarC) == 0) || tcbVarJ.M(tcbVarJ.c(tm9Var2))) {
            return true;
        }
        List<tm9> listL = abstractTypeChecker.l(typeCheckerState, tm9Var, tbbVarC);
        int i = 10;
        final ArrayList<tm9> arrayList = new ArrayList(z71.v(listL, 10));
        for (tm9 tm9Var3 : listL) {
            tm9 tm9VarA = tcbVarJ.a(typeCheckerState.o(tm9Var3));
            if (tm9VarA != null) {
                tm9Var3 = tm9VarA;
            }
            arrayList.add(tm9Var3);
        }
        int size = arrayList.size();
        if (size == 0) {
            return a.n(typeCheckerState, tm9Var);
        }
        if (size == 1) {
            return a.q(typeCheckerState, tcbVarJ.q0((tm9) i81.o0(arrayList)), tm9Var2);
        }
        ArgumentList argumentList = new ArgumentList(tcbVarJ.c0(tbbVarC));
        int iC0 = tcbVarJ.c0(tbbVarC);
        int i2 = 0;
        boolean z3 = false;
        while (i2 < iC0) {
            z3 = (z3 || tcbVarJ.V(tcbVarJ.e0(tbbVarC, i2)) != TypeVariance.OUT) ? z2 : z;
            if (!z3) {
                ArrayList arrayList2 = new ArrayList(z71.v(arrayList, i));
                for (tm9 tm9Var4 : arrayList) {
                    hbb hbbVarG0 = tcbVarJ.g0(tm9Var4, i2);
                    if (hbbVarG0 != null) {
                        if (tcbVarJ.z(hbbVarG0) != TypeVariance.INV) {
                            hbbVarG0 = null;
                        }
                        if (hbbVarG0 != null && (gh5VarJ = tcbVarJ.j(hbbVarG0)) != null) {
                            arrayList2.add(gh5VarJ);
                        }
                    }
                    throw new IllegalStateException(("Incorrect type: " + tm9Var4 + ", subType: " + tm9Var + ", superType: " + tm9Var2).toString());
                }
                argumentList.add(tcbVarJ.t(tcbVarJ.F(arrayList2)));
            }
            i2++;
            z = false;
            z2 = true;
            i = 10;
        }
        if (z3 || !a.q(typeCheckerState, argumentList, tm9Var2)) {
            return typeCheckerState.q(new e74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke((TypeCheckerState.a) obj);
                    return zfb.a;
                }

                public final void invoke(TypeCheckerState.a aVar) {
                    y45.j(aVar, "$this$runForkingPoint");
                    for (final tm9 tm9Var5 : arrayList) {
                        final TypeCheckerState typeCheckerState2 = typeCheckerState;
                        final tcb tcbVar = tcbVarJ;
                        final tm9 tm9Var6 = tm9Var2;
                        aVar.a(new c74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override
                            public final Boolean invoke() {
                                return Boolean.valueOf(AbstractTypeChecker.a.q(typeCheckerState2, tcbVar.q0(tm9Var5), tm9Var6));
                            }
                        });
                    }
                }
            });
        }
        return true;
    }

    public final boolean v(tcb tcbVar, gh5 gh5Var, gh5 gh5Var2, tbb tbbVar) {
        tm9 tm9VarA = tcbVar.a(gh5Var);
        if (tm9VarA instanceof rr0) {
            rr0 rr0Var = (rr0) tm9VarA;
            if (tcbVar.Q(rr0Var) || !tcbVar.p0(tcbVar.u(tcbVar.s0(rr0Var))) || tcbVar.X(rr0Var) != CaptureStatus.FOR_SUBTYPING) {
                return false;
            }
            tcbVar.J(gh5Var2);
        }
        return false;
    }

    public final List w(TypeCheckerState typeCheckerState, List list) {
        tcb tcbVarJ = typeCheckerState.j();
        if (list.size() < 2) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            gbb gbbVarQ0 = tcbVarJ.q0((tm9) obj);
            int iR = tcbVarJ.R(gbbVarQ0);
            int i = 0;
            while (true) {
                if (i >= iR) {
                    arrayList.add(obj);
                    break;
                }
                if (tcbVarJ.I(tcbVarJ.j(tcbVarJ.O(gbbVarQ0, i))) != null) {
                    break;
                }
                i++;
            }
        }
        return !arrayList.isEmpty() ? arrayList : list;
    }
}
