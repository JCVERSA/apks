package e3;

import androidx.media3.common.util.j0;
import com.google.android.exoplayer2.metadata.mp4.MdtaMetadataEntry;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.e0;

abstract class j {
    public static androidx.media3.container.b a(androidx.media3.common.x xVar, String str) {
        for (int i10 = 0; i10 < xVar.e(); i10++) {
            androidx.media3.common.x.a aVarD = xVar.d(i10);
            if (aVarD instanceof androidx.media3.container.b) {
                androidx.media3.container.b bVar = (androidx.media3.container.b) aVarD;
                if (bVar.f10266a.equals(str)) {
                    return bVar;
                }
            }
        }
        return null;
    }

    private static y2.e b(int i10, j0 j0Var) {
        int iQ = j0Var.q();
        if (j0Var.q() == 1684108385) {
            j0Var.X(8);
            String strC = j0Var.C(iQ - 16);
            return new y2.e(C.LANGUAGE_UNDETERMINED, strC, strC);
        }
        androidx.media3.common.util.u.h("MetadataUtil", "Failed to parse comment attribute: " + androidx.media3.container.d.a(i10));
        return null;
    }

    private static y2.a c(j0 j0Var) {
        String str;
        int iQ = j0Var.q();
        if (j0Var.q() != 1684108385) {
            androidx.media3.common.util.u.h("MetadataUtil", "Failed to parse cover art attribute");
            return null;
        }
        int iO = b.o(j0Var.q());
        if (iO == 13) {
            str = "image/jpeg";
        } else {
            str = iO == 14 ? "image/png" : null;
        }
        if (str == null) {
            androidx.media3.common.util.u.h("MetadataUtil", "Unrecognized cover art flags: " + iO);
            return null;
        }
        j0Var.X(4);
        int i10 = iQ - 16;
        byte[] bArr = new byte[i10];
        j0Var.l(bArr, 0, i10);
        return new y2.a(str, null, 3, bArr);
    }

