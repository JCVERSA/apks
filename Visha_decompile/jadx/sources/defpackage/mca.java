package defpackage;

import java.util.Enumeration;
import java.util.NoSuchElementException;

public class mca extends j1 {
    public g1 b;
    public oa c;
    public cqc d;
    public mna e;
    public mna f;
    public s1 g;
    public gk3 h;

    public static class b extends j1 {
        public s1 b;
        public gk3 c;

        public b(s1 s1Var) {
            if (s1Var.size() >= 2 && s1Var.size() <= 3) {
                this.b = s1Var;
                return;
            }
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }

        public static b n(Object obj) {
            if (obj instanceof b) {
                return (b) obj;
            }
            if (obj != null) {
                return new b(s1.z(obj));
            }
            return null;
        }

        @Override
        public p1 j() {
            return this.b;
        }

        public gk3 m() {
            if (this.c == null && this.b.size() == 3) {
                this.c = gk3.t(this.b.A(2));
            }
            return this.c;
        }

        public g1 o() {
            return g1.y(this.b.A(0));
        }

        public boolean p() {
            return this.b.size() == 3;
        }
    }

    public static class c implements Enumeration {
        public c() {
        }

        @Override
        public boolean hasMoreElements() {
            return false;
        }

        @Override
        public Object nextElement() {
            throw new NoSuchElementException("Empty Enumeration");
        }
    }

    public static class d implements Enumeration {
        public final Enumeration a;

        public d(Enumeration enumeration) {
            this.a = enumeration;
        }

        @Override
        public boolean hasMoreElements() {
            return this.a.hasMoreElements();
        }

        @Override
        public Object nextElement() {
            return b.n(this.a.nextElement());
        }
    }

    public mca(s1 s1Var) {
        if (s1Var.size() < 3 || s1Var.size() > 7) {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
        int i = 0;
        if (s1Var.A(0) instanceof g1) {
            this.b = g1.y(s1Var.A(0));
            i = 1;
        } else {
            this.b = null;
        }
        this.c = oa.o(s1Var.A(i));
        this.d = cqc.o(s1Var.A(i + 1));
        int i2 = i + 3;
        this.e = mna.n(s1Var.A(i + 2));
        if (i2 < s1Var.size() && ((s1Var.A(i2) instanceof a2) || (s1Var.A(i2) instanceof c1) || (s1Var.A(i2) instanceof mna))) {
            this.f = mna.n(s1Var.A(i2));
            i2 = i + 4;
        }
        if (i2 < s1Var.size() && !(s1Var.A(i2) instanceof y1)) {
            this.g = s1.z(s1Var.A(i2));
            i2++;
        }
        if (i2 >= s1Var.size() || !(s1Var.A(i2) instanceof y1)) {
            return;
        }
        this.h = gk3.t(s1.y((y1) s1Var.A(i2), true));
    }

    public static mca n(Object obj) {
        if (obj instanceof mca) {
            return (mca) obj;
        }
        if (obj != null) {
            return new mca(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(7);
        g1 g1Var = this.b;
        if (g1Var != null) {
            y0Var.a(g1Var);
        }
        y0Var.a(this.c);
        y0Var.a(this.d);
        y0Var.a(this.e);
        mna mnaVar = this.f;
        if (mnaVar != null) {
            y0Var.a(mnaVar);
        }
        s1 s1Var = this.g;
        if (s1Var != null) {
            y0Var.a(s1Var);
        }
        gk3 gk3Var = this.h;
        if (gk3Var != null) {
            y0Var.a(new dq1(0, gk3Var));
        }
        return new aq1(y0Var);
    }

    public gk3 m() {
        return this.h;
    }

    public cqc o() {
        return this.d;
    }

    public mna p() {
        return this.f;
    }

    public Enumeration q() {
        s1 s1Var = this.g;
        return s1Var == null ? new c() : new d(s1Var.B());
    }

    public b[] r() {
        s1 s1Var = this.g;
        if (s1Var == null) {
            return new b[0];
        }
        int size = s1Var.size();
        b[] bVarArr = new b[size];
        for (int i = 0; i < size; i++) {
            bVarArr[i] = b.n(this.g.A(i));
        }
        return bVarArr;
    }

    public oa s() {
        return this.c;
    }

    public mna t() {
        return this.e;
    }
}
