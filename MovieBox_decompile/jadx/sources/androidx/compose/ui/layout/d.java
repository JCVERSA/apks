package androidx.compose.ui.layout;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public interface d {

    public interface a {
        boolean a();
    }

    Object a(int i10, Function1 function1);

    public static final class b {

        public static final a f4859a = new a(null);

        private static final int f4860b = g(1);

        private static final int f4861c = g(2);

        private static final int f4862d = g(3);

        private static final int f4863e = g(4);

        private static final int f4864f = g(5);

        private static final int f4865g = g(6);

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int a() {
                return b.f4864f;
            }

            public final int b() {
                return b.f4861c;
            }

            public final int c() {
                return b.f4860b;
            }

            public final int d() {
                return b.f4865g;
            }

            public final int e() {
                return b.f4862d;
            }

            public final int f() {
                return b.f4863e;
            }

            private a() {
            }
        }

        public static final boolean h(int i10, int i11) {
            return i10 == i11;
        }

        public static int g(int i10) {
            return i10;
        }
    }
}
