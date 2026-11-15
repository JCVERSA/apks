package m2;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;

final class d implements a {

    public final int f66216a;

    public final int f66217b;

    public final int f66218c;

    public final int f66219d;

    public final int f66220e;

    public final int f66221f;

    public final int f66222g;

    private d(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f66216a = i10;
        this.f66217b = i11;
        this.f66218c = i12;
        this.f66219d = i13;
        this.f66220e = i14;
        this.f66221f = i15;
        this.f66222g = i16;
    }

    public static d c(j0 j0Var) {
        int iU = j0Var.u();
        j0Var.X(12);
        int iU2 = j0Var.u();
        int iU3 = j0Var.u();
        int iU4 = j0Var.u();
        j0Var.X(4);
        int iU5 = j0Var.u();
        int iU6 = j0Var.u();
        j0Var.X(4);
        return new d(iU, iU2, iU3, iU4, iU5, iU6, j0Var.u());
    }

    public long a() {
        return a1.e1(this.f66220e, ((long) this.f66218c) * 1000000, this.f66219d);
    }

    public int b() {
        int i10 = this.f66216a;
        if (i10 == 1935960438) {
            return 2;
        }
        if (i10 == 1935963489) {
            return 1;
        }
        if (i10 == 1937012852) {
            return 3;
        }
        u.h("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(this.f66216a));
        return -1;
    }

    @Override
    public int getType() {
        return 1752331379;
    }
}
