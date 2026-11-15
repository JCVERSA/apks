package defpackage;

public class uud implements xqd {
    public final StringBuilder a;

    public uud(StringBuilder sb) {
        this.a = sb;
    }

    @Override
    public xqd a(String str) {
        this.a.append(str);
        return this;
    }

    @Override
    public int b(String str, int i, int i2, String str2) {
        this.a.append((CharSequence) str, i, i2);
        this.a.append(str2);
        return i2 + 1;
    }

    public String toString() {
        return this.a.toString();
    }

    @Override
    public int a(String str, int i, int i2) {
        this.a.append((CharSequence) str, i, i2);
        return i2;
    }
}
