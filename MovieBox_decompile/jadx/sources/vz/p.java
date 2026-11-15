package vz;

final class p {

    final q f73966a;

    final q f73967b;

    final q f73968c;

    final int f73969d;

    final String f73970e;

    p f73971f;

    p(q qVar, q qVar2, q qVar3, int i10, String str) {
        this.f73966a = qVar;
        this.f73967b = qVar2;
        this.f73968c = qVar3;
        this.f73969d = i10;
        this.f73970e = str;
    }

    static int a(p pVar) {
        int i10 = 0;
        while (pVar != null) {
            i10++;
            pVar = pVar.f73971f;
        }
        return i10;
    }

    static int b(p pVar) {
        return (a(pVar) * 8) + 2;
    }

    static void c(p pVar, d dVar) {
        dVar.k(a(pVar));
        while (pVar != null) {
            dVar.k(pVar.f73966a.f73976d).k(pVar.f73967b.f73976d).k(pVar.f73968c.f73976d).k(pVar.f73969d);
            pVar = pVar.f73971f;
        }
    }

    static p d(p pVar, q qVar, q qVar2) {
        if (pVar == null) {
            return null;
        }
        p pVarD = d(pVar.f73971f, qVar, qVar2);
        pVar.f73971f = pVarD;
        q qVar3 = pVar.f73966a;
        int i10 = qVar3.f73976d;
        q qVar4 = pVar.f73967b;
        int i11 = qVar4.f73976d;
        int i12 = qVar.f73976d;
        int i13 = qVar2 == null ? Integer.MAX_VALUE : qVar2.f73976d;
        if (i12 >= i11 || i13 <= i10) {
            return pVar;
        }
        if (i12 <= i10) {
            return i13 >= i11 ? pVarD : new p(pVar, qVar2, qVar4);
        }
        if (i13 >= i11) {
            return new p(pVar, qVar3, qVar);
        }
        pVar.f73971f = new p(pVar, qVar2, qVar4);
        return new p(pVar, pVar.f73966a, qVar);
    }

    p(p pVar, q qVar, q qVar2) {
        this(qVar, qVar2, pVar.f73968c, pVar.f73969d, pVar.f73970e);
        this.f73971f = pVar.f73971f;
    }
}
