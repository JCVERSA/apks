package androidx.navigation;

import kotlin.jvm.internal.Intrinsics;

public final class l {

    private final boolean f13597a;

    private final boolean f13598b;

    private final int f13599c;

    private final boolean f13600d;

    private final boolean f13601e;

    private final int f13602f;

    private final int f13603g;

    private final int f13604h;

    private final int f13605i;

    private String f13606j;

    public static final class a {

        private boolean f13607a;

        private boolean f13608b;

        private String f13610d;

        private boolean f13611e;

        private boolean f13612f;

        private int f13609c = -1;

        private int f13613g = -1;

        private int f13614h = -1;

        private int f13615i = -1;

        private int f13616j = -1;

        public static a i(a aVar, int i10, boolean z10, boolean z11, int i11, Object obj) {
            if ((i11 & 4) != 0) {
                z11 = false;
            }
            return aVar.g(i10, z10, z11);
        }

        public final l a() {
            String str = this.f13610d;
            return str != null ? new l(this.f13607a, this.f13608b, str, this.f13611e, this.f13612f, this.f13613g, this.f13614h, this.f13615i, this.f13616j) : new l(this.f13607a, this.f13608b, this.f13609c, this.f13611e, this.f13612f, this.f13613g, this.f13614h, this.f13615i, this.f13616j);
        }

        public final a b(int i10) {
            this.f13613g = i10;
            return this;
        }

        public final a c(int i10) {
            this.f13614h = i10;
            return this;
        }

        public final a d(boolean z10) {
            this.f13607a = z10;
            return this;
        }

        public final a e(int i10) {
            this.f13615i = i10;
            return this;
        }

        public final a f(int i10) {
            this.f13616j = i10;
            return this;
        }

        public final a g(int i10, boolean z10, boolean z11) {
            this.f13609c = i10;
            this.f13610d = null;
            this.f13611e = z10;
            this.f13612f = z11;
            return this;
        }

        public final a h(String str, boolean z10, boolean z11) {
            this.f13610d = str;
            this.f13609c = -1;
            this.f13611e = z10;
            this.f13612f = z11;
            return this;
        }

        public final a j(boolean z10) {
            this.f13608b = z10;
            return this;
        }
    }

    public l(boolean z10, boolean z11, int i10, boolean z12, boolean z13, int i11, int i12, int i13, int i14) {
        this.f13597a = z10;
        this.f13598b = z11;
        this.f13599c = i10;
        this.f13600d = z12;
        this.f13601e = z13;
        this.f13602f = i11;
        this.f13603g = i12;
        this.f13604h = i13;
        this.f13605i = i14;
    }

    public final int a() {
        return this.f13602f;
    }

    public final int b() {
        return this.f13603g;
    }

    public final int c() {
        return this.f13604h;
    }

    public final int d() {
        return this.f13605i;
    }

    public final int e() {
        return this.f13599c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.c(l.class, obj.getClass())) {
            return false;
        }
        l lVar = (l) obj;
        return this.f13597a == lVar.f13597a && this.f13598b == lVar.f13598b && this.f13599c == lVar.f13599c && Intrinsics.c(this.f13606j, lVar.f13606j) && this.f13600d == lVar.f13600d && this.f13601e == lVar.f13601e && this.f13602f == lVar.f13602f && this.f13603g == lVar.f13603g && this.f13604h == lVar.f13604h && this.f13605i == lVar.f13605i;
    }

    public final boolean f() {
        return this.f13600d;
    }

    public final boolean g() {
        return this.f13597a;
    }

    public final boolean h() {
        return this.f13601e;
    }

    public int hashCode() {
        int i10 = (((((g() ? 1 : 0) * 31) + (i() ? 1 : 0)) * 31) + this.f13599c) * 31;
        String str = this.f13606j;
        return ((((((((((((i10 + (str == null ? 0 : str.hashCode())) * 31) + (f() ? 1 : 0)) * 31) + (h() ? 1 : 0)) * 31) + this.f13602f) * 31) + this.f13603g) * 31) + this.f13604h) * 31) + this.f13605i;
    }

    public final boolean i() {
        return this.f13598b;
    }

    public l(boolean z10, boolean z11, String str, boolean z12, boolean z13, int i10, int i11, int i12, int i13) {
        this(z10, z11, NavDestination.f13517j.a(str).hashCode(), z12, z13, i10, i11, i12, i13);
        this.f13606j = str;
    }
}
