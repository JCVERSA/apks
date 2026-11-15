package defpackage;

public class uo3 implements cw0 {
    public static final uo3 e = new uo3("falcon-512", 9, 40);
    public static final uo3 f = new uo3("falcon-1024", 10, 40);
    public final String b;
    public final int c;
    public final int d;

    public uo3(String str, int i, int i2) {
        if (i < 1 || i > 10) {
            throw new IllegalArgumentException("Log N degree should be between 1 and 10");
        }
        this.b = str;
        this.c = i;
        this.d = i2;
    }

    public int a() {
        return this.c;
    }

    public String b() {
        return this.b;
    }
}
