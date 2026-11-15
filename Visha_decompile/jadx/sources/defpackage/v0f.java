package defpackage;

import java.util.Objects;

public final class v0f {
    public final Object a;
    public final int b;
    public final cme c;
    public final Object d;
    public final int e;
    public final long f;
    public final long g;
    public final int h;
    public final int i;

    static {
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
    }

    public v0f(Object obj, int i, cme cmeVar, Object obj2, int i2, long j, long j2, int i3, int i4) {
        this.a = obj;
        this.b = i;
        this.c = cmeVar;
        this.d = obj2;
        this.e = i2;
        this.f = j;
        this.g = j2;
        this.h = i3;
        this.i = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && v0f.class == obj.getClass()) {
            v0f v0fVar = (v0f) obj;
            if (this.b == v0fVar.b && this.e == v0fVar.e && this.f == v0fVar.f && this.g == v0fVar.g && this.h == v0fVar.h && this.i == v0fVar.i && Objects.equals(this.c, v0fVar.c) && Objects.equals(this.a, v0fVar.a) && Objects.equals(this.d, v0fVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, Integer.valueOf(this.b), this.c, this.d, Integer.valueOf(this.e), Long.valueOf(this.f), Long.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(this.i));
    }
}
