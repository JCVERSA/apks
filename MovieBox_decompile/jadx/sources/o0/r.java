package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class r {

    public static final a f67419e = new a(null);

    private static final r f67420f = new r(0, 0, 0, 0);

    private final int f67421a;

    private final int f67422b;

    private final int f67423c;

    private final int f67424d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final r a() {
            return r.f67420f;
        }

        private a() {
        }
    }

    public r(int i10, int i11, int i12, int i13) {
        this.f67421a = i10;
        this.f67422b = i11;
        this.f67423c = i12;
        this.f67424d = i13;
    }

    public static r c(r rVar, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = rVar.f67421a;
        }
        if ((i14 & 2) != 0) {
            i11 = rVar.f67422b;
        }
        if ((i14 & 4) != 0) {
            i12 = rVar.f67423c;
        }
        if ((i14 & 8) != 0) {
            i13 = rVar.f67424d;
        }
        return rVar.b(i10, i11, i12, i13);
    }

    public final r b(int i10, int i11, int i12, int i13) {
        return new r(i10, i11, i12, i13);
    }

    public final int d() {
        return this.f67424d;
    }

    public final int e() {
        return this.f67424d - this.f67422b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f67421a == rVar.f67421a && this.f67422b == rVar.f67422b && this.f67423c == rVar.f67423c && this.f67424d == rVar.f67424d;
    }

    public final int f() {
        return this.f67421a;
    }

    public final int g() {
        return this.f67423c;
    }

    public final int h() {
        return this.f67422b;
    }

    public int hashCode() {
        return (((((this.f67421a * 31) + this.f67422b) * 31) + this.f67423c) * 31) + this.f67424d;
    }

    public final long i() {
        return q.a(this.f67421a, this.f67422b);
    }

    public final int j() {
        return this.f67423c - this.f67421a;
    }

    public final boolean k() {
        return this.f67421a >= this.f67423c || this.f67422b >= this.f67424d;
    }

    public final r l(int i10, int i11) {
        return new r(this.f67421a + i10, this.f67422b + i11, this.f67423c + i10, this.f67424d + i11);
    }

    public String toString() {
        return "IntRect.fromLTRB(" + this.f67421a + ", " + this.f67422b + ", " + this.f67423c + ", " + this.f67424d + ')';
    }
}
