package defpackage;

public final class dg implements CharSequence {
    public final char[] b;
    public int c;

    public dg(char[] cArr) {
        y45.j(cArr, "buffer");
        this.b = cArr;
        this.c = cArr.length;
    }

    public char b(int i) {
        return this.b[i];
    }

    public int c() {
        return this.c;
    }

    @Override
    public final char charAt(int i) {
        return b(i);
    }

    public void d(int i) {
        this.c = i;
    }

    public final String e(int i, int i2) {
        return g1a.y(this.b, i, Math.min(i2, length()));
    }

    public final void f(int i) {
        d(Math.min(this.b.length, i));
    }

    @Override
    public final int length() {
        return c();
    }

    @Override
    public CharSequence subSequence(int i, int i2) {
        return g1a.y(this.b, i, Math.min(i2, length()));
    }

    @Override
    public String toString() {
        return e(0, length());
    }
}
