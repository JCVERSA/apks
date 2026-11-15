package androidx.constraintlayout.core.motion.utils;

public class h extends c {

    double f6486d;

    double f6487e;

    h(String str) {
        this.f6460a = str;
        int iIndexOf = str.indexOf(40);
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        this.f6486d = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
        int i10 = iIndexOf2 + 1;
        this.f6487e = Double.parseDouble(str.substring(i10, str.indexOf(44, i10)).trim());
    }

    private double d(double d10) {
        double d11 = this.f6487e;
        if (d10 < d11) {
            double d12 = this.f6486d;
            return ((d12 * d11) * d11) / ((((d11 - d10) * d12) + d10) * ((d12 * (d11 - d10)) + d10));
        }
        double d13 = this.f6486d;
        return (((d11 - 1.0d) * d13) * (d11 - 1.0d)) / (((((-d13) * (d11 - d10)) - d10) + 1.0d) * ((((-d13) * (d11 - d10)) - d10) + 1.0d));
    }

    private double e(double d10) {
        double d11 = this.f6487e;
        return d10 < d11 ? (d11 * d10) / (d10 + (this.f6486d * (d11 - d10))) : ((1.0d - d11) * (d10 - 1.0d)) / ((1.0d - d10) - (this.f6486d * (d11 - d10)));
    }

    @Override
    public double a(double d10) {
        return e(d10);
    }

    @Override
    public double b(double d10) {
        return d(d10);
    }
}
