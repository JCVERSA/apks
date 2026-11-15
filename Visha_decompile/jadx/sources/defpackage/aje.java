package defpackage;

import androidx.media3.common.C;
import com.google.android.gms.internal.ads.zzfww;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;

public final class aje implements c9e {
    public final bje a = new bje(null, 0, "audio/ac3");
    public final u4h b = new u4h(2786);
    public boolean c;

    @Override
    public final void b(long j, long j2) {
        this.c = false;
        this.a.zze();
    }

    @Override
    public final int d(d9e d9eVar, y9e y9eVar) {
        u4h u4hVar = this.b;
        int iB = d9eVar.b(u4hVar.n(), 0, 2786);
        if (iB == -1) {
            return -1;
        }
        u4hVar.l(0);
        u4hVar.k(iB);
        if (!this.c) {
            this.a.b(0L, 4);
            this.c = true;
        }
        this.a.a(u4hVar);
        return 0;
    }

    @Override
    public final boolean e(d9e d9eVar) throws EOFException, InterruptedIOException {
        u4h u4hVar = new u4h(10);
        int i = 0;
        while (true) {
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
        int i2 = 0;
        int i3 = i;
        while (true) {
            m8eVar2.e(u4hVar.n(), 0, 6, false);
            u4hVar.l(0);
            if (u4hVar.K() != 2935) {
                d9eVar.zzj();
                i3++;
                if (i3 - i >= 8192) {
                    return false;
                }
                m8eVar2.k(i3, false);
                i2 = 0;
            } else {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                int iB = w7e.b(u4hVar.n());
                if (iB == -1) {
                    return false;
                }
                m8eVar2.k(iB - 6, false);
            }
        }
    }

    @Override
    public final void f(f9e f9eVar) {
        this.a.c(f9eVar, new cle(Integer.MIN_VALUE, 0, 1));
        f9eVar.zzG();
        f9eVar.i(new jae(C.TIME_UNSET, 0L));
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
