package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

public class c {

    static c f6458b = new c();

    public static String[] f6459c = {"standard", "accelerate", "decelerate", "linear"};

    String f6460a = "identity";

    static class a extends c {

        private static double f6461h = 0.01d;

        private static double f6462i = 1.0E-4d;

        double f6463d;

        double f6464e;

        double f6465f;

        double f6466g;

        a(String str) {
            this.f6460a = str;
            int iIndexOf = str.indexOf(40);
            int iIndexOf2 = str.indexOf(44, iIndexOf);
            this.f6463d = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
            int i10 = iIndexOf2 + 1;
            int iIndexOf3 = str.indexOf(44, i10);
            this.f6464e = Double.parseDouble(str.substring(i10, iIndexOf3).trim());
            int i11 = iIndexOf3 + 1;
            int iIndexOf4 = str.indexOf(44, i11);
            this.f6465f = Double.parseDouble(str.substring(i11, iIndexOf4).trim());
            int i12 = iIndexOf4 + 1;
            this.f6466g = Double.parseDouble(str.substring(i12, str.indexOf(41, i12)).trim());
        }

        private double d(double d10) {
            double d11 = 1.0d - d10;
            double d12 = 3.0d * d11;
            return (this.f6463d * d11 * d12 * d10) + (this.f6465f * d12 * d10 * d10) + (d10 * d10 * d10);
        }

        private double e(double d10) {
            double d11 = 1.0d - d10;
            double d12 = 3.0d * d11;
            return (this.f6464e * d11 * d12 * d10) + (this.f6466g * d12 * d10 * d10) + (d10 * d10 * d10);
        }

        @Override
        public double a(double d10) {
            if (d10 <= 0.0d) {
                return 0.0d;
            }
            if (d10 >= 1.0d) {
                return 1.0d;
            }
            double d11 = 0.5d;
            double d12 = 0.5d;
            while (d11 > f6461h) {
                d11 *= 0.5d;
                d12 = d(d12) < d10 ? d12 + d11 : d12 - d11;
            }
            double d13 = d12 - d11;
            double d14 = d(d13);
            double d15 = d12 + d11;
            double d16 = d(d15);
            double dE = e(d13);
            return (((e(d15) - dE) * (d10 - d14)) / (d16 - d14)) + dE;
        }

        @Override
        public double b(double d10) {
            double d11 = 0.5d;
            double d12 = 0.5d;
            while (d11 > f6462i) {
                d11 *= 0.5d;
                d12 = d(d12) < d10 ? d12 + d11 : d12 - d11;
            }
            double d13 = d12 - d11;
            double d14 = d12 + d11;
            return (e(d14) - e(d13)) / (d(d14) - d(d13));
        }
    }

    public static c c(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new a(str);
        }
        if (str.startsWith("spline")) {
            return new k(str);
        }
        if (str.startsWith("Schlick")) {
            return new h(str);
        }
        switch (str) {
            case "accelerate":
                return new a("cubic(0.4, 0.05, 0.8, 0.7)");
            case "decelerate":
                return new a("cubic(0.0, 0.0, 0.2, 0.95)");
            case "anticipate":
                return new a("cubic(0.36, 0, 0.66, -0.56)");
            case "linear":
                return new a("cubic(1, 1, 0, 0)");
            case "overshoot":
                return new a("cubic(0.34, 1.56, 0.64, 1)");
            case "standard":
                return new a("cubic(0.4, 0.0, 0.2, 1)");
            default:
                System.err.println("transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(f6459c));
                return f6458b;
        }
    }

    public double b(double d10) {
        return 1.0d;
    }

    public String toString() {
        return this.f6460a;
    }

    public double a(double d10) {
        return d10;
    }
}
