package defpackage;

public final class qpj {
    public final long a;
    public final long b;

    public qpj(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qpj)) {
            return false;
        }
        qpj qpjVar = (qpj) obj;
        return this.a == qpjVar.a && this.b == qpjVar.b;
    }

    public final int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }
}
