package defpackage;

public final class aqj extends oqj implements Comparable {
    public final int f;
    public final int g;

    public aqj(int i, n5f n5fVar, int i2, hqj hqjVar, int i3) {
        super(i, n5fVar, i2);
        this.f = y9j.a(i3, hqjVar.Q) ? 1 : 0;
        this.g = this.e.a();
    }

    @Override
    public final int a() {
        return this.f;
    }

    @Override
    public final boolean b(oqj oqjVar) {
        return false;
    }

    @Override
    public final int compareTo(aqj aqjVar) {
        return Integer.compare(this.g, aqjVar.g);
    }
}
