package kotlinx.coroutines.channels;

import kotlinx.coroutines.internal.a0;

public interface d extends s, r {

    public static final a f64720n1 = a.f64721a;

    public static final class a {

        static final a f64721a = new a();

        private static final int f64722b = a0.b("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);

        private a() {
        }

        public final int a() {
            return f64722b;
        }
    }
}
