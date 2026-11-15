package defpackage;

import java.util.Arrays;

public abstract class k9e {
    public static hre a(d9e d9eVar, boolean z) {
        hre hreVarA = new s9e().a(d9eVar, z ? null : bde.a);
        if (hreVarA == null || hreVarA.a() == 0) {
            return null;
        }
        return hreVarA;
    }

    public static m9e b(u4h u4hVar) {
        u4hVar.m(1);
        int I = u4hVar.I();
        long jW = u4hVar.w();
        long j = I;
        int i = I / 18;
        long[] jArrCopyOf = new long[i];
        long[] jArrCopyOf2 = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            long jN = u4hVar.N();
            if (jN == -1) {
                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i2);
                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i2);
                break;
            }
            jArrCopyOf[i2] = jN;
            jArrCopyOf2[i2] = u4hVar.N();
            u4hVar.m(2);
        }
        u4hVar.m((int) ((jW + j) - ((long) u4hVar.w())));
        return new m9e(jArrCopyOf, jArrCopyOf2);
    }
}
