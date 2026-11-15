package defpackage;

import java.util.Objects;

public final class raj {
    public final long a;
    public final w4f b;
    public final int c;
    public final bnj d;
    public final long e;
    public final w4f f;
    public final int g;
    public final bnj h;
    public final long i;
    public final long j;

    public raj(long j, w4f w4fVar, int i, bnj bnjVar, long j2, w4f w4fVar2, int i2, bnj bnjVar2, long j3, long j4) {
        this.a = j;
        this.b = w4fVar;
        this.c = i;
        this.d = bnjVar;
        this.e = j2;
        this.f = w4fVar2;
        this.g = i2;
        this.h = bnjVar2;
        this.i = j3;
        this.j = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && raj.class == obj.getClass()) {
            raj rajVar = (raj) obj;
            if (this.a == rajVar.a && this.c == rajVar.c && this.e == rajVar.e && this.g == rajVar.g && this.i == rajVar.i && this.j == rajVar.j && Objects.equals(this.b, rajVar.b) && Objects.equals(this.d, rajVar.d) && Objects.equals(this.f, rajVar.f) && Objects.equals(this.h, rajVar.h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.a), this.b, Integer.valueOf(this.c), this.d, Long.valueOf(this.e), this.f, Integer.valueOf(this.g), this.h, Long.valueOf(this.i), Long.valueOf(this.j));
    }
}
