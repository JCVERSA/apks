package m0;

import android.os.Build;
import d0.i;
import h0.g;
import h0.h;
import j0.f;
import ru.zdevs.zarchiver.io.SAF;

public final class e implements h0.d {
    @Override
    public final boolean a(g gVar, h hVar, byte b2, int[] iArr, d0.b bVar) {
        if (!hVar.m()) {
            return false;
        }
        try {
            int iD = f.d(iArr, bVar);
            if (iArr.length == 1 && a0.c.K(iD, 1)) {
                if (a0.c.K(iD, 32)) {
                    gVar.a(12);
                }
                if (!a0.c.K(iD, 2) || a0.c.K(iD, 256)) {
                    gVar.a(3);
                }
            }
            if (a0.c.K(iD, 2)) {
                if (iArr.length == 1) {
                    gVar.a(!a0.c.L(iD, 288) ? 1 : 0);
                }
                gVar.a(6);
                if (a0.c.K(iD, 512)) {
                    gVar.a(7);
                }
                gVar.a(5);
                gVar.a(11);
            }
            if (!a0.c.K(iD, 2) || a0.c.K(iD, 32)) {
                gVar.b(9, "*.zip");
                gVar.b(10, "*.7z");
            }
            gVar.a(8);
            return true;
        } catch (IndexOutOfBoundsException unused) {
            return false;
        }
    }

    @Override
    public final boolean b(g gVar, h hVar, byte b2, int[] iArr, i iVar, boolean z2) {
        if (!hVar.m()) {
            return false;
        }
        try {
            int iD = f.d(iArr, iVar);
            if (iArr.length == 1 && a0.c.K(iD, 1) && (!z2 || t0.b.l(4096))) {
                if (a0.c.K(iD, 32) && Build.VERSION.SDK_INT >= 21) {
                    gVar.a(12);
                }
                if (!a0.c.K(iD, 2) || a0.c.K(iD, 256) || a0.c.K(iD, 32)) {
                    gVar.a(18);
                }
            }
            if (a0.c.K(iD, 2) && (iArr.length > 1 || !z2 || (t0.b.l(2048) && !a0.c.K(iD, 32)))) {
                if (iArr.length == 1) {
                    gVar.a(1);
                }
                gVar.a(11);
                gVar.a(5);
            }
            gVar.a(8);
            gVar.a(22);
            gVar.a(24);
            gVar.a(25);
            gVar.a(23);
            return true;
        } catch (IndexOutOfBoundsException unused) {
            return false;
        }
    }

    @Override
    public final boolean c(g gVar, h hVar, byte b2, int[] iArr, d0.b bVar) {
        String[] strArrG;
        x0.d.a aVarJ;
        if (!hVar.m()) {
            return false;
        }
        try {
            int iD = f.d(iArr, bVar);
            if (iArr.length == 1) {
                if ((a0.c.K(iD, 2) && !a0.c.L(iD, 288) && t0.b.l(2048)) || (a0.c.L(iD, 288) && t0.b.l(4096))) {
                    if (a0.c.L(iD, 288)) {
                        gVar.a(1);
                    } else {
                        gVar.a(11);
                        gVar.a(6);
                    }
                    gVar.a(7);
                    gVar.a(5);
                }
                if (!a0.c.L(iD, 18)) {
                    gVar.a(18);
                }
                if (a0.c.K(iD, 16) || (t0.b.l(4096) && !a0.c.L(iD, 2))) {
                    gVar.b(9, "*.zip");
                    gVar.b(10, "*.7z");
                }
                gVar.a(8);
                if (!a0.c.K(iD, 16)) {
                    gVar.a(22);
                }
                gVar.a(24);
                gVar.a(25);
                gVar.a(23);
                gVar.a(27);
                if (a0.c.K(iD, 16)) {
                    gVar.a(22);
                }
                if (a0.c.K(iD, 16) && (strArrG = SAF.g(hVar.f1108c)) != null && (aVarJ = x0.d.j(strArrG[0])) != null && aVarJ.f2257d != 4) {
                    gVar.a(70);
                }
            } else {
                gVar.a(8);
                gVar.a(22);
                gVar.a(24);
                gVar.a(25);
                gVar.a(23);
            }
            return true;
        } catch (IndexOutOfBoundsException unused) {
            return false;
        }
    }
}
