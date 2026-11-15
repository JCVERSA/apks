package v9;

public class j {

    public final Object f73504a;

    public final int f73505b;

    public final int f73506c;

    public final long f73507d;

    public final int f73508e;

    public j(Object obj) {
        this(obj, -1L);
    }

    public j a(Object obj) {
        return this.f73504a.equals(obj) ? this : new j(obj, this.f73505b, this.f73506c, this.f73507d, this.f73508e);
    }

    public boolean b() {
        return this.f73505b != -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.f73504a.equals(jVar.f73504a) && this.f73505b == jVar.f73505b && this.f73506c == jVar.f73506c && this.f73507d == jVar.f73507d && this.f73508e == jVar.f73508e;
    }

    public int hashCode() {
        return ((((((((527 + this.f73504a.hashCode()) * 31) + this.f73505b) * 31) + this.f73506c) * 31) + ((int) this.f73507d)) * 31) + this.f73508e;
    }

    public j(Object obj, long j10) {
        this(obj, -1, -1, j10, -1);
    }

    public j(Object obj, long j10, int i10) {
        this(obj, -1, -1, j10, i10);
    }

    public j(Object obj, int i10, int i11, long j10) {
        this(obj, i10, i11, j10, -1);
    }

    protected j(j jVar) {
        this.f73504a = jVar.f73504a;
        this.f73505b = jVar.f73505b;
        this.f73506c = jVar.f73506c;
        this.f73507d = jVar.f73507d;
        this.f73508e = jVar.f73508e;
    }

    private j(Object obj, int i10, int i11, long j10, int i12) {
        this.f73504a = obj;
        this.f73505b = i10;
        this.f73506c = i11;
        this.f73507d = j10;
        this.f73508e = i12;
    }
}
