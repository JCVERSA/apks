package defpackage;

import java.util.Objects;

public final class z7j {
    public final long a;
    public final float b;
    public final long c;

    public z7j(v7j v7jVar, x7j x7jVar) {
        this.a = v7jVar.a;
        this.b = v7jVar.b;
        this.c = v7jVar.c;
    }

    public final v7j a() {
        return new v7j(this, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z7j)) {
            return false;
        }
        z7j z7jVar = (z7j) obj;
        return this.a == z7jVar.a && this.b == z7jVar.b && this.c == z7jVar.c;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.a), Float.valueOf(this.b), Long.valueOf(this.c));
    }
}
