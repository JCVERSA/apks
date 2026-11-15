package defpackage;

public final class ny2 {
    public final int a;
    public final int b;
    public final long c;
    public final int d;
    public final int e;
    public final long f;
    public final gea g;

    public ny2(int i, int i2, long j, int i3, int i4, long j2, gea geaVar) {
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = i3;
        this.e = i4;
        this.f = j2;
        this.g = geaVar;
    }

    public final int a() {
        return this.d;
    }

    public final long b() {
        return this.c;
    }

    public final int c() {
        return this.a;
    }

    public final int d() {
        return this.b;
    }

    public final int e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ny2)) {
            return false;
        }
        ny2 ny2Var = (ny2) obj;
        return this.a == ny2Var.a && this.b == ny2Var.b && this.c == ny2Var.c && this.d == ny2Var.d && this.e == ny2Var.e && this.f == ny2Var.f && y45.e(this.g, ny2Var.g);
    }

    public final long f() {
        return this.f;
    }

    public final gea g() {
        return this.g;
    }

    public int hashCode() {
        int iHashCode = ((((((((((Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31) + Long.hashCode(this.c)) * 31) + Integer.hashCode(this.d)) * 31) + Integer.hashCode(this.e)) * 31) + Long.hashCode(this.f)) * 31;
        gea geaVar = this.g;
        return iHashCode + (geaVar == null ? 0 : geaVar.hashCode());
    }

    public String toString() {
        return "DownloadConfig(maxDownloadFiles=" + this.a + ", maxParallelDownloadChunks=" + this.b + ", maxDownloadBlockSize=" + this.c + ", maxDownloadBlockCount=" + this.d + ", retryCount=" + this.e + ", sleepSecondsIfRetry=" + this.f + ", taskIdGenerate=" + this.g + ")";
    }
}
