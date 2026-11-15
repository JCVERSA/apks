package c5;

public abstract class q implements h1 {

    private static final ThreadLocal f16637a = new ThreadLocal();

    private static final ThreadLocal f16638b = new ThreadLocal();

    private static final Character f16639c = ',';

    final char a(o0 o0Var, Object obj, char c10) {
        ThreadLocal threadLocal = f16637a;
        o0 o0Var2 = (o0) threadLocal.get();
        threadLocal.set(o0Var);
        ThreadLocal threadLocal2 = f16638b;
        threadLocal2.set(Character.valueOf(c10));
        b(obj);
        threadLocal.set(o0Var2);
        return ((Character) threadLocal2.get()).charValue();
    }

    public abstract void b(Object obj);
}
