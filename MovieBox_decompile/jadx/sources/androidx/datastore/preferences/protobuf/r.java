package androidx.datastore.preferences.protobuf;

abstract class r {

    private static final p f8588a = new q();

    private static final p f8589b = c();

    static p a() {
        p pVar = f8589b;
        if (pVar != null) {
            return pVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    static p b() {
        return f8588a;
    }

    private static p c() {
        if (x0.f8619d) {
            return null;
        }
        try {
            return (p) Class.forName("androidx.datastore.preferences.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
