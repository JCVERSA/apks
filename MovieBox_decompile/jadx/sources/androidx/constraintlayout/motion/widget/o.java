package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import java.util.Arrays;
import java.util.LinkedHashMap;

class o implements Comparable {

    static String[] f7094t = {RequestParameters.POSITION, "x", "y", "width", "height", "pathRotate"};

    androidx.constraintlayout.core.motion.utils.c f7095a;

    float f7097c;

    float f7098d;

    float f7099e;

    float f7100f;

    float f7101g;

    float f7102h;

    int f7105k;

    int f7106l;

    float f7107m;

    m f7108n;

    LinkedHashMap f7109o;

    int f7110p;

    int f7111q;

    double[] f7112r;

    double[] f7113s;

    int f7096b = 0;

    float f7103i = Float.NaN;

    float f7104j = Float.NaN;

    public o() {
        int i10 = d.f6940f;
        this.f7105k = i10;
        this.f7106l = i10;
        this.f7107m = Float.NaN;
        this.f7108n = null;
        this.f7109o = new LinkedHashMap();
        this.f7110p = 0;
        this.f7112r = new double[18];
        this.f7113s = new double[18];
    }

    private boolean d(float f10, float f11) {
        if (Float.isNaN(f10) || Float.isNaN(f11)) {
            return Float.isNaN(f10) != Float.isNaN(f11);
        }
        return Math.abs(f10 - f11) > 1.0E-6f;
    }

    public void a(androidx.constraintlayout.widget.b.a aVar) {
        this.f7095a = androidx.constraintlayout.core.motion.utils.c.c(aVar.f7457d.f7522d);
        androidx.constraintlayout.widget.b.c cVar = aVar.f7457d;
        this.f7105k = cVar.f7523e;
        this.f7106l = cVar.f7520b;
        this.f7103i = cVar.f7527i;
        this.f7096b = cVar.f7524f;
        this.f7111q = cVar.f7521c;
        this.f7104j = aVar.f7456c.f7537e;
        this.f7107m = aVar.f7458e.D;
        for (String str : aVar.f7460g.keySet()) {
            ConstraintAttribute constraintAttribute = (ConstraintAttribute) aVar.f7460g.get(str);
            if (constraintAttribute != null && constraintAttribute.g()) {
                this.f7109o.put(str, constraintAttribute);
            }
        }
    }

    @Override
    public int compareTo(o oVar) {
        return Float.compare(this.f7098d, oVar.f7098d);
    }

    void e(o oVar, boolean[] zArr, String[] strArr, boolean z10) {
        boolean zD = d(this.f7099e, oVar.f7099e);
        boolean zD2 = d(this.f7100f, oVar.f7100f);
        zArr[0] = zArr[0] | d(this.f7098d, oVar.f7098d);
        boolean z11 = zD | zD2 | z10;
        zArr[1] = zArr[1] | z11;
        zArr[2] = z11 | zArr[2];
        zArr[3] = zArr[3] | d(this.f7101g, oVar.f7101g);
        zArr[4] = d(this.f7102h, oVar.f7102h) | zArr[4];
    }

    void f(double[] dArr, int[] iArr) {
        float[] fArr = {this.f7098d, this.f7099e, this.f7100f, this.f7101g, this.f7102h, this.f7103i};
        int i10 = 0;
        for (int i11 : iArr) {
            if (i11 < 6) {
                dArr[i10] = fArr[i11];
                i10++;
            }
        }
    }

