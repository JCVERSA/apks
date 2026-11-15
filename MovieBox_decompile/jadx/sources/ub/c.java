package ub;

final class c extends e.b {

    private final int f73026a;

    private final String f73027b;

    private final int f73028c;

    private final long f73029d;

    private final long f73030e;

    private final boolean f73031f;

    private final int f73032g;

    private final String f73033h;

    private final String f73034i;

    c(int i10, String str, int i11, long j10, long j11, boolean z10, int i12, String str2, String str3) {
        this.f73026a = i10;
        if (str == null) {
            throw new NullPointerException("Null model");
        }
        this.f73027b = str;
        this.f73028c = i11;
        this.f73029d = j10;
        this.f73030e = j11;
        this.f73031f = z10;
        this.f73032g = i12;
        if (str2 == null) {
            throw new NullPointerException("Null manufacturer");
        }
        this.f73033h = str2;
        if (str3 == null) {
            throw new NullPointerException("Null modelClass");
        }
        this.f73034i = str3;
    }

    @Override
    public int a() {
        return this.f73026a;
    }

    @Override
    public int b() {
        return this.f73028c;
    }

    @Override
    public long d() {
        return this.f73030e;
    }

    @Override
    public boolean e() {
        return this.f73031f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e.b)) {
            return false;
        }
        e.b bVar = (e.b) obj;
        return this.f73026a == bVar.a() && this.f73027b.equals(bVar.g()) && this.f73028c == bVar.b() && this.f73029d == bVar.j() && this.f73030e == bVar.d() && this.f73031f == bVar.e() && this.f73032g == bVar.i() && this.f73033h.equals(bVar.f()) && this.f73034i.equals(bVar.h());
    }

    @Override
    public String f() {
        return this.f73033h;
    }

    @Override
    public String g() {
        return this.f73027b;
    }

    @Override
    public String h() {
        return this.f73034i;
    }

    public int hashCode() {
        int iHashCode = (((((this.f73026a ^ 1000003) * 1000003) ^ this.f73027b.hashCode()) * 1000003) ^ this.f73028c) * 1000003;
        long j10 = this.f73029d;
        int i10 = (iHashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f73030e;
        return ((((((((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ (this.f73031f ? 1231 : 1237)) * 1000003) ^ this.f73032g) * 1000003) ^ this.f73033h.hashCode()) * 1000003) ^ this.f73034i.hashCode();
    }

    @Override
    public int i() {
        return this.f73032g;
    }

    @Override
    public long j() {
        return this.f73029d;
    }

    public String toString() {
        return "DeviceData{arch=" + this.f73026a + ", model=" + this.f73027b + ", availableProcessors=" + this.f73028c + ", totalRam=" + this.f73029d + ", diskSpace=" + this.f73030e + ", isEmulator=" + this.f73031f + ", state=" + this.f73032g + ", manufacturer=" + this.f73033h + ", modelClass=" + this.f73034i + "}";
    }
}
