package defpackage;

public abstract class xp8 {
    public static final Class a(ClassLoader classLoader, String str) {
        y45.j(classLoader, "<this>");
        y45.j(str, "fqName");
        try {
            return Class.forName(str, false, classLoader);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
