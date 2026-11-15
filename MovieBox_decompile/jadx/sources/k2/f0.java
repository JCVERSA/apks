package k2;

import androidx.media3.common.ParserException;
import java.util.Collections;
import java.util.List;

public final class f0 {

    public final List f63574a;

    public final int f63575b;

    public final int f63576c;

    public final int f63577d;

    public final int f63578e;

    public final int f63579f;

    public final int f63580g;

    public final int f63581h;

    public final int f63582i;

    public final int f63583j;

    public final int f63584k;

    public final float f63585l;

    public final int f63586m;

    public final String f63587n;

    public final androidx.media3.container.g.k f63588o;

    private f0(List list, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, float f10, int i20, String str, androidx.media3.container.g.k kVar) {
        this.f63574a = list;
        this.f63575b = i10;
        this.f63576c = i11;
        this.f63577d = i12;
        this.f63578e = i13;
        this.f63579f = i14;
        this.f63580g = i15;
        this.f63581h = i16;
        this.f63582i = i17;
        this.f63583j = i18;
        this.f63584k = i19;
        this.f63585l = f10;
        this.f63586m = i20;
        this.f63587n = str;
        this.f63588o = kVar;
    }

    public static f0 a(androidx.media3.common.util.j0 j0Var) {
        return b(j0Var, false, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static f0 b(androidx.media3.common.util.j0 j0Var, boolean z10, androidx.media3.container.g.k kVar) throws ParserException {
        int i10;
        androidx.media3.container.g.C0084g c0084gT;
        try {
            if (z10) {
                j0Var.X(4);
            } else {
                j0Var.X(21);
            }
            int iH = j0Var.H() & 3;
            int iH2 = j0Var.H();
            int iF = j0Var.f();
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < iH2; i13++) {
                j0Var.X(1);
                int iP = j0Var.P();
                for (int i14 = 0; i14 < iP; i14++) {
                    int iP2 = j0Var.P();
                    i12 += iP2 + 4;
                    j0Var.X(iP2);
                }
            }
            j0Var.W(iF);
            byte[] bArr = new byte[i12];
            androidx.media3.container.g.k kVar2 = kVar;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            int i18 = -1;
            int i19 = -1;
            int i20 = -1;
            int i21 = -1;
            int i22 = -1;
            int i23 = -1;
            int i24 = -1;
            float f10 = 1.0f;
            String strF = null;
            int i25 = 0;
            int i26 = 0;
            while (i25 < iH2) {
                int iH3 = j0Var.H() & 63;
                int iP3 = j0Var.P();
                int i27 = i11;
                androidx.media3.container.g.k kVarY = kVar2;
                while (i27 < iP3) {
                    int iP4 = j0Var.P();
                    byte[] bArr2 = androidx.media3.container.g.f10281a;
                    int i28 = iH2;
                    System.arraycopy(bArr2, i11, bArr, i26, bArr2.length);
                    int length = i26 + bArr2.length;
                    System.arraycopy(j0Var.e(), j0Var.f(), bArr, length, iP4);
                    if (iH3 == 32 && i27 == 0) {
                        kVarY = androidx.media3.container.g.y(bArr, length, length + iP4);
                        i10 = i11;
                        iP3 = iP3;
                    } else if (iH3 == 33 && i27 == 0) {
                        androidx.media3.container.g.h hVarU = androidx.media3.container.g.u(bArr, length, length + iP4, kVarY);
                        int i29 = hVarU.f10315b + 1;
                        int i30 = hVarU.f10321h;
                        int i31 = hVarU.f10322i;
                        i18 = hVarU.f10318e + 8;
                        i19 = hVarU.f10319f + 8;
                        int i32 = hVarU.f10325l;
                        int i33 = hVarU.f10326m;
                        int i34 = hVarU.f10327n;
                        float f11 = hVarU.f10323j;
                        int i35 = hVarU.f10324k;
                        androidx.media3.container.g.c cVar = hVarU.f10316c;
                        if (cVar != null) {
                            strF = androidx.media3.common.util.j.f(cVar.f10290a, cVar.f10291b, cVar.f10292c, cVar.f10293d, cVar.f10294e, cVar.f10295f);
                        }
                        i15 = i29;
                        i16 = i30;
                        i10 = 0;
                        i20 = i32;
                        i17 = i31;
                        i24 = i35;
                        f10 = f11;
                        i22 = i34;
                        i21 = i33;
                    } else {
                        iP3 = iP3;
                        if (iH3 != 39 || i27 != 0 || (c0084gT = androidx.media3.container.g.t(bArr, length, length + iP4)) == null || kVarY == null) {
                            i10 = 0;
                        } else {
                            i10 = 0;
                            i23 = c0084gT.f10308d == ((androidx.media3.container.g.a) kVarY.f10334b.get(0)).f10286b ? 4 : 5;
                        }
                    }
                    i26 = length + iP4;
                    j0Var.X(iP4);
                    i27++;
                    i11 = i10;
                    iH2 = i28;
                    iP3 = iP3;
                }
                i25++;
                kVar2 = kVarY;
            }
            return new f0(i12 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iH + 1, i15, i16, i17, i18, i19, i20, i21, i22, i23, f10, i24, strF, kVar2);
        } catch (ArrayIndexOutOfBoundsException e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Error parsing");
            sb2.append(z10 ? "L-HEVC config" : "HEVC config");
            throw ParserException.createForMalformedContainer(sb2.toString(), e10);
        }
    }

    public static f0 c(androidx.media3.common.util.j0 j0Var, androidx.media3.container.g.k kVar) {
        return b(j0Var, true, kVar);
    }
}
