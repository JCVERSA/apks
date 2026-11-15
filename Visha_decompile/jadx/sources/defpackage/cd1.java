package defpackage;

public final class cd1 extends ad1 {
    public final boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cd1(sc5 sc5Var, boolean z) {
        super(sc5Var);
        y45.j(sc5Var, "writer");
        this.c = z;
    }

    @Override
    public void d(byte b) {
        boolean z = this.c;
        String strF = zdb.f(zdb.b(b));
        if (z) {
            m(strF);
        } else {
            j(strF);
        }
    }

    @Override
    public void h(int i) {
        boolean z = this.c;
        String unsignedString = Integer.toUnsignedString(keb.b(i));
        if (z) {
            m(unsignedString);
        } else {
            j(unsignedString);
        }
    }

    @Override
    public void i(long j) {
        boolean z = this.c;
        String unsignedString = Long.toUnsignedString(qeb.b(j));
        if (z) {
            m(unsignedString);
        } else {
            j(unsignedString);
        }
    }

    @Override
    public void k(short s) {
        boolean z = this.c;
        String strF = bfb.f(bfb.b(s));
        if (z) {
            m(strF);
        } else {
            j(strF);
        }
    }
}
