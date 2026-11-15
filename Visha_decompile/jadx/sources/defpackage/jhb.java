package defpackage;

public final class jhb {
    public final int a;
    public final int b;
    public final long c;
    public final int d;
    public final boolean e;
    public final int f;
    public final long g;
    public final gea h;

    public jhb(int i, int i2, long j, int i3, boolean z, int i4, long j2, gea geaVar) {
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = i3;
        this.e = z;
        this.f = i4;
        this.g = j2;
        this.h = geaVar;
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
        return this.f;
    }

    public final long e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jhb)) {
            return false;
        }
        jhb jhbVar = (jhb) obj;
        return this.a == jhbVar.a && this.b == jhbVar.b && this.c == jhbVar.c && this.d == jhbVar.d && this.e == jhbVar.e && this.f == jhbVar.f && this.g == jhbVar.g && y45.e(this.h, jhbVar.h);
    }

    public final gea f() {
        return this.h;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31) + Long.hashCode(this.c)) * 31) + Integer.hashCode(this.d)) * 31) + Boolean.hashCode(this.e)) * 31) + Integer.hashCode(this.f)) * 31) + Long.hashCode(this.g)) * 31;
        gea geaVar = this.h;
        return iHashCode + (geaVar == null ? 0 : geaVar.hashCode());
    }

    public String toString() {
        return "UploadConfig(maxUploadFiles=" + this.a + ", maxParallelUpload=" + this.b + ", maxUploadBlockSize=" + this.c + ", maxUploadBlockCount=" + this.d + ", fastUploadEnable=" + this.e + ", retryCount=" + this.f + ", sleepSecondsIfRetry=" + this.g + ", taskIdGenerate=" + this.h + ")";
    }
}
