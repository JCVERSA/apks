package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.reflect.jvm.internal.KCallableImpl;
import kotlin.reflect.jvm.internal.KClassImpl;
import kotlin.reflect.jvm.internal.KFunctionImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.e;

public abstract class fe5 {
    public static final Collection a(de5 de5Var) {
        y45.j(de5Var, "<this>");
        Collection collectionG = ((KClassImpl.Data) ((KClassImpl) de5Var).P().invoke()).g();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionG) {
            KCallableImpl kCallableImpl = (KCallableImpl) obj;
            if (d(kCallableImpl) && (kCallableImpl instanceof cf5)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final le5 b(de5 de5Var) {
        Object next;
        y45.j(de5Var, "<this>");
        Iterator it = ((KClassImpl) de5Var).O().iterator();
        while (it.hasNext()) {
            next = it.next();
            le5 le5Var = (le5) next;
            y45.h(le5Var, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KFunctionImpl");
            e eVarD = ((KFunctionImpl) le5Var).D();
            y45.h(eVarD, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ConstructorDescriptor");
            if (((c) eVarD).i0()) {
                return (le5) next;
            }
        }
        next = null;
        return (le5) next;
    }

    public static final boolean c(KCallableImpl kCallableImpl) {
        return kCallableImpl.D().b0() != null;
    }

    public static final boolean d(KCallableImpl kCallableImpl) {
        return !c(kCallableImpl);
    }
}
