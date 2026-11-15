package androidx.constraintlayout.core;

import java.util.Arrays;

public class h implements b.a {

    private static float f6392n = 0.001f;

    private final int f6393a = -1;

    private int f6394b = 16;

    private int f6395c = 16;

    int[] f6396d = new int[16];

    int[] f6397e = new int[16];

    int[] f6398f = new int[16];

    float[] f6399g = new float[16];

    int[] f6400h = new int[16];

    int[] f6401i = new int[16];

    int f6402j = 0;

    int f6403k = -1;

    private final b f6404l;

    protected final c f6405m;

    h(b bVar, c cVar) {
        this.f6404l = bVar;
        this.f6405m = cVar;
        clear();
    }

    private void k(SolverVariable solverVariable, int i10) {
        int[] iArr;
        int i11 = solverVariable.f6300c % this.f6395c;
        int[] iArr2 = this.f6396d;
        int i12 = iArr2[i11];
        if (i12 == -1) {
            iArr2[i11] = i10;
        } else {
            while (true) {
                iArr = this.f6397e;
                int i13 = iArr[i12];
                if (i13 == -1) {
                    break;
                } else {
                    i12 = i13;
                }
            }
            iArr[i12] = i10;
        }
        this.f6397e[i10] = -1;
    }

    private void l(int i10, SolverVariable solverVariable, float f10) {
        this.f6398f[i10] = solverVariable.f6300c;
        this.f6399g[i10] = f10;
        this.f6400h[i10] = -1;
        this.f6401i[i10] = -1;
        solverVariable.a(this.f6404l);
        solverVariable.f6310m++;
        this.f6402j++;
    }

    private int m() {
        for (int i10 = 0; i10 < this.f6394b; i10++) {
            if (this.f6398f[i10] == -1) {
                return i10;
            }
        }
        return -1;
    }

    private void n() {
        int i10 = this.f6394b * 2;
        this.f6398f = Arrays.copyOf(this.f6398f, i10);
        this.f6399g = Arrays.copyOf(this.f6399g, i10);
        this.f6400h = Arrays.copyOf(this.f6400h, i10);
        this.f6401i = Arrays.copyOf(this.f6401i, i10);
        this.f6397e = Arrays.copyOf(this.f6397e, i10);
        for (int i11 = this.f6394b; i11 < i10; i11++) {
            this.f6398f[i11] = -1;
            this.f6397e[i11] = -1;
        }
        this.f6394b = i10;
    }

    private void p(int i10, SolverVariable solverVariable, float f10) {
        int iM = m();
        l(iM, solverVariable, f10);
        if (i10 != -1) {
            this.f6400h[iM] = i10;
            int[] iArr = this.f6401i;
            iArr[iM] = iArr[i10];
            iArr[i10] = iM;
        } else {
            this.f6400h[iM] = -1;
            if (this.f6402j > 0) {
                this.f6401i[iM] = this.f6403k;
                this.f6403k = iM;
            } else {
                this.f6401i[iM] = -1;
            }
        }
        int i11 = this.f6401i[iM];
        if (i11 != -1) {
            this.f6400h[i11] = iM;
        }
        k(solverVariable, iM);
    }

    private void q(SolverVariable solverVariable) {
        int[] iArr;
        int i10;
        int i11 = solverVariable.f6300c;
        int i12 = i11 % this.f6395c;
        int[] iArr2 = this.f6396d;
        int i13 = iArr2[i12];
        if (i13 == -1) {
            return;
        }
        if (this.f6398f[i13] == i11) {
            int[] iArr3 = this.f6397e;
            iArr2[i12] = iArr3[i13];
            iArr3[i13] = -1;
            return;
        }
        while (true) {
            iArr = this.f6397e;
            i10 = iArr[i13];
            if (i10 == -1 || this.f6398f[i10] == i11) {
                break;
            } else {
                i13 = i10;
            }
        }
        if (i10 == -1 || this.f6398f[i10] != i11) {
            return;
        }
        iArr[i13] = iArr[i10];
        iArr[i10] = -1;
    }

    @Override
    public boolean a(SolverVariable solverVariable) {
        return o(solverVariable) != -1;
    }

