package org.mozilla.javascript;

public abstract class SecurityController {
    private static SecurityController global;

    public class a implements Script {
        public final Callable b;
        public final Scriptable c;
        public final Object[] d;

        public a(Callable callable, Scriptable scriptable, Object[] objArr) {
            this.b = callable;
            this.c = scriptable;
            this.d = objArr;
        }

        @Override
        public Object exec(Context context, Scriptable scriptable) {
            return this.b.call(context, scriptable, this.c, this.d);
        }
    }

    public static GeneratedClassLoader createLoader(ClassLoader classLoader, Object obj) {
        Context context = Context.getContext();
        if (classLoader == null) {
            classLoader = context.getApplicationClassLoader();
        }
        SecurityController securityController = context.getSecurityController();
        return securityController == null ? context.createClassLoader(classLoader) : securityController.createClassLoader(classLoader, securityController.getDynamicSecurityDomain(obj));
    }

    public static Class<?> getStaticSecurityDomainClass() {
        SecurityController securityController = Context.getContext().getSecurityController();
        if (securityController == null) {
            return null;
        }
        return securityController.getStaticSecurityDomainClassInternal();
    }

    public static SecurityController global() {
        return global;
    }

    public static boolean hasGlobal() {
        return global != null;
    }

    public static void initGlobal(SecurityController securityController) {
        if (securityController == null) {
            throw new IllegalArgumentException();
        }
        if (global != null) {
            throw new SecurityException("Cannot overwrite already installed global SecurityController");
        }
        global = securityController;
    }

    public Object callWithDomain(Object obj, Context context, Callable callable, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        return execWithDomain(context, scriptable, new a(callable, scriptable2, objArr), obj);
    }

    public abstract GeneratedClassLoader createClassLoader(ClassLoader classLoader, Object obj);

    @Deprecated
    public Object execWithDomain(Context context, Scriptable scriptable, Script script, Object obj) {
        throw new IllegalStateException("callWithDomain should be overridden");
    }

    public abstract Object getDynamicSecurityDomain(Object obj);

    public Class<?> getStaticSecurityDomainClassInternal() {
        return null;
    }
}
