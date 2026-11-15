package androidx.compose.ui.layout;

public interface e {

    public static final a f4867a = a.f4868a;

    public static final class a {

        static final a f4868a = new a();

        private static final e f4869b = new C0043a();

        private static final e f4870c = new C0044e();

        private static final e f4871d = new c();

        private static final e f4872e = new d();

        private static final e f4873f = new f();

        private static final g f4874g = new g(1.0f);

        private static final e f4875h = new b();

        public static final class C0043a implements e {
            C0043a() {
            }

            @Override
            public long a(long j10, long j11) {
                float f10 = androidx.compose.ui.layout.f.f(j10, j11);
                return m0.a(f10, f10);
            }
        }

        public static final class b implements e {
            b() {
            }

            @Override
            public long a(long j10, long j11) {
                return m0.a(androidx.compose.ui.layout.f.h(j10, j11), androidx.compose.ui.layout.f.e(j10, j11));
            }
        }

        public static final class c implements e {
            c() {
            }

            @Override
            public long a(long j10, long j11) {
                float fE = androidx.compose.ui.layout.f.e(j10, j11);
                return m0.a(fE, fE);
            }
        }

        public static final class d implements e {
            d() {
            }

            @Override
            public long a(long j10, long j11) {
                float fH = androidx.compose.ui.layout.f.h(j10, j11);
                return m0.a(fH, fH);
            }
        }

        public static final class C0044e implements e {
            C0044e() {
            }

            @Override
            public long a(long j10, long j11) {
                float fG = androidx.compose.ui.layout.f.g(j10, j11);
                return m0.a(fG, fG);
            }
        }

        public static final class f implements e {
            f() {
            }

            @Override
            public long a(long j10, long j11) {
                if (y.m.i(j10) <= y.m.i(j11) && y.m.g(j10) <= y.m.g(j11)) {
                    return m0.a(1.0f, 1.0f);
                }
                float fG = androidx.compose.ui.layout.f.g(j10, j11);
                return m0.a(fG, fG);
            }
        }

        private a() {
        }

        public final e a() {
            return f4870c;
        }

        public final e b() {
            return f4873f;
        }
    }

    long a(long j10, long j11);
}
