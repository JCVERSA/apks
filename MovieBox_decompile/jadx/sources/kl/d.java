package kl;

import java.io.Closeable;

public class d {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th2) {
                jl.a.f63170a.d("error", th2.getMessage());
            }
        }
    }
}
