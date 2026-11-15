package defpackage;

import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class wk {
    public int d;
    public int e;
    public b a = new b(310);
    public c[] b = new c[310];
    public d[] c = new d[310];
    public double[] f = new double[310];

    public class b {
        public a[] a;

        public class a {
            public int a;
            public int b;
            public int c;
            public double d;

            public a() {
            }

            public void a(int i, int i2) {
                this.a = i;
                this.b = i2;
                this.d = 0.0d;
                this.c = 0;
            }

            public double b() {
                return wk.this.f[this.b + 1] - wk.this.f[this.a];
            }

            public int c() {
                return (this.a + this.b) >> 1;
            }
        }

        public b(int i) {
            int i2 = i * 3;
            this.a = new a[i2];
            for (int i3 = 1; i3 < i2; i3++) {
                this.a[i3] = new a();
            }
        }

        public void a(int i, int i2, int i3) {
            this.a[i3].a(i, i2);
            if (i == i2) {
                return;
            }
            int iC = this.a[i3].c();
            int i4 = i3 << 1;
            a(i, iC, i4);
            a(iC + 1, i2, i4 | 1);
        }

        public void b(int i) {
            a[] aVarArr = this.a;
            a aVar = aVarArr[i];
            if (aVar.c > 0) {
                aVar.d = aVar.b();
            } else if (aVar.a == aVar.b) {
                aVar.d = 0.0d;
            } else {
                int i2 = i << 1;
                aVar.d = aVarArr[i2].d + aVarArr[i2 | 1].d;
            }
        }

        public void c(int i, int i2, int i3, int i4) {
            a aVar = this.a[i3];
            if (aVar.a >= i && aVar.b <= i2) {
                aVar.c += i4;
                b(i3);
                return;
            }
            int iC = aVar.c();
            if (i <= iC) {
                c(i, i2, i3 << 1, i4);
            }
            if (i2 > iC) {
                c(i, i2, (i3 << 1) | 1, i4);
            }
            b(i3);
        }
    }

    public class c implements Comparable {
        public int b;
        public int c;
        public int d;
        public double e;

        public c() {
        }

        @Override
        public int compareTo(c cVar) {
            double d = this.e;
            double d2 = cVar.e;
            if (d < d2) {
                return -1;
            }
            return (d != d2 || this.d <= cVar.d) ? 1 : -1;
        }
    }

    public class d implements Comparable {
        public int b;
        public double c;

        public d() {
        }

        @Override
        public int compareTo(d dVar) {
            return this.c < dVar.c ? -1 : 1;
        }
    }

    public wk() {
        for (int i = 0; i <= 300; i += 2) {
            this.b[i] = new c();
            int i2 = i + 1;
            this.b[i2] = new c();
            this.c[i] = new d();
            this.c[i2] = new d();
        }
    }

    public final void b() {
        Arrays.sort(this.c, 1, (this.d * 2) + 1);
        this.e = 1;
        for (int i = 1; i <= this.d * 2; i++) {
            if (i > 1) {
                d[] dVarArr = this.c;
                if (dVarArr[i].c != dVarArr[i - 1].c) {
                    this.e++;
                }
            }
            double[] dArr = this.f;
            int i2 = this.e;
            d dVar = this.c[i];
            dArr[i2] = dVar.c;
            int i3 = dVar.b;
            if (i3 > 0) {
                c[] cVarArr = this.b;
                c cVar = cVarArr[i3];
                cVarArr[i3 + 1].b = i2;
                cVar.b = i2;
            } else {
                c[] cVarArr2 = this.b;
                int i4 = -i3;
                c cVar2 = cVarArr2[i4];
                cVarArr2[i4 + 1].c = i2;
                cVar2.c = i2;
            }
        }
    }

    public double c(List list) {
        double d2 = 0.0d;
        try {
            System.currentTimeMillis();
            this.d = list.size();
            d(list);
            b();
            Arrays.sort(this.b, 1, (this.d * 2) + 1);
            this.a.a(1, this.e - 1, 1);
            b bVar = this.a;
            c cVar = this.b[1];
            bVar.c(cVar.b, cVar.c - 1, 1, 1);
            for (int i = 2; i <= this.d * 2; i++) {
                b bVar2 = this.a;
                double d3 = bVar2.a[1].d;
                c[] cVarArr = this.b;
                c cVar2 = cVarArr[i];
                d2 += d3 * (cVar2.e - cVarArr[i - 1].e);
                bVar2.c(cVar2.b, cVar2.c - 1, 1, cVar2.d);
            }
            System.currentTimeMillis();
            new DecimalFormat("0.00");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return d2;
    }

    public final void d(List list) {
        Iterator it = list.iterator();
        int i = 1;
        while (it.hasNext()) {
            ap8 ap8Var = (ap8) it.next();
            c[] cVarArr = this.b;
            c cVar = cVarArr[i];
            cVar.e = ap8Var.a;
            cVar.d = 1;
            d[] dVarArr = this.c;
            d dVar = dVarArr[i];
            dVar.b = i;
            dVar.c = ap8Var.b;
            int i2 = i + 1;
            c cVar2 = cVarArr[i2];
            cVar2.e = ap8Var.c;
            cVar2.d = -1;
            d dVar2 = dVarArr[i2];
            dVar2.b = -i;
            dVar2.c = ap8Var.d;
            i += 2;
        }
    }
}
