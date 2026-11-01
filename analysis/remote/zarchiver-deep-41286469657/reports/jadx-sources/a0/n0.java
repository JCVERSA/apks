package a0;

import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import java.io.File;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.archiver.NArc;

public final class n0 extends w0.c {

    public final a f69e;

    public final h0.h f70f;

    public final long f71g;

    public final boolean f72h;

    public final int f73i;

    public final int f74j;

    public final byte f75k;

    public n0(h0.h hVar, long j2, boolean z2, int i2, int i3, byte b2) {
        this.f69e = null;
        this.f70f = hVar;
        this.f71g = j2;
        this.f72h = z2;
        this.f73i = i2;
        this.f74j = i3;
        this.f75k = b2;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0088 A[PHI: r3
      0x0088: PHI (r3v37 ru.zdevs.zarchiver.archiver.NArc) = (r3v35 ru.zdevs.zarchiver.archiver.NArc), (r3v38 ru.zdevs.zarchiver.archiver.NArc) binds: [B:42:0x0081, B:45:0x0086] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:94:0x013c  */
    @Override
    public final w0.a.b f() throws Throwable {
        String str;
        boolean z2;
        u0.b bVarP;
        String strG;
        NArc nArcK;
        boolean z3;
        e0.f fVarH;
        a aVar = this.f69e;
        if (aVar != null && n(null)) {
            return null;
        }
        h0.h hVar = this.f70f;
        if (!hVar.g()) {
            if (hVar.k()) {
                if (!"plglocal".equals(hVar.f1106a) && !c.K(h0.e.c(hVar), 1)) {
                    m(null);
                    str = null;
                    z2 = true;
                }
            } else {
                if (!hVar.o()) {
                    return new z("Unsupported path " + hVar);
                }
                if (this.f75k != 1 && hVar.j() && !hVar.l() && t0.b.i(hVar.f1108c) && !new File(hVar.f1108c).canRead()) {
                    hVar.q("root");
                }
            }
            str = null;
            z2 = false;
        } else if (hVar.h() || !e0.b.h(hVar, this.f71g)) {
            m(null);
            str = null;
            z2 = true;
        } else {
            String str2 = hVar.f1108c;
            if (!this.f72h || e0.h.d().e(str2)) {
                strG = null;
            } else {
                String strI = f0.a.m().n(str2) ? f0.a.m().i() : null;
                strG = e0.b.g(null);
                if (v0.h.e(strG)) {
                    return null;
                }
                try {
                    nArcK = NArc.k(hVar.f1108c, strI, strG);
                    if (nArcK != null) {
                        try {
                            fVarH = nArcK.h(c.i0(-1, hVar.f1109d), hVar.f1110e);
                        } catch (NArc.NArcPasswordException unused) {
                            if (nArcK != null) {
                                nArcK.b(null);
                            }
                            z3 = true;
                        } catch (Exception unused2) {
                            if (nArcK != null) {
                                nArcK.b(null);
                            }
                            z3 = true;
                        } catch (Throwable th) {
                            th = th;
                            if (nArcK != null) {
                                nArcK.b(null);
                            }
                            throw th;
                        }
                    } else {
                        fVarH = null;
                    }
                    if (nArcK != null) {
                        nArcK.b(fVarH);
                    }
                    z3 = false;
                } catch (NArc.NArcPasswordException unused3) {
                    nArcK = null;
                } catch (Exception unused4) {
                    nArcK = null;
                } catch (Throwable th2) {
                    th = th2;
                    nArcK = null;
                }
                if (z3) {
                    return new z(R.string.ERROR_WRONG_PASSWORD);
                }
            }
            if (aVar != null) {
                m(strG);
                z2 = true;
            } else {
                z2 = false;
            }
            str = strG;
        }
        if (!z2 && aVar == null) {
            Bundle bundle = new Bundle(1);
            bundle.putInt("zaSortType", this.f74j);
            if (c.K(this.f73i, 8)) {
                ZArchiver zArchiverZ = ZArchiver.z();
                if (zArchiverZ != null) {
                    v0.e.d(zArchiverZ, this.f70f, null, this.f71g, str, bundle);
                }
                return null;
            }
            if (Build.VERSION.SDK_INT >= 21) {
                String strD = c.D(hVar.e());
                if (strD.isEmpty()) {
                    bVarP = null;
                } else {
                    bVarP = c.p(0, strD);
                }
            } else {
                bVarP = null;
            }
            try {
                ZArchiver zArchiverZ2 = ZArchiver.z();
                if (zArchiverZ2 != null) {
                    v0.e.c(zArchiverZ2, this.f70f, this.f71g, str, bVarP, bundle);
                }
            } catch (v0.e.a unused5) {
                m(null);
            }
        }
        return null;
    }

    @Override
    public final int j() {
        return 111;
    }

    public final void m(String str) {
        ZArchiver zArchiverZ = ZArchiver.z();
        if (zArchiverZ == null) {
            return;
        }
        if (this.f69e == null) {
            zArchiverZ.f1445h.f1683c.f1554g.e(this.f70f, this.f73i);
            return;
        }
        if (str == null) {
            str = "";
        }
        n(str);
    }

    public final boolean n(String str) {
        a aVar = this.f69e;
        int iH = aVar.h();
        h0.h hVar = this.f70f;
        boolean zG = hVar.g();
        ArrayList<d0.d> arrayList = aVar.f0a;
        if (zG && str == null && !e0.h.d().e(hVar.f1108c)) {
            for (int i2 = 0; i2 < iH; i2++) {
                if (arrayList.get(i2).f544f == 28) {
                    return false;
                }
            }
        }
        ZArchiver zArchiverZ = ZArchiver.z();
        if (zArchiverZ == null) {
            return true;
        }
        if (iH > 1) {
            ArrayList arrayList2 = new ArrayList(iH);
            for (int i3 = 0; i3 < iH; i3++) {
                Uri uriB = v0.e.b(zArchiverZ, aVar.a(i3), arrayList.get(i3).f542d, str);
                if (uriB != null) {
                    arrayList2.add(uriB);
                }
            }
            v0.e.f(zArchiverZ, arrayList2);
        } else {
            Uri uriB2 = v0.e.b(zArchiverZ, aVar.a(0), arrayList.get(0).f542d, str);
            if (uriB2 != null) {
                v0.e.e(zArchiverZ, uriB2, aVar.b(0));
            }
        }
        return true;
    }

    public n0(a aVar) {
        this.f69e = aVar;
        this.f70f = aVar.g();
        this.f71g = 0L;
        this.f72h = false;
        this.f73i = 0;
        this.f74j = 0;
        this.f75k = (byte) 1;
    }
}
