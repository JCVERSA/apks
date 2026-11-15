package defpackage;

import java.io.IOException;

public abstract class qe3 {
    public static IllegalArgumentException a(String str, Throwable th) {
        return new IllegalArgumentException(str, th);
    }

    public static IllegalStateException b(String str, Throwable th) {
        return new IllegalStateException(str, th);
    }

    public static IOException c(String str, Throwable th) {
        return new IOException(str, th);
    }
}
