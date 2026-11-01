package c;

import java.util.ArrayList;

public final class e extends c {
    public float M = -1.0f;
    public int N = -1;
    public int O = -1;
    public b P = this.f341e;
    public int Q = 0;

    public e() {
        this.f348l.clear();
        this.f348l.add(this.P);
    }

    @Override
    public final void a(b.d dVar) {
        d dVar2 = (d) this.f349m;
        if (dVar2 == null) {
            return;
        }
        b bVarC = dVar2.c(b.a.f328a);
        b bVarC2 = dVar2.c(b.a.f330c);
        if (this.Q == 0) {
            bVarC = dVar2.c(b.a.f329b);
            bVarC2 = dVar2.c(b.a.f331d);
        }
        if (this.N != -1) {
            dVar.c(a0.c.k(dVar, dVar.j(this.P), dVar.j(bVarC), this.N, false));
            return;
        }
        if (this.O != -1) {
            dVar.c(a0.c.k(dVar, dVar.j(this.P), dVar.j(bVarC2), -this.O, false));
            return;
        }
        if (this.M != -1.0f) {
            b.f fVarJ = dVar.j(this.P);
            b.f fVarJ2 = dVar.j(bVarC);
            b.f fVarJ3 = dVar.j(bVarC2);
            float f2 = this.M;
            b.b bVarK = dVar.k();
            b.a aVar = bVarK.f237c;
            aVar.c(fVarJ, -1.0f);
            aVar.c(fVarJ2, 1.0f - f2);
            aVar.c(fVarJ3, f2);
            dVar.c(bVarK);
        }
    }

    @Override
    public final b c(b.a aVar) {
        int iOrdinal = aVar.ordinal();
        if (iOrdinal != 1) {
            if (iOrdinal != 2) {
                if (iOrdinal != 3) {
                    if (iOrdinal != 4) {
                        return null;
                    }
                }
            }
            if (this.Q == 0) {
                return this.P;
            }
            return null;
        }
        if (this.Q == 1) {
            return this.P;
        }
        return null;
    }

    @Override
    public final void r(b.d dVar) {
        if (this.f349m == null) {
            return;
        }
        b bVar = this.P;
        dVar.getClass();
        int iN = b.d.n(bVar);
        if (this.Q == 1) {
            this.f354r = iN;
            this.f355s = 0;
            j(this.f349m.d());
            p(0);
            return;
        }
        this.f354r = 0;
        this.f355s = iN;
        p(this.f349m.e());
        j(0);
    }

    public final void s(int i2) {
        if (this.Q == i2) {
            return;
        }
        this.Q = i2;
        ArrayList<b> arrayList = this.f348l;
        arrayList.clear();
        if (this.Q == 1) {
            this.P = this.f340d;
        } else {
            this.P = this.f341e;
        }
        arrayList.add(this.P);
    }
}
