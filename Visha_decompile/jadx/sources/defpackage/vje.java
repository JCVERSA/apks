package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;

public final class vje implements lje {
    public rae c;
    public boolean d;
    public int f;
    public int g;
    public final String a = MimeTypes.VIDEO_MP2T;
    public final u4h b = new u4h(10);
    public long e = C.TIME_UNSET;

    public vje(String str) {
    }

    @Override
    public final void a(u4h u4hVar) {
        n7g.b(this.c);
        if (this.d) {
            int iU = u4hVar.u();
            int i = this.g;
            if (i < 10) {
                int iMin = Math.min(iU, 10 - i);
                byte[] bArrN = u4hVar.n();
                int iW = u4hVar.w();
                u4h u4hVar2 = this.b;
                System.arraycopy(bArrN, iW, u4hVar2.n(), this.g, iMin);
                if (this.g + iMin == 10) {
                    u4hVar2.l(0);
                    if (u4hVar2.G() != 73 || u4hVar2.G() != 68 || u4hVar2.G() != 51) {
                        zrg.f("Id3Reader", "Discarding invalid ID3 tag");
                        this.d = false;
                        return;
                    } else {
                        u4hVar2.m(3);
                        this.f = u4hVar2.F() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iU, this.f - this.g);
            this.c.d(u4hVar, iMin2);
            this.g += iMin2;
        }
    }

    @Override
    public final void b(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.d = true;
        this.e = j;
        this.f = 0;
        this.g = 0;
    }

    @Override
    public final void c(f9e f9eVar, cle cleVar) {
        cleVar.c();
        rae raeVarJ = f9eVar.j(cleVar.a(), 5);
        this.c = raeVarJ;
        gpj gpjVar = new gpj();
        gpjVar.o(cleVar.b());
        gpjVar.e(this.a);
        gpjVar.E(MimeTypes.APPLICATION_ID3);
        raeVarJ.f(gpjVar.K());
    }

    @Override
    public final void zzc(boolean z) {
        int i;
        n7g.b(this.c);
        if (this.d && (i = this.f) != 0 && this.g == i) {
            n7g.f(this.e != C.TIME_UNSET);
            this.c.g(this.e, 1, this.f, 0, null);
            this.d = false;
        }
    }

    @Override
    public final void zze() {
        this.d = false;
        this.e = C.TIME_UNSET;
    }
}
