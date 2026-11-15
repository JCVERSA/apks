package com.google.common.math;

import com.google.common.primitives.Doubles;
import java.util.Iterator;

public final class h {

    private long f30085a = 0;

    private double f30086b = 0.0d;

    private double f30087c = 0.0d;

    private double f30088d = Double.NaN;

    private double f30089e = Double.NaN;

    static double g(double d10, double d11) {
        if (Doubles.f(d10)) {
            return d11;
        }
        if (Doubles.f(d11) || d10 == d11) {
            return d10;
        }
        return Double.NaN;
    }

    public void a(double d10) {
        long j10 = this.f30085a;
        if (j10 == 0) {
            this.f30085a = 1L;
            this.f30086b = d10;
            this.f30088d = d10;
            this.f30089e = d10;
            if (Doubles.f(d10)) {
                return;
            }
            this.f30087c = Double.NaN;
            return;
        }
        this.f30085a = j10 + 1;
        if (Doubles.f(d10) && Doubles.f(this.f30086b)) {
            double d11 = this.f30086b;
            double d12 = d10 - d11;
            double d13 = d11 + (d12 / this.f30085a);
            this.f30086b = d13;
            this.f30087c += d12 * (d10 - d13);
        } else {
            this.f30086b = g(this.f30086b, d10);
            this.f30087c = Double.NaN;
        }
        this.f30088d = Math.min(this.f30088d, d10);
        this.f30089e = Math.max(this.f30089e, d10);
    }

    public void b(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            a(((Number) it.next()).doubleValue());
        }
    }

    public void c(Iterator it) {
        while (it.hasNext()) {
            a(((Number) it.next()).doubleValue());
        }
    }

    public void d(double... dArr) {
        for (double d10 : dArr) {
            a(d10);
        }
    }

    public void e(int... iArr) {
        for (int i10 : iArr) {
            a(i10);
        }
    }

    public void f(long... jArr) {
        for (long j10 : jArr) {
            a(j10);
        }
    }

    public Stats h() {
        return new Stats(this.f30085a, this.f30086b, this.f30087c, this.f30088d, this.f30089e);
    }
}
