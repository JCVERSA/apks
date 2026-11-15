package defpackage;

public class by3 {
    public int a;

    public by3(int i) {
        this.a = i;
    }

    public void a(int i) {
        this.a = i | this.a;
    }

    public boolean b(int i) {
        return (this.a & i) == i;
    }

    public boolean c(int i) {
        int i2 = this.a;
        boolean z = (i2 & i) == i;
        if (z) {
            this.a = (~i) & i2;
        }
        return z;
    }

    public boolean d(int i) {
        return (this.a & i) > 0;
    }

    public void e(int i) {
        this.a = (~i) & this.a;
    }

    public void f(int i) {
        this.a = i;
    }
}
