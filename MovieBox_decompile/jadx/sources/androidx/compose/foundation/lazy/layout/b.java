package androidx.compose.foundation.lazy.layout;

import kotlin.jvm.functions.Function1;

public interface b {

    public static final class a {

        private final int f2722a;

        private final int f2723b;

        private final Object f2724c;

        public a(int i10, int i11, Object obj) {
            this.f2722a = i10;
            this.f2723b = i11;
            this.f2724c = obj;
            if (i10 < 0) {
                throw new IllegalArgumentException(("startIndex should be >= 0, but was " + i10).toString());
            }
            if (i11 > 0) {
                return;
            }
            throw new IllegalArgumentException(("size should be >0, but was " + i11).toString());
        }

        public final int a() {
            return this.f2723b;
        }

        public final int b() {
            return this.f2722a;
        }

        public final Object c() {
            return this.f2724c;
        }
    }

    void a(int i10, int i11, Function1 function1);

    a get(int i10);

    int getSize();
}
