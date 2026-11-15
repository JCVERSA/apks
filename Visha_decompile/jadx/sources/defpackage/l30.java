package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class l30 extends v08 {
    public final long a;
    public final a9b b;
    public final xd3 c;

    public l30(long j, a9b a9bVar, xd3 xd3Var) {
        this.a = j;
        if (a9bVar == null) {
            throw new NullPointerException("Null transportContext");
        }
        this.b = a9bVar;
        if (xd3Var == null) {
            throw new NullPointerException("Null event");
        }
        this.c = xd3Var;
    }

    @Override
    public xd3 b() {
        return this.c;
    }

    @Override
    public long c() {
        return this.a;
    }

    @Override
    public a9b d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof v08)) {
            return false;
        }
        v08 v08Var = (v08) obj;
        return this.a == v08Var.c() && this.b.equals(v08Var.d()) && this.c.equals(v08Var.b());
    }

    public int hashCode() {
        long j = this.a;
        return this.c.hashCode() ^ ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.a + ", transportContext=" + this.b + ", event=" + this.c + StringSubstitutor.DEFAULT_VAR_END;
    }
}
