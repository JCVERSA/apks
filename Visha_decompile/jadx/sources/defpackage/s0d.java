package defpackage;

public abstract class s0d {
    public static final String a;
    public static Class b;

    static {
        Class clsA = b;
        if (clsA == null) {
            clsA = a("freemarker.log._Log4jOverSLF4JTester");
            b = clsA;
        }
        a = clsA.getName();
    }

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }
}
