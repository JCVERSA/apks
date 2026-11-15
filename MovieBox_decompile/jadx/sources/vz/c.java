package vz;

public class c {

    public final String f73873a;

    private byte[] f73874b;

    c f73875c;

    static final class a {

        private int f73876a;

        private c[] f73877b = new c[6];

        a() {
        }

        private void a(c cVar) {
            int i10 = this.f73876a;
            c[] cVarArr = this.f73877b;
            if (i10 >= cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length + 6];
                System.arraycopy(cVarArr, 0, cVarArr2, 0, i10);
                this.f73877b = cVarArr2;
            }
            c[] cVarArr3 = this.f73877b;
            int i11 = this.f73876a;
            this.f73876a = i11 + 1;
            cVarArr3[i11] = cVar;
        }

        private boolean c(c cVar) {
            for (int i10 = 0; i10 < this.f73876a; i10++) {
                if (this.f73877b[i10].f73873a.equals(cVar.f73873a)) {
                    return true;
                }
            }
            return false;
        }

        void b(c cVar) {
            while (cVar != null) {
                if (!c(cVar)) {
                    a(cVar);
                }
                cVar = cVar.f73875c;
            }
        }

        c[] d() {
            int i10 = this.f73876a;
            c[] cVarArr = new c[i10];
            System.arraycopy(this.f73877b, 0, cVarArr, 0, i10);
            return cVarArr;
        }
    }

    protected c(String str) {
        this.f73873a = str;
    }

    final int a(x xVar) {
        return b(xVar, null, 0, -1, -1);
    }

    final int b(x xVar, byte[] bArr, int i10, int i11, int i12) {
        g gVar = xVar.f74048a;
        int i13 = 0;
        for (c cVar = this; cVar != null; cVar = cVar.f73875c) {
            xVar.D(cVar.f73873a);
            i13 += cVar.h(gVar, bArr, i10, i11, i12).f73879b + 6;
        }
        return i13;
    }

    final int c() {
        int i10 = 0;
        for (c cVar = this; cVar != null; cVar = cVar.f73875c) {
            i10++;
        }
        return i10;
    }

    public boolean d() {
        return false;
    }

    final void e(x xVar, d dVar) {
        f(xVar, null, 0, -1, -1, dVar);
    }

    final void f(x xVar, byte[] bArr, int i10, int i11, int i12, d dVar) {
        g gVar = xVar.f74048a;
        for (c cVar = this; cVar != null; cVar = cVar.f73875c) {
            d dVarH = cVar.h(gVar, bArr, i10, i11, i12);
            dVar.k(xVar.D(cVar.f73873a)).i(dVarH.f73879b);
            dVar.h(dVarH.f73878a, 0, dVarH.f73879b);
        }
    }

    protected c g(e eVar, int i10, int i11, char[] cArr, int i12, q[] qVarArr) {
        c cVar = new c(this.f73873a);
        byte[] bArr = new byte[i11];
        cVar.f73874b = bArr;
        System.arraycopy(eVar.f73880a, i10, bArr, 0, i11);
        return cVar;
    }

    protected d h(g gVar, byte[] bArr, int i10, int i11, int i12) {
        return new d(this.f73874b);
    }
}
