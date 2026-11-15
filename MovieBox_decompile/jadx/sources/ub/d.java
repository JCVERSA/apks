package ub;

final class d extends e.c {

    private final String f73035a;

    private final String f73036b;

    private final boolean f73037c;

    d(String str, String str2, boolean z10) {
        if (str == null) {
            throw new NullPointerException("Null osRelease");
        }
        this.f73035a = str;
        if (str2 == null) {
            throw new NullPointerException("Null osCodeName");
        }
        this.f73036b = str2;
        this.f73037c = z10;
    }

    @Override
    public boolean b() {
        return this.f73037c;
    }

    @Override
    public String c() {
        return this.f73036b;
    }

    @Override
    public String d() {
        return this.f73035a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e.c)) {
            return false;
        }
        e.c cVar = (e.c) obj;
        return this.f73035a.equals(cVar.d()) && this.f73036b.equals(cVar.c()) && this.f73037c == cVar.b();
    }

    public int hashCode() {
        return ((((this.f73035a.hashCode() ^ 1000003) * 1000003) ^ this.f73036b.hashCode()) * 1000003) ^ (this.f73037c ? 1231 : 1237);
    }

    public String toString() {
        return "OsData{osRelease=" + this.f73035a + ", osCodeName=" + this.f73036b + ", isRooted=" + this.f73037c + "}";
    }
}
