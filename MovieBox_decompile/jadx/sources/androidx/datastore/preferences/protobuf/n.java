package androidx.datastore.preferences.protobuf;

abstract class n {

    static final Class f8561a = c();

    public static o a() {
        o oVarB = b("getEmptyRegistry");
        return oVarB != null ? oVarB : o.f8563c;
    }

    private static final o b(String str) {
        Class cls = f8561a;
        if (cls == null) {
            return null;
        }
        try {
            return (o) cls.getDeclaredMethod(str, null).invoke(null, null);
        } catch (Exception unused) {
            return null;
        }
    }

    static Class c() {
        try {
            return Class.forName("androidx.datastore.preferences.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
