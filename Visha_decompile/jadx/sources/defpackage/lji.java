package defpackage;

import java.util.Objects;

public final class lji {
    public final Class a;
    public final Class b;

    public lji(Class cls, Class cls2, mji mjiVar) {
        this.a = cls;
        this.b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof lji)) {
            return false;
        }
        lji ljiVar = (lji) obj;
        return ljiVar.a.equals(this.a) && ljiVar.b.equals(this.b);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b);
    }

    public final String toString() {
        Class cls = this.b;
        return this.a.getSimpleName() + " with primitive type: " + cls.getSimpleName();
    }
}
