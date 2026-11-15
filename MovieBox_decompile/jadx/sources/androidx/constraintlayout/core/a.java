package androidx.constraintlayout.core;

import java.util.Arrays;

public class a implements b.a {

    private static float f6315l = 0.001f;

    private final b f6317b;

    protected final c f6318c;

    int f6316a = 0;

    private int f6319d = 8;

    private SolverVariable f6320e = null;

    private int[] f6321f = new int[8];

    private int[] f6322g = new int[8];

    private float[] f6323h = new float[8];

    private int f6324i = -1;

    private int f6325j = -1;

    private boolean f6326k = false;

    a(b bVar, c cVar) {
        this.f6317b = bVar;
        this.f6318c = cVar;
    }

    @Override
    public boolean a(SolverVariable solverVariable) {
        int i10 = this.f6324i;
        if (i10 == -1) {
            return false;
        }
        for (int i11 = 0; i10 != -1 && i11 < this.f6316a; i11++) {
            if (this.f6321f[i10] == solverVariable.f6300c) {
                return true;
            }
            i10 = this.f6322g[i10];
        }
        return false;
    }

    @Override
    public SolverVariable b(int i10) {
        int i11 = this.f6324i;
        for (int i12 = 0; i11 != -1 && i12 < this.f6316a; i12++) {
            if (i12 == i10) {
                return this.f6318c.f6336d[this.f6321f[i11]];
            }
            i11 = this.f6322g[i11];
        }
        return null;
    }