    public static androidx.media3.common.x.a d(j0 j0Var) {
        int iF = j0Var.f() + j0Var.q();
        int iQ = j0Var.q();
        int i10 = (iQ >> 24) & 255;
        try {
            if (i10 == 169 || i10 == 253) {
                int i11 = 16777215 & iQ;
                if (i11 == 6516084) {
                    y2.e eVarB = b(iQ, j0Var);
                    j0Var.W(iF);
                    return eVarB;
                }
                if (i11 == 7233901 || i11 == 7631467) {
                    y2.n nVarK = k(iQ, "TIT2", j0Var);
                    j0Var.W(iF);
                    return nVarK;
                }
                if (i11 == 6516589 || i11 == 7828084) {
                    y2.n nVarK2 = k(iQ, "TCOM", j0Var);
                    j0Var.W(iF);
                    return nVarK2;
                }
                if (i11 == 6578553) {
                    y2.n nVarK3 = k(iQ, "TDRC", j0Var);
                    j0Var.W(iF);
                    return nVarK3;
                }
                if (i11 == 4280916) {
                    y2.n nVarK4 = k(iQ, "TPE1", j0Var);
                    j0Var.W(iF);
                    return nVarK4;
                }
                if (i11 == 7630703) {
                    y2.n nVarK5 = k(iQ, "TSSE", j0Var);
                    j0Var.W(iF);
                    return nVarK5;
                }
                if (i11 == 6384738) {
                    y2.n nVarK6 = k(iQ, "TALB", j0Var);
                    j0Var.W(iF);
                    return nVarK6;
                }
                if (i11 == 7108978) {
                    y2.n nVarK7 = k(iQ, "USLT", j0Var);
                    j0Var.W(iF);
                    return nVarK7;
                }
                if (i11 == 6776174) {
                    y2.n nVarK8 = k(iQ, "TCON", j0Var);
                    j0Var.W(iF);
                    return nVarK8;
                }
                if (i11 == 6779504) {
                    y2.n nVarK9 = k(iQ, "TIT1", j0Var);
                    j0Var.W(iF);
                    return nVarK9;
                }
            } else {
                if (iQ == 1735291493) {
                    y2.n nVarJ = j(j0Var);
                    j0Var.W(iF);
                    return nVarJ;
                }
                if (iQ == 1684632427) {
                    y2.n nVarE = e(iQ, "TPOS", j0Var);
                    j0Var.W(iF);
                    return nVarE;
                }
                if (iQ == 1953655662) {
                    y2.n nVarE2 = e(iQ, "TRCK", j0Var);
                    j0Var.W(iF);
                    return nVarE2;
                }
                if (iQ == 1953329263) {
                    y2.i iVarG = g(iQ, "TBPM", j0Var, true, false);
                    j0Var.W(iF);
                    return iVarG;
                }
                if (iQ == 1668311404) {
                    y2.i iVarG2 = g(iQ, "TCMP", j0Var, true, true);
                    j0Var.W(iF);
                    return iVarG2;
                }
                if (iQ == 1668249202) {
                    y2.a aVarC = c(j0Var);
                    j0Var.W(iF);
                    return aVarC;
                }
                if (iQ == 1631670868) {
                    y2.n nVarK10 = k(iQ, "TPE2", j0Var);
                    j0Var.W(iF);
                    return nVarK10;
                }
                if (iQ == 1936682605) {
                    y2.n nVarK11 = k(iQ, "TSOT", j0Var);
                    j0Var.W(iF);
                    return nVarK11;
                }
                if (iQ == 1936679276) {
                    y2.n nVarK12 = k(iQ, "TSOA", j0Var);
                    j0Var.W(iF);
                    return nVarK12;
                }
                if (iQ == 1936679282) {
                    y2.n nVarK13 = k(iQ, "TSOP", j0Var);
                    j0Var.W(iF);
                    return nVarK13;
                }
                if (iQ == 1936679265) {
                    y2.n nVarK14 = k(iQ, "TSO2", j0Var);
                    j0Var.W(iF);
                    return nVarK14;
                }
                if (iQ == 1936679791) {
                    y2.n nVarK15 = k(iQ, "TSOC", j0Var);
                    j0Var.W(iF);
                    return nVarK15;
                }
                if (iQ == 1920233063) {
                    y2.i iVarG3 = g(iQ, "ITUNESADVISORY", j0Var, false, false);
                    j0Var.W(iF);
                    return iVarG3;
                }
                if (iQ == 1885823344) {
                    y2.i iVarG4 = g(iQ, "ITUNESGAPLESS", j0Var, false, true);
                    j0Var.W(iF);
                    return iVarG4;
                }
                if (iQ == 1936683886) {
                    y2.n nVarK16 = k(iQ, "TVSHOWSORT", j0Var);
                    j0Var.W(iF);
                    return nVarK16;
                }
                if (iQ == 1953919848) {
                    y2.n nVarK17 = k(iQ, "TVSHOW", j0Var);
                    j0Var.W(iF);
                    return nVarK17;
                }
                if (iQ == 757935405) {
                    y2.i iVarH = h(j0Var, iF);
                    j0Var.W(iF);
                    return iVarH;
                }
            }
            androidx.media3.common.util.u.b("MetadataUtil", "Skipped unknown metadata entry: " + androidx.media3.container.d.a(iQ));
            j0Var.W(iF);
            return null;
        } catch (Throwable th2) {
            j0Var.W(iF);
            throw th2;
        }
    }

    private static y2.n e(int i10, String str, j0 j0Var) {
        int iQ = j0Var.q();
        if (j0Var.q() == 1684108385 && iQ >= 22) {
            j0Var.X(10);
            int iP = j0Var.P();
            if (iP > 0) {
                String str2 = "" + iP;
                int iP2 = j0Var.P();
                if (iP2 > 0) {
                    str2 = str2 + "/" + iP2;
                }
                return new y2.n(str, null, ImmutableList.of(str2));
            }
        }
        androidx.media3.common.util.u.h("MetadataUtil", "Failed to parse index/count attribute: " + androidx.media3.container.d.a(i10));
        return null;
    }

