package defpackage;

public class rh5 implements cw0 {
    public static final rh5 f = new rh5("kyber512", 2, 256, false);
    public static final rh5 g = new rh5("kyber768", 3, 256, false);
    public static final rh5 h = new rh5("kyber1024", 4, 256, false);
    public final String b;
    public final int c;
    public final int d;
    public final boolean e;

    public rh5(String str, int i, int i2, boolean z) {
        this.b = str;
        this.c = i;
        this.d = i2;
        this.e = z;
    }

    public mh5 a() {
        return new mh5(this.c, this.e);
    }

    public String b() {
        return this.b;
    }
}
