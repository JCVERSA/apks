package kotlinx.coroutines.flow;

public interface f1 {

    public static final a f64813a = a.f64814a;

    public static final class a {

        static final a f64814a = new a();

        private static final f1 f64815b = new g1();

        private static final f1 f64816c = new StartedLazily();

        private a() {
        }

        public static f1 b(a aVar, long j10, long j11, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                j10 = 0;
            }
            if ((i10 & 2) != 0) {
                j11 = Long.MAX_VALUE;
            }
            return aVar.a(j10, j11);
        }

        public final f1 a(long j10, long j11) {
            return new StartedWhileSubscribed(j10, j11);
        }

        public final f1 c() {
            return f64815b;
        }

        public final f1 d() {
            return f64816c;
        }
    }

    kotlinx.coroutines.flow.a a(h1 h1Var);
}
