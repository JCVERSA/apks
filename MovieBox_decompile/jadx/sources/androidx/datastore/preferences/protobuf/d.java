package androidx.datastore.preferences.protobuf;

abstract class d {

    private static boolean f8426a;

    private static final Class f8427b = a("libcore.io.Memory");

    private static final boolean f8428c;

    static {
        f8428c = (f8426a || a("org.robolectric.Robolectric") == null) ? false : true;
    }

    private static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static Class b() {
        return f8427b;
    }

    static boolean c() {
        return f8426a || !(f8427b == null || f8428c);
    }
}
