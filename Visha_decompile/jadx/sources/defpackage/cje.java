package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzfww;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;

public final class cje implements c9e {
    public final fje a = new fje(null, 0, MimeTypes.AUDIO_AC4);
    public final u4h b = new u4h(16384);
    public boolean c;

    @Override
    public final void b(long j, long j2) {
        this.c = false;
        this.a.zze();
    }

    @Override
    public final int d(d9e d9eVar, y9e y9eVar) {
        u4h u4hVar = this.b;
        int iB = d9eVar.b(u4hVar.n(), 0, 16384);
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
        int i;
        boolean z = true;
        u4h u4hVar = new u4h(10);
        int i2 = 0;
        while (true) {
            m8e m8eVar = (m8e) d9eVar;
            m8eVar.e(u4hVar.n(), 0, 10, false);
            u4hVar.l(0);
            if (u4hVar.I() != 4801587) {
                break;
            }
            u4hVar.m(3);
            int iF = u4hVar.F();
            i2 += iF + 10;
            m8eVar.k(iF, false);
            z = true;
        }
        d9eVar.zzj();
        m8e m8eVar2 = (m8e) d9eVar;
        m8eVar2.k(i2, false);
        int i3 = 0;
        int i4 = i2;
        while (true) {
            int i5 = 7;
            m8eVar2.e(u4hVar.n(), 0, 7, false);
            u4hVar.l(0);
            int iK = u4hVar.K();
            if (iK == 44096 || iK == 44097) {
                i3 += z ? 1 : 0;
                if (i3 >= 4) {
                    return z;
                }
                byte[] bArrN = u4hVar.n();
                int[] iArr = a8e.a;
                if (bArrN.length < 7) {
                    i = -1;
                } else {
                    int i6 = (bArrN[3] & 255) | ((bArrN[2] & 255) << 8);
                    if (i6 == 65535) {
                        i6 = ((bArrN[4] & 255) << 16) | ((bArrN[5] & 255) << 8) | (bArrN[6] & 255);
                    } else {
                        i5 = 4;
                    }
                    if (iK == 44097) {
                        i5 += 2;
                    }
                    i = i6 + i5;
                }
                if (i == -1) {
                    return false;
                }
                m8eVar2.k(i - 7, false);
                z = true;
            } else {
                d9eVar.zzj();
                i4 += z ? 1 : 0;
                if (i4 - i2 >= 8192) {
                    return false;
                }
                m8eVar2.k(i4, false);
                i3 = 0;
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
