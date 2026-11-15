package defpackage;

public class iz {
    public int a;

    public iz(int i) {
        this.a = i;
    }

    public static int d(int i) {
        if (i == 1) {
            return 2;
        }
        return i == 2 ? 3 : 1;
    }

    public boolean a() {
        return this.a == 1;
    }

    public boolean b() {
        return this.a == 2;
    }

    public boolean c() {
        return this.a == 3;
    }

    public void e(int i) {
        this.a = i;
    }
}
