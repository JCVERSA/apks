package defpackage;

import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.a;
import org.mozilla.javascript.ES6Iterator;

public abstract class p3 implements ef5 {
    public final Object b(fd1 fd1Var) {
        return fd1.a.c(fd1Var, getDescriptor(), 1, pc8.a(this, fd1Var, fd1Var.i(getDescriptor(), 0)), null, 8, null);
    }

    public k92 c(fd1 fd1Var, String str) {
        y45.j(fd1Var, "decoder");
        return fd1Var.a().d(e(), str);
    }

    public nd9 d(ca3 ca3Var, Object obj) {
        y45.j(ca3Var, "encoder");
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        return ca3Var.a().e(e(), obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [T, java.lang.String] */
    @Override
    public final Object deserialize(hu1 hu1Var) {
        Object objB;
        y45.j(hu1Var, "decoder");
        a descriptor = getDescriptor();
        fd1 fd1VarB = hu1Var.b(descriptor);
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        if (fd1VarB.j()) {
            objB = b(fd1VarB);
        } else {
            Object objC = null;
            while (true) {
                int iV = fd1VarB.v(getDescriptor());
                if (iV == -1) {
                    if (objC != null) {
                        y45.h(objC, "null cannot be cast to non-null type T of kotlinx.serialization.internal.AbstractPolymorphicSerializer.deserialize$lambda$3");
                        objB = objC;
                        break;
                    }
                    throw new IllegalArgumentException(("Polymorphic value has not been read for class " + ((String) ref$ObjectRef.element)).toString());
                }
                if (iV == 0) {
                    ref$ObjectRef.element = fd1VarB.i(getDescriptor(), iV);
                } else {
                    if (iV != 1) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Invalid index in polymorphic deserialization of ");
                        String str = (String) ref$ObjectRef.element;
                        if (str == null) {
                            str = "unknown class";
                        }
                        sb.append(str);
                        sb.append("\n Expected 0, 1 or DECODE_DONE(-1), but found ");
                        sb.append(iV);
                        throw new SerializationException(sb.toString());
                    }
                    T t = ref$ObjectRef.element;
                    if (t == 0) {
                        throw new IllegalArgumentException("Cannot read polymorphic value before its type token");
                    }
                    ref$ObjectRef.element = t;
                    objC = fd1.a.c(fd1VarB, getDescriptor(), iV, pc8.a(this, fd1VarB, (String) t), null, 8, null);
                }
            }
        }
        fd1VarB.c(descriptor);
        return objB;
    }

    public abstract de5 e();

    @Override
    public final void serialize(ca3 ca3Var, Object obj) {
        y45.j(ca3Var, "encoder");
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        nd9 nd9VarB = pc8.b(this, ca3Var, obj);
        a descriptor = getDescriptor();
        id1 id1VarB = ca3Var.b(descriptor);
        id1VarB.p(getDescriptor(), 0, nd9VarB.getDescriptor().h());
        a descriptor2 = getDescriptor();
        y45.h(nd9VarB, "null cannot be cast to non-null type kotlinx.serialization.SerializationStrategy<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
        id1VarB.q(descriptor2, 1, nd9VarB, obj);
        id1VarB.c(descriptor);
    }
}
