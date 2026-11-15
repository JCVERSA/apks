package androidx.constraintlayout.core;

import java.util.Arrays;
import java.util.Comparator;

public class PriorityGoalRow extends b {

    private int f6288g;

    private SolverVariable[] f6289h;

    private SolverVariable[] f6290i;

    private int f6291j;

    a f6292k;

    c f6293l;

    class a {

        SolverVariable f6294a;

        PriorityGoalRow f6295b;

        public a(PriorityGoalRow priorityGoalRow) {
            this.f6295b = priorityGoalRow;
        }

        public boolean a(SolverVariable solverVariable, float f10) {
            boolean z10 = true;
            if (!this.f6294a.f6298a) {
                for (int i10 = 0; i10 < 9; i10++) {
                    float f11 = solverVariable.f6306i[i10];
                    if (f11 != 0.0f) {
                        float f12 = f11 * f10;
                        if (Math.abs(f12) < 1.0E-4f) {
                            f12 = 0.0f;
                        }
                        this.f6294a.f6306i[i10] = f12;
                    } else {
                        this.f6294a.f6306i[i10] = 0.0f;
                    }
                }
                return true;
            }
            for (int i11 = 0; i11 < 9; i11++) {
                float[] fArr = this.f6294a.f6306i;
                float f13 = fArr[i11] + (solverVariable.f6306i[i11] * f10);
                fArr[i11] = f13;
                if (Math.abs(f13) < 1.0E-4f) {
                    this.f6294a.f6306i[i11] = 0.0f;
                } else {
                    z10 = false;
                }
            }
            if (z10) {
                PriorityGoalRow.this.G(this.f6294a);
            }
            return false;
        }

        public void b(SolverVariable solverVariable) {
            this.f6294a = solverVariable;
        }

        public final boolean c() {
            for (int i10 = 8; i10 >= 0; i10--) {
                float f10 = this.f6294a.f6306i[i10];
                if (f10 > 0.0f) {
                    return false;
                }
                if (f10 < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean d(SolverVariable solverVariable) {
            for (int i10 = 8; i10 >= 0; i10--) {
                float f10 = solverVariable.f6306i[i10];
                float f11 = this.f6294a.f6306i[i10];
                if (f11 != f10) {
                    if (f11 < f10) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void e() {
            Arrays.fill(this.f6294a.f6306i, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            if (this.f6294a != null) {
                for (int i10 = 0; i10 < 9; i10++) {
                    str = str + this.f6294a.f6306i[i10] + " ";
                }
            }
            return str + "] " + this.f6294a;
        }
    }

    public PriorityGoalRow(c cVar) {
        super(cVar);
        this.f6288g = 128;
        this.f6289h = new SolverVariable[128];
        this.f6290i = new SolverVariable[128];
        this.f6291j = 0;
        this.f6292k = new a(this);
        this.f6293l = cVar;
    }

    private final void F(SolverVariable solverVariable) {
        int i10;
        int i11 = this.f6291j + 1;
        SolverVariable[] solverVariableArr = this.f6289h;
        if (i11 > solverVariableArr.length) {
            SolverVariable[] solverVariableArr2 = (SolverVariable[]) Arrays.copyOf(solverVariableArr, solverVariableArr.length * 2);
            this.f6289h = solverVariableArr2;
            this.f6290i = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
        }
        SolverVariable[] solverVariableArr3 = this.f6289h;
        int i12 = this.f6291j;
        solverVariableArr3[i12] = solverVariable;
        int i13 = i12 + 1;
        this.f6291j = i13;
        if (i13 > 1 && solverVariableArr3[i12].f6300c > solverVariable.f6300c) {
            int i14 = 0;
            while (true) {
                i10 = this.f6291j;
                if (i14 >= i10) {
                    break;
                }
                this.f6290i[i14] = this.f6289h[i14];
                i14++;
            }
            Arrays.sort(this.f6290i, 0, i10, new Comparator<SolverVariable>() {
                @Override
                public int compare(SolverVariable solverVariable2, SolverVariable solverVariable3) {
                    return solverVariable2.f6300c - solverVariable3.f6300c;
                }
            });
            for (int i15 = 0; i15 < this.f6291j; i15++) {
                this.f6289h[i15] = this.f6290i[i15];
            }
        }
        solverVariable.f6298a = true;
        solverVariable.a(this);
    }

    public final void G(SolverVariable solverVariable) {
        int i10 = 0;
        while (i10 < this.f6291j) {
            if (this.f6289h[i10] == solverVariable) {
                while (true) {
                    int i11 = this.f6291j;
                    if (i10 >= i11 - 1) {
                        this.f6291j = i11 - 1;
                        solverVariable.f6298a = false;
                        return;
                    } else {
                        SolverVariable[] solverVariableArr = this.f6289h;
                        int i12 = i10 + 1;
                        solverVariableArr[i10] = solverVariableArr[i12];
                        i10 = i12;
                    }
                }
            } else {
                i10++;
            }
        }
    }

    @Override
    public void B(d dVar, b bVar, boolean z10) {
        SolverVariable solverVariable = bVar.f6327a;
        if (solverVariable == null) {
            return;
        }
        b.a aVar = bVar.f6331e;
        int currentSize = aVar.getCurrentSize();
        for (int i10 = 0; i10 < currentSize; i10++) {
            SolverVariable solverVariableB = aVar.b(i10);
            float fH = aVar.h(i10);
            this.f6292k.b(solverVariableB);
            if (this.f6292k.a(solverVariable, fH)) {
                F(solverVariableB);
            }
            this.f6328b += bVar.f6328b * fH;
        }
        G(solverVariable);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    @Override
    public SolverVariable b(d dVar, boolean[] zArr) {
        int i10 = -1;
        for (int i11 = 0; i11 < this.f6291j; i11++) {
            SolverVariable solverVariable = this.f6289h[i11];
            if (!zArr[solverVariable.f6300c]) {
                this.f6292k.b(solverVariable);
                if (i10 == -1) {
                    if (this.f6292k.c()) {
                        i10 = i11;
                    }
                } else if (this.f6292k.d(this.f6289h[i10])) {
                    i10 = i11;
                }
            }
        }
        if (i10 == -1) {
            return null;
        }
        return this.f6289h[i10];
    }

    @Override
    public void c(SolverVariable solverVariable) {
        this.f6292k.b(solverVariable);
        this.f6292k.e();
        solverVariable.f6306i[solverVariable.f6302e] = 1.0f;
        F(solverVariable);
    }

    @Override
    public void clear() {
        this.f6291j = 0;
        this.f6328b = 0.0f;
    }

    @Override
    public boolean isEmpty() {
        return this.f6291j == 0;
    }

    @Override
    public String toString() {
        String str = " goal -> (" + this.f6328b + ") : ";
        for (int i10 = 0; i10 < this.f6291j; i10++) {
            this.f6292k.b(this.f6289h[i10]);
            str = str + this.f6292k + " ";
        }
        return str;
    }
}
