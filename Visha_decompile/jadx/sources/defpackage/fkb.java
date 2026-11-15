package defpackage;

public class fkb {
    public String a;

    public static class b {
        public static fkb a = new fkb();
    }

    public static fkb b() {
        return b.a;
    }

    public String a() {
        return this.a;
    }

    public void c(String str) {
        this.a = str;
    }

    public fkb() {
    }
}
