package androidx.compose.ui.graphics;

public abstract class b1 {
    public static final long b(float f10, float f11, float f12, float f13, float[] fArr, int i10) {
        float f14 = (f11 - f10) * 3.0f;
        float f15 = (f12 - f11) * 3.0f;
        float f16 = (f13 - f12) * 3.0f;
        int iF = f(f14, f15, f16, fArr, i10);
        float f17 = (f15 - f14) * 2.0f;
        int iG = iF + g((-f17) / (((f16 - f15) * 2.0f) - f17), fArr, i10 + iF);
        float fMin = Math.min(f10, f13);
        float fMax = Math.max(f10, f13);
        for (int i11 = 0; i11 < iG; i11++) {
            float fD = d(f10, f11, f12, f13, fArr[i11]);
            fMin = Math.min(fMin, fD);
            fMax = Math.max(fMax, fD);
        }
        return androidx.collection.h.a(fMin, fMax);
    }

    public static final float c(float f10, float f11, float f12) {
        return ((((((f10 - f11) + 0.33333334f) * f12) + (f11 - (2.0f * f10))) * f12) + f10) * 3.0f * f12;
    }

    private static final float d(float f10, float f11, float f12, float f13, float f14) {
        float f15 = (f13 + ((f11 - f12) * 3.0f)) - f10;
        return (((((f15 * f14) + (((f12 - (2.0f * f11)) + f10) * 3.0f)) * f14) + ((f11 - f10) * 3.0f)) * f14) + f10;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0199  */
    /* JADX WARN: Code duplicated, block: B:27:0x008a  */
    /* JADX WARN: Code duplicated, block: B:62:0x011a  */
    /* JADX WARN: Code duplicated, block: B:76:0x0147  */
    public static final float e(float f10, float f11, float f12, float f13) {
        double d10 = f10;
        double d11 = ((d10 - (((double) f11) * 2.0d)) + ((double) f12)) * 3.0d;
        double d12 = ((double) (f11 - f10)) * 3.0d;
        double d13 = ((double) (-f10)) + (((double) (f11 - f12)) * 3.0d) + ((double) f13);
        if (Math.abs(d13 - 0.0d) < 1.0E-7d) {
            if (Math.abs(d11 - 0.0d) < 1.0E-7d) {
                if (Math.abs(d12 - 0.0d) < 1.0E-7d) {
                    return Float.NaN;
                }
                float f14 = (float) ((-d10) / d12);
                if (f14 < 0.0f) {
                    if (f14 >= -8.34465E-7f) {
                        return 0.0f;
                    }
                } else {
                    if (f14 <= 1.0f) {
                        return f14;
                    }
                    if (f14 <= 1.0000008f) {
                        return 1.0f;
                    }
                }
                return Float.NaN;
            }
            double dSqrt = Math.sqrt((d12 * d12) - ((4.0d * d11) * d10));
            double d14 = d11 * 2.0d;
            float f15 = (float) ((dSqrt - d12) / d14);
            if (f15 < 0.0f) {
                if (f15 >= -8.34465E-7f) {
                    f15 = 0.0f;
                } else {
                    f15 = Float.NaN;
                }
            } else if (f15 > 1.0f) {
                if (f15 <= 1.0000008f) {
                    f15 = 1.0f;
                } else {
                    f15 = Float.NaN;
                }
            }
            if (!Float.isNaN(f15)) {
                return f15;
            }
            float f16 = (float) (((-d12) - dSqrt) / d14);
            if (f16 < 0.0f) {
                if (f16 >= -8.34465E-7f) {
                    return 0.0f;
                }
            } else {
                if (f16 <= 1.0f) {
                    return f16;
                }
                if (f16 <= 1.0000008f) {
                    return 1.0f;
                }
            }
            return Float.NaN;
        }
        double d15 = d11 / d13;
        double d16 = d12 / d13;
        double d17 = d10 / d13;
        double d18 = ((d16 * 3.0d) - (d15 * d15)) / 9.0d;
        double d19 = (((((2.0d * d15) * d15) * d15) - ((9.0d * d15) * d16)) + (d17 * 27.0d)) / 54.0d;
        double d20 = d18 * d18 * d18;
        double d21 = (d19 * d19) + d20;
        double d22 = d15 / 3.0d;
        if (d21 >= 0.0d) {
            if (d21 != 0.0d) {
                double dSqrt2 = Math.sqrt(d21);
                float fA = (float) (((double) (q0.b.a((float) ((-d19) + dSqrt2)) - q0.b.a((float) (d19 + dSqrt2)))) - d22);
                if (fA < 0.0f) {
                    if (fA >= -8.34465E-7f) {
                        return 0.0f;
                    }
                } else {
                    if (fA <= 1.0f) {
                        return fA;
                    }
                    if (fA <= 1.0000008f) {
                        return 1.0f;
                    }
                }
                return Float.NaN;
            }
            float f17 = -q0.b.a((float) d19);
            float f18 = (float) d22;
            float f19 = (2.0f * f17) - f18;
            if (f19 < 0.0f) {
                if (f19 >= -8.34465E-7f) {
                    f19 = 0.0f;
                } else {
                    f19 = Float.NaN;
                }
            } else if (f19 > 1.0f) {
                if (f19 <= 1.0000008f) {
                    f19 = 1.0f;
                } else {
                    f19 = Float.NaN;
                }
            }
            if (!Float.isNaN(f19)) {
                return f19;
            }
            float f20 = (-f17) - f18;
            if (f20 < 0.0f) {
                if (f20 >= -8.34465E-7f) {
                    return 0.0f;
                }
            } else {
                if (f20 <= 1.0f) {
                    return f20;
                }
                if (f20 <= 1.0000008f) {
                    return 1.0f;
                }
            }
            return Float.NaN;
        }
        double dSqrt3 = Math.sqrt(-d20);
        double d23 = (-d19) / dSqrt3;
        if (d23 < -1.0d) {
            d23 = -1.0d;
        }
        if (d23 > 1.0d) {
            d23 = 1.0d;
        }
        double dAcos = Math.acos(d23);
        double dA = q0.b.a((float) dSqrt3) * 2.0f;
        float fCos = (float) ((Math.cos(dAcos / 3.0d) * dA) - d22);
        if (fCos < 0.0f) {
            if (fCos >= -8.34465E-7f) {
                fCos = 0.0f;
            } else {
                fCos = Float.NaN;
            }
        } else if (fCos > 1.0f) {
            if (fCos <= 1.0000008f) {
                fCos = 1.0f;
            } else {
                fCos = Float.NaN;
            }
        }
        if (!Float.isNaN(fCos)) {
            return fCos;
        }
        float fCos2 = (float) ((Math.cos((6.283185307179586d + dAcos) / 3.0d) * dA) - d22);
        if (fCos2 < 0.0f) {
            if (fCos2 >= -8.34465E-7f) {
                fCos2 = 0.0f;
            } else {
                fCos2 = Float.NaN;
            }
        } else if (fCos2 > 1.0f) {
            if (fCos2 <= 1.0000008f) {
                fCos2 = 1.0f;
            } else {
                fCos2 = Float.NaN;
            }
        }
        if (!Float.isNaN(fCos2)) {
            return fCos2;
        }
        float fCos3 = (float) ((dA * Math.cos((dAcos + 12.566370614359172d) / 3.0d)) - d22);
        if (fCos3 < 0.0f) {
            if (fCos3 >= -8.34465E-7f) {
                return 0.0f;
            }
        } else {
            if (fCos3 <= 1.0f) {
                return fCos3;
            }
            if (fCos3 <= 1.0000008f) {
                return 1.0f;
            }
        }
        return Float.NaN;
    }

    private static final int f(float f10, float f11, float f12, float[] fArr, int i10) {
        double d10 = f10;
        double d11 = f11;
        double d12 = f12;
        double d13 = d11 * 2.0d;
        double d14 = (d10 - d13) + d12;
        if (d14 == 0.0d) {
            if (d11 == d12) {
                return 0;
            }
            return g((float) ((d13 - d12) / (d13 - (d12 * 2.0d))), fArr, i10);
        }
        double d15 = -Math.sqrt((d11 * d11) - (d12 * d10));
        double d16 = (-d10) + d11;
        int iG = g((float) ((-(d15 + d16)) / d14), fArr, i10);
        int iG2 = iG + g((float) ((d15 - d16) / d14), fArr, i10 + iG);
        if (iG2 > 1) {
            float f13 = fArr[i10];
            int i11 = i10 + 1;
            float f14 = fArr[i11];
            if (f13 > f14) {
                fArr[i10] = f14;
                fArr[i11] = f13;
            } else if (f13 == f14) {
                return iG2 - 1;
            }
        }
        return iG2;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000d A[PHI: r0
      0x000d: PHI (r0v2 float) = (r0v1 float), (r0v0 float) binds: [B:11:0x001c, B:5:0x000b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x000f  */
    public static final int g(float f10, float[] fArr, int i10) {
        float f11 = 0.0f;
        if (f10 >= 0.0f) {
            f11 = 1.0f;
            if (f10 > 1.0f) {
                if (f10 <= 1.0000008f) {
                    f10 = f11;
                } else {
                    f10 = Float.NaN;
                }
            }
        } else if (f10 >= -8.34465E-7f) {
            f10 = f11;
        } else {
            f10 = Float.NaN;
        }
        fArr[i10] = f10;
        return !Float.isNaN(f10) ? 1 : 0;
    }
}
