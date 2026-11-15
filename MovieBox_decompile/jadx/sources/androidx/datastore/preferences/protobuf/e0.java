package androidx.datastore.preferences.protobuf;

abstract class e0 {

    private static final c0 f8438a = c();

    private static final c0 f8439b = new d0();

    static c0 a() {
        return f8438a;
    }

    static c0 b() {
        return f8439b;
    }

    private static c0 c() {
        if (x0.f8619d) {
            return null;
        }
        try {
            return (c0) Class.forName("androidx.datastore.preferences.protobuf.ListFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
