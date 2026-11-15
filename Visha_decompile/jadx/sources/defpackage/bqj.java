package defpackage;

public final class bqj implements Comparable {
    public final boolean b;
    public final boolean c;

    public bqj(erj erjVar, int i) {
        this.b = 1 == (erjVar.e & 1);
        this.c = y9j.a(i, false);
    }

    @Override
    public final int compareTo(bqj bqjVar) {
        return f4i.i().d(this.c, bqjVar.c).d(this.b, bqjVar.b).a();
    }
}
