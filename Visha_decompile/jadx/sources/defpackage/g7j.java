package defpackage;

public final class g7j {
    public boolean a;
    public o9j b;
    public int c;
    public boolean d;
    public int e;

    public g7j(o9j o9jVar) {
        this.b = o9jVar;
    }

    public final void a(int i) {
        this.a = 1 == ((this.a ? 1 : 0) | i);
        this.c += i;
    }

    public final void b(o9j o9jVar) {
        this.a |= this.b != o9jVar;
        this.b = o9jVar;
    }

    public final void c(int i) {
        if (this.d && this.e != 5) {
            n7g.d(i == 5);
            return;
        }
        this.a = true;
        this.d = true;
        this.e = i;
    }
}
