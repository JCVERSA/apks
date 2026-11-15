package defpackage;

public abstract class n54 {
    public static final cv4 a;
    public static volatile cv4 b;

    public class a implements cv4 {
    }

    static {
        a aVar = new a();
        a = aVar;
        b = aVar;
    }

    public static cv4 a() {
        return b;
    }

    public static void b(cv4 cv4Var) {
        if (cv4Var == null) {
            b = a;
        } else {
            b = cv4Var;
        }
    }
}
