package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.util.Collections;
import java.util.List;

public final class kje implements lje {
    public final List a;
    public final rae[] c;
    public boolean d;
    public int e;
    public int f;
    public final String b = MimeTypes.VIDEO_MP2T;
    public long g = C.TIME_UNSET;

    public kje(List list, String str) {
        this.a = list;
        this.c = new rae[list.size()];
    }

    @Override
    public final void a(u4h u4hVar) {
        if (this.d) {
            if (this.e != 2 || d(u4hVar, 32)) {
                if (this.e != 1 || d(u4hVar, 0)) {
                    int iW = u4hVar.w();
                    int iU = u4hVar.u();
                    for (rae raeVar : this.c) {
                        u4hVar.l(iW);
                        raeVar.d(u4hVar, iU);
                    }
                    this.f += iU;
                }
            }
        }
    }

    @Override
    public final void b(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.d = true;
        this.g = j;
        this.f = 0;
        this.e = 2;
    }

    @Override
    public final void c(f9e f9eVar, cle cleVar) {
        int i = 0;
        while (true) {
            rae[] raeVarArr = this.c;
            if (i >= raeVarArr.length) {
                return;
            }
            zke zkeVar = (zke) this.a.get(i);
            cleVar.c();
            rae raeVarJ = f9eVar.j(cleVar.a(), 3);
            gpj gpjVar = new gpj();
            gpjVar.o(cleVar.b());
            gpjVar.e(this.b);
            gpjVar.E(MimeTypes.APPLICATION_DVBSUBS);
            gpjVar.p(Collections.singletonList(zkeVar.b));
            gpjVar.s(zkeVar.a);
            raeVarJ.f(gpjVar.K());
            raeVarArr[i] = raeVarJ;
            i++;
        }
    }

    public final boolean d(u4h u4hVar, int i) {
        if (u4hVar.u() == 0) {
            return false;
        }
        if (u4hVar.G() != i) {
            this.d = false;
        }
        this.e--;
        return this.d;
    }

    @Override
    public final void zzc(boolean z) {
        if (this.d) {
            n7g.f(this.g != C.TIME_UNSET);
            for (rae raeVar : this.c) {
                raeVar.g(this.g, 1, this.f, 0, null);
            }
            this.d = false;
        }
    }

    @Override
    public final void zze() {
        this.d = false;
        this.g = C.TIME_UNSET;
    }
}
