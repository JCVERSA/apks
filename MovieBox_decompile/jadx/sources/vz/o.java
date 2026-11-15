package vz;

public final class o {

    private final int f73961a;

    private final String f73962b;

    private final String f73963c;

    private final String f73964d;

    private final boolean f73965e;

    public o(int i10, String str, String str2, String str3, boolean z10) {
        this.f73961a = i10;
        this.f73962b = str;
        this.f73963c = str2;
        this.f73964d = str3;
        this.f73965e = z10;
    }

    public String a() {
        return this.f73964d;
    }

    public String b() {
        return this.f73963c;
    }

    public String c() {
        return this.f73962b;
    }

    public int d() {
        return this.f73961a;
    }

    public boolean e() {
        return this.f73965e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f73961a == oVar.f73961a && this.f73965e == oVar.f73965e && this.f73962b.equals(oVar.f73962b) && this.f73963c.equals(oVar.f73963c) && this.f73964d.equals(oVar.f73964d);
    }

    public int hashCode() {
        return this.f73961a + (this.f73965e ? 64 : 0) + (this.f73962b.hashCode() * this.f73963c.hashCode() * this.f73964d.hashCode());
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f73962b);
        sb2.append('.');
        sb2.append(this.f73963c);
        sb2.append(this.f73964d);
        sb2.append(" (");
        sb2.append(this.f73961a);
        sb2.append(this.f73965e ? " itf" : "");
        sb2.append(')');
        return sb2.toString();
    }
}
