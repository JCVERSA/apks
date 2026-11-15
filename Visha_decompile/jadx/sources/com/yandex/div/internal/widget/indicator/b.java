package com.yandex.div.internal.widget.indicator;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class b {

    public static final class a extends b {
        public float a;

        public a(float f) {
            super(null);
            this.a = f;
        }

        public final a c(float f) {
            return new a(f);
        }

        public final float d() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Float.compare(this.a, ((a) obj).a) == 0;
        }

        public int hashCode() {
            return Float.hashCode(this.a);
        }

        public String toString() {
            return "Circle(radius=" + this.a + ')';
        }
    }

    public static final class C0303b extends b {
        public float a;
        public float b;
        public float c;

        public C0303b(float f, float f2, float f3) {
            super(null);
            this.a = f;
            this.b = f2;
            this.c = f3;
        }

        public static C0303b d(C0303b c0303b, float f, float f2, float f3, int i, Object obj) {
            if ((i & 1) != 0) {
                f = c0303b.a;
            }
            if ((i & 2) != 0) {
                f2 = c0303b.b;
            }
            if ((i & 4) != 0) {
                f3 = c0303b.c;
            }
            return c0303b.c(f, f2, f3);
        }

        public final C0303b c(float f, float f2, float f3) {
            return new C0303b(f, f2, f3);
        }

        public final float e() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0303b)) {
                return false;
            }
            C0303b c0303b = (C0303b) obj;
            return Float.compare(this.a, c0303b.a) == 0 && Float.compare(this.b, c0303b.b) == 0 && Float.compare(this.c, c0303b.c) == 0;
        }

        public final float f() {
            return this.b;
        }

        public final float g() {
            return this.a;
        }

        public int hashCode() {
            return (((Float.hashCode(this.a) * 31) + Float.hashCode(this.b)) * 31) + Float.hashCode(this.c);
        }

        public String toString() {
            return "RoundedRect(itemWidth=" + this.a + ", itemHeight=" + this.b + ", cornerRadius=" + this.c + ')';
        }
    }

    public b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final float a() {
        if (this instanceof C0303b) {
            return ((C0303b) this).f();
        }
        if (this instanceof a) {
            return ((a) this).d() * 2;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final float b() {
        if (this instanceof C0303b) {
            return ((C0303b) this).g();
        }
        if (this instanceof a) {
            return ((a) this).d() * 2;
        }
        throw new NoWhenBranchMatchedException();
    }

    public b() {
    }
}
