package c0;

public final class e {

    public int f409a;

    public String f410b;

    public h0.h f411c;

    public String f412d = "";

    public int f413e;

    public e(int i2, int i3, String str, h0.h hVar) {
        this.f409a = i2;
        this.f410b = str;
        this.f411c = hVar;
        this.f413e = (byte) i3;
    }

    public static e a(int i2, String str) {
        if (str.length() < 6) {
            return null;
        }
        int iIndexOf = str.indexOf(41);
        int iIndexOf2 = str.indexOf(93);
        if (iIndexOf < 0 || iIndexOf2 < 0) {
            return null;
        }
        String strSubstring = str.substring(1, iIndexOf);
        return new e(Integer.parseInt(strSubstring), i2, str.substring(iIndexOf + 2, iIndexOf2), new h0.h(str.substring(iIndexOf2 + 1)));
    }

    public final boolean b(int i2) {
        return (i2 & this.f413e) != 0;
    }

    public final String toString() {
        return "(" + this.f409a + ")[" + this.f410b + "]" + this.f411c.r();
    }
}
