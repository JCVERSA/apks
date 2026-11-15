package defpackage;

public abstract class pe3 {
    public static final boolean a(Throwable th) {
        y45.j(th, "<this>");
        Class<?> superclass = th.getClass();
        while (!y45.e(superclass.getCanonicalName(), "com.intellij.openapi.progress.ProcessCanceledException")) {
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                return false;
            }
        }
        return true;
    }

    public static final RuntimeException b(Throwable th) throws Throwable {
        y45.j(th, "e");
        throw th;
    }
}
