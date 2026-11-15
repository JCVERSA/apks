package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class g {

    public static final b f6077c;

    private static final g f6078d;

    private final float f6079a;

    private final int f6080b;

    public static final class a {

        public static final C0050a f6081a = new C0050a(null);

        private static final float f6082b = c(0.0f);

        private static final float f6083c = c(0.5f);

        private static final float f6084d = c(-1.0f);

        private static final float f6085e = c(1.0f);

        public static final class C0050a {
            public C0050a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final float a() {
                return a.f6083c;
            }

            public final float b() {
                return a.f6084d;
            }

            private C0050a() {
            }
        }

        public static float c(float f10) {
            if ((0.0f > f10 || f10 > 1.0f) && f10 != -1.0f) {
                throw new IllegalStateException("topRatio should be in [0..1] range or -1");
            }
            return f10;
        }

        public static final boolean d(float f10, float f11) {
            return Float.compare(f10, f11) == 0;
        }

        public static int e(float f10) {
            return Float.floatToIntBits(f10);
        }

        public static String f(float f10) {
            if (f10 == f6082b) {
                return "LineHeightStyle.Alignment.Top";
            }
            if (f10 == f6083c) {
                return "LineHeightStyle.Alignment.Center";
            }
            if (f10 == f6084d) {
                return "LineHeightStyle.Alignment.Proportional";
            }
            if (f10 == f6085e) {
                return "LineHeightStyle.Alignment.Bottom";
            }
            return "LineHeightStyle.Alignment(topPercentage = " + f10 + ')';
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final g a() {
            return g.f6078d;
        }

        private b() {
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        f6077c = new b(defaultConstructorMarker);
        f6078d = new g(a.f6081a.b(), c.f6086a.a(), defaultConstructorMarker);
    }

    public g(float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, i10);
    }

    public final float b() {
        return this.f6079a;
    }

    public final int c() {
        return this.f6080b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return a.d(this.f6079a, gVar.f6079a) && c.d(this.f6080b, gVar.f6080b);
    }

    public int hashCode() {
        return (a.e(this.f6079a) * 31) + c.e(this.f6080b);
    }

    public String toString() {
        return "LineHeightStyle(alignment=" + ((Object) a.f(this.f6079a)) + ", trim=" + ((Object) c.h(this.f6080b)) + ')';
    }

    private g(float f10, int i10) {
        this.f6079a = f10;
        this.f6080b = i10;
    }

    public static final class c {

        public static final a f6086a = new a(null);

        private static final int f6087b = c(1);

        private static final int f6088c = c(16);

        private static final int f6089d = c(17);

        private static final int f6090e = c(0);

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final int a() {
                return c.f6089d;
            }

            public final int b() {
                return c.f6090e;
            }

            private a() {
            }
        }

        public static final boolean d(int i10, int i11) {
            return i10 == i11;
        }

        public static final boolean f(int i10) {
            return (i10 & 1) > 0;
        }

        public static final boolean g(int i10) {
            return (i10 & 16) > 0;
        }

        public static String h(int i10) {
            if (i10 == f6087b) {
                return "LineHeightStyle.Trim.FirstLineTop";
            }
            if (i10 == f6088c) {
                return "LineHeightStyle.Trim.LastLineBottom";
            }
            if (i10 == f6089d) {
                return "LineHeightStyle.Trim.Both";
            }
            return i10 == f6090e ? "LineHeightStyle.Trim.None" : "Invalid";
        }

        private static int c(int i10) {
            return i10;
        }

        public static int e(int i10) {
            return i10;
        }
    }
}
