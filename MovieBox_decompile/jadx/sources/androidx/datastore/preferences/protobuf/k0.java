package androidx.datastore.preferences.protobuf;

abstract class k0 {

    private static final i0 f8535a = c();

    private static final i0 f8536b = new j0();

    static i0 a() {
        return f8535a;
    }

    static i0 b() {
        return f8536b;
    }

    private static i0 c() {
        if (x0.f8619d) {
            return null;
        }
        try {
            return (i0) Class.forName("androidx.datastore.preferences.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
