package defpackage;

public final class i15 {
    public static final i15 a = new i15();

    public static final Object a(Class cls) {
        y45.j(cls, "clazz");
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            c.d.e(c.c, "Failed to create instance of class " + cls.getName(), e);
            return null;
        } catch (InstantiationException e2) {
            c.d.e(c.c, "Failed to create instance of class " + cls.getName(), e2);
            return null;
        }
    }

    public static final Object b(Class cls, c74 c74Var) {
        y45.j(cls, "clazz");
        y45.j(c74Var, "fallback");
        Object objA = a(cls);
        return objA == null ? c74Var.invoke() : objA;
    }
}
