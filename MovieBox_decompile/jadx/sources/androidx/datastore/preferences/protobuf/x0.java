package androidx.datastore.preferences.protobuf;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

final class x0 {

    private static final x0 f8618c = new x0();

    static boolean f8619d = false;

    private final ConcurrentMap f8621b = new ConcurrentHashMap();

    private final c1 f8620a = new g0();

    private x0() {
    }

    public static x0 a() {
        return f8618c;
    }

    public b1 b(Class cls, b1 b1Var) {
        w.b(cls, "messageType");
        w.b(b1Var, "schema");
        return (b1) this.f8621b.putIfAbsent(cls, b1Var);
    }

    public b1 c(Class cls) {
        w.b(cls, "messageType");
        b1 b1Var = (b1) this.f8621b.get(cls);
        if (b1Var != null) {
            return b1Var;
        }
        b1 b1VarCreateSchema = this.f8620a.createSchema(cls);
        b1 b1VarB = b(cls, b1VarCreateSchema);
        return b1VarB != null ? b1VarB : b1VarCreateSchema;
    }

    public b1 d(Object obj) {
        return c(obj.getClass());
    }
}
