package k9;

import com.google.android.exoplayer2.util.d0;

final class c implements a {

    public final int f63824a;

    public final int f63825b;

    public final int f63826c;

    public final int f63827d;

    private c(int i10, int i11, int i12, int i13) {
        this.f63824a = i10;
        this.f63825b = i11;
        this.f63826c = i12;
        this.f63827d = i13;
    }

    public static c b(d0 d0Var) {
        int iQ = d0Var.q();
        d0Var.Q(8);
        int iQ2 = d0Var.q();
        int iQ3 = d0Var.q();
        d0Var.Q(4);
        int iQ4 = d0Var.q();
        d0Var.Q(12);
        return new c(iQ, iQ2, iQ3, iQ4);
    }

    public boolean a() {
        return (this.f63825b & 16) == 16;
    }

    @Override
    public int getType() {
        return 1751742049;
    }
}
