package defpackage;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import kotlin.reflect.jvm.internal.KCallableImpl;
import kotlin.reflect.jvm.internal.calls.a;

public abstract class ce5 {
    public static final boolean a(be5 be5Var) {
        a aVarZ;
        y45.j(be5Var, "<this>");
        if (be5Var instanceof ve5) {
            af5 af5Var = (af5) be5Var;
            Field fieldB = pq8.b(af5Var);
            if (!(fieldB != null ? fieldB.isAccessible() : true)) {
                return false;
            }
            Method methodC = pq8.c(af5Var);
            if (!(methodC != null ? methodC.isAccessible() : true)) {
                return false;
            }
            Method methodE = pq8.e((ve5) be5Var);
            if (!(methodE != null ? methodE.isAccessible() : true)) {
                return false;
            }
        } else if (be5Var instanceof af5) {
            af5 af5Var2 = (af5) be5Var;
            Field fieldB2 = pq8.b(af5Var2);
            if (!(fieldB2 != null ? fieldB2.isAccessible() : true)) {
                return false;
            }
            Method methodC2 = pq8.c(af5Var2);
            if (!(methodC2 != null ? methodC2.isAccessible() : true)) {
                return false;
            }
        } else if (be5Var instanceof af5.b) {
            Field fieldB3 = pq8.b(((af5.b) be5Var).h());
            if (!(fieldB3 != null ? fieldB3.isAccessible() : true)) {
                return false;
            }
            Method methodD = pq8.d((le5) be5Var);
            if (!(methodD != null ? methodD.isAccessible() : true)) {
                return false;
            }
        } else if (be5Var instanceof ve5.a) {
            Field fieldB4 = pq8.b(((ve5.a) be5Var).h());
            if (!(fieldB4 != null ? fieldB4.isAccessible() : true)) {
                return false;
            }
            Method methodD2 = pq8.d((le5) be5Var);
            if (!(methodD2 != null ? methodD2.isAccessible() : true)) {
                return false;
            }
        } else {
            if (!(be5Var instanceof le5)) {
                throw new UnsupportedOperationException("Unknown callable: " + be5Var + " (" + be5Var.getClass() + ')');
            }
            le5 le5Var = (le5) be5Var;
            Method methodD3 = pq8.d(le5Var);
            if (!(methodD3 != null ? methodD3.isAccessible() : true)) {
                return false;
            }
            KCallableImpl kCallableImplB = clb.b(be5Var);
            Member memberB = (kCallableImplB == null || (aVarZ = kCallableImplB.z()) == null) ? null : aVarZ.b();
            AccessibleObject accessibleObject = memberB instanceof AccessibleObject ? (AccessibleObject) memberB : null;
            if (!(accessibleObject != null ? accessibleObject.isAccessible() : true)) {
                return false;
            }
            Constructor constructorA = pq8.a(le5Var);
            if (!(constructorA != null ? constructorA.isAccessible() : true)) {
                return false;
            }
        }
        return true;
    }

    public static final void b(be5 be5Var, boolean z) {
        a aVarZ;
        y45.j(be5Var, "<this>");
        if (be5Var instanceof ve5) {
            af5 af5Var = (af5) be5Var;
            Field fieldB = pq8.b(af5Var);
            if (fieldB != null) {
                fieldB.setAccessible(z);
            }
            Method methodC = pq8.c(af5Var);
            if (methodC != null) {
                methodC.setAccessible(z);
            }
            Method methodE = pq8.e((ve5) be5Var);
            if (methodE == null) {
                return;
            }
            methodE.setAccessible(z);
            return;
        }
        if (be5Var instanceof af5) {
            af5 af5Var2 = (af5) be5Var;
            Field fieldB2 = pq8.b(af5Var2);
            if (fieldB2 != null) {
                fieldB2.setAccessible(z);
            }
            Method methodC2 = pq8.c(af5Var2);
            if (methodC2 == null) {
                return;
            }
            methodC2.setAccessible(z);
            return;
        }
        if (be5Var instanceof af5.b) {
            Field fieldB3 = pq8.b(((af5.b) be5Var).h());
            if (fieldB3 != null) {
                fieldB3.setAccessible(z);
            }
            Method methodD = pq8.d((le5) be5Var);
            if (methodD == null) {
                return;
            }
            methodD.setAccessible(z);
            return;
        }
        if (be5Var instanceof ve5.a) {
            Field fieldB4 = pq8.b(((ve5.a) be5Var).h());
            if (fieldB4 != null) {
                fieldB4.setAccessible(z);
            }
            Method methodD2 = pq8.d((le5) be5Var);
            if (methodD2 == null) {
                return;
            }
            methodD2.setAccessible(z);
            return;
        }
        if (!(be5Var instanceof le5)) {
            throw new UnsupportedOperationException("Unknown callable: " + be5Var + " (" + be5Var.getClass() + ')');
        }
        le5 le5Var = (le5) be5Var;
        Method methodD3 = pq8.d(le5Var);
        if (methodD3 != null) {
            methodD3.setAccessible(z);
        }
        KCallableImpl kCallableImplB = clb.b(be5Var);
        Member memberB = (kCallableImplB == null || (aVarZ = kCallableImplB.z()) == null) ? null : aVarZ.b();
        AccessibleObject accessibleObject = memberB instanceof AccessibleObject ? (AccessibleObject) memberB : null;
        if (accessibleObject != null) {
            accessibleObject.setAccessible(true);
        }
        Constructor constructorA = pq8.a(le5Var);
        if (constructorA == null) {
            return;
        }
        constructorA.setAccessible(z);
    }
}
