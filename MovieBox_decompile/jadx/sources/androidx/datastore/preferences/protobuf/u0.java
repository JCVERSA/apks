package androidx.datastore.preferences.protobuf;

abstract class u0 {

    private static final s0 f8601a = c();

    private static final s0 f8602b = new t0();

    static s0 a() {
        return f8601a;
    }

    static s0 b() {
        return f8602b;
    }

    private static s0 c() {
        if (x0.f8619d) {
            return null;
        }
        try {
            return (s0) Class.forName("androidx.datastore.preferences.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
