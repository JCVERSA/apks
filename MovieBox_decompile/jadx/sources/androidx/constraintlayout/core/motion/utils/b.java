package androidx.constraintlayout.core.motion.utils;

public abstract class b {

    static class a extends b {

        double f6456a;

        double[] f6457b;

        a(double d10, double[] dArr) {
            this.f6456a = d10;
            this.f6457b = dArr;
        }

        @Override
        public double c(double d10, int i10) {
            return this.f6457b[i10];
        }

        @Override
        public void d(double d10, double[] dArr) {
            double[] dArr2 = this.f6457b;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override
        public void e(double d10, float[] fArr) {
            int i10 = 0;
            while (true) {
                double[] dArr = this.f6457b;
                if (i10 >= dArr.length) {
                    return;
                }
                fArr[i10] = (float) dArr[i10];
                i10++;
            }
        }

        @Override
        public double f(double d10, int i10) {
            return 0.0d;
        }

        @Override
        public void g(double d10, double[] dArr) {
            for (int i10 = 0; i10 < this.f6457b.length; i10++) {
                dArr[i10] = 0.0d;
            }
        }

        @Override
        public double[] h() {
            return new double[]{this.f6456a};
        }
    }

    public static b a(int i10, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i10 = 2;
        }
        if (i10 != 0) {
            return i10 != 2 ? new e(dArr, dArr2) : new a(dArr[0], dArr2[0]);
        }
        return new f(dArr, dArr2);
    }

    public static b b(int[] iArr, double[] dArr, double[][] dArr2) {
        return new androidx.constraintlayout.core.motion.utils.a(iArr, dArr, dArr2);
    }

    public abstract double c(double d10, int i10);

    public abstract void d(double d10, double[] dArr);

    public abstract void e(double d10, float[] fArr);

    public abstract double f(double d10, int i10);

    public abstract void g(double d10, double[] dArr);

    public abstract double[] h();
}
