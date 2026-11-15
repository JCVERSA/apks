package androidx.work;

public interface l {

    public static final b.c f15406a;

    public static final b.C0130b f15407b;

    public static abstract class b {

        public static final class a extends b {

            private final Throwable f15408a;

            public a(Throwable th2) {
                this.f15408a = th2;
            }

            public Throwable a() {
                return this.f15408a;
            }

            public String toString() {
                return "FAILURE (" + this.f15408a.getMessage() + ")";
            }
        }

        public static final class C0130b extends b {
            public String toString() {
                return "IN_PROGRESS";
            }

            private C0130b() {
            }
        }

        public static final class c extends b {
            public String toString() {
                return "SUCCESS";
            }

            private c() {
            }
        }

        b() {
        }
    }

    static {
        f15406a = new b.c();
        f15407b = new b.C0130b();
    }
}
