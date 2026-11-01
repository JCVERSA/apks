package j0;

import android.os.Build;
import d0.i;
import h0.h;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class f implements h0.d {
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    public static int d(int[] iArr, d0.b bVar) {
        int i2 = 7;
        boolean z2 = false;
        boolean z3 = true;
        for (int i3 : iArr) {
            d0.d dVarB = bVar.b(i3);
            if (dVarB.f()) {
                i2 = (i2 & 32) | 16;
                if (z2) {
                    return i2 | 512;
                }
                return i2;
            }
            byte bD = dVarB.d();
            byte b2 = dVarB.f544f;
            if (bD != 6) {
                i2 &= -5;
            }
            if (bD == 6 || bD == 20) {
                i2 |= 32;
            } else if (!a0.c.G(bD) && bD != 2 && b2 != 30) {
                i2 = bD == 27 ? i2 | 256 : i2 & (-3);
            } else if (z3 && (b2 == 29 || b2 == 30)) {
                if (b2 == 30) {
                    i2 |= 256;
                }
                String str = dVarB.f539a;
                if (str.lastIndexOf(46) < str.length() - 5) {
                    z3 = false;
                }
            }
        }
        z2 = z3;
        if (z2) {
            return i2 | 512;
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:119:0x011a A[EDGE_INSN: B:119:0x011a->B:75:0x011a BREAK  A[LOOP:0: B:27:0x006d->B:74:0x0110], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x0110 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x00ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:64:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:68:0x0105 A[PHI: r10 r12
      0x0105: PHI (r10v3 java.lang.Long) = (r10v2 java.lang.Long), (r10v2 java.lang.Long), (r10v2 java.lang.Long), (r10v5 java.lang.Long), (r10v5 java.lang.Long) binds: [B:57:0x00e7, B:65:0x00fb, B:67:0x0103, B:61:0x00f0, B:62:0x00f2] A[DONT_GENERATE, DONT_INLINE]
      0x0105: PHI (r12v3 java.lang.String) = 
      (r12v2 java.lang.String)
      (r12v2 java.lang.String)
      (r12v2 java.lang.String)
      (r12v5 java.lang.String)
      (r12v5 java.lang.String)
     binds: [B:57:0x00e7, B:65:0x00fb, B:67:0x0103, B:61:0x00f0, B:62:0x00f2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:71:0x010a  */
    /* JADX WARN: Code duplicated, block: B:73:0x010e  */
    /* JADX WARN: Code duplicated, block: B:77:0x011f  */
    /* JADX WARN: Code duplicated, block: B:80:0x012b  */
    /* JADX WARN: Code duplicated, block: B:82:0x012f  */
    /* JADX WARN: Code duplicated, block: B:88:0x0146  */
    /* JADX WARN: Code duplicated, block: B:90:0x0152  */
    /* JADX WARN: Code duplicated, block: B:93:0x015d  */
    @Override
    public final boolean a(h0.g gVar, h hVar, byte b2, int[] iArr, d0.b bVar) throws Throwable {
        ZipFile zipFile;
        String str;
        o.e eVar;
        ZipFile zipFile2;
        o.e eVar2;
        int i2 = 0;
        if (!hVar.j()) {
            return false;
        }
        char c2 = hVar.l() ? (char) 2 : (char) 1;
        try {
            int iD = d(iArr, bVar);
            if (iArr.length == 1 && a0.c.K(iD, 1)) {
                if (a0.c.K(iD, 32)) {
                    gVar.a(12);
                }
                if (!a0.c.K(iD, 2) || a0.c.K(iD, 256)) {
                    gVar.a(3);
                }
            } else if (a0.c.K(iD, 4) && Build.VERSION.SDK_INT >= 21) {
                String str2 = hVar.f1108c + "/";
                int length = iArr.length;
                Long l2 = null;
                String str3 = null;
                int i3 = 0;
                while (i2 < length) {
                    String str4 = str2 + bVar.b(iArr[i2]).f539a;
                    if (str4 != null) {
                        try {
                            try {
                                str = str2;
                                try {
                                    zipFile2 = new ZipFile(new File(str4), 1);
                                    try {
                                        ZipEntry entry = zipFile2.getEntry("AndroidManifest.xml");
                                        if (entry == null) {
                                            n0.e.f(zipFile2);
                                        } else {
                                            byte[] bArrT = a0.c.T(zipFile2.getInputStream(entry));
                                            n0.e.f(zipFile2);
                                            if (bArrT != null) {
                                                eVar2 = new o.e();
                                                o.b bVar2 = new o.b(ByteBuffer.wrap(bArrT), null);
                                                Locale locale = Locale.US;
                                                if (locale != null) {
                                                    bVar2.f1273f = locale;
                                                }
                                                bVar2.f1271d = eVar2;
                                                bVar2.a();
                                            }
                                            if (eVar2 != null) {
                                                i3 = -1;
                                            } else if (str3 == null) {
                                                str3 = eVar2.f1282a;
                                                l2 = eVar2.f1283b;
                                                if (str3 != null || l2 == null) {
                                                    i3 = -1;
                                                }
                                            } else if (str3.equals(eVar2.f1282a) || !l2.equals(eVar2.f1283b)) {
                                                i3 = -1;
                                            }
                                            if (i3 < 0) {
                                                break;
                                            }
                                            if (eVar2.f1284c != null) {
                                                i3++;
                                            }
                                            i2++;
                                            str2 = str;
                                        }
                                        eVar2 = null;
                                    } catch (Exception unused) {
                                        eVar = null;
                                        n0.e.f(zipFile2);
                                        eVar2 = eVar;
                                    } catch (Throwable th) {
                                        th = th;
                                        zipFile = zipFile2;
                                        n0.e.f(zipFile);
                                        throw th;
                                    }
                                } catch (Exception unused2) {
                                    eVar = null;
                                    zipFile2 = null;
                                    n0.e.f(zipFile2);
                                    eVar2 = eVar;
                                    if (eVar2 != null) {
                                        i3 = -1;
                                    } else if (str3 == null) {
                                        str3 = eVar2.f1282a;
                                        l2 = eVar2.f1283b;
                                        if (str3 != null) {
                                            i3 = -1;
                                        } else {
                                            i3 = -1;
                                        }
                                    } else if (str3.equals(eVar2.f1282a)) {
                                        i3 = -1;
                                    } else {
                                        i3 = -1;
                                    }
                                    if (i3 < 0) {
                                        break;
                                        if (i3 + 1 == iArr.length) {
                                            gVar.a(12);
                                        }
                                        if (a0.c.K(iD, 2)) {
                                            if (iArr.length == 1) {
                                                gVar.a(!a0.c.L(iD, 288) ? 1 : 0);
                                            }
                                            if (b2 != 1) {
                                                gVar.a(6);
                                                if (a0.c.K(iD, 512)) {
                                                    gVar.a(7);
                                                }
                                            } else {
                                                gVar.a(6);
                                                if (a0.c.K(iD, 512)) {
                                                    gVar.a(7);
                                                }
                                            }
                                            gVar.a(5);
                                            if (c2 == 1) {
                                                gVar.a(11);
                                            }
                                        }
                                        if (a0.c.K(iD, 2)) {
                                            gVar.b(9, "*.zip");
                                            gVar.b(10, "*.7z");
                                        } else {
                                            gVar.b(9, "*.zip");
                                            gVar.b(10, "*.7z");
                                        }
                                        gVar.a(8);
                                        return true;
                                    }
                                    if (eVar2.f1284c != null) {
                                        i3++;
                                    }
                                    i2++;
                                    str2 = str;
                                }
                            } catch (Exception unused3) {
                                str = str2;
                            }
                            if (eVar2 != null) {
                                i3 = -1;
                            } else if (str3 == null) {
                                str3 = eVar2.f1282a;
                                l2 = eVar2.f1283b;
                                if (str3 != null) {
                                    i3 = -1;
                                } else {
                                    i3 = -1;
                                }
                            } else if (str3.equals(eVar2.f1282a)) {
                                i3 = -1;
                            } else {
                                i3 = -1;
                            }
                            if (i3 < 0) {
                                break;
                                break;
                            }
                            if (eVar2.f1284c != null) {
                                i3++;
                            }
                            i2++;
                            str2 = str;
                        } catch (Throwable th2) {
                            th = th2;
                            zipFile = null;
                        }
                    } else {
                        str = str2;
                        eVar = null;
                    }
                    eVar2 = eVar;
                    if (eVar2 != null) {
                        i3 = -1;
                    } else if (str3 == null) {
                        str3 = eVar2.f1282a;
                        l2 = eVar2.f1283b;
                        if (str3 != null) {
                            i3 = -1;
                        } else {
                            i3 = -1;
                        }
                    } else if (str3.equals(eVar2.f1282a)) {
                        i3 = -1;
                    } else {
                        i3 = -1;
                    }
                    if (i3 < 0) {
                        break;
                        break;
                    }
                    if (eVar2.f1284c != null) {
                        i3++;
                    }
                    i2++;
                    str2 = str;
                }
                if (i3 + 1 == iArr.length) {
                    gVar.a(12);
                }
            }
            if (a0.c.K(iD, 2)) {
                if (iArr.length == 1) {
                    gVar.a(!a0.c.L(iD, 288) ? 1 : 0);
                }
                if (b2 != 1 || (t0.b.i(hVar.f1108c) && b2 == 3)) {
                    gVar.a(6);
                    if (a0.c.K(iD, 512)) {
                        gVar.a(7);
                    }
                }
                gVar.a(5);
                if (c2 == 1) {
                    gVar.a(11);
                }
            }
            if ((a0.c.K(iD, 2) || a0.c.K(iD, 32)) && (b2 == 1 || t0.b.f2080a != null || (hVar.j() && x0.g.g(hVar.f1108c) != 2))) {
                gVar.b(9, "*.zip");
                gVar.b(10, "*.7z");
            }
            gVar.a(8);
            return true;
        } catch (IndexOutOfBoundsException unused4) {
            return false;
        }
    }

    @Override
    public final boolean b(h0.g gVar, h hVar, byte b2, int[] iArr, i iVar, boolean z2) {
        byte b3 = b2;
        if (!hVar.j()) {
            return false;
        }
        try {
            int iD = d(iArr, iVar);
            char c2 = hVar.l() ? (char) 2 : (char) 1;
            boolean zI = t0.b.i(hVar.f1108c);
            if (iArr.length == 1 && a0.c.K(iD, 1) && (!z2 || t0.b.l(4096))) {
                if (a0.c.K(iD, 32)) {
                    gVar.a(12);
                }
                if (!a0.c.K(iD, 2) || a0.c.K(iD, 256)) {
                    gVar.a(3);
                    if (a0.c.K(iD, 256)) {
                        gVar.a(0);
                    }
                    if (a0.c.K(iD, 32)) {
                        gVar.a(18);
                    }
                }
            }
            if (a0.c.K(iD, 2) && (iArr.length > 1 || !z2 || (t0.b.l(2048) && !a0.c.K(iD, 32)))) {
                if (iArr.length == 1) {
                    gVar.a(!a0.c.K(iD, 256) ? 1 : 0);
                }
                gVar.a(5);
                if (!hVar.l()) {
                    gVar.a(11);
                }
            }
            gVar.a(8);
            if (z2) {
                if (iArr.length == 1 && a0.c.K(iD, 1)) {
                    gVar.a(22);
                }
                gVar.a(24);
                if (b3 != 1 && (!zI || b3 != 3)) {
                    int length = iArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 < length) {
                            byte bD = x0.g.d(iVar.j(iArr[i2]).f552k, false);
                            if (bD != 1 && (!zI || bD != 3)) {
                                b3 = 4;
                                break;
                            }
                            i2++;
                        } else {
                            b3 = 1;
                            break;
                        }
                    }
                }
                if (b3 == 1 || (zI && b3 == 3)) {
                    gVar.a(25);
                    gVar.a(23);
                    if (iArr.length == 1) {
                        gVar.a(27);
                    }
                }
                if (iArr.length > 1 || !a0.c.K(iD, 1)) {
                    gVar.a(22);
                }
                if (a0.c.K(iD, 1) && c2 == 1) {
                    gVar.a(20);
                }
            }
            return true;
        } catch (IndexOutOfBoundsException unused) {
            return false;
        }
    }

    @Override
    public final boolean c(h0.g gVar, h hVar, byte b2, int[] iArr, d0.b bVar) {
        boolean z2 = false;
        if (!hVar.j()) {
            return false;
        }
        try {
            int iD = d(iArr, bVar);
            z2 = true;
            char c2 = hVar.l() ? (char) 2 : (char) 1;
            boolean zI = t0.b.i(hVar.f1108c);
            if (iArr.length == 1) {
                if ((a0.c.K(iD, 2) && !a0.c.L(iD, 288) && t0.b.l(2048)) || (a0.c.L(iD, 288) && t0.b.l(4096))) {
                    boolean zL = a0.c.L(iD, 288);
                    if (zL) {
                        gVar.a(1);
                    } else if (c2 == 1) {
                        gVar.a(11);
                    }
                    if (b2 == 1 || (zI && b2 == 3)) {
                        if (b2 == 1) {
                            if (!zL) {
                                gVar.a(6);
                            }
                            gVar.a(7);
                        }
                        gVar.a(5);
                    }
                }
                if (!a0.c.L(iD, 18)) {
                    gVar.a(18);
                }
                if ((a0.c.K(iD, 16) || (t0.b.l(4096) && !a0.c.L(iD, 2))) && (b2 == 1 || t0.b.f2080a != null)) {
                    gVar.b(9, "*.zip");
                    gVar.b(10, "*.7z");
                }
            }
            gVar.a(8);
            if (!a0.c.K(iD, 16)) {
                gVar.a(22);
            }
            gVar.a(24);
            if (b2 == 1 || (zI && b2 == 3)) {
                gVar.a(25);
                gVar.a(23);
                if (iArr.length == 1) {
                    gVar.a(27);
                }
            } else if (b2 == 2 && iArr.length == 1) {
                gVar.a(23);
                gVar.a(27);
            }
            if (a0.c.K(iD, 16)) {
                gVar.a(22);
            }
            if (b2 != 1 && zI && a0.c.K(h0.e.c(hVar), 8)) {
                gVar.a(98);
            }
            if (a0.c.K(iD, 1) && c2 == 1) {
                gVar.a(20);
            }
            if (iArr.length == 1 && a0.c.K(iD, 16)) {
                gVar.a(70);
            }
        } catch (IndexOutOfBoundsException unused) {
        }
        return z2;
    }
}
