package defpackage;

import androidx.media3.common.MimeTypes;
import java.util.Arrays;

public final class dge extends mge {
    public n9e n;
    public cge o;

    public static boolean j(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override
    public final long a(u4h u4hVar) {
        if (!j(u4hVar.n())) {
            return -1L;
        }
        int i = (u4hVar.n()[2] & 255) >> 4;
        if (i == 6) {
            u4hVar.m(4);
            u4hVar.R();
        } else if (i == 7) {
            i = 7;
            u4hVar.m(4);
            u4hVar.R();
        }
        int iA = j9e.a(u4hVar, i);
        u4hVar.l(0);
        return iA;
    }

    @Override
    public final void b(boolean z) {
        super.b(z);
        if (z) {
            this.n = null;
            this.o = null;
        }
    }

    @Override
    public final boolean c(u4h u4hVar, long j, jge jgeVar) {
        byte[] bArrN = u4hVar.n();
        n9e n9eVar = this.n;
        if (n9eVar == null) {
            n9e n9eVar2 = new n9e(bArrN, 17);
            this.n = n9eVar2;
            gpj gpjVarB = n9eVar2.c(Arrays.copyOfRange(bArrN, 9, u4hVar.x()), null).b();
            gpjVarB.e(MimeTypes.AUDIO_OGG);
            jgeVar.a = gpjVarB.K();
            return true;
        }
        if ((bArrN[0] & 127) == 3) {
            m9e m9eVarB = k9e.b(u4hVar);
            n9e n9eVarF = n9eVar.f(m9eVarB);
            this.n = n9eVarF;
            this.o = new cge(n9eVarF, m9eVarB);
            return true;
        }
        if (!j(bArrN)) {
            return true;
        }
        cge cgeVar = this.o;
        if (cgeVar != null) {
            cgeVar.c(j);
            jgeVar.b = this.o;
        }
        jgeVar.a.getClass();
        return false;
    }
}
