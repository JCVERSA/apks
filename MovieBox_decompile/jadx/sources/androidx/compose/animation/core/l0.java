package androidx.compose.animation.core;

public abstract class l0 {
    public static final long a(double d10, double d11, double d12, double d13, double d14) {
        double dSqrt = 2.0d * d11 * Math.sqrt(d10);
        double d15 = (dSqrt * dSqrt) - (4.0d * d10);
        double d16 = -dSqrt;
        s sVarA = t.a(d15);
        sVarA.f2184a += d16;
        sVarA.f2184a *= 0.5d;
        sVarA.f2185b *= 0.5d;
        s sVarA2 = t.a(d15);
        double d17 = -1;
        sVarA2.f2184a *= d17;
        sVarA2.f2185b *= d17;
        sVarA2.f2184a += d16;
        sVarA2.f2184a *= 0.5d;
        sVarA2.f2185b *= 0.5d;
        return d(sVarA, sVarA2, d11, d12, d13, d14);
    }

    public static final long b(float f10, float f11, float f12, float f13, float f14) {
        if (f11 == 0.0f) {
            return 9223372036854L;
        }
        return a(f10, f11, f12, f13, f14);
    }

    private static final double c(s sVar, double d10, double d11, double d12) {
        double d13 = d12;
        double dF = sVar.f();
        double d14 = dF * d10;
        double d15 = d11 - d14;
        double dLog = Math.log(Math.abs(d13 / d10)) / dF;
        double dLog2 = Math.log(Math.abs(d13 / d15));
        double dLog3 = dLog2;
        for (int i10 = 0; i10 < 6; i10++) {
            dLog3 = dLog2 - Math.log(Math.abs(dLog3 / dF));
        }
        double d16 = dLog3 / dF;
        if (!((Double.isInfinite(dLog) || Double.isNaN(dLog)) ? false : true)) {
            dLog = d16;
        } else if ((Double.isInfinite(d16) || Double.isNaN(d16)) ? false : true) {
            dLog = Math.max(dLog, d16);
        }
        double d17 = (-(d14 + d15)) / (dF * d15);
        double d18 = dF * d17;
        double dExp = (Math.exp(d18) * d10) + (d15 * d17 * Math.exp(d18));
        if (Double.isNaN(d17) || d17 <= 0.0d) {
            d13 = -d13;
        } else if (d17 <= 0.0d || (-dExp) >= d13) {
            dLog = (-(2.0d / dF)) - (d10 / d15);
        } else {
            if (d15 < 0.0d && d10 > 0.0d) {
                dLog = 0.0d;
            }
            d13 = -d13;
        }
        double dAbs = Double.MAX_VALUE;
        int i11 = 0;
        while (dAbs > 0.001d && i11 < 100) {
            i11++;
            double d19 = dF * dLog;
            double d20 = d13;
            double dExp2 = dLog - ((((d10 + (d15 * dLog)) * Math.exp(d19)) + d13) / ((((((double) 1) + d19) * d15) + d14) * Math.exp(d19)));
            dAbs = Math.abs(dLog - dExp2);
            dLog = dExp2;
            d13 = d20;
        }
        return dLog;
    }

