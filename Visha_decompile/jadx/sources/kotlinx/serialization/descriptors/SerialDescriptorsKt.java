package kotlinx.serialization.descriptors;

import defpackage.dx0;
import defpackage.e74;
import defpackage.ef8;
import defpackage.hi;
import defpackage.id9;
import defpackage.j1a;
import defpackage.kf8;
import defpackage.y45;
import defpackage.zfb;

public abstract class SerialDescriptorsKt {
    public static final a a(String str, ef8 ef8Var) {
        y45.j(str, "serialName");
        y45.j(ef8Var, "kind");
        if (j1a.o0(str)) {
            throw new IllegalArgumentException("Blank serial names are prohibited");
        }
        return kf8.a(str, ef8Var);
    }

    public static final a b(String str, a[] aVarArr, e74 e74Var) {
        y45.j(str, "serialName");
        y45.j(aVarArr, "typeParameters");
        y45.j(e74Var, "builderAction");
        if (j1a.o0(str)) {
            throw new IllegalArgumentException("Blank serial names are prohibited");
        }
        dx0 dx0Var = new dx0(str);
        e74Var.invoke(dx0Var);
        return new SerialDescriptorImpl(str, b.a.a, dx0Var.f().size(), hi.c1(aVarArr), dx0Var);
    }

    public static final a c(String str, id9 id9Var, a[] aVarArr, e74 e74Var) {
        y45.j(str, "serialName");
        y45.j(id9Var, "kind");
        y45.j(aVarArr, "typeParameters");
        y45.j(e74Var, "builder");
        if (j1a.o0(str)) {
            throw new IllegalArgumentException("Blank serial names are prohibited");
        }
        if (y45.e(id9Var, b.a.a)) {
            throw new IllegalArgumentException("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
        }
        dx0 dx0Var = new dx0(str);
        e74Var.invoke(dx0Var);
        return new SerialDescriptorImpl(str, id9Var, dx0Var.f().size(), hi.c1(aVarArr), dx0Var);
    }

    public static a d(String str, id9 id9Var, a[] aVarArr, e74 e74Var, int i, Object obj) {
        if ((i & 8) != 0) {
            e74Var = new e74() {
                public final void invoke(dx0 dx0Var) {
                    y45.j(dx0Var, "$this$null");
                }

                @Override
                public Object invoke(Object obj2) {
                    invoke((dx0) obj2);
                    return zfb.a;
                }
            };
        }
        return c(str, id9Var, aVarArr, e74Var);
    }
}
