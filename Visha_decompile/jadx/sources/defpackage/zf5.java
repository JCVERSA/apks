package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.a;

public abstract class zf5 implements ef5 {
    public final ef5 a;
    public final ef5 b;

    public zf5(ef5 ef5Var, ef5 ef5Var2, DefaultConstructorMarker defaultConstructorMarker) {
        this(ef5Var, ef5Var2);
    }

    public abstract Object a(Object obj);

    public final ef5 b() {
        return this.a;
    }

    public abstract Object c(Object obj);

    public final ef5 d() {
        return this.b;
    }

    @Override
    public Object deserialize(hu1 hu1Var) {
        Object objE;
        y45.j(hu1Var, "decoder");
        a descriptor = getDescriptor();
        fd1 fd1VarB = hu1Var.b(descriptor);
        if (fd1VarB.j()) {
            objE = e(fd1.a.c(fd1VarB, getDescriptor(), 0, b(), null, 8, null), fd1.a.c(fd1VarB, getDescriptor(), 1, d(), null, 8, null));
        } else {
            Object objC = zab.a;
            Object objC2 = zab.a;
            while (true) {
                int iV = fd1VarB.v(getDescriptor());
                if (iV == -1) {
                    if (objC == zab.a) {
                        throw new SerializationException("Element 'key' is missing");
                    }
                    if (objC2 == zab.a) {
                        throw new SerializationException("Element 'value' is missing");
                    }
                    objE = e(objC, objC2);
                    break;
                }
                if (iV == 0) {
                    objC = fd1.a.c(fd1VarB, getDescriptor(), 0, b(), null, 8, null);
                } else {
                    if (iV != 1) {
                        throw new SerializationException("Invalid index: " + iV);
                    }
                    objC2 = fd1.a.c(fd1VarB, getDescriptor(), 1, d(), null, 8, null);
                }
            }
        }
        fd1VarB.c(descriptor);
        return objE;
    }

    public abstract Object e(Object obj, Object obj2);

    @Override
    public void serialize(ca3 ca3Var, Object obj) {
        y45.j(ca3Var, "encoder");
        id1 id1VarB = ca3Var.b(getDescriptor());
        id1VarB.q(getDescriptor(), 0, this.a, a(obj));
        id1VarB.q(getDescriptor(), 1, this.b, c(obj));
        id1VarB.c(getDescriptor());
    }

    public zf5(ef5 ef5Var, ef5 ef5Var2) {
        this.a = ef5Var;
        this.b = ef5Var2;
    }
}
