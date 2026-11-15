package defpackage;

import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzfww;
import java.util.List;

public final class mae implements c9e {
    public final int a;
    public final int b;
    public final String c;
    public int d;
    public int e;
    public f9e f;
    public rae g;

    public mae(int i, int i2, String str) {
        this.a = i;
        this.b = i2;
        this.c = str;
    }

    @Override
    public final void b(long j, long j2) {
        if (j == 0 || this.e == 1) {
            this.e = 1;
            this.d = 0;
        }
    }

    @Override
    public final int d(d9e d9eVar, y9e y9eVar) {
        int i = this.e;
        if (i != 1) {
            if (i == 2) {
                return -1;
            }
            throw new IllegalStateException();
        }
        rae raeVar = this.g;
        raeVar.getClass();
        int iA = raeVar.a(d9eVar, 1024, true);
        if (iA == -1) {
            this.e = 2;
            this.g.g(0L, 1, this.d, 0, null);
            this.d = 0;
        } else {
            this.d += iA;
        }
        return 0;
    }

    @Override
    public final boolean e(d9e d9eVar) {
        int i = this.a;
        n7g.f((i == -1 || this.b == -1) ? false : true);
        int i2 = this.b;
        u4h u4hVar = new u4h(i2);
        ((m8e) d9eVar).e(u4hVar.n(), 0, i2, false);
        return u4hVar.K() == i;
    }

    @Override
    public final void f(f9e f9eVar) {
        this.f = f9eVar;
        rae raeVarJ = f9eVar.j(1024, 4);
        this.g = raeVarJ;
        gpj gpjVar = new gpj();
        String str = this.c;
        gpjVar.e(str);
        gpjVar.E(str);
        raeVarJ.f(gpjVar.K());
        this.f.zzG();
        this.f.i(new nae(C.TIME_UNSET));
        this.e = 1;
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
