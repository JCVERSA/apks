package a0;

import android.content.Context;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.archiver.NArc;

public final class v0 extends w0.c {

    public final int f126e;

    public final h0.h f127f;

    public final String f128g;

    public g0.y f129h;

    public NArc f130i = null;

    public class a implements g0.i.c {
        public a() {
        }

        @Override
        public final void b(g0.i iVar) {
            NArc nArc = v0.this.f130i;
            if (nArc != null) {
                nArc.a();
            }
        }
    }

    public v0(int i2, String str, h0.h hVar) {
        this.f126e = i2;
        this.f127f = hVar;
        this.f128g = str;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0066 A[PHI: r0
      0x0066: PHI (r0v4 g0.y) = (r0v3 g0.y), (r0v10 g0.y) binds: [B:36:0x0064, B:22:0x0048] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public final w0.a.b f() {
        g0.y yVar;
        h0.h hVar = this.f127f;
        if (!hVar.g()) {
            return null;
        }
        try {
            String str = hVar.f1108c;
            NArc nArcK = NArc.k(str, c.u(str), null);
            this.f130i = nArcK;
            if ((nArcK != null ? nArcK.n(this.f128g) : -1) == 0) {
                f0.a.m().a();
                b0 b0Var = new b0(this.f126e);
                NArc nArc = this.f130i;
                if (nArc != null) {
                    nArc.close();
                }
                g0.y yVar2 = this.f129h;
                if (yVar2 != null) {
                    yVar2.f();
                }
                return b0Var;
            }
            NArc nArc2 = this.f130i;
            if (nArc2 != null) {
                nArc2.close();
            }
            yVar = this.f129h;
            if (yVar != null) {
                yVar.f();
            }
        } catch (Exception unused) {
            NArc nArc3 = this.f130i;
            if (nArc3 != null) {
                nArc3.close();
            }
            yVar = this.f129h;
            if (yVar != null) {
                yVar.f();
            }
        } catch (Throwable th) {
            NArc nArc4 = this.f130i;
            if (nArc4 != null) {
                nArc4.close();
            }
            g0.y yVar3 = this.f129h;
            if (yVar3 != null) {
                yVar3.f();
            }
            throw th;
        }
        return null;
    }

    @Override
    public final int j() {
        return 103;
    }

    @Override
    public final void k() {
        g0.y yVar = this.f129h;
        if (yVar != null) {
            yVar.e();
        }
    }

    @Override
    public final void l(Context context) {
        if (context == null) {
            return;
        }
        g0.y yVar = new g0.y(((ZArchiver) context).f1445h, context, R.string.MES_COMPRESS_FILE_PROCESS, 0);
        this.f129h = yVar;
        yVar.f962c = 0;
        yVar.f960a = new a();
        yVar.t();
    }
}
