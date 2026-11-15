package defpackage;

public class ub9 {
    public String a;
    public boolean b;
    public boolean c = false;

    public ub9(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    public String a() {
        return this.a;
    }

    public boolean b() {
        return this.c;
    }

    public boolean c() {
        return this.b;
    }

    public void d(boolean z) {
        this.c = z;
    }

    public void e(boolean z) {
        this.b = z;
    }
}
