package defpackage;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.k;

public final class nx4 implements m83 {
    public fva b;
    public boolean c;
    public int e;
    public int f;
    public final qw7 a = new qw7(10);
    public long d = C.TIME_UNSET;

    @Override
    public void a(qw7 qw7Var) {
        zi.i(this.b);
        if (this.c) {
            int iA = qw7Var.a();
            int i = this.f;
            if (i < 10) {
                int iMin = Math.min(iA, 10 - i);
                System.arraycopy(qw7Var.d(), qw7Var.e(), this.a.d(), this.f, iMin);
                if (this.f + iMin == 10) {
                    this.a.O(0);
                    if (73 != this.a.C() || 68 != this.a.C() || 51 != this.a.C()) {
                        op5.i("Id3Reader", "Discarding invalid ID3 tag");
                        this.c = false;
                        return;
                    } else {
                        this.a.P(3);
                        this.e = this.a.B() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iA, this.e - this.f);
            this.b.d(qw7Var, iMin2);
            this.f += iMin2;
        }
    }

    @Override
    public void b() {
        int i;
        zi.i(this.b);
        if (this.c && (i = this.e) != 0 && this.f == i) {
            long j = this.d;
            if (j != C.TIME_UNSET) {
                this.b.e(j, 1, i, 0, null);
            }
            this.c = false;
        }
    }

    @Override
    public void c(qk3 qk3Var, nab.d dVar) {
        dVar.a();
        fva fvaVarTrack = qk3Var.track(dVar.c(), 5);
        this.b = fvaVarTrack;
        fvaVarTrack.b(new k.b().S(dVar.b()).e0(MimeTypes.APPLICATION_ID3).E());
    }

    @Override
    public void packetStarted(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.c = true;
        if (j != C.TIME_UNSET) {
            this.d = j;
        }
        this.e = 0;
        this.f = 0;
    }

    @Override
    public void seek() {
        this.c = false;
        this.d = C.TIME_UNSET;
    }
}