    @Override
    public void c(SolverVariable solverVariable, float f10, boolean z10) {
        float f11 = f6315l;
        if (f10 <= (-f11) || f10 >= f11) {
            int i10 = this.f6324i;
            if (i10 == -1) {
                this.f6324i = 0;
                this.f6323h[0] = f10;
                this.f6321f[0] = solverVariable.f6300c;
                this.f6322g[0] = -1;
                solverVariable.f6310m++;
                solverVariable.a(this.f6317b);
                this.f6316a++;
                if (this.f6326k) {
                    return;
                }
                int i11 = this.f6325j + 1;
                this.f6325j = i11;
                int[] iArr = this.f6321f;
                if (i11 >= iArr.length) {
                    this.f6326k = true;
                    this.f6325j = iArr.length - 1;
                    return;
                }
                return;
            }
            int i12 = -1;
            for (int i13 = 0; i10 != -1 && i13 < this.f6316a; i13++) {
                int i14 = this.f6321f[i10];
                int i15 = solverVariable.f6300c;
                if (i14 == i15) {
                    float[] fArr = this.f6323h;
                    float f12 = fArr[i10] + f10;
                    float f13 = f6315l;
                    if (f12 > (-f13) && f12 < f13) {
                        f12 = 0.0f;
                    }
                    fArr[i10] = f12;
                    if (f12 == 0.0f) {
                        if (i10 == this.f6324i) {
                            this.f6324i = this.f6322g[i10];
                        } else {
                            int[] iArr2 = this.f6322g;
                            iArr2[i12] = iArr2[i10];
                        }
                        if (z10) {
                            solverVariable.e(this.f6317b);
                        }
                        if (this.f6326k) {
                            this.f6325j = i10;
                        }
                        solverVariable.f6310m--;
                        this.f6316a--;
                        return;
                    }
                    return;
                }
                if (i14 < i15) {
                    i12 = i10;
                }
                i10 = this.f6322g[i10];
            }
            int length = this.f6325j;
            int i16 = length + 1;
            if (this.f6326k) {
                int[] iArr3 = this.f6321f;
                if (iArr3[length] != -1) {
                    length = iArr3.length;
                }
            } else {
                length = i16;
            }
            int[] iArr4 = this.f6321f;
            if (length >= iArr4.length && this.f6316a < iArr4.length) {
                int i17 = 0;
                while (true) {
                    int[] iArr5 = this.f6321f;
                    if (i17 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i17] == -1) {
                        length = i17;
                        break;
                    }
                    i17++;
                }
            }
            int[] iArr6 = this.f6321f;
            if (length >= iArr6.length) {
                length = iArr6.length;
                int i18 = this.f6319d * 2;
                this.f6319d = i18;
                this.f6326k = false;
                this.f6325j = length - 1;
                this.f6323h = Arrays.copyOf(this.f6323h, i18);
                this.f6321f = Arrays.copyOf(this.f6321f, this.f6319d);
                this.f6322g = Arrays.copyOf(this.f6322g, this.f6319d);
            }
            this.f6321f[length] = solverVariable.f6300c;
            this.f6323h[length] = f10;
            if (i12 != -1) {
                int[] iArr7 = this.f6322g;
                iArr7[length] = iArr7[i12];
                iArr7[i12] = length;
            } else {
                this.f6322g[length] = this.f6324i;
                this.f6324i = length;
            }
            solverVariable.f6310m++;
            solverVariable.a(this.f6317b);
            this.f6316a++;
            if (!this.f6326k) {
                this.f6325j++;
            }
            int i19 = this.f6325j;
            int[] iArr8 = this.f6321f;
            if (i19 >= iArr8.length) {
                this.f6326k = true;
                this.f6325j = iArr8.length - 1;
            }
        }
    }

    @Override
    public final void clear() {
        int i10 = this.f6324i;
        for (int i11 = 0; i10 != -1 && i11 < this.f6316a; i11++) {
            SolverVariable solverVariable = this.f6318c.f6336d[this.f6321f[i10]];
            if (solverVariable != null) {
                solverVariable.e(this.f6317b);
            }
            i10 = this.f6322g[i10];
        }
        this.f6324i = -1;
        this.f6325j = -1;
        this.f6326k = false;
        this.f6316a = 0;
    }

    @Override
    public void d() {
        int i10 = this.f6324i;
        for (int i11 = 0; i10 != -1 && i11 < this.f6316a; i11++) {
            float[] fArr = this.f6323h;
            fArr[i10] = fArr[i10] * (-1.0f);
            i10 = this.f6322g[i10];
        }
    }

    @Override
    public final float e(SolverVariable solverVariable, boolean z10) {
        if (this.f6320e == solverVariable) {
            this.f6320e = null;
        }
        int i10 = this.f6324i;
        if (i10 == -1) {
            return 0.0f;
        }
        int i11 = 0;
        int i12 = -1;
        while (i10 != -1 && i11 < this.f6316a) {
            if (this.f6321f[i10] == solverVariable.f6300c) {
                if (i10 == this.f6324i) {
                    this.f6324i = this.f6322g[i10];
                } else {
                    int[] iArr = this.f6322g;
                    iArr[i12] = iArr[i10];
                }
                if (z10) {
                    solverVariable.e(this.f6317b);
                }
                solverVariable.f6310m--;
                this.f6316a--;
                this.f6321f[i10] = -1;
                if (this.f6326k) {
                    this.f6325j = i10;
                }
                return this.f6323h[i10];
            }
            i11++;
            i12 = i10;
            i10 = this.f6322g[i10];
        }
        return 0.0f;
    }

    @Override
    public float f(b bVar, boolean z10) {
        float fI = i(bVar.f6327a);
        e(bVar.f6327a, z10);
        b.a aVar = bVar.f6331e;
        int currentSize = aVar.getCurrentSize();
        for (int i10 = 0; i10 < currentSize; i10++) {
            SolverVariable solverVariableB = aVar.b(i10);
            c(solverVariableB, aVar.i(solverVariableB) * fI, z10);
        }
        return fI;
    }

    @Override
    public final void g(SolverVariable solverVariable, float f10) {
        if (f10 == 0.0f) {
            e(solverVariable, true);
            return;
        }
        int i10 = this.f6324i;
        if (i10 == -1) {
            this.f6324i = 0;
            this.f6323h[0] = f10;
            this.f6321f[0] = solverVariable.f6300c;
            this.f6322g[0] = -1;
            solverVariable.f6310m++;
            solverVariable.a(this.f6317b);
            this.f6316a++;
            if (this.f6326k) {
                return;
            }
            int i11 = this.f6325j + 1;
            this.f6325j = i11;
            int[] iArr = this.f6321f;
            if (i11 >= iArr.length) {
                this.f6326k = true;
                this.f6325j = iArr.length - 1;
                return;
            }
            return;
        }
        int i12 = -1;
        for (int i13 = 0; i10 != -1 && i13 < this.f6316a; i13++) {
            int i14 = this.f6321f[i10];
            int i15 = solverVariable.f6300c;
            if (i14 == i15) {
                this.f6323h[i10] = f10;
                return;
            }
            if (i14 < i15) {
                i12 = i10;
            }
            i10 = this.f6322g[i10];
        }
        int length = this.f6325j;
        int i16 = length + 1;
        if (this.f6326k) {
            int[] iArr2 = this.f6321f;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i16;
        }
        int[] iArr3 = this.f6321f;
        if (length >= iArr3.length && this.f6316a < iArr3.length) {
            int i17 = 0;
            while (true) {
                int[] iArr4 = this.f6321f;
                if (i17 >= iArr4.length) {
                    break;
                }
                if (iArr4[i17] == -1) {
                    length = i17;
                    break;
                }
                i17++;
            }
        }
        int[] iArr5 = this.f6321f;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i18 = this.f6319d * 2;
            this.f6319d = i18;
            this.f6326k = false;
            this.f6325j = length - 1;
            this.f6323h = Arrays.copyOf(this.f6323h, i18);
            this.f6321f = Arrays.copyOf(this.f6321f, this.f6319d);
            this.f6322g = Arrays.copyOf(this.f6322g, this.f6319d);
        }
        this.f6321f[length] = solverVariable.f6300c;
        this.f6323h[length] = f10;
        if (i12 != -1) {
            int[] iArr6 = this.f6322g;
            iArr6[length] = iArr6[i12];
            iArr6[i12] = length;
        } else {
            this.f6322g[length] = this.f6324i;
            this.f6324i = length;
        }
        solverVariable.f6310m++;
        solverVariable.a(this.f6317b);
        int i19 = this.f6316a + 1;
        this.f6316a = i19;
        if (!this.f6326k) {
            this.f6325j++;
        }
        int[] iArr7 = this.f6321f;
        if (i19 >= iArr7.length) {
            this.f6326k = true;
        }
        if (this.f6325j >= iArr7.length) {
            this.f6326k = true;
            this.f6325j = iArr7.length - 1;
        }
    }

    @Override
    public int getCurrentSize() {
        return this.f6316a;
    }

    @Override
    public float h(int i10) {
        int i11 = this.f6324i;
        for (int i12 = 0; i11 != -1 && i12 < this.f6316a; i12++) {
            if (i12 == i10) {
                return this.f6323h[i11];
            }
            i11 = this.f6322g[i11];
        }
        return 0.0f;
    }

    @Override
    public final float i(SolverVariable solverVariable) {
        int i10 = this.f6324i;
        for (int i11 = 0; i10 != -1 && i11 < this.f6316a; i11++) {
            if (this.f6321f[i10] == solverVariable.f6300c) {
                return this.f6323h[i10];
            }
            i10 = this.f6322g[i10];
        }
        return 0.0f;
    }

    @Override
    public void j(float f10) {
        int i10 = this.f6324i;
        for (int i11 = 0; i10 != -1 && i11 < this.f6316a; i11++) {
            float[] fArr = this.f6323h;
            fArr[i10] = fArr[i10] / f10;
            i10 = this.f6322g[i10];
        }
    }

    public String toString() {
        int i10 = this.f6324i;
        String str = "";
        for (int i11 = 0; i10 != -1 && i11 < this.f6316a; i11++) {
            str = ((str + " -> ") + this.f6323h[i10] + " : ") + this.f6318c.f6336d[this.f6321f[i10]];
            i10 = this.f6322g[i10];
        }
        return str;
    }
}
