package com.google.zxing.pdf417.decoder;

import java.util.Formatter;

class f {

    private final c f32151a;

    private final d[] f32152b;

    f(c cVar) {
        this.f32151a = new c(cVar);
        this.f32152b = new d[(cVar.e() - cVar.g()) + 1];
    }

    final c a() {
        return this.f32151a;
    }

    final d b(int i10) {
        return this.f32152b[e(i10)];
    }

    final d c(int i10) {
        d dVar;
        d dVar2;
        d dVarB = b(i10);
        if (dVarB != null) {
            return dVarB;
        }
        for (int i11 = 1; i11 < 5; i11++) {
            int iE = e(i10) - i11;
            if (iE >= 0 && (dVar2 = this.f32152b[iE]) != null) {
                return dVar2;
            }
            int iE2 = e(i10) + i11;
            d[] dVarArr = this.f32152b;
            if (iE2 < dVarArr.length && (dVar = dVarArr[iE2]) != null) {
                return dVar;
            }
        }
        return null;
    }

    final d[] d() {
        return this.f32152b;
    }

    final int e(int i10) {
        return i10 - this.f32151a.g();
    }

    final void f(int i10, d dVar) {
        this.f32152b[e(i10)] = dVar;
    }

    public String toString() {
        Formatter formatter = new Formatter();
        try {
            int i10 = 0;
            for (d dVar : this.f32152b) {
                if (dVar == null) {
                    formatter.format("%3d:    |   %n", Integer.valueOf(i10));
                    i10++;
                } else {
                    formatter.format("%3d: %3d|%3d%n", Integer.valueOf(i10), Integer.valueOf(dVar.c()), Integer.valueOf(dVar.e()));
                    i10++;
                }
            }
            String string = formatter.toString();
            formatter.close();
            return string;
        } catch (Throwable th2) {
            try {
                formatter.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
