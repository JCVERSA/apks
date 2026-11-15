package defpackage;

import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzfww;
import java.util.List;

public final class ege implements c9e {
    public f9e a;
    public mge b;
    public boolean c;

    public final boolean a(d9e d9eVar) {
        gge ggeVar = new gge();
        if (ggeVar.b(d9eVar, true) && (ggeVar.a & 2) == 2) {
            int iMin = Math.min(ggeVar.e, 8);
            u4h u4hVar = new u4h(iMin);
            d9eVar.i(u4hVar.n(), 0, iMin);
            u4hVar.l(0);
            if (u4hVar.u() >= 5 && u4hVar.G() == 127 && u4hVar.O() == 1179402563) {
                this.b = new dge();
            } else {
                u4hVar.l(0);
                try {
                    if (xae.d(1, u4hVar, true)) {
                        this.b = new oge();
                    } else {
                        u4hVar.l(0);
                        if (ige.j(u4hVar)) {
                            this.b = new ige();
                        }
                    }
                } catch (zzaz unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public final void b(long j, long j2) {
        mge mgeVar = this.b;
        if (mgeVar != null) {
            mgeVar.i(j, j2);
        }
    }

    @Override
    public final int d(d9e d9eVar, y9e y9eVar) throws zzaz {
        n7g.b(this.a);
        if (this.b == null) {
            if (!a(d9eVar)) {
                throw zzaz.zza("Failed to determine bitstream type", null);
            }
            d9eVar.zzj();
        }
        if (!this.c) {
            rae raeVarJ = this.a.j(0, 1);
            this.a.zzG();
            this.b.g(this.a, raeVarJ);
            this.c = true;
        }
        return this.b.d(d9eVar, y9eVar);
    }

    @Override
    public final boolean e(d9e d9eVar) {
        try {
            return a(d9eVar);
        } catch (zzaz unused) {
            return false;
        }
    }

    @Override
    public final void f(f9e f9eVar) {
        this.a = f9eVar;
    }

    @Override
    public final c9e zzc() {
        return this;
    }

    @Override
    public final List zzd() {
        return zzfww.zzn();
    }
}
