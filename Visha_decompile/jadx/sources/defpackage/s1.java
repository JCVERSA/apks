package defpackage;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;
import okhttp3.HttpUrl;

public abstract class s1 extends p1 implements Iterable {
    public static final d2 c = new a(s1.class, 16);
    public x0[] b;

    public static class a extends d2 {
        public a(Class cls, int i) {
            super(cls, i);
        }

        @Override
        public p1 c(s1 s1Var) {
            return s1Var;
        }
    }

    public class b implements Enumeration {
        public int a = 0;

        public b() {
        }

        @Override
        public boolean hasMoreElements() {
            return this.a < s1.this.b.length;
        }

        @Override
        public Object nextElement() {
            int i = this.a;
            x0[] x0VarArr = s1.this.b;
            if (i >= x0VarArr.length) {
                throw new NoSuchElementException();
            }
            this.a = i + 1;
            return x0VarArr[i];
        }
    }

    public s1() {
        this.b = y0.d;
    }

    public static s1 y(y1 y1Var, boolean z) {
        return (s1) c.e(y1Var, z);
    }

    public static s1 z(Object obj) {
        if (obj == null || (obj instanceof s1)) {
            return (s1) obj;
        }
        if (obj instanceof x0) {
            p1 p1VarJ = ((x0) obj).j();
            if (p1VarJ instanceof s1) {
                return (s1) p1VarJ;
            }
        } else if (obj instanceof byte[]) {
            try {
                return (s1) c.b((byte[]) obj);
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct sequence from byte[]: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    public x0 A(int i) {
        return this.b[i];
    }

    public Enumeration B() {
        return new b();
    }

    public abstract s0 C();

    public abstract a1 D();

    public abstract m1 E();

    public abstract t1 F();

    public x0[] G() {
        return this.b;
    }

    @Override
    public int hashCode() {
        int length = this.b.length;
        int iHashCode = length + 1;
        while (true) {
            length--;
            if (length < 0) {
                return iHashCode;
            }
            iHashCode = (iHashCode * 257) ^ this.b[length].j().hashCode();
        }
    }

    public Iterator iterator() {
        return new ci.a(this.b);
    }

    @Override
    public boolean m(p1 p1Var) {
        if (!(p1Var instanceof s1)) {
            return false;
        }
        s1 s1Var = (s1) p1Var;
        int size = size();
        if (s1Var.size() != size) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            p1 p1VarJ = this.b[i].j();
            p1 p1VarJ2 = s1Var.b[i].j();
            if (p1VarJ != p1VarJ2 && !p1VarJ.m(p1VarJ2)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean o() {
        return true;
    }

    public int size() {
        return this.b.length;
    }

    public String toString() {
        int size = size();
        if (size == 0) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('[');
        int i = 0;
        while (true) {
            stringBuffer.append(this.b[i]);
            i++;
            if (i >= size) {
                stringBuffer.append(']');
                return stringBuffer.toString();
            }
            stringBuffer.append(", ");
        }
    }

    @Override
    public p1 u() {
        return new aq1(this.b, false);
    }

    @Override
    public p1 v() {
        return new yq1(this.b, false);
    }

    public s0[] w() {
        int size = size();
        s0[] s0VarArr = new s0[size];
        for (int i = 0; i < size; i++) {
            s0VarArr[i] = s0.z(this.b[i]);
        }
        return s0VarArr;
    }

    public m1[] x() {
        int size = size();
        m1[] m1VarArr = new m1[size];
        for (int i = 0; i < size; i++) {
            m1VarArr[i] = m1.y(this.b[i]);
        }
        return m1VarArr;
    }

    public s1(x0 x0Var) {
        if (x0Var == null) {
            throw new NullPointerException("'element' cannot be null");
        }
        this.b = new x0[]{x0Var};
    }

    public s1(y0 y0Var) {
        if (y0Var == null) {
            throw new NullPointerException("'elementVector' cannot be null");
        }
        this.b = y0Var.g();
    }

    public s1(x0[] x0VarArr) {
        if (ci.C(x0VarArr)) {
            throw new NullPointerException("'elements' cannot be null, or contain null");
        }
        this.b = y0.b(x0VarArr);
    }

    public s1(x0[] x0VarArr, boolean z) {
        this.b = z ? y0.b(x0VarArr) : x0VarArr;
    }
}
