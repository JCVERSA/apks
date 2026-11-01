package a0;

import ru.zdevs.zarchiver.R;

public final class w0 extends w0.c {

    public final h0.h[] f134e;

    public final String[] f135f;

    public final g0.x.c f136g;

    public w0(h0.h[] hVarArr, String[] strArr, g0.x.c cVar) {
        this.f134e = hVarArr;
        this.f135f = strArr;
        this.f136g = cVar;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0079  */
    @Override
    public final w0.a.b f() {
        h0.h hVar;
        boolean z2;
        o0.a aVarC = o0.a.c(t0.b.f2092m);
        if (!aVarC.f()) {
            return new z(R.string.OPT_ROOT_NOT_FOUND);
        }
        int i2 = 0;
        boolean z3 = true;
        while (true) {
            String[] strArr = this.f135f;
            if (i2 >= strArr.length) {
                break;
            }
            h0.h[] hVarArr = this.f134e;
            if (hVarArr.length > 1) {
                hVar = new h0.h(strArr[i2], hVarArr[i2]);
            } else {
                hVar = new h0.h(strArr[i2], hVarArr[0]);
            }
            g0.x.c cVar = this.f136g;
            if (c.K(cVar.f1070a, 1)) {
                String strR = hVar.r();
                if (aVarC.b("chmod " + cVar.f1071b + " '" + strR.replace("'", "'\\''") + '\'')) {
                    aVarC.k(false);
                    if (aVarC.f1294h == 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                } else {
                    z2 = false;
                }
                if (!z2) {
                    z3 = false;
                }
            }
            if (c.K(cVar.f1070a, 2)) {
                if (!c.e0(aVarC, hVar.r(), "" + cVar.f1072c, "" + cVar.f1073d, false)) {
                    z3 = false;
                }
            }
            i2++;
        }
        aVarC.close();
        if (z3) {
            return null;
        }
        return new z(R.string.MES_END_WITH_ERROR);
    }

    @Override
    public final int j() {
        return 109;
    }
}
