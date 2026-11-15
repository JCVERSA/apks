package defpackage;

public final class g59 {
    public final Object a;
    public int b;
    public int c;

    public g59(Object obj) {
        this.a = obj;
    }

    public final int a() {
        return this.c;
    }

    public final Object b() {
        return this.a;
    }

    public final void c() {
        this.b++;
        this.c++;
    }

    public final void d() {
        int i = this.b;
        if (i <= 0) {
            this.c++;
        } else {
            this.b = i - 1;
            this.c--;
        }
    }
}
