package defpackage;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.k;
import kotlin.reflect.jvm.internal.impl.types.n;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt;

public abstract class hmb {
    public static final eh5 a(eh5 eh5Var) {
        return (eh5) CapturedTypeApproximationKt.a(eh5Var).d();
    }

    public static final String b(sbb sbbVar) {
        StringBuilder sb = new StringBuilder();
        c("type: " + sbbVar, sb);
        c("hashCode: " + sbbVar.hashCode(), sb);
        c("javaClass: " + sbbVar.getClass().getCanonicalName(), sb);
        for (xt1 xt1VarC = sbbVar.c(); xt1VarC != null; xt1VarC = xt1VarC.b()) {
            c("fqName: " + DescriptorRenderer.g.s(xt1VarC), sb);
            c("javaClass: " + xt1VarC.getClass().getCanonicalName(), sb);
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public static final StringBuilder c(String str, StringBuilder sb) {
        y45.j(str, "<this>");
        sb.append(str);
        y45.i(sb, "append(value)");
        sb.append('\n');
        y45.i(sb, "append('\\n')");
        return sb;
    }

    public static final eh5 d(eh5 eh5Var, eh5 eh5Var2, qbb qbbVar) {
        y45.j(eh5Var, "subtype");
        y45.j(eh5Var2, "supertype");
        y45.j(qbbVar, "typeCheckingProcedureCallbacks");
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(new p6a(eh5Var, null));
        sbb sbbVarI0 = eh5Var2.I0();
        while (!arrayDeque.isEmpty()) {
            p6a p6aVar = (p6a) arrayDeque.poll();
            eh5 eh5VarB = p6aVar.b();
            sbb sbbVarI1 = eh5VarB.I0();
            if (qbbVar.a(sbbVarI1, sbbVarI0)) {
                boolean zJ0 = eh5VarB.J0();
                for (p6a p6aVarA = p6aVar.a(); p6aVarA != null; p6aVarA = p6aVarA.a()) {
                    eh5 eh5VarB2 = p6aVarA.b();
                    List listG0 = eh5VarB2.G0();
                    if (!(listG0 instanceof Collection) || !listG0.isEmpty()) {
                        Iterator it = listG0.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                eh5VarB = k.c.a(eh5VarB2).c().n(eh5VarB, Variance.INVARIANT);
                                y45.i(eh5VarB, "{\n                    Ty…ARIANT)\n                }");
                                break;
                            }
                            Variance varianceC = ((mcb) it.next()).c();
                            Variance variance = Variance.INVARIANT;
                            if (varianceC != variance) {
                                eh5 eh5VarN = CapturedTypeConstructorKt.f(k.c.a(eh5VarB2), false, 1, null).c().n(eh5VarB, variance);
                                y45.i(eh5VarN, "TypeConstructorSubstitut…uted, Variance.INVARIANT)");
                                eh5VarB = a(eh5VarN);
                                break;
                            }
                        }
                    } else {
                        eh5VarB = k.c.a(eh5VarB2).c().n(eh5VarB, Variance.INVARIANT);
                        y45.i(eh5VarB, "{\n                    Ty…ARIANT)\n                }");
                        break;
                    }
                    zJ0 = zJ0 || eh5VarB2.J0();
                }
                sbb sbbVarI2 = eh5VarB.I0();
                if (qbbVar.a(sbbVarI2, sbbVarI0)) {
                    return n.p(eh5VarB, zJ0);
                }
                throw new AssertionError("Type constructors should be equals!\nsubstitutedSuperType: " + b(sbbVarI2) + ", \n\nsupertype: " + b(sbbVarI0) + " \n" + qbbVar.a(sbbVarI2, sbbVarI0));
            }
            for (eh5 eh5Var3 : sbbVarI1.k()) {
                y45.i(eh5Var3, "immediateSupertype");
                arrayDeque.add(new p6a(eh5Var3, p6aVar));
            }
        }
        return null;
    }
}
