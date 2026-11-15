package m2;

import androidx.media3.common.util.j0;

final class c implements a {

    public final int f66212a;

    public final int f66213b;

    public final int f66214c;

    public final int f66215d;

    private c(int i10, int i11, int i12, int i13) {
        this.f66212a = i10;
        this.f66213b = i11;
        this.f66214c = i12;
        this.f66215d = i13;
    }

    public static c b(j0 j0Var) {
        int iU = j0Var.u();
        j0Var.X(8);
        int iU2 = j0Var.u();
        int iU3 = j0Var.u();
        j0Var.X(4);
        int iU4 = j0Var.u();
        j0Var.X(12);
        return new c(iU, iU2, iU3, iU4);
    }

    public boolean a() {
        return (this.f66213b & 16) == 16;
    }

    @Override
    public int getType() {
        return 1751742049;
    }
}
