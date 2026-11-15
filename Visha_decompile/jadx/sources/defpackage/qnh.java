package defpackage;

public final class qnh implements iqe {
    public final long a;
    public final long b;
    public final long c;

    public qnh(long j, long j2, long j3) {
        this.a = j;
        this.b = j2;
        this.c = j3;
    }

    @Override
    public final void a(une uneVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qnh)) {
            return false;
        }
        qnh qnhVar = (qnh) obj;
        return this.a == qnhVar.a && this.b == qnhVar.b && this.c == qnhVar.c;
    }

    public final int hashCode() {
        long j = this.a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.b;
        return ((((i + 527) * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + ((int) this.c);
    }

    public final String toString() {
        return "Mp4Timestamp: creation time=" + this.a + ", modification time=" + this.b + ", timescale=" + this.c;
    }
}