    private static int f(j0 j0Var) {
        int iQ = j0Var.q();
        if (j0Var.q() == 1684108385) {
            j0Var.X(8);
            int i10 = iQ - 16;
            if (i10 == 1) {
                return j0Var.H();
            }
            if (i10 == 2) {
                return j0Var.P();
            }
            if (i10 == 3) {
                return j0Var.K();
            }
            if (i10 == 4 && (j0Var.j() & 128) == 0) {
                return j0Var.L();
            }
        }
        androidx.media3.common.util.u.h("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    private static y2.i g(int i10, String str, j0 j0Var, boolean z10, boolean z11) {
        int iF = f(j0Var);
        if (z11) {
            iF = Math.min(1, iF);
        }
        if (iF >= 0) {
            return z10 ? new y2.n(str, null, ImmutableList.of(Integer.toString(iF))) : new y2.e(C.LANGUAGE_UNDETERMINED, str, Integer.toString(iF));
        }
        androidx.media3.common.util.u.h("MetadataUtil", "Failed to parse uint8 attribute: " + androidx.media3.container.d.a(i10));
        return null;
    }

    private static y2.i h(j0 j0Var, int i10) {
        String strC = null;
        String strC2 = null;
        int i11 = -1;
        int i12 = -1;
        while (j0Var.f() < i10) {
            int iF = j0Var.f();
            int iQ = j0Var.q();
            int iQ2 = j0Var.q();
            j0Var.X(4);
            if (iQ2 == 1835360622) {
                strC = j0Var.C(iQ - 12);
            } else if (iQ2 == 1851878757) {
                strC2 = j0Var.C(iQ - 12);
            } else {
                if (iQ2 == 1684108385) {
                    i11 = iF;
                    i12 = iQ;
                }
                j0Var.X(iQ - 12);
            }
        }
        if (strC == null || strC2 == null || i11 == -1) {
            return null;
        }
        j0Var.W(i11);
        j0Var.X(16);
        return new y2.k(strC, strC2, j0Var.C(i12 - 16));
    }

    public static androidx.media3.container.b i(j0 j0Var, int i10, String str) {
        while (true) {
            int iF = j0Var.f();
            if (iF >= i10) {
                return null;
            }
            int iQ = j0Var.q();
            if (j0Var.q() == 1684108385) {
                int iQ2 = j0Var.q();
                int iQ3 = j0Var.q();
                int i11 = iQ - 16;
                byte[] bArr = new byte[i11];
                j0Var.l(bArr, 0, i11);
                return new androidx.media3.container.b(str, bArr, iQ3, iQ2);
            }
            j0Var.W(iF + iQ);
        }
    }

    private static y2.n j(j0 j0Var) {
        String strA = y2.j.a(f(j0Var) - 1);
        if (strA != null) {
            return new y2.n("TCON", null, ImmutableList.of(strA));
        }
        androidx.media3.common.util.u.h("MetadataUtil", "Failed to parse standard genre code");
        return null;
    }

    private static y2.n k(int i10, String str, j0 j0Var) {
        int iQ = j0Var.q();
        if (j0Var.q() == 1684108385) {
            j0Var.X(8);
            return new y2.n(str, null, ImmutableList.of(j0Var.C(iQ - 16)));
        }
        androidx.media3.common.util.u.h("MetadataUtil", "Failed to parse text attribute: " + androidx.media3.container.d.a(i10));
        return null;
    }

    public static void l(int i10, e0 e0Var, androidx.media3.common.r.b bVar) {
        if (i10 == 1 && e0Var.a()) {
            bVar.Z(e0Var.f63572a).a0(e0Var.f63573b);
        }
    }

    public static void m(int i10, androidx.media3.common.x xVar, androidx.media3.common.r.b bVar, androidx.media3.common.x xVar2, androidx.media3.common.x... xVarArr) {
        if (xVar2 == null) {
            xVar2 = new androidx.media3.common.x(new androidx.media3.common.x.a[0]);
        }
        if (xVar != null) {
            for (int i11 = 0; i11 < xVar.e(); i11++) {
                androidx.media3.common.x.a aVarD = xVar.d(i11);
                if (aVarD instanceof androidx.media3.container.b) {
                    androidx.media3.container.b bVar2 = (androidx.media3.container.b) aVarD;
                    if (!bVar2.f10266a.equals(MdtaMetadataEntry.KEY_ANDROID_CAPTURE_FPS)) {
                        xVar2 = xVar2.a(bVar2);
                    } else if (i10 == 2) {
                        xVar2 = xVar2.a(bVar2);
                    }
                }
            }
        }
        for (androidx.media3.common.x xVar3 : xVarArr) {
            xVar2 = xVar2.b(xVar3);
        }
        if (xVar2.e() > 0) {
            bVar.n0(xVar2);
        }
    }
}
