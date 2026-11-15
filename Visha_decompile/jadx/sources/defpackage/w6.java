package defpackage;

public class w6 {
    public String a;
    public int b;
    public int c;
    public String d;
    public double e;
    public boolean f;

    public static class b {
        public final w6 a = new w6();

        public w6 a() {
            return this.a;
        }
    }

    public static b a() {
        return new b();
    }

    public double b() {
        return this.e;
    }

    public String c() {
        return this.a;
    }

    public int d() {
        return this.b;
    }

    public int e() {
        return this.c;
    }

    public String f() {
        return this.d;
    }

    public boolean g() {
        return this.f;
    }

    public void h(double d) {
        this.e = d;
    }

    public void i(boolean z) {
        this.f = z;
    }

    public void j(String str) {
        this.a = str;
    }

    public void k(int i) {
        this.b = i;
    }

    public void l(String str) {
        this.d = str;
    }

    public w6() {
        this.a = null;
        this.b = -1;
        this.c = 0;
        this.d = null;
        this.f = false;
    }
}