    void g(double d10, int[] iArr, double[] dArr, float[] fArr, int i10) {
        float fSin = this.f7099e;
        float fCos = this.f7100f;
        float f10 = this.f7101g;
        float f11 = this.f7102h;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f12 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 == 1) {
                fSin = f12;
            } else if (i12 == 2) {
                fCos = f12;
            } else if (i12 == 3) {
                f10 = f12;
            } else if (i12 == 4) {
                f11 = f12;
            }
        }
        m mVar = this.f7108n;
        if (mVar != null) {
            float[] fArr2 = new float[2];
            mVar.i(d10, fArr2, new float[2]);
            float f13 = fArr2[0];
            float f14 = fArr2[1];
            double d11 = f13;
            double d12 = fSin;
            double d13 = fCos;
            fSin = (float) ((d11 + (Math.sin(d13) * d12)) - ((double) (f10 / 2.0f)));
            fCos = (float) ((((double) f14) - (d12 * Math.cos(d13))) - ((double) (f11 / 2.0f)));
        }
        fArr[i10] = fSin + (f10 / 2.0f) + 0.0f;
        fArr[i10 + 1] = fCos + (f11 / 2.0f) + 0.0f;
    }

    void h(double d10, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f10 = this.f7099e;
        float f11 = this.f7100f;
        float f12 = this.f7101g;
        float f13 = this.f7102h;
        float f14 = 0.0f;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f18 = (float) dArr[i10];
            float f19 = (float) dArr2[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f10 = f18;
                f14 = f19;
            } else if (i11 == 2) {
                f11 = f18;
                f16 = f19;
            } else if (i11 == 3) {
                f12 = f18;
                f15 = f19;
            } else if (i11 == 4) {
                f13 = f18;
                f17 = f19;
            }
        }
        float f20 = 2.0f;
        float f21 = (f15 / 2.0f) + f14;
        float fCos = (f17 / 2.0f) + f16;
        m mVar = this.f7108n;
        if (mVar != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            mVar.i(d10, fArr3, fArr4);
            float f22 = fArr3[0];
            float f23 = fArr3[1];
            float f24 = fArr4[0];
            float f25 = fArr4[1];
            double d11 = f10;
            double d12 = f11;
            float fSin = (float) ((((double) f22) + (Math.sin(d12) * d11)) - ((double) (f12 / 2.0f)));
            float fCos2 = (float) ((((double) f23) - (d11 * Math.cos(d12))) - ((double) (f13 / 2.0f)));
            double d13 = f14;
            double d14 = f16;
            float fSin2 = (float) (((double) f24) + (Math.sin(d12) * d13) + (Math.cos(d12) * d14));
            fCos = (float) ((((double) f25) - (d13 * Math.cos(d12))) + (Math.sin(d12) * d14));
            f21 = fSin2;
            f10 = fSin;
            f11 = fCos2;
            f20 = 2.0f;
        }
        fArr[0] = f10 + (f12 / f20) + 0.0f;
        fArr[1] = f11 + (f13 / f20) + 0.0f;
        fArr2[0] = f21;
        fArr2[1] = fCos;
    }

    int i(String str, double[] dArr, int i10) {
        ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f7109o.get(str);
        int i11 = 0;
        if (constraintAttribute == null) {
            return 0;
        }
        if (constraintAttribute.h() == 1) {
            dArr[i10] = constraintAttribute.e();
            return 1;
        }
        int iH = constraintAttribute.h();
        float[] fArr = new float[iH];
        constraintAttribute.f(fArr);
        while (i11 < iH) {
            dArr[i10] = fArr[i11];
            i11++;
            i10++;
        }
        return iH;
    }

    int j(String str) {
        ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f7109o.get(str);
        if (constraintAttribute == null) {
            return 0;
        }
        return constraintAttribute.h();
    }

    void k(int[] iArr, double[] dArr, float[] fArr, int i10) {
        float f10 = this.f7099e;
        float fCos = this.f7100f;
        float f11 = this.f7101g;
        float f12 = this.f7102h;
        for (int i11 = 0; i11 < iArr.length; i11++) {
            float f13 = (float) dArr[i11];
            int i12 = iArr[i11];
            if (i12 == 1) {
                f10 = f13;
            } else if (i12 == 2) {
                fCos = f13;
            } else if (i12 == 3) {
                f11 = f13;
            } else if (i12 == 4) {
                f12 = f13;
            }
        }
        m mVar = this.f7108n;
        if (mVar != null) {
            float fJ = mVar.j();
            float fK = this.f7108n.k();
            double d10 = f10;
            double d11 = fCos;
            float fSin = (float) ((((double) fJ) + (Math.sin(d11) * d10)) - ((double) (f11 / 2.0f)));
            fCos = (float) ((((double) fK) - (d10 * Math.cos(d11))) - ((double) (f12 / 2.0f)));
            f10 = fSin;
        }
        float f14 = f11 + f10;
        float f15 = f12 + fCos;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        fArr[i10] = f10 + 0.0f;
        fArr[i10 + 1] = fCos + 0.0f;
        fArr[i10 + 2] = f14 + 0.0f;
        fArr[i10 + 3] = fCos + 0.0f;
        fArr[i10 + 4] = f14 + 0.0f;
        fArr[i10 + 5] = f15 + 0.0f;
        fArr[i10 + 6] = f10 + 0.0f;
        fArr[i10 + 7] = f15 + 0.0f;
    }

    boolean l(String str) {
        return this.f7109o.containsKey(str);
    }

    void m(h hVar, o oVar, o oVar2) {
        float f10 = hVar.f6941a / 100.0f;
        this.f7097c = f10;
        this.f7096b = hVar.f6989j;
        float f11 = Float.isNaN(hVar.f6990k) ? f10 : hVar.f6990k;
        float f12 = Float.isNaN(hVar.f6991l) ? f10 : hVar.f6991l;
        float f13 = oVar2.f7101g;
        float f14 = oVar.f7101g;
        float f15 = oVar2.f7102h;
        float f16 = oVar.f7102h;
        this.f7098d = this.f7097c;
        float f17 = oVar.f7099e;
        float f18 = oVar.f7100f;
        float f19 = (oVar2.f7099e + (f13 / 2.0f)) - ((f14 / 2.0f) + f17);
        float f20 = (oVar2.f7100f + (f15 / 2.0f)) - (f18 + (f16 / 2.0f));
        float f21 = (f13 - f14) * f11;
        float f22 = f21 / 2.0f;
        this.f7099e = (int) ((f17 + (f19 * f10)) - f22);
        float f23 = (f15 - f16) * f12;
        float f24 = f23 / 2.0f;
        this.f7100f = (int) ((f18 + (f20 * f10)) - f24);
        this.f7101g = (int) (f14 + f21);
        this.f7102h = (int) (f16 + f23);
        float f25 = Float.isNaN(hVar.f6992m) ? f10 : hVar.f6992m;
        float f26 = Float.isNaN(hVar.f6995p) ? 0.0f : hVar.f6995p;
        if (!Float.isNaN(hVar.f6993n)) {
            f10 = hVar.f6993n;
        }
        float f27 = Float.isNaN(hVar.f6994o) ? 0.0f : hVar.f6994o;
        this.f7110p = 0;
        this.f7099e = (int) (((oVar.f7099e + (f25 * f19)) + (f27 * f20)) - f22);
        this.f7100f = (int) (((oVar.f7100f + (f19 * f26)) + (f20 * f10)) - f24);
        this.f7095a = androidx.constraintlayout.core.motion.utils.c.c(hVar.f6987h);
        this.f7105k = hVar.f6988i;
    }

    void n(h hVar, o oVar, o oVar2) {
        float f10 = hVar.f6941a / 100.0f;
        this.f7097c = f10;
        this.f7096b = hVar.f6989j;
        float f11 = Float.isNaN(hVar.f6990k) ? f10 : hVar.f6990k;
        float f12 = Float.isNaN(hVar.f6991l) ? f10 : hVar.f6991l;
        float f13 = oVar2.f7101g - oVar.f7101g;
        float f14 = oVar2.f7102h - oVar.f7102h;
        this.f7098d = this.f7097c;
        if (!Float.isNaN(hVar.f6992m)) {
            f10 = hVar.f6992m;
        }
        float f15 = oVar.f7099e;
        float f16 = oVar.f7101g;
        float f17 = oVar.f7100f;
        float f18 = oVar.f7102h;
        float f19 = (oVar2.f7099e + (oVar2.f7101g / 2.0f)) - ((f16 / 2.0f) + f15);
        float f20 = (oVar2.f7100f + (oVar2.f7102h / 2.0f)) - ((f18 / 2.0f) + f17);
        float f21 = f19 * f10;
        float f22 = f13 * f11;
        float f23 = f22 / 2.0f;
        this.f7099e = (int) ((f15 + f21) - f23);
        float f24 = f10 * f20;
        float f25 = f14 * f12;
        float f26 = f25 / 2.0f;
        this.f7100f = (int) ((f17 + f24) - f26);
        this.f7101g = (int) (f16 + f22);
        this.f7102h = (int) (f18 + f25);
        float f27 = Float.isNaN(hVar.f6993n) ? 0.0f : hVar.f6993n;
        this.f7110p = 1;
        float f28 = (int) ((oVar.f7099e + f21) - f23);
        float f29 = (int) ((oVar.f7100f + f24) - f26);
        this.f7099e = f28 + ((-f20) * f27);
        this.f7100f = f29 + (f19 * f27);
        this.f7106l = this.f7106l;
        this.f7095a = androidx.constraintlayout.core.motion.utils.c.c(hVar.f6987h);
        this.f7105k = hVar.f6988i;
    }

    void o(int i10, int i11, h hVar, o oVar, o oVar2) {
        float fMin;
        float f10;
        float f11 = hVar.f6941a / 100.0f;
        this.f7097c = f11;
        this.f7096b = hVar.f6989j;
        this.f7110p = hVar.f6996q;
        float f12 = Float.isNaN(hVar.f6990k) ? f11 : hVar.f6990k;
        float f13 = Float.isNaN(hVar.f6991l) ? f11 : hVar.f6991l;
        float f14 = oVar2.f7101g;
        float f15 = oVar.f7101g;
        float f16 = oVar2.f7102h;
        float f17 = oVar.f7102h;
        this.f7098d = this.f7097c;
        this.f7101g = (int) (f15 + ((f14 - f15) * f12));
        this.f7102h = (int) (f17 + ((f16 - f17) * f13));
        int i12 = hVar.f6996q;
        if (i12 == 1) {
            float f18 = Float.isNaN(hVar.f6992m) ? f11 : hVar.f6992m;
            float f19 = oVar2.f7099e;
            float f20 = oVar.f7099e;
            this.f7099e = (f18 * (f19 - f20)) + f20;
            if (!Float.isNaN(hVar.f6993n)) {
                f11 = hVar.f6993n;
            }
            float f21 = oVar2.f7100f;
            float f22 = oVar.f7100f;
            this.f7100f = (f11 * (f21 - f22)) + f22;
        } else if (i12 != 2) {
            float f23 = Float.isNaN(hVar.f6992m) ? f11 : hVar.f6992m;
            float f24 = oVar2.f7099e;
            float f25 = oVar.f7099e;
            this.f7099e = (f23 * (f24 - f25)) + f25;
            if (!Float.isNaN(hVar.f6993n)) {
                f11 = hVar.f6993n;
            }
            float f26 = oVar2.f7100f;
            float f27 = oVar.f7100f;
            this.f7100f = (f11 * (f26 - f27)) + f27;
        } else {
            if (Float.isNaN(hVar.f6992m)) {
                float f28 = oVar2.f7099e;
                float f29 = oVar.f7099e;
                fMin = ((f28 - f29) * f11) + f29;
            } else {
                fMin = Math.min(f13, f12) * hVar.f6992m;
            }
            this.f7099e = fMin;
            if (Float.isNaN(hVar.f6993n)) {
                float f30 = oVar2.f7100f;
                float f31 = oVar.f7100f;
                f10 = (f11 * (f30 - f31)) + f31;
            } else {
                f10 = hVar.f6993n;
            }
            this.f7100f = f10;
        }
        this.f7106l = oVar.f7106l;
        this.f7095a = androidx.constraintlayout.core.motion.utils.c.c(hVar.f6987h);
        this.f7105k = hVar.f6988i;
    }

    void p(int i10, int i11, h hVar, o oVar, o oVar2) {
        float f10 = hVar.f6941a / 100.0f;
        this.f7097c = f10;
        this.f7096b = hVar.f6989j;
        float f11 = Float.isNaN(hVar.f6990k) ? f10 : hVar.f6990k;
        float f12 = Float.isNaN(hVar.f6991l) ? f10 : hVar.f6991l;
        float f13 = oVar2.f7101g;
        float f14 = oVar.f7101g;
        float f15 = oVar2.f7102h;
        float f16 = oVar.f7102h;
        this.f7098d = this.f7097c;
        float f17 = oVar.f7099e;
        float f18 = oVar.f7100f;
        float f19 = oVar2.f7099e + (f13 / 2.0f);
        float f20 = oVar2.f7100f + (f15 / 2.0f);
        float f21 = (f13 - f14) * f11;
        this.f7099e = (int) ((f17 + ((f19 - ((f14 / 2.0f) + f17)) * f10)) - (f21 / 2.0f));
        float f22 = (f15 - f16) * f12;
        this.f7100f = (int) ((f18 + ((f20 - (f18 + (f16 / 2.0f))) * f10)) - (f22 / 2.0f));
        this.f7101g = (int) (f14 + f21);
        this.f7102h = (int) (f16 + f22);
        this.f7110p = 2;
        if (!Float.isNaN(hVar.f6992m)) {
            this.f7099e = (int) (hVar.f6992m * ((int) (i10 - this.f7101g)));
        }
        if (!Float.isNaN(hVar.f6993n)) {
            this.f7100f = (int) (hVar.f6993n * ((int) (i11 - this.f7102h)));
        }
        this.f7106l = this.f7106l;
        this.f7095a = androidx.constraintlayout.core.motion.utils.c.c(hVar.f6987h);
        this.f7105k = hVar.f6988i;
    }

    void q(float f10, float f11, float f12, float f13) {
        this.f7099e = f10;
        this.f7100f = f11;
        this.f7101g = f12;
        this.f7102h = f13;
    }

    void r(float f10, float f11, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f16 = (float) dArr[i10];
            double d10 = dArr2[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f12 = f16;
            } else if (i11 == 2) {
                f14 = f16;
            } else if (i11 == 3) {
                f13 = f16;
            } else if (i11 == 4) {
                f15 = f16;
            }
        }
        float f17 = f12 - ((0.0f * f13) / 2.0f);
        float f18 = f14 - ((0.0f * f15) / 2.0f);
        fArr[0] = (f17 * (1.0f - f10)) + (((f13 * 1.0f) + f17) * f10) + 0.0f;
        fArr[1] = (f18 * (1.0f - f11)) + (((f15 * 1.0f) + f18) * f11) + 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void s(float f10, View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3, boolean z10) {
        float f11;
        float f12;
        float f13 = this.f7099e;
        float f14 = this.f7100f;
        float f15 = this.f7101g;
        float f16 = this.f7102h;
        if (iArr.length != 0 && this.f7112r.length <= iArr[iArr.length - 1]) {
            int i10 = iArr[iArr.length - 1] + 1;
            this.f7112r = new double[i10];
            this.f7113s = new double[i10];
        }
        Arrays.fill(this.f7112r, Double.NaN);
        for (int i11 = 0; i11 < iArr.length; i11++) {
            double[] dArr4 = this.f7112r;
            int i12 = iArr[i11];
            dArr4[i12] = dArr[i11];
            this.f7113s[i12] = dArr2[i11];
        }
        float f17 = Float.NaN;
        int i13 = 0;
        float f18 = 0.0f;
        float f19 = 0.0f;
        float f20 = 0.0f;
        float f21 = 0.0f;
        while (true) {
            double[] dArr5 = this.f7112r;
            if (i13 >= dArr5.length) {
                break;
            }
            if (Double.isNaN(dArr5[i13]) && (dArr3 == null || dArr3[i13] == 0.0d)) {
                f12 = f17;
            } else {
                double d10 = dArr3 != null ? dArr3[i13] : 0.0d;
                if (!Double.isNaN(this.f7112r[i13])) {
                    d10 = this.f7112r[i13] + d10;
                }
                f12 = f17;
                float f22 = (float) d10;
                float f23 = (float) this.f7113s[i13];
                if (i13 == 1) {
                    f17 = f12;
                    f18 = f23;
                    f13 = f22;
                } else if (i13 == 2) {
                    f17 = f12;
                    f19 = f23;
                    f14 = f22;
                } else if (i13 == 3) {
                    f17 = f12;
                    f20 = f23;
                    f15 = f22;
                } else if (i13 == 4) {
                    f17 = f12;
                    f21 = f23;
                    f16 = f22;
                } else if (i13 == 5) {
                    f17 = f22;
                }
                i13++;
            }
            f17 = f12;
            i13++;
        }
        float f24 = f17;
        m mVar = this.f7108n;
        if (mVar != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            mVar.i(f10, fArr, fArr2);
            float f25 = fArr[0];
            float f26 = fArr[1];
            float f27 = fArr2[0];
            float f28 = fArr2[1];
            double d11 = f13;
            double d12 = f14;
            float fSin = (float) ((((double) f25) + (Math.sin(d12) * d11)) - ((double) (f15 / 2.0f)));
            f11 = f16;
            float fCos = (float) ((((double) f26) - (Math.cos(d12) * d11)) - ((double) (f16 / 2.0f)));
            double d13 = f18;
            double d14 = f19;
            float fSin2 = (float) (((double) f27) + (Math.sin(d12) * d13) + (Math.cos(d12) * d11 * d14));
            float fCos2 = (float) ((((double) f28) - (d13 * Math.cos(d12))) + (d11 * Math.sin(d12) * d14));
            if (dArr2.length >= 2) {
                dArr2[0] = fSin2;
                dArr2[1] = fCos2;
            }
            if (!Float.isNaN(f24)) {
                view.setRotation((float) (((double) f24) + Math.toDegrees(Math.atan2(fCos2, fSin2))));
            }
            f13 = fSin;
            f14 = fCos;
        } else {
            f11 = f16;
            if (!Float.isNaN(f24)) {
                view.setRotation((float) (((double) 0.0f) + ((double) f24) + Math.toDegrees(Math.atan2(f19 + (f21 / 2.0f), f18 + (f20 / 2.0f)))));
            }
        }
        if (view instanceof c) {
            ((c) view).layout(f13, f14, f15 + f13, f14 + f11);
            return;
        }
        float f29 = f13 + 0.5f;
        int i14 = (int) f29;
        float f30 = f14 + 0.5f;
        int i15 = (int) f30;
        int i16 = (int) (f29 + f15);
        int i17 = (int) (f30 + f11);
        int i18 = i16 - i14;
        int i19 = i17 - i15;
        if (i18 != view.getMeasuredWidth() || i19 != view.getMeasuredHeight() || z10) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i18, 1073741824), View.MeasureSpec.makeMeasureSpec(i19, 1073741824));
        }
        view.layout(i14, i15, i16, i17);
    }

    public void t(m mVar, o oVar) {
        double d10 = ((this.f7099e + (this.f7101g / 2.0f)) - oVar.f7099e) - (oVar.f7101g / 2.0f);
        double d11 = ((this.f7100f + (this.f7102h / 2.0f)) - oVar.f7100f) - (oVar.f7102h / 2.0f);
        this.f7108n = mVar;
        this.f7099e = (float) Math.hypot(d11, d10);
        if (Float.isNaN(this.f7107m)) {
            this.f7100f = (float) (Math.atan2(d11, d10) + 1.5707963267948966d);
        } else {
            this.f7100f = (float) Math.toRadians(this.f7107m);
        }
    }

    public o(int i10, int i11, h hVar, o oVar, o oVar2) {
        int i12 = d.f6940f;
        this.f7105k = i12;
        this.f7106l = i12;
        this.f7107m = Float.NaN;
        this.f7108n = null;
        this.f7109o = new LinkedHashMap();
        this.f7110p = 0;
        this.f7112r = new double[18];
        this.f7113s = new double[18];
        if (oVar.f7106l != d.f6940f) {
            o(i10, i11, hVar, oVar, oVar2);
            return;
        }
        int i13 = hVar.f6996q;
        if (i13 == 1) {
            n(hVar, oVar, oVar2);
        } else if (i13 != 2) {
            m(hVar, oVar, oVar2);
        } else {
            p(i10, i11, hVar, oVar, oVar2);
        }
    }
}
