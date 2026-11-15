package defpackage;

import kotlinx.serialization.json.internal.WriteMode;

public abstract class yb5 {
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object a(u95 u95Var, k92 k92Var, kd9 kd9Var) {
        y45.j(u95Var, "<this>");
        y45.j(k92Var, "deserializer");
        y45.j(kd9Var, "reader");
        ho8 ho8Var = new ho8(kd9Var, null, 2, 0 == true ? 1 : 0);
        try {
            Object objB = new xy9(u95Var, WriteMode.OBJ, ho8Var, k92Var.getDescriptor(), null).B(k92Var);
            ho8Var.w();
            return objB;
        } finally {
            ho8Var.U();
        }
    }

    public static final void b(u95 u95Var, sc5 sc5Var, nd9 nd9Var, Object obj) {
        y45.j(u95Var, "<this>");
        y45.j(sc5Var, "writer");
        y45.j(nd9Var, "serializer");
        new yy9(sc5Var, u95Var, WriteMode.OBJ, new na5[WriteMode.values().length]).C(nd9Var, obj);
    }
}
