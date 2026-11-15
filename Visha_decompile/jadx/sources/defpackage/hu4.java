package defpackage;

import android.content.Context;
import java.util.function.Supplier;

public interface hu4 {
    public static final rk5 a = new rk5("tech.palm.cloud.RemoteManager", hu4.class, new Supplier() {
        @Override
        public final Object get() {
            return new hu4.a();
        }
    });

    public static class a implements hu4 {
    }

    public interface b {
    }

    public interface c {
    }

    static hu4 a() {
        return (hu4) a.a();
    }

    default void b(Context context, boolean z, int[] iArr, b bVar) {
    }

    default void c(Context context, c cVar) {
    }
}
