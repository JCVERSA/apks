package vz;

import java.util.Arrays;

public final class h {

    private final String f73913a;

    private final String f73914b;

    private final o f73915c;

    private final Object[] f73916d;

    public h(String str, String str2, o oVar, Object... objArr) {
        this.f73913a = str;
        this.f73914b = str2;
        this.f73915c = oVar;
        this.f73916d = objArr;
    }

    public o a() {
        return this.f73915c;
    }

    Object[] b() {
        return this.f73916d;
    }

    public String c() {
        return this.f73914b;
    }

    public String d() {
        return this.f73913a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f73913a.equals(hVar.f73913a) && this.f73914b.equals(hVar.f73914b) && this.f73915c.equals(hVar.f73915c) && Arrays.equals(this.f73916d, hVar.f73916d);
    }

    public int hashCode() {
        return ((this.f73913a.hashCode() ^ Integer.rotateLeft(this.f73914b.hashCode(), 8)) ^ Integer.rotateLeft(this.f73915c.hashCode(), 16)) ^ Integer.rotateLeft(Arrays.hashCode(this.f73916d), 24);
    }

    public String toString() {
        return this.f73913a + " : " + this.f73914b + ' ' + this.f73915c + ' ' + Arrays.toString(this.f73916d);
    }
}