    @Override
    public SolverVariable b(int i10) {
        int i11 = this.f6402j;
        if (i11 == 0) {
            return null;
        }
        int i12 = this.f6403k;
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 == i10 && i12 != -1) {
                return this.f6405m.f6336d[this.f6398f[i12]];
            }
            i12 = this.f6401i[i12];
            if (i12 == -1) {
                break;
            }
        }
        return null;
    }

    @Override
    public void c(SolverVariable solverVariable, float f10, boolean z10) {
        float f11 = f6392n;
        if (f10 <= (-f11) || f10 >= f11) {
            int iO = o(solverVariable);
            if (iO == -1) {
                g(solverVariable, f10);
                return;
            }
            float[] fArr = this.f6399g;
            float f12 = fArr[iO] + f10;
            fArr[iO] = f12;
            float f13 = f6392n;
            if (f12 <= (-f13) || f12 >= f13) {
                return;
            }
            fArr[iO] = 0.0f;
            e(solverVariable, z10);
        }
    }

    @Override
    public void clear() {
        int i10 = this.f6402j;
        for (int i11 = 0; i11 < i10; i11++) {
            SolverVariable solverVariableB = b(i11);
            if (solverVariableB != null) {
                solverVariableB.e(this.f6404l);
            }
        }
        for (int i12 = 0; i12 < this.f6394b; i12++) {
            this.f6398f[i12] = -1;
            this.f6397e[i12] = -1;
        }
        for (int i13 = 0; i13 < this.f6395c; i13++) {
            this.f6396d[i13] = -1;
        }
        this.f6402j = 0;
        this.f6403k = -1;
    }

    @Override
    public void d() {
        int i10 = this.f6402j;
        int i11 = this.f6403k;
        for (int i12 = 0; i12 < i10; i12++) {
            float[] fArr = this.f6399g;
            fArr[i11] = fArr[i11] * (-1.0f);
            i11 = this.f6401i[i11];
            if (i11 == -1) {
                return;
            }
        }
    }

    @Override
    public float e(SolverVariable solverVariable, boolean z10) {
        int iO = o(solverVariable);
        if (iO == -1) {
            return 0.0f;
        }
        q(solverVariable);
        float f10 = this.f6399g[iO];
        if (this.f6403k == iO) {
            this.f6403k = this.f6401i[iO];
        }
        this.f6398f[iO] = -1;
        int[] iArr = this.f6400h;
        int i10 = iArr[iO];
        if (i10 != -1) {
            int[] iArr2 = this.f6401i;
            iArr2[i10] = iArr2[iO];
        }
        int i11 = this.f6401i[iO];
        if (i11 != -1) {
            iArr[i11] = iArr[iO];
        }
        this.f6402j--;
        solverVariable.f6310m--;
        if (z10) {
            solverVariable.e(this.f6404l);
        }
        return f10;
    }

    @Override
    public float f(b bVar, boolean z10) {
        float fI = i(bVar.f6327a);
        e(bVar.f6327a, z10);
        h hVar = (h) bVar.f6331e;
        int currentSize = hVar.getCurrentSize();
        int i10 = 0;
        int i11 = 0;
        while (i10 < currentSize) {
            int i12 = hVar.f6398f[i11];
            if (i12 != -1) {
                c(this.f6405m.f6336d[i12], hVar.f6399g[i11] * fI, z10);
                i10++;
            }
            i11++;
        }
        return fI;
    }

    @Override
    public void g(SolverVariable solverVariable, float f10) {
        float f11 = f6392n;
        if (f10 > (-f11) && f10 < f11) {
            e(solverVariable, true);
            return;
        }
        if (this.f6402j == 0) {
            l(0, solverVariable, f10);
            k(solverVariable, 0);
            this.f6403k = 0;
            return;
        }
        int iO = o(solverVariable);
        if (iO != -1) {
            this.f6399g[iO] = f10;
            return;
        }
        if (this.f6402j + 1 >= this.f6394b) {
            n();
        }
        int i10 = this.f6402j;
        int i11 = this.f6403k;
        int i12 = -1;
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = this.f6398f[i11];
            int i15 = solverVariable.f6300c;
            if (i14 == i15) {
                this.f6399g[i11] = f10;
                return;
            }
            if (i14 < i15) {
                i12 = i11;
            }
            i11 = this.f6401i[i11];
            if (i11 == -1) {
                break;
            }
        }
        p(i12, solverVariable, f10);
    }

    @Override
    public int getCurrentSize() {
        return this.f6402j;
    }

    @Override
    public float h(int i10) {
        int i11 = this.f6402j;
        int i12 = this.f6403k;
        for (int i13 = 0; i13 < i11; i13++) {
            if (i13 == i10) {
                return this.f6399g[i12];
            }
            i12 = this.f6401i[i12];
            if (i12 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override
    public float i(SolverVariable solverVariable) {
        int iO = o(solverVariable);
        if (iO != -1) {
            return this.f6399g[iO];
        }
        return 0.0f;
    }

    @Override
    public void j(float f10) {
        int i10 = this.f6402j;
        int i11 = this.f6403k;
        for (int i12 = 0; i12 < i10; i12++) {
            float[] fArr = this.f6399g;
            fArr[i11] = fArr[i11] / f10;
            i11 = this.f6401i[i11];
            if (i11 == -1) {
                return;
            }
        }
    }

    public int o(SolverVariable solverVariable) {
        if (this.f6402j != 0 && solverVariable != null) {
            int i10 = solverVariable.f6300c;
            int i11 = this.f6396d[i10 % this.f6395c];
            if (i11 == -1) {
                return -1;
            }
            if (this.f6398f[i11] == i10) {
                return i11;
            }
            do {
                i11 = this.f6397e[i11];
                if (i11 == -1) {
                    break;
                }
            } while (this.f6398f[i11] != i10);
            if (i11 != -1 && this.f6398f[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    public String toString() {
        String str = hashCode() + " { ";
        int i10 = this.f6402j;
        for (int i11 = 0; i11 < i10; i11++) {
            SolverVariable solverVariableB = b(i11);
            if (solverVariableB != null) {
                String str2 = str + solverVariableB + " = " + h(i11) + " ";
                int iO = o(solverVariableB);
                String str3 = str2 + "[p: ";
                String str4 = (this.f6400h[iO] != -1 ? str3 + this.f6405m.f6336d[this.f6398f[this.f6400h[iO]]] : str3 + "none") + ", n: ";
                str = (this.f6401i[iO] != -1 ? str4 + this.f6405m.f6336d[this.f6398f[this.f6401i[iO]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }
}