    private static final long d(s sVar, s sVar2, double d10, double d11, double d12, double d13) {
        double dG;
        double d14 = d11;
        if (d12 == 0.0d && d14 == 0.0d) {
            return 0L;
        }
        if (d12 < 0.0d) {
            d14 = -d14;
        }
        double dAbs = Math.abs(d12);
        if (d10 > 1.0d) {
            dG = e(sVar, sVar2, dAbs, d14, d13);
        } else {
            dG = d10 < 1.0d ? g(sVar, dAbs, d14, d13) : c(sVar, dAbs, d14, d13);
        }
        return (long) (dG * 1000.0d);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00c6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d7  */
    private static final double e(s sVar, s sVar2, double d10, double d11, double d12) {
        double dLog;
        double d13;
        double d14;
        double d15;
        int i10;
        double d16 = d12;
        double dF = sVar.f();
        double dF2 = sVar2.f();
        double d17 = dF - dF2;
        double d18 = ((dF * d10) - d11) / d17;
        double d19 = d10 - d18;
        double dLog2 = Math.log(Math.abs(d16 / d19)) / dF;
        double dLog3 = Math.log(Math.abs(d16 / d18)) / dF2;
        if ((Double.isInfinite(dLog2) || Double.isNaN(dLog2)) ? false : true) {
            if ((Double.isInfinite(dLog3) || Double.isNaN(dLog3)) ? false : true) {
                dLog2 = Math.max(dLog2, dLog3);
            }
            dLog = dLog2;
        } else {
            dLog = dLog3;
        }
        double d20 = d19 * dF;
        double dLog4 = Math.log(d20 / ((-d18) * dF2)) / (dF2 - dF);
        if (!Double.isNaN(dLog4) && dLog4 > 0.0d) {
            if (dLog4 > 0.0d) {
                d13 = d18;
                if ((-f(d19, dF, dLog4, d18, dF2)) < d16) {
                    if (d13 > 0.0d && d19 < 0.0d) {
                        dLog = 0.0d;
                    }
                }
                d14 = d13 * dF2;
                if (Math.abs((Math.exp(dF * dLog) * d20) + (Math.exp(dF2 * dLog) * d14)) < 1.0E-4d) {
                    return dLog;
                }
                d15 = Double.MAX_VALUE;
                i10 = 0;
                while (d15 > 0.001d && i10 < 100) {
                    i10++;
                    double d21 = dF * dLog;
                    double d22 = dF2 * dLog;
                    double dExp = dLog - ((((Math.exp(d21) * d19) + (Math.exp(d22) * d13)) + d16) / ((Math.exp(d21) * d20) + (Math.exp(d22) * d14)));
                    double dAbs = Math.abs(dLog - dExp);
                    dLog = dExp;
                    d15 = dAbs;
                }
                return dLog;
            }
            d13 = d18;
            dLog = Math.log((-((d13 * dF2) * dF2)) / (d20 * dF)) / d17;
            d14 = d13 * dF2;
            if (Math.abs((Math.exp(dF * dLog) * d20) + (Math.exp(dF2 * dLog) * d14)) < 1.0E-4d) {
                return dLog;
            }
            d15 = Double.MAX_VALUE;
            i10 = 0;
            while (d15 > 0.001d) {
                i10++;
                double d23 = dF * dLog;
                double d24 = dF2 * dLog;
                double dExp2 = dLog - ((((Math.exp(d23) * d19) + (Math.exp(d24) * d13)) + d16) / ((Math.exp(d23) * d20) + (Math.exp(d24) * d14)));
                double dAbs2 = Math.abs(dLog - dExp2);
                dLog = dExp2;
                d15 = dAbs2;
            }
            return dLog;
        }
        d13 = d18;
        d16 = -d16;
        d14 = d13 * dF2;
        if (Math.abs((Math.exp(dF * dLog) * d20) + (Math.exp(dF2 * dLog) * d14)) < 1.0E-4d) {
            return dLog;
        }
        d15 = Double.MAX_VALUE;
        i10 = 0;
        while (d15 > 0.001d) {
            i10++;
            double d25 = dF * dLog;
            double d26 = dF2 * dLog;
            double dExp3 = dLog - ((((Math.exp(d25) * d19) + (Math.exp(d26) * d13)) + d16) / ((Math.exp(d25) * d20) + (Math.exp(d26) * d14)));
            double dAbs3 = Math.abs(dLog - dExp3);
            dLog = dExp3;
            d15 = dAbs3;
        }
        return dLog;
    }

    private static final double f(double d10, double d11, double d12, double d13, double d14) {
        return (d10 * Math.exp(d11 * d12)) + (d13 * Math.exp(d14 * d12));
    }

    private static final double g(s sVar, double d10, double d11, double d12) {
        double dF = sVar.f();
        double dE = (d11 - (dF * d10)) / sVar.e();
        return Math.log(d12 / Math.sqrt((d10 * d10) + (dE * dE))) / dF;
    }
}
