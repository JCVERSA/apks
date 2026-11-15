package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;

public final class eke implements pke {
    public erj a;
    public fch b;
    public rae c;

    public eke(String str, String str2) {
        gpj gpjVar = new gpj();
        gpjVar.e(MimeTypes.VIDEO_MP2T);
        gpjVar.E(str);
        this.a = gpjVar.K();
    }

    @Override
    public final void a(u4h u4hVar) {
        n7g.b(this.b);
        int i = kfh.a;
        long jE = this.b.e();
        long jF = this.b.f();
        if (jE == C.TIME_UNSET || jF == C.TIME_UNSET) {
            return;
        }
        erj erjVar = this.a;
        if (jF != erjVar.t) {
            gpj gpjVarB = erjVar.b();
            gpjVarB.I(jF);
            erj erjVarK = gpjVarB.K();
            this.a = erjVarK;
            this.c.f(erjVarK);
        }
        int iU = u4hVar.u();
        this.c.d(u4hVar, iU);
        this.c.g(jE, 1, iU, 0, null);
    }

    @Override
    public final void b(fch fchVar, f9e f9eVar, cle cleVar) {
        this.b = fchVar;
        cleVar.c();
        rae raeVarJ = f9eVar.j(cleVar.a(), 5);
        this.c = raeVarJ;
        raeVarJ.f(this.a);
    }
}
