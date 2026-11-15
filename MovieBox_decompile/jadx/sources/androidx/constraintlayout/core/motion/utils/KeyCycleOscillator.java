package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public abstract class KeyCycleOscillator {

    private androidx.constraintlayout.core.motion.utils.b f6406a;

    private a f6407b;

    private String f6408c;

    private int f6409d = 0;

    private String f6410e = null;

    public int f6411f = 0;

    ArrayList f6412g = new ArrayList();

    static class a {

        private final int f6413a;

        g f6414b;

        private final int f6415c;

        private final int f6416d;

        private final int f6417e;

        float[] f6418f;

        double[] f6419g;

        float[] f6420h;

        float[] f6421i;

        float[] f6422j;

        float[] f6423k;

        int f6424l;

        androidx.constraintlayout.core.motion.utils.b f6425m;

        double[] f6426n;

        double[] f6427o;

        float f6428p;

        a(int i10, String str, int i11, int i12) {
            g gVar = new g();
            this.f6414b = gVar;
            this.f6415c = 0;
            this.f6416d = 1;
            this.f6417e = 2;
            this.f6424l = i10;
            this.f6413a = i11;
            gVar.g(i10, str);
            this.f6418f = new float[i12];
            this.f6419g = new double[i12];
            this.f6420h = new float[i12];
            this.f6421i = new float[i12];
            this.f6422j = new float[i12];
            this.f6423k = new float[i12];
        }

        public double a(float f10) {
            androidx.constraintlayout.core.motion.utils.b bVar = this.f6425m;
            if (bVar != null) {
                double d10 = f10;
                bVar.g(d10, this.f6427o);
                this.f6425m.d(d10, this.f6426n);
            } else {
                double[] dArr = this.f6427o;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
                dArr[2] = 0.0d;
            }
            double d11 = f10;
            double dE = this.f6414b.e(d11, this.f6426n[1]);
            double d12 = this.f6414b.d(d11, this.f6426n[1], this.f6427o[1]);
            double[] dArr2 = this.f6427o;
            return dArr2[0] + (dE * dArr2[2]) + (d12 * this.f6426n[2]);
        }

        public double b(float f10) {
            androidx.constraintlayout.core.motion.utils.b bVar = this.f6425m;
            if (bVar != null) {
                bVar.d(f10, this.f6426n);
            } else {
                double[] dArr = this.f6426n;
                dArr[0] = this.f6421i[0];
                dArr[1] = this.f6422j[0];
                dArr[2] = this.f6418f[0];
            }
            double[] dArr2 = this.f6426n;
            return dArr2[0] + (this.f6414b.e(f10, dArr2[1]) * this.f6426n[2]);
        }

        public void c(int i10, int i11, float f10, float f11, float f12, float f13) {
            this.f6419g[i10] = ((double) i11) / 100.0d;
            this.f6420h[i10] = f10;
            this.f6421i[i10] = f11;
            this.f6422j[i10] = f12;
            this.f6418f[i10] = f13;
        }

        public void d(float f10) {
            this.f6428p = f10;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.f6419g.length, 3);
            float[] fArr = this.f6418f;
            this.f6426n = new double[fArr.length + 2];
            this.f6427o = new double[fArr.length + 2];
            if (this.f6419g[0] > 0.0d) {
                this.f6414b.a(0.0d, this.f6420h[0]);
            }
            double[] dArr2 = this.f6419g;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.f6414b.a(1.0d, this.f6420h[length]);
            }
            for (int i10 = 0; i10 < dArr.length; i10++) {
                double[] dArr3 = dArr[i10];
                dArr3[0] = this.f6421i[i10];
                dArr3[1] = this.f6422j[i10];
                dArr3[2] = this.f6418f[i10];
                this.f6414b.a(this.f6419g[i10], this.f6420h[i10]);
            }
            this.f6414b.f();
            double[] dArr4 = this.f6419g;
            if (dArr4.length > 1) {
                this.f6425m = androidx.constraintlayout.core.motion.utils.b.a(0, dArr4, dArr);
            } else {
                this.f6425m = null;
            }
        }
    }

    static class b {

        int f6429a;

        float f6430b;

        float f6431c;

        float f6432d;

        float f6433e;

        public b(int i10, float f10, float f11, float f12, float f13) {
            this.f6429a = i10;
            this.f6430b = f13;
            this.f6431c = f11;
            this.f6432d = f10;
            this.f6433e = f12;
        }
    }

    public float a(float f10) {
        return (float) this.f6407b.b(f10);
    }

    public float b(float f10) {
        return (float) this.f6407b.a(f10);
    }

    public void d(int i10, int i11, String str, int i12, float f10, float f11, float f12, float f13) {
        this.f6412g.add(new b(i10, f10, f11, f12, f13));
        if (i12 != -1) {
            this.f6411f = i12;
        }
        this.f6409d = i11;
        this.f6410e = str;
    }

    public void e(int i10, int i11, String str, int i12, float f10, float f11, float f12, float f13, Object obj) {
        this.f6412g.add(new b(i10, f10, f11, f12, f13));
        if (i12 != -1) {
            this.f6411f = i12;
        }
        this.f6409d = i11;
        c(obj);
        this.f6410e = str;
    }

    public void f(String str) {
        this.f6408c = str;
    }

    public void g(float f10) {
        int size = this.f6412g.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.f6412g, new Comparator<b>() {
            @Override
            public int compare(b bVar, b bVar2) {
                return Integer.compare(bVar.f6429a, bVar2.f6429a);
            }
        });
        double[] dArr = new double[size];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 3);
        this.f6407b = new a(this.f6409d, this.f6410e, this.f6411f, size);
        int i10 = 0;
        for (b bVar : this.f6412g) {
            float f11 = bVar.f6432d;
            dArr[i10] = ((double) f11) * 0.01d;
            double[] dArr3 = dArr2[i10];
            float f12 = bVar.f6430b;
            dArr3[0] = f12;
            float f13 = bVar.f6431c;
            dArr3[1] = f13;
            float f14 = bVar.f6433e;
            dArr3[2] = f14;
            this.f6407b.c(i10, bVar.f6429a, f11, f13, f14, f12);
            i10++;
            dArr2 = dArr2;
        }
        this.f6407b.d(f10);
        this.f6406a = androidx.constraintlayout.core.motion.utils.b.a(0, dArr, dArr2);
    }

    public boolean h() {
        return this.f6411f == 1;
    }

    public String toString() {
        String str = this.f6408c;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (b bVar : this.f6412g) {
            str = str + "[" + bVar.f6429a + " , " + decimalFormat.format(bVar.f6430b) + "] ";
        }
        return str;
    }

    protected void c(Object obj) {
    }
}
