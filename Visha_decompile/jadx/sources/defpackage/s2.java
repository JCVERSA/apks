package defpackage;

import java.util.Iterator;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class s2 implements ef5 {
    public s2(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static void i(s2 s2Var, fd1 fd1Var, int i, Object obj, boolean z, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readElement");
        }
        if ((i2 & 8) != 0) {
            z = true;
        }
        s2Var.h(fd1Var, i, obj, z);
    }

    public abstract Object a();

    public abstract int b(Object obj);

    public abstract void c(Object obj, int i);

    public abstract Iterator d(Object obj);

    public Object deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        return f(hu1Var, null);
    }

    public abstract int e(Object obj);

    public final Object f(hu1 hu1Var, Object obj) {
        Object objA;
        y45.j(hu1Var, "decoder");
        if (obj == null || (objA = k(obj)) == null) {
            objA = a();
        }
        int iB = b(objA);
        fd1 fd1VarB = hu1Var.b(getDescriptor());
        if (!fd1VarB.j()) {
            while (true) {
                int iV = fd1VarB.v(getDescriptor());
                if (iV == -1) {
                    break;
                }
                i(this, fd1VarB, iB + iV, objA, false, 8, null);
            }
        } else {
            g(fd1VarB, objA, iB, j(fd1VarB, objA));
        }
        fd1VarB.c(getDescriptor());
        return l(objA);
    }

    public abstract void g(fd1 fd1Var, Object obj, int i, int i2);

    public abstract void h(fd1 fd1Var, int i, Object obj, boolean z);

    public final int j(fd1 fd1Var, Object obj) {
        int iU = fd1Var.u(getDescriptor());
        c(obj, iU);
        return iU;
    }

    public abstract Object k(Object obj);

    public abstract Object l(Object obj);

    public s2() {
    }
}
