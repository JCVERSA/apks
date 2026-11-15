package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.types.m;

public abstract class rcb {
    public static final Object a(rd5 rd5Var, Object obj, boolean z) {
        y45.j(rd5Var, "<this>");
        y45.j(obj, "possiblyPrimitiveType");
        return z ? rd5Var.c(obj) : obj;
    }

    public static final Object b(m mVar, gh5 gh5Var, rd5 rd5Var, fcb fcbVar) {
        y45.j(mVar, "<this>");
        y45.j(gh5Var, "type");
        y45.j(rd5Var, "typeFactory");
        y45.j(fcbVar, hb0.KEY_NAME_MODE);
        tbb tbbVarJ = mVar.J(gh5Var);
        if (!mVar.U(tbbVarJ)) {
            return null;
        }
        PrimitiveType primitiveTypeB0 = mVar.B0(tbbVarJ);
        if (primitiveTypeB0 != null) {
            return a(rd5Var, rd5Var.d(primitiveTypeB0), mVar.l0(gh5Var) || xbb.c(mVar, gh5Var));
        }
        PrimitiveType primitiveTypeR = mVar.r(tbbVarJ);
        if (primitiveTypeR != null) {
            return rd5Var.a('[' + JvmPrimitiveType.get(primitiveTypeR).getDesc());
        }
        if (mVar.x0(tbbVarJ)) {
            p54 p54VarA0 = mVar.A0(tbbVarJ);
            xw0 xw0VarN = p54VarA0 != null ? m85.a.n(p54VarA0) : null;
            if (xw0VarN != null) {
                if (!fcbVar.a()) {
                    List listI = m85.a.i();
                    if (!(listI instanceof Collection) || !listI.isEmpty()) {
                        Iterator it = listI.iterator();
                        while (it.hasNext()) {
                            if (y45.e(((m85.a) it.next()).d(), xw0VarN)) {
                                return null;
                            }
                        }
                    }
                }
                String strF = fd5.b(xw0VarN).f();
                y45.i(strF, "byClassId(classId).internalName");
                return rd5Var.f(strF);
            }
        }
        return null;
    }
}
