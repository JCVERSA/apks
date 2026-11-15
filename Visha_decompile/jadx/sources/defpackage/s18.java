package defpackage;

public abstract class s18 {
    public static boolean a(Throwable th, Class cls) {
        return cls.isInstance(th);
    }

    public static void b(Throwable th) {
        xd8.o(th);
        if (th instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
    }
}
