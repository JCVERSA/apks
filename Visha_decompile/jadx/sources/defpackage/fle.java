package defpackage;

import androidx.media3.common.MimeTypes;
import java.util.List;

public final class fle {
    public final List a;
    public final String b = MimeTypes.VIDEO_MP2T;
    public final rae[] c;

    public fle(List list, String str) {
        this.a = list;
        this.c = new rae[list.size()];
    }

    public final void a(long j, u4h u4hVar) {
        if (u4hVar.u() < 9) {
            return;
        }
        int iA = u4hVar.A();
        int iA2 = u4hVar.A();
        int iG = u4hVar.G();
        if (iA == 434 && iA2 == 1195456820 && iG == 3) {
            j8e.b(j, u4hVar, this.c);
        }
    }

    public final void b(f9e f9eVar, cle cleVar) {
        int i = 0;
        while (true) {
            rae[] raeVarArr = this.c;
            if (i >= raeVarArr.length) {
                return;
            }
            cleVar.c();
            rae raeVarJ = f9eVar.j(cleVar.a(), 3);
            erj erjVar = (erj) this.a.get(i);
            String str = erjVar.o;
            boolean z = true;
            if (!MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str)) {
                z = false;
            }
            n7g.e(z, "Invalid closed caption MIME type provided: ".concat(String.valueOf(str)));
            gpj gpjVar = new gpj();
            gpjVar.o(cleVar.b());
            gpjVar.e(this.b);
            gpjVar.E(str);
            gpjVar.G(erjVar.e);
            gpjVar.s(erjVar.d);
            gpjVar.u0(erjVar.J);
            gpjVar.p(erjVar.r);
            raeVarJ.f(gpjVar.K());
            raeVarArr[i] = raeVarJ;
            i++;
        }
    }
}
