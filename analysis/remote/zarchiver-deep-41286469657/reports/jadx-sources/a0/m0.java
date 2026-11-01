package a0;

import android.os.Build;
import java.io.OutputStream;

public final class m0 extends w0.c {

    public final h0.h f65e;

    public final String f66f;

    public final boolean f67g;

    public m0(String str, h0.h hVar, boolean z2) {
        this.f65e = hVar;
        this.f66f = str;
        this.f67g = z2;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0079  */
    /* JADX WARN: Code duplicated, block: B:38:0x008b  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:44:0x00af  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:51:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:62:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:64:0x0102  */
    /* JADX WARN: Code duplicated, block: B:65:0x0106  */
    /* JADX WARN: Code duplicated, block: B:72:0x0117 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x0119  */
    /* JADX WARN: Code duplicated, block: B:75:0x0120  */
    /* JADX WARN: Code duplicated, block: B:77:0x012b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x012d  */
    /* JADX WARN: Code duplicated, block: B:80:0x0133 A[RETURN] */
    /* JADX WARN: Instruction removed from duplicated block: B:38:0x008b, please report this as an issue */
    @Override
    public final w0.a.b f() {
        boolean zQ;
        String message;
        o0.a aVarC;
        String strI;
        String str;
        String str2;
        h0.h hVar = this.f65e;
        h0.f fVarU = h0.f.u(hVar);
        boolean z2 = this.f67g;
        String str3 = this.f66f;
        boolean z3 = true;
        boolean z4 = false;
        try {
            if (z2) {
                zQ = fVarU.b(str3) != null;
                if (!zQ) {
                    try {
                        if (c.K(h0.e.c(fVarU.f1097a), 32)) {
                            OutputStream outputStreamX = h0.f.u(new h0.h(str3, hVar)).x(0L);
                            n0.e.d(outputStreamX);
                            zQ = outputStreamX != null;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        message = e.getMessage();
                    }
                }
                if (!zQ && hVar.j() && t0.b.i(hVar.r())) {
                    aVarC = o0.a.c(t0.b.f2092m);
                    if (!aVarC.f()) {
                        aVarC = o0.a.c(0);
                    }
                    strI = c.i(hVar.r(), str3);
                    if (z2) {
                        if (aVarC.b("touch '" + strI.replace("'", "'\\''") + "'")) {
                            aVarC.k(false);
                            if (aVarC.f1294h != 0) {
                                z3 = false;
                            }
                            z4 = z3;
                        }
                    } else {
                        if (Build.VERSION.SDK_INT >= 23) {
                            str = "-m 755 ";
                        } else {
                            str = "";
                        }
                        if (aVarC.b("mkdir -p " + str + "'" + strI.replace("'", "'\\''") + "'")) {
                            aVarC.k(false);
                            if (aVarC.f1294h != 0) {
                                z3 = false;
                            }
                            z4 = z3;
                        }
                    }
                    if (z4) {
                        if (!t0.b.f(33554432) && p0.f.a(hVar)) {
                            c.d0(aVarC, hVar, str3);
                        } else if (x0.g.e(hVar.f1108c)) {
                            c.c0(aVarC, hVar, str3);
                        }
                    } else if (aVarC.d() != 0 && (str2 = aVarC.f1289c) != null) {
                        message = str2;
                    }
                    aVarC.close();
                    zQ = z4;
                }
                if (zQ) {
                    return z2 ? new b0(-1) : new r(new h0.h(str3, hVar));
                }
                if (message != null) {
                    return new z(message);
                }
                return null;
            }
            try {
                zQ = fVarU.s(str3);
            } catch (UnsupportedOperationException unused) {
                zQ = fVarU.q(str3);
            }
            message = !zQ ? fVarU.h() : null;
        } catch (Exception e3) {
            e = e3;
            zQ = false;
        }
        if (!zQ) {
            aVarC = o0.a.c(t0.b.f2092m);
            if (!aVarC.f()) {
                aVarC = o0.a.c(0);
            }
            strI = c.i(hVar.r(), str3);
            if (z2) {
                if (aVarC.b("touch '" + strI.replace("'", "'\\''") + "'")) {
                    aVarC.k(false);
                    if (aVarC.f1294h != 0) {
                        z3 = false;
                    }
                    z4 = z3;
                }
            } else {
                if (Build.VERSION.SDK_INT >= 23) {
                    str = "-m 755 ";
                } else {
                    str = "";
                }
                if (aVarC.b("mkdir -p " + str + "'" + strI.replace("'", "'\\''") + "'")) {
                    aVarC.k(false);
                    if (aVarC.f1294h != 0) {
                        z3 = false;
                    }
                    z4 = z3;
                }
            }
            if (z4) {
                if (!t0.b.f(33554432)) {
                    if (x0.g.e(hVar.f1108c)) {
                        c.c0(aVarC, hVar, str3);
                    }
                } else if (x0.g.e(hVar.f1108c)) {
                    c.c0(aVarC, hVar, str3);
                }
            } else if (aVarC.d() != 0) {
                message = str2;
            }
            aVarC.close();
            zQ = z4;
        }
        if (zQ) {
            if (z2) {
            }
        }
        if (message != null) {
            return new z(message);
        }
        return null;
    }

    @Override
    public final int j() {
        return 102;
    }
}
