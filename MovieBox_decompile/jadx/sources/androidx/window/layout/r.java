package androidx.window.layout;

import kotlin.jvm.internal.DefaultConstructorMarker;

public interface r extends l {

    public static final class a {

        public static final C0124a f15022b = new C0124a(null);

        public static final a f15023c = new a("NONE");

        public static final a f15024d = new a("FULL");

        private final String f15025a;

        public static final class C0124a {
            public C0124a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private C0124a() {
            }
        }

        private a(String str) {
            this.f15025a = str;
        }

        public String toString() {
            return this.f15025a;
        }
    }

    public static final class b {

        public static final a f15026b = new a(null);

        public static final b f15027c = new b("VERTICAL");

        public static final b f15028d = new b("HORIZONTAL");

        private final String f15029a;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        private b(String str) {
            this.f15029a = str;
        }

        public String toString() {
            return this.f15029a;
        }
    }

    public static final class c {

        public static final a f15030b = new a(null);

        public static final c f15031c = new c("FLAT");

        public static final c f15032d = new c("HALF_OPENED");

        private final String f15033a;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        private c(String str) {
            this.f15033a = str;
        }

        public String toString() {
            return this.f15033a;
        }
    }

    b getOrientation();

    boolean isSeparating();
}
