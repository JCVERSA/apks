package s7;

public abstract class e {

    private static d f71608a;

    static a f71609b;

    static g8.c f71610c;

    static boolean f71611d;

    static void a() {
        if (!f71611d) {
            throw new IllegalStateException("Do you forget to initialize XLog?");
        }
    }

    public static void b(String str) {
        a();
        f71608a.a(str);
    }

    public static void c(String str) {
        a();
        f71608a.c(str);
    }

    public static void d(String str) {
        a();
        f71608a.e(str);
    }

    public static void e(a aVar) {
        f(aVar, d8.a.i());
    }

    public static void f(a aVar, g8.c... cVarArr) {
        if (f71611d) {
            d8.b.e().g("XLog is already initialized, do not initialize again");
        }
        f71611d = true;
        if (aVar == null) {
            throw new IllegalArgumentException("Please specify a LogConfiguration");
        }
        f71609b = aVar;
        g8.d dVar = new g8.d(cVarArr);
        f71610c = dVar;
        f71608a = new d(f71609b, dVar);
    }

    public static d.a g(String str) {
        return new d.a().x(str);
    }
}
