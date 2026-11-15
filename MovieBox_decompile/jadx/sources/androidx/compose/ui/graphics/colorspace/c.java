package androidx.compose.ui.graphics.colorspace;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class c {

    public static final a f4040d = new a(null);

    private final String f4041a;

    private final long f4042b;

    private final int f4043c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public c(String str, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j10, i10);
    }

    public final int a() {
        return b.f(this.f4042b);
    }

    public final int b() {
        return this.f4043c;
    }

    public abstract float c(int i10);

    public abstract float d(int i10);

    public final long e() {
        return this.f4042b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f4043c == cVar.f4043c && Intrinsics.c(this.f4041a, cVar.f4041a)) {
            return b.e(this.f4042b, cVar.f4042b);
        }
        return false;
    }

    public final String f() {
        return this.f4041a;
    }

    public boolean g() {
        return false;
    }

    public abstract long h(float f10, float f11, float f12);

    public int hashCode() {
        return (((this.f4041a.hashCode() * 31) + b.g(this.f4042b)) * 31) + this.f4043c;
    }

    public abstract float i(float f10, float f11, float f12);

    public abstract long j(float f10, float f11, float f12, float f13, c cVar);

    public String toString() {
        return this.f4041a + " (id=" + this.f4043c + ", model=" + ((Object) b.h(this.f4042b)) + ')';
    }

    private c(String str, long j10, int i10) {
        this.f4041a = str;
        this.f4042b = j10;
        this.f4043c = i10;
        if (str.length() == 0) {
            throw new IllegalArgumentException("The name of a color space cannot be null and must contain at least 1 character");
        }
        if (i10 < -1 || i10 > 63) {
            throw new IllegalArgumentException("The id must be between -1 and 63");
        }
    }
}
