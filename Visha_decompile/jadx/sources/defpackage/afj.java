package defpackage;

public final class afj {
    public final String a;
    public int b;
    public long c;
    public bnj d;
    public boolean e;
    public boolean f;
    public final cfj g;

    public afj(cfj cfjVar, String str, int i, bnj bnjVar) {
        this.g = cfjVar;
        this.a = str;
        this.b = i;
        this.c = bnjVar == null ? -1L : bnjVar.d;
        if (bnjVar == null || !bnjVar.b()) {
            return;
        }
        this.d = bnjVar;
    }

    public final void g(int i, bnj bnjVar) {
        if (this.c == -1 && i == this.b && bnjVar != null) {
            cfj cfjVar = this.g;
            long j = bnjVar.d;
            if (j >= cfjVar.k()) {
                this.c = j;
            }
        }
    }

    public final boolean j(int i, bnj bnjVar) {
        if (bnjVar == null) {
            return i == this.b;
        }
        bnj bnjVar2 = this.d;
        if (bnjVar2 == null) {
            return !bnjVar.b() && bnjVar.d == this.c;
        }
        return bnjVar.d == bnjVar2.d && bnjVar.b == bnjVar2.b && bnjVar.c == bnjVar2.c;
    }

    public final boolean k(raj rajVar) {
        bnj bnjVar = rajVar.d;
        if (bnjVar == null) {
            return this.b != rajVar.c;
        }
        long j = this.c;
        if (j == -1) {
            return false;
        }
        long j2 = bnjVar.d;
        if (j2 > j) {
            return true;
        }
        if (this.d == null) {
            return false;
        }
        w4f w4fVar = rajVar.b;
        int iA = w4fVar.a(bnjVar.a);
        int iA2 = w4fVar.a(this.d.a);
        bnj bnjVar2 = this.d;
        if (j2 < bnjVar2.d || iA < iA2) {
            return false;
        }
        if (iA > iA2) {
            return true;
        }
        if (!bnjVar.b()) {
            int i = bnjVar.e;
            return i == -1 || i > bnjVar2.b;
        }
        int i2 = bnjVar.b;
        int i3 = bnjVar.c;
        int i4 = bnjVar2.b;
        if (i2 <= i4) {
            return i2 == i4 && i3 > bnjVar2.c;
        }
        return true;
    }

    public final boolean l(w4f w4fVar, w4f w4fVar2) {
        int i = this.b;
        if (i < w4fVar.c()) {
            cfj cfjVar = this.g;
            w4fVar.e(i, cfjVar.a, 0L);
            int i2 = cfjVar.a.m;
            while (true) {
                if (i2 > cfjVar.a.n) {
                    i = -1;
                    break;
                }
                int iA = w4fVar2.a(w4fVar.f(i2));
                if (iA != -1) {
                    i = w4fVar2.d(iA, cfjVar.b, false).c;
                    break;
                }
                i2++;
            }
        } else if (i >= w4fVar2.c()) {
            i = -1;
            break;
        }
        this.b = i;
        if (i == -1) {
            return false;
        }
        bnj bnjVar = this.d;
        return bnjVar == null || w4fVar2.a(bnjVar.a) != -1;
    }
}
