package defpackage;

import java.io.Closeable;

public abstract class lv4 {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                hf1.a.d("error", th.getMessage());
            }
        }
    }
}
