package defpackage;

public class o6 extends ia1 {
    public static o6 f;

    public static synchronized o6 j() {
        try {
            if (f == null) {
                synchronized (o6.class) {
                    try {
                        if (f == null) {
                            f = new o6();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f;
    }

    @Override
    public String c() {
        return "UPDATE_SDK_S";
    }
}
