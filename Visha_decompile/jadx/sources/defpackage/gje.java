package defpackage;

import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzfww;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;

public final class gje implements c9e {
    public final u4h c;
    public final p3h d;
    public f9e e;
    public long f;
    public boolean h;
    public boolean i;
    public final hje a = new hje(true, null, 0, "audio/mp4a-latm");
    public final u4h b = new u4h(2048);
    public long g = -1;

    public gje(int i) {
        u4h u4hVar = new u4h(10);
        this.c = u4hVar;
        byte[] bArrN = u4hVar.n();
        this.d = new p3h(bArrN, bArrN.length);
    }

    @Override
    public final void b(long j, long j2) {
        this.h = false;
        this.a.zze();
        this.f = j2;
    }

    @Override
    public final int d(d9e d9eVar, y9e y9eVar) {
        n7g.b(this.e);
        u4h u4hVar = this.b;
        int iB = d9eVar.b(u4hVar.n(), 0, 2048);
        if (!this.i) {
            this.e.i(new jae(C.TIME_UNSET, 0L));
            this.i = true;
        }
        if (iB == -1) {
            return -1;
        }
        u4hVar.l(0);
        u4hVar.k(iB);
        if (!this.h) {
            this.a.b(this.f, 4);
            this.h = true;
        }
        this.a.a(u4hVar);
        return 0;
    }

    @Override
    public final boolean e(d9e d9eVar) throws EOFException, InterruptedIOException {
        u4h u4hVar;
        int i = 0;
        while (true) {
            u4hVar = this.c;
            m8e m8eVar = (m8e) d9eVar;
            m8eVar.e(u4hVar.n(), 0, 10, false);
            u4hVar.l(0);
            if (u4hVar.I() != 4801587) {
                break;
            }
            u4hVar.m(3);
            int iF = u4hVar.F();
            i += iF + 10;
            m8eVar.k(iF, false);
        }
        d9eVar.zzj();
        m8e m8eVar2 = (m8e) d9eVar;
        m8eVar2.k(i, false);
        if (this.g == -1) {
            this.g = i;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        do {
            m8eVar2.e(u4hVar.n(), 0, 2, false);
            u4hVar.l(0);
            if (hje.d(u4hVar.K())) {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                m8eVar2.e(u4hVar.n(), 0, 4, false);
                p3h p3hVar = this.d;
                p3hVar.l(14);
                int iD = p3hVar.d(13);
                if (iD <= 6) {
                    i4++;
                    d9eVar.zzj();
                    m8eVar2.k(i4, false);
                } else {
                    m8eVar2.k(iD - 6, false);
                    i3 += iD;
                }
            } else {
                i4++;
                d9eVar.zzj();
                m8eVar2.k(i4, false);
            }
            i2 = 0;
            i3 = 0;
        } while (i4 - i < 8192);
        return false;
    }

    @Override
    public final void f(f9e f9eVar) {
        this.e = f9eVar;
        this.a.c(f9eVar, new cle(Integer.MIN_VALUE, 0, 1));
        f9eVar.zzG();
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
