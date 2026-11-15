package z9;

public final class b {

    public final String f76635a;

    public final String f76636b;

    public final int f76637c;

    public final int f76638d;

    public b(String str, String str2, int i10, int i11) {
        this.f76635a = str;
        this.f76636b = str2;
        this.f76637c = i10;
        this.f76638d = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f76637c == bVar.f76637c && this.f76638d == bVar.f76638d && com.google.common.base.j.a(this.f76635a, bVar.f76635a) && com.google.common.base.j.a(this.f76636b, bVar.f76636b);
    }

    public int hashCode() {
        return com.google.common.base.j.b(this.f76635a, this.f76636b, Integer.valueOf(this.f76637c), Integer.valueOf(this.f76638d));
    }
}
