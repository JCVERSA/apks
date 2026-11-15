package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class o {

    public static final a f6124c;

    private static final o f6125d;

    private static final o f6126e;

    private final int f6127a;

    private final boolean f6128b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final o a() {
            return o.f6125d;
        }

        private a() {
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        f6124c = new a(defaultConstructorMarker);
        b.a aVar = b.f6129a;
        f6125d = new o(aVar.a(), false, defaultConstructorMarker);
        f6126e = new o(aVar.b(), true, defaultConstructorMarker);
    }

    public o(int i10, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, z10);
    }

    public final int b() {
        return this.f6127a;
    }

    public final boolean c() {
        return this.f6128b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return b.e(this.f6127a, oVar.f6127a) && this.f6128b == oVar.f6128b;
    }

    public int hashCode() {
        return (b.f(this.f6127a) * 31) + androidx.compose.foundation.e.a(this.f6128b);
    }

    public String toString() {
        if (Intrinsics.c(this, f6125d)) {
            return "TextMotion.Static";
        }
        return Intrinsics.c(this, f6126e) ? "TextMotion.Animated" : "Invalid";
    }

    private o(int i10, boolean z10) {
        this.f6127a = i10;
        this.f6128b = z10;
    }

    public static final class b {

        public static final a f6129a = new a(null);

        private static final int f6130b = d(1);

        private static final int f6131c = d(2);

        private static final int f6132d = d(3);

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int a() {
                return b.f6131c;
            }

            public final int b() {
                return b.f6130b;
            }

            public final int c() {
                return b.f6132d;
            }

            private a() {
            }
        }

        public static final boolean e(int i10, int i11) {
            return i10 == i11;
        }

        private static int d(int i10) {
            return i10;
        }

        public static int f(int i10) {
            return i10;
        }
    }
}
