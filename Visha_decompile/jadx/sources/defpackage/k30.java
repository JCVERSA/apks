package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class k30 extends yp5 {
    public final long a;

    public k30(long j) {
        this.a = j;
    }

    @Override
    public long c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof yp5) && this.a == ((yp5) obj).c();
    }

    public int hashCode() {
        long j = this.a;
        return ((int) (j ^ (j >>> 32))) ^ 1000003;
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.a + StringSubstitutor.DEFAULT_VAR_END;
    }
}
