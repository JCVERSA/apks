package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.k;
import java.util.Collections;
import java.util.List;

public final class c43 implements m83 {
    public final List a;
    public final fva[] b;
    public boolean c;
    public int d;
    public int e;
    public long f = C.TIME_UNSET;

    public c43(List list) {
        this.a = list;
        this.b = new fva[list.size()];
    }

    @Override
    public void a(qw7 qw7Var) {
        if (this.c) {
            if (this.d != 2 || d(qw7Var, 32)) {
                if (this.d != 1 || d(qw7Var, 0)) {
                    int iE = qw7Var.e();
                    int iA = qw7Var.a();
                    for (fva fvaVar : this.b) {
                        qw7Var.O(iE);
                        fvaVar.d(qw7Var, iA);
                    }
                    this.e += iA;
                }
            }
        }
    }

    @Override
    public void b() {
        if (this.c) {
            if (this.f != C.TIME_UNSET) {
                for (fva fvaVar : this.b) {
                    fvaVar.e(this.f, 1, this.e, 0, null);
                }
            }
            this.c = false;
        }
    }

    @Override
    public void c(qk3 qk3Var, nab.d dVar) {
        for (int i = 0; i < this.b.length; i++) {
            nab.a aVar = (nab.a) this.a.get(i);
            dVar.a();
            fva fvaVarTrack = qk3Var.track(dVar.c(), 3);
            fvaVarTrack.b(new k.b().S(dVar.b()).e0(MimeTypes.APPLICATION_DVBSUBS).T(Collections.singletonList(aVar.c)).V(aVar.a).E());
            this.b[i] = fvaVarTrack;
        }
    }

    public final boolean d(qw7 qw7Var, int i) {
        if (qw7Var.a() == 0) {
            return false;
        }
        if (qw7Var.C() != i) {
            this.c = false;
        }
        this.d--;
        return this.c;
    }

    @Override
    public void packetStarted(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.c = true;
        if (j != C.TIME_UNSET) {
            this.f = j;
        }
        this.e = 0;
        this.d = 2;
    }

    @Override
    public void seek() {
        this.c = false;
        this.f = C.TIME_UNSET;
    }
}
