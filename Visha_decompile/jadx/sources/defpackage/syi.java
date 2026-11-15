package defpackage;

import java.util.List;

public final class syi {
    public final List a;
    public final List b;

    public syi(int i, int i2, ryi ryiVar) {
        this.a = cyi.c(i);
        this.b = cyi.c(i2);
    }

    public final syi a(qyi qyiVar) {
        this.b.add(qyiVar);
        return this;
    }

    public final syi b(qyi qyiVar) {
        this.a.add(qyiVar);
        return this;
    }

    public final tyi c() {
        return new tyi(this.a, this.b, null);
    }
}
