package i0;

import android.os.Build;
import d0.i;
import h0.d;
import h0.g;
import h0.h;

public final class c implements d {
    public static boolean d(d0.b bVar, h hVar, int[] iArr) {
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        long jMax = 0;
        for (int i2 : iArr) {
            if (bVar.b(i2).f()) {
                return false;
            }
            jMax = Math.max(jMax, bVar.b(i2).f542d);
        }
        return e0.b.h(hVar, jMax);
    }

    @Override
    public final boolean a(g gVar, h hVar, byte b2, int[] iArr, d0.b bVar) {
        if (!hVar.g()) {
            return false;
        }
        if (iArr.length == 1) {
            byte bD = bVar.b(iArr[0]).d();
            if (bD == 6 || bD == 20) {
                gVar.a(12);
            } else {
                gVar.a(3);
            }
        }
        gVar.a(5);
        return true;
    }

    @Override
    public final boolean b(g gVar, h hVar, byte b2, int[] iArr, i iVar, boolean z2) {
        if (!hVar.g() || iArr.length == 0) {
            return false;
        }
        String str = hVar.f1108c;
        if (iArr.length == 1 && (!z2 || t0.b.l(4096))) {
            byte bD = iVar.j(iArr[0]).d();
            if (bD == 6 || bD == 20) {
                gVar.a(12);
            } else {
                gVar.a(3);
            }
        }
        gVar.a(5);
        if (z2) {
            gVar.a(22);
            if (a0.c.N(1, str)) {
                gVar.a(56);
                if (iArr.length == 1) {
                    gVar.a(57);
                }
            }
            gVar.a(24);
            if (d(iVar, hVar, iArr)) {
                gVar.a(20);
            }
        }
        return true;
    }

    @Override
    public final boolean c(g gVar, h hVar, byte b2, int[] iArr, d0.b bVar) {
        if (!hVar.g()) {
            return false;
        }
        String str = hVar.f1108c;
        if (t0.b.l(4096)) {
            gVar.a(5);
        }
        gVar.a(22);
        gVar.a(24);
        if (iArr.length == 1 && a0.c.N(4, str)) {
            gVar.a(57);
        }
        if (a0.c.N(1, str)) {
            gVar.a(56);
        }
        if (d(bVar, hVar, iArr)) {
            gVar.a(20);
        }
        return true;
    }
}
