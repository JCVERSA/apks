package k9;

import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;

final class d implements a {

    public final int f63828a;

    public final int f63829b;

    public final int f63830c;

    public final int f63831d;

    public final int f63832e;

    public final int f63833f;

    private d(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f63828a = i10;
        this.f63829b = i11;
        this.f63830c = i12;
        this.f63831d = i13;
        this.f63832e = i14;
        this.f63833f = i15;
    }

    public static d c(d0 d0Var) {
        int iQ = d0Var.q();
        d0Var.Q(12);
        int iQ2 = d0Var.q();
        int iQ3 = d0Var.q();
        int iQ4 = d0Var.q();
        d0Var.Q(4);
        int iQ5 = d0Var.q();
        int iQ6 = d0Var.q();
        d0Var.Q(8);
        return new d(iQ, iQ2, iQ3, iQ4, iQ5, iQ6);
    }

    public long a() {
        return p0.N0(this.f63832e, ((long) this.f63830c) * 1000000, this.f63831d);
    }

    public int b() {
        int i10 = this.f63828a;
        if (i10 == 1935960438) {
            return 2;
        }
        if (i10 == 1935963489) {
            return 1;
        }
        if (i10 == 1937012852) {
            return 3;
        }
        s.i("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(this.f63828a));
        return -1;
    }

    @Override
    public int getType() {
        return 1752331379;
    }
}
