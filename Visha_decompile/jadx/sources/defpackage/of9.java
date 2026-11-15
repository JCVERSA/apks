package defpackage;

public final class of9 {
    public final float a;
    public final float b;
    public final float c;
    public final int d;

    public of9(float f, float f2, float f3, int i) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = i;
    }

    public final int a() {
        return this.d;
    }

    public final float b() {
        return this.a;
    }

    public final float c() {
        return this.b;
    }

    public final float d() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof of9)) {
            return false;
        }
        of9 of9Var = (of9) obj;
        return Float.compare(this.a, of9Var.a) == 0 && Float.compare(this.b, of9Var.b) == 0 && Float.compare(this.c, of9Var.c) == 0 && this.d == of9Var.d;
    }

    public int hashCode() {
        return (((((Float.hashCode(this.a) * 31) + Float.hashCode(this.b)) * 31) + Float.hashCode(this.c)) * 31) + Integer.hashCode(this.d);
    }

    public String toString() {
        return "ShadowData(offsetX=" + this.a + ", offsetY=" + this.b + ", radius=" + this.c + ", color=" + this.d + ')';
    }
}
