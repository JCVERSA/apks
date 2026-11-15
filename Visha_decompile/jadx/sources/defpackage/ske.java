package defpackage;

import androidx.media3.common.MimeTypes;
import java.util.List;

public final class ske {
    public final List a;
    public final rae[] c;
    public final String b = MimeTypes.VIDEO_MP2T;
    public final z2i d = new z2i(new b2i() {
        @Override
        public final void a(long j, u4h u4hVar) {
            j8e.a(j, u4hVar, this.a.c);
        }
    });

    public ske(List list, String str) {
        this.a = list;
        this.c = new rae[list.size()];
    }

    public final void b() {
        this.d.d();
    }

    public final void c(long j, u4h u4hVar) {
        this.d.b(j, u4hVar);
    }

    public final void d(f9e f9eVar, cle cleVar) {
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
            String strB = erjVar.a;
            if (strB == null) {
                strB = cleVar.b();
            }
            gpj gpjVar = new gpj();
            gpjVar.o(strB);
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

    public final void e() {
        this.d.d();
    }

    public final void f(int i) {
        this.d.e(i);
    }
}
