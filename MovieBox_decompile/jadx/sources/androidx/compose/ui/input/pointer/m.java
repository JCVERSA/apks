package androidx.compose.ui.input.pointer;

public class m {

    public static final int f4706b = androidx.compose.runtime.collection.b.f3371d;

    private final androidx.compose.runtime.collection.b f4707a = new androidx.compose.runtime.collection.b(new l[16], 0);

    public boolean a(androidx.collection.x xVar, androidx.compose.ui.layout.l lVar, g gVar, boolean z10) {
        androidx.compose.runtime.collection.b bVar = this.f4707a;
        int iN = bVar.n();
        if (iN <= 0) {
            return false;
        }
        Object[] objArrM = bVar.m();
        int i10 = 0;
        boolean z11 = false;
        do {
            z11 = ((l) objArrM[i10]).a(xVar, lVar, gVar, z10) || z11;
            i10++;
        } while (i10 < iN);
        return z11;
    }

    public void b(g gVar) {
        int iN = this.f4707a.n();
        while (true) {
            iN--;
            if (-1 >= iN) {
                return;
            }
            if (((l) this.f4707a.m()[iN]).l().g()) {
                this.f4707a.v(iN);
            }
        }
    }

    public final void c() {
        this.f4707a.h();
    }

    public void d() {
        androidx.compose.runtime.collection.b bVar = this.f4707a;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i10 = 0;
            do {
                ((l) objArrM[i10]).d();
                i10++;
            } while (i10 < iN);
        }
    }

    public boolean e(g gVar) {
        androidx.compose.runtime.collection.b bVar = this.f4707a;
        int iN = bVar.n();
        boolean z10 = false;
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i10 = 0;
            boolean z11 = false;
            do {
                z11 = ((l) objArrM[i10]).e(gVar) || z11;
                i10++;
            } while (i10 < iN);
            z10 = z11;
        }
        b(gVar);
        return z10;
    }

    public boolean f(androidx.collection.x xVar, androidx.compose.ui.layout.l lVar, g gVar, boolean z10) {
        androidx.compose.runtime.collection.b bVar = this.f4707a;
        int iN = bVar.n();
        if (iN <= 0) {
            return false;
        }
        Object[] objArrM = bVar.m();
        int i10 = 0;
        boolean z11 = false;
        do {
            z11 = ((l) objArrM[i10]).f(xVar, lVar, gVar, z10) || z11;
            i10++;
        } while (i10 < iN);
        return z11;
    }

    public final androidx.compose.runtime.collection.b g() {
        return this.f4707a;
    }

    public final void h() {
        int i10 = 0;
        while (i10 < this.f4707a.n()) {
            l lVar = (l) this.f4707a.m()[i10];
            if (lVar.k().j1()) {
                i10++;
                lVar.h();
            } else {
                lVar.d();
                this.f4707a.v(i10);
            }
        }
    }

    public void i(long j10, androidx.collection.l0 l0Var) {
        androidx.compose.runtime.collection.b bVar = this.f4707a;
        int iN = bVar.n();
        if (iN > 0) {
            Object[] objArrM = bVar.m();
            int i10 = 0;
            do {
                ((l) objArrM[i10]).i(j10, l0Var);
                i10++;
            } while (i10 < iN);
        }
    }
}
