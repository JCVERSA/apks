package defpackage;

import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.k;
import java.util.List;

public final class ekb {
    public final List a;
    public final fva[] b;

    public ekb(List list) {
        this.a = list;
        this.b = new fva[list.size()];
    }

    public void a(long j, qw7 qw7Var) {
        if (qw7Var.a() < 9) {
            return;
        }
        int iN = qw7Var.n();
        int iN2 = qw7Var.n();
        int iC = qw7Var.C();
        if (iN == 434 && iN2 == 1195456820 && iC == 3) {
            is0.b(j, qw7Var, this.b);
        }
    }

    public void b(qk3 qk3Var, nab.d dVar) {
        for (int i = 0; i < this.b.length; i++) {
            dVar.a();
            fva fvaVarTrack = qk3Var.track(dVar.c(), 3);
            k kVar = (k) this.a.get(i);
            String str = kVar.m;
            zi.b(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption mime type provided: " + str);
            fvaVarTrack.b(new k.b().S(dVar.b()).e0(str).g0(kVar.e).V(kVar.d).F(kVar.E).T(kVar.o).E());
            this.b[i] = fvaVarTrack;
        }
    }
}
