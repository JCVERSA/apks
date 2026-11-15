package k0;

final class c0 {

    private final e1 f63417a;

    private int f63418b = -1;

    private float f63419c;

    public c0(e1 e1Var) {
        this.f63417a = e1Var;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001f  */
    private final float a(int i10, boolean z10, boolean z11, boolean z12) {
        boolean z13;
        int i11 = 1;
        if (z10) {
            int iA = e0.a(this.f63417a.h(), i10, z10);
            int iU = this.f63417a.u(iA);
            int iO = this.f63417a.o(iA);
            if (i10 == iU || i10 == iO) {
                z13 = true;
            } else {
                z13 = false;
            }
        } else {
            z13 = false;
        }
        int i12 = i10 * 4;
        if (!z12) {
            i11 = z13 ? 2 : 3;
        } else if (z13) {
            i11 = 0;
        }
        int i13 = i12 + i11;
        if (this.f63418b == i13) {
            return this.f63419c;
        }
        float fY = z12 ? this.f63417a.y(i10, z10) : this.f63417a.A(i10, z10);
        if (z11) {
            this.f63418b = i13;
            this.f63419c = fY;
        }
        return fY;
    }

    public final float b(int i10) {
        return a(i10, false, false, true);
    }

    public final float c(int i10) {
        return a(i10, true, true, true);
    }

    public final float d(int i10) {
        return a(i10, false, false, false);
    }

    public final float e(int i10) {
        return a(i10, true, true, false);
    }
}
