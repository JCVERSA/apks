package defpackage;

public abstract class rfa {
    public static Class a;
    public static Class b;

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static String b(qfa qfaVar) throws Throwable {
        Class<?> cls = qfaVar.getClass();
        Package r0 = cls.getPackage();
        Class clsA = a;
        if (clsA == null) {
            clsA = a("freemarker.template.Configuration");
            a = clsA;
        }
        if (r0 != clsA.getPackage()) {
            Class clsA2 = b;
            if (clsA2 == null) {
                clsA2 = a("freemarker.cache.TemplateLoader");
                b = clsA2;
            }
            if (r0 != clsA2.getPackage()) {
                return cls.getName();
            }
        }
        return c(cls);
    }

    public static String c(Class cls) {
        String name = cls.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf < 0 ? name : name.substring(iLastIndexOf + 1);
    }
}
