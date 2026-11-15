package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;
import o0.w;
import o0.x;

public final class n {

    public static final a f6120c = new a(null);

    private static final n f6121d = new n(0, 0, 3, null);

    private final long f6122a;

    private final long f6123b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final n a() {
            return n.f6121d;
        }

        private a() {
        }
    }

    public n(long j10, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11);
    }

    public final long b() {
        return this.f6122a;
    }

    public final long c() {
        return this.f6123b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return w.e(this.f6122a, nVar.f6122a) && w.e(this.f6123b, nVar.f6123b);
    }

    public int hashCode() {
        return (w.i(this.f6122a) * 31) + w.i(this.f6123b);
    }

    public String toString() {
        return "TextIndent(firstLine=" + ((Object) w.j(this.f6122a)) + ", restLine=" + ((Object) w.j(this.f6123b)) + ')';
    }

    private n(long j10, long j11) {
        this.f6122a = j10;
        this.f6123b = j11;
    }

    public n(long j10, long j11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? x.c(0) : j10, (i10 & 2) != 0 ? x.c(0) : j11, null);
    }
}
