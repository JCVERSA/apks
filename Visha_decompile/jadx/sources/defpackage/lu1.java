package defpackage;

import com.google.android.exoplayer2.k;

public final class lu1 {
    public final String a;
    public final k b;
    public final k c;
    public final int d;
    public final int e;

    public lu1(String str, k kVar, k kVar2, int i, int i2) {
        zi.a(i == 0 || i2 == 0);
        this.a = zi.d(str);
        this.b = (k) zi.e(kVar);
        this.c = (k) zi.e(kVar2);
        this.d = i;
        this.e = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || lu1.class != obj.getClass()) {
            return false;
        }
        lu1 lu1Var = (lu1) obj;
        return this.d == lu1Var.d && this.e == lu1Var.e && this.a.equals(lu1Var.a) && this.b.equals(lu1Var.b) && this.c.equals(lu1Var.c);
    }

    public int hashCode() {
        return ((((((((527 + this.d) * 31) + this.e) * 31) + this.a.hashCode()) * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
    }
}
