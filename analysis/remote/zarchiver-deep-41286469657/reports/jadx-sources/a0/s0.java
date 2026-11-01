package a0;

import java.io.File;
import java.lang.ref.WeakReference;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

public final class s0 extends w0.c {

    public final int f102e;

    public final WeakReference<q0.g> f103f;

    public final d0.d f104g;

    public final String f105h;

    public final h0.h f106i;

    public final boolean f107j = false;

    public s0(int i2, q0.g gVar, h0.h hVar, d0.d dVar, String str) {
        this.f102e = i2;
        this.f103f = new WeakReference<>(gVar);
        this.f104g = dVar;
        this.f105h = str;
        this.f106i = hVar;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0062  */
    @Override
    public final w0.a.b f() {
        Exception e2;
        String message;
        String strH;
        String strI;
        boolean zJ = this.f106i.j();
        boolean z2 = true;
        if (!zJ || ((!this.f106i.l() && x0.g.d(this.f106i, true) == 1) || this.f107j)) {
            try {
                h0.h hVar = new h0.h(this.f104g.f539a, this.f106i);
                h0.f fVarU = h0.f.u(hVar);
                if (this.f104g.f539a.equalsIgnoreCase(this.f105h)) {
                    if (fVarU.y(this.f105h + ".z2p")) {
                        fVarU = h0.f.u(new h0.h(this.f105h + ".z2p", this.f106i));
                        if (zJ) {
                            q0.f.c(hVar.f1108c, fVarU.k(), true);
                        }
                    }
                }
                boolean zY = fVarU.y(this.f105h);
                try {
                    if (zY) {
                        if (zJ) {
                            String str = hVar.f1108c;
                            h0.h hVar2 = this.f106i;
                            String str2 = this.f105h;
                            String str3 = hVar2.f1106a;
                            if (hVar2.g()) {
                                strI = hVar2.f1108c;
                                c.i(hVar2.f1110e, str2);
                            } else if (hVar2.n()) {
                                strI = hVar2.f1108c + str2;
                            } else {
                                strI = c.i(hVar2.f1108c, str2);
                            }
                            boolean z3 = !fVarU.l();
                            q0.f.a(strI, z3);
                            q0.f.c(str, z3, true);
                        }
                        strH = null;
                    } else {
                        strH = fVarU.h();
                    }
                    z2 = zY;
                    message = strH;
                } catch (Exception e3) {
                    e2 = e3;
                    z2 = zY;
                    message = e2.getMessage();
                }
            } catch (Exception e4) {
                e2 = e4;
                z2 = false;
            }
        } else {
            o0.a aVarC = o0.a.c(t0.b.f2092m);
            if (aVarC.f()) {
                String strR = this.f106i.r();
                String str4 = this.f104g.f539a;
                String str5 = this.f105h;
                File file = new File(strR, str4);
                File file2 = new File(strR, str5);
                if (file2.exists()) {
                    z2 = false;
                } else {
                    if (!(p0.b.c(aVarC, true, 0, true, file.getAbsolutePath(), file2.getAbsolutePath()) >= -1)) {
                        z2 = false;
                    } else if (x0.g.c(strR) == 1) {
                        String absolutePath = file.getAbsolutePath();
                        String absolutePath2 = file2.getAbsolutePath();
                        boolean z4 = !file2.isFile();
                        q0.f.a(absolutePath2, z4);
                        q0.f.c(absolutePath, z4, true);
                    }
                }
                aVarC.close();
                message = !z2 ? aVarC.f1289c : null;
            } else {
                message = ZApp.f1434c.getString(R.string.OPT_ROOT_NOT_FOUND);
                z2 = false;
            }
        }
        if (!z2) {
            return message != null ? new z(message) : new z(R.string.MES_END_WITH_ERROR);
        }
        int iE = this.f104g.e(this.f106i);
        d0.d dVar = this.f104g;
        dVar.f539a = this.f105h;
        if (!dVar.f()) {
            dVar.f543e = (byte) -1;
            dVar.f544f = (byte) 0;
        }
        dVar.f546h = null;
        q0.g gVar = this.f103f.get();
        if (gVar != null) {
            int iE2 = this.f104g.e(this.f106i);
            Integer numValueOf = Integer.valueOf(iE);
            q0.i iVar = gVar.f1396d;
            q0.e.a aVarB = iVar.b(numValueOf);
            if (aVarB != null) {
                iVar.e(Integer.valueOf(iE));
                iVar.d(Integer.valueOf(iE2), aVarB);
            }
        }
        return new u(this.f102e, this.f105h);
    }

    @Override
    public final int j() {
        return 101;
    }
}
