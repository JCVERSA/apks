package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class xk {
    public final int a;

    public static final class a extends xk {
        public final long b;
        public final List c;
        public final List d;

        public a(int i, long j) {
            super(i);
            this.b = j;
            this.c = new ArrayList();
            this.d = new ArrayList();
        }

        public void d(a aVar) {
            this.d.add(aVar);
        }

        public void e(b bVar) {
            this.c.add(bVar);
        }

        public a f(int i) {
            int size = this.d.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = (a) this.d.get(i2);
                if (aVar.a == i) {
                    return aVar;
                }
            }
            return null;
        }

        public b g(int i) {
            int size = this.c.size();
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = (b) this.c.get(i2);
                if (bVar.a == i) {
                    return bVar;
                }
            }
            return null;
        }

        @Override
        public String toString() {
            return xk.a(this.a) + " leaves: " + Arrays.toString(this.c.toArray()) + " containers: " + Arrays.toString(this.d.toArray());
        }
    }

    public static final class b extends xk {
        public final qw7 b;

        public b(int i, qw7 qw7Var) {
            super(i);
            this.b = qw7Var;
        }
    }

    public xk(int i) {
        this.a = i;
    }

    public static String a(int i) {
        return "" + ((char) ((i >> 24) & 255)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }

    public static int b(int i) {
        return i & 16777215;
    }

    public static int c(int i) {
        return (i >> 24) & 255;
    }

    public String toString() {
        return a(this.a);
    }
}
