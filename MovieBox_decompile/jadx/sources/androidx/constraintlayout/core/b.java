package androidx.constraintlayout.core;

import java.util.ArrayList;

public class b implements d.a {

    public a f6331e;

    SolverVariable f6327a = null;

    float f6328b = 0.0f;

    boolean f6329c = false;

    ArrayList f6330d = new ArrayList();

    boolean f6332f = false;

    public interface a {
        boolean a(SolverVariable solverVariable);

        SolverVariable b(int i10);

        void c(SolverVariable solverVariable, float f10, boolean z10);

        void clear();

        void d();

        float e(SolverVariable solverVariable, boolean z10);

        float f(b bVar, boolean z10);

        void g(SolverVariable solverVariable, float f10);

        int getCurrentSize();

        float h(int i10);

        float i(SolverVariable solverVariable);

        void j(float f10);
    }

    public b() {
    }

    private boolean u(SolverVariable solverVariable, d dVar) {
        return solverVariable.f6310m <= 1;
    }

    private SolverVariable w(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int currentSize = this.f6331e.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f10 = 0.0f;
        for (int i10 = 0; i10 < currentSize; i10++) {
            float fH = this.f6331e.h(i10);
            if (fH < 0.0f) {
                SolverVariable solverVariableB = this.f6331e.b(i10);
                if ((zArr == null || !zArr[solverVariableB.f6300c]) && solverVariableB != solverVariable && (((type = solverVariableB.f6307j) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && fH < f10)) {
                    f10 = fH;
                    solverVariable2 = solverVariableB;
                }
            }
        }
        return solverVariable2;
    }

    public void A(d dVar, SolverVariable solverVariable, boolean z10) {
        if (solverVariable == null || !solverVariable.f6304g) {
            return;
        }
        this.f6328b += solverVariable.f6303f * this.f6331e.i(solverVariable);
        this.f6331e.e(solverVariable, z10);
        if (z10) {
            solverVariable.e(this);
        }
        if (d.f6339t && this.f6331e.getCurrentSize() == 0) {
            this.f6332f = true;
            dVar.f6346a = true;
        }
    }

    public void B(d dVar, b bVar, boolean z10) {
        this.f6328b += bVar.f6328b * this.f6331e.f(bVar, z10);
        if (z10) {
            bVar.f6327a.e(this);
        }
        if (d.f6339t && this.f6327a != null && this.f6331e.getCurrentSize() == 0) {
            this.f6332f = true;
            dVar.f6346a = true;
        }
    }

    public void C(d dVar, SolverVariable solverVariable, boolean z10) {
        if (solverVariable == null || !solverVariable.f6311n) {
            return;
        }
        float fI = this.f6331e.i(solverVariable);
        this.f6328b += solverVariable.f6313p * fI;
        this.f6331e.e(solverVariable, z10);
        if (z10) {
            solverVariable.e(this);
        }
        this.f6331e.c(dVar.f6359n.f6336d[solverVariable.f6312o], fI, z10);
        if (d.f6339t && this.f6331e.getCurrentSize() == 0) {
            this.f6332f = true;
            dVar.f6346a = true;
        }
    }

    public void D(d dVar) {
        if (dVar.f6352g.length == 0) {
            return;
        }
        boolean z10 = false;
        while (!z10) {
            int currentSize = this.f6331e.getCurrentSize();
            for (int i10 = 0; i10 < currentSize; i10++) {
                SolverVariable solverVariableB = this.f6331e.b(i10);
                if (solverVariableB.f6301d != -1 || solverVariableB.f6304g || solverVariableB.f6311n) {
                    this.f6330d.add(solverVariableB);
                }
            }
            int size = this.f6330d.size();
            if (size > 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    SolverVariable solverVariable = (SolverVariable) this.f6330d.get(i11);
                    if (solverVariable.f6304g) {
                        A(dVar, solverVariable, true);
                    } else if (solverVariable.f6311n) {
                        C(dVar, solverVariable, true);
                    } else {
                        B(dVar, dVar.f6352g[solverVariable.f6301d], true);
                    }
                }
                this.f6330d.clear();
            } else {
                z10 = true;
            }
        }
        if (d.f6339t && this.f6327a != null && this.f6331e.getCurrentSize() == 0) {
            this.f6332f = true;
            dVar.f6346a = true;
        }
    }

    @Override
    public void a(d.a aVar) {
        if (aVar instanceof b) {
            b bVar = (b) aVar;
            this.f6327a = null;
            this.f6331e.clear();
            for (int i10 = 0; i10 < bVar.f6331e.getCurrentSize(); i10++) {
                this.f6331e.c(bVar.f6331e.b(i10), bVar.f6331e.h(i10), true);
            }
        }
    }

    @Override
    public SolverVariable b(d dVar, boolean[] zArr) {
        return w(zArr, null);
    }

    @Override
    public void c(SolverVariable solverVariable) {
        int i10 = solverVariable.f6302e;
        float f10 = 1.0f;
        if (i10 != 1) {
            if (i10 == 2) {
                f10 = 1000.0f;
            } else if (i10 == 3) {
                f10 = 1000000.0f;
            } else if (i10 == 4) {
                f10 = 1.0E9f;
            } else if (i10 == 5) {
                f10 = 1.0E12f;
            }
        }
        this.f6331e.g(solverVariable, f10);
    }

    @Override
    public void clear() {
        this.f6331e.clear();
        this.f6327a = null;
        this.f6328b = 0.0f;
    }

    public b d(d dVar, int i10) {
        this.f6331e.g(dVar.o(i10, "ep"), 1.0f);
        this.f6331e.g(dVar.o(i10, "em"), -1.0f);
        return this;
    }

    b e(SolverVariable solverVariable, int i10) {
        this.f6331e.g(solverVariable, i10);
        return this;
    }

    boolean f(d dVar) {
        boolean z10;
        SolverVariable solverVariableG = g(dVar);
        if (solverVariableG == null) {
            z10 = true;
        } else {
            x(solverVariableG);
            z10 = false;
        }
        if (this.f6331e.getCurrentSize() == 0) {
            this.f6332f = true;
        }
        return z10;
    }

    SolverVariable g(d dVar) {
        int currentSize = this.f6331e.getCurrentSize();
        SolverVariable solverVariable = null;
        float f10 = 0.0f;
        float f11 = 0.0f;
        boolean z10 = false;
        boolean z11 = false;
        SolverVariable solverVariable2 = null;
        for (int i10 = 0; i10 < currentSize; i10++) {
            float fH = this.f6331e.h(i10);
            SolverVariable solverVariableB = this.f6331e.b(i10);
            if (solverVariableB.f6307j == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null || f10 > fH) {
                    boolean zU = u(solverVariableB, dVar);
                    z10 = zU;
                    f10 = fH;
                    solverVariable = solverVariableB;
                } else if (!z10 && u(solverVariableB, dVar)) {
                    f10 = fH;
                    solverVariable = solverVariableB;
                    z10 = true;
                }
            } else if (solverVariable == null && fH < 0.0f) {
                if (solverVariable2 == null || f11 > fH) {
                    boolean zU2 = u(solverVariableB, dVar);
                    z11 = zU2;
                    f11 = fH;
                    solverVariable2 = solverVariableB;
                } else if (!z11 && u(solverVariableB, dVar)) {
                    f11 = fH;
                    solverVariable2 = solverVariableB;
                    z11 = true;
                }
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    @Override
    public SolverVariable getKey() {
        return this.f6327a;
    }

    b h(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, float f10, SolverVariable solverVariable3, SolverVariable solverVariable4, int i11) {
        if (solverVariable2 == solverVariable3) {
            this.f6331e.g(solverVariable, 1.0f);
            this.f6331e.g(solverVariable4, 1.0f);
            this.f6331e.g(solverVariable2, -2.0f);
            return this;
        }
        if (f10 == 0.5f) {
            this.f6331e.g(solverVariable, 1.0f);
            this.f6331e.g(solverVariable2, -1.0f);
            this.f6331e.g(solverVariable3, -1.0f);
            this.f6331e.g(solverVariable4, 1.0f);
            if (i10 > 0 || i11 > 0) {
                this.f6328b = (-i10) + i11;
            }
        } else if (f10 <= 0.0f) {
            this.f6331e.g(solverVariable, -1.0f);
            this.f6331e.g(solverVariable2, 1.0f);
            this.f6328b = i10;
        } else if (f10 >= 1.0f) {
            this.f6331e.g(solverVariable4, -1.0f);
            this.f6331e.g(solverVariable3, 1.0f);
            this.f6328b = -i11;
        } else {
            float f11 = 1.0f - f10;
            this.f6331e.g(solverVariable, f11 * 1.0f);
            this.f6331e.g(solverVariable2, f11 * (-1.0f));
            this.f6331e.g(solverVariable3, (-1.0f) * f10);
            this.f6331e.g(solverVariable4, 1.0f * f10);
            if (i10 > 0 || i11 > 0) {
                this.f6328b = ((-i10) * f11) + (i11 * f10);
            }
        }
        return this;
    }

    b i(SolverVariable solverVariable, int i10) {
        this.f6327a = solverVariable;
        float f10 = i10;
        solverVariable.f6303f = f10;
        this.f6328b = f10;
        this.f6332f = true;
        return this;
    }

    @Override
    public boolean isEmpty() {
        return this.f6327a == null && this.f6328b == 0.0f && this.f6331e.getCurrentSize() == 0;
    }

    b j(SolverVariable solverVariable, SolverVariable solverVariable2, float f10) {
        this.f6331e.g(solverVariable, -1.0f);
        this.f6331e.g(solverVariable2, f10);
        return this;
    }

    public b k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f10) {
        this.f6331e.g(solverVariable, -1.0f);
        this.f6331e.g(solverVariable2, 1.0f);
        this.f6331e.g(solverVariable3, f10);
        this.f6331e.g(solverVariable4, -f10);
        return this;
    }

    public b l(float f10, float f11, float f12, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.f6328b = 0.0f;
        if (f11 == 0.0f || f10 == f12) {
            this.f6331e.g(solverVariable, 1.0f);
            this.f6331e.g(solverVariable2, -1.0f);
            this.f6331e.g(solverVariable4, 1.0f);
            this.f6331e.g(solverVariable3, -1.0f);
        } else if (f10 == 0.0f) {
            this.f6331e.g(solverVariable, 1.0f);
            this.f6331e.g(solverVariable2, -1.0f);
        } else if (f12 == 0.0f) {
            this.f6331e.g(solverVariable3, 1.0f);
            this.f6331e.g(solverVariable4, -1.0f);
        } else {
            float f13 = (f10 / f11) / (f12 / f11);
            this.f6331e.g(solverVariable, 1.0f);
            this.f6331e.g(solverVariable2, -1.0f);
            this.f6331e.g(solverVariable4, f13);
            this.f6331e.g(solverVariable3, -f13);
        }
        return this;
    }

    public b m(SolverVariable solverVariable, int i10) {
        if (i10 < 0) {
            this.f6328b = i10 * (-1);
            this.f6331e.g(solverVariable, 1.0f);
        } else {
            this.f6328b = i10;
            this.f6331e.g(solverVariable, -1.0f);
        }
        return this;
    }

    public b n(SolverVariable solverVariable, SolverVariable solverVariable2, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f6328b = i10;
        }
        if (z10) {
            this.f6331e.g(solverVariable, 1.0f);
            this.f6331e.g(solverVariable2, -1.0f);
        } else {
            this.f6331e.g(solverVariable, -1.0f);
            this.f6331e.g(solverVariable2, 1.0f);
        }
        return this;
    }

    public b o(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f6328b = i10;
        }
        if (z10) {
            this.f6331e.g(solverVariable, 1.0f);
            this.f6331e.g(solverVariable2, -1.0f);
            this.f6331e.g(solverVariable3, -1.0f);
        } else {
            this.f6331e.g(solverVariable, -1.0f);
            this.f6331e.g(solverVariable2, 1.0f);
            this.f6331e.g(solverVariable3, 1.0f);
        }
        return this;
    }

    public b p(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i10) {
        boolean z10 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z10 = true;
            }
            this.f6328b = i10;
        }
        if (z10) {
            this.f6331e.g(solverVariable, 1.0f);
            this.f6331e.g(solverVariable2, -1.0f);
            this.f6331e.g(solverVariable3, 1.0f);
        } else {
            this.f6331e.g(solverVariable, -1.0f);
            this.f6331e.g(solverVariable2, 1.0f);
            this.f6331e.g(solverVariable3, -1.0f);
        }
        return this;
    }

    public b q(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f10) {
        this.f6331e.g(solverVariable3, 0.5f);
        this.f6331e.g(solverVariable4, 0.5f);
        this.f6331e.g(solverVariable, -0.5f);
        this.f6331e.g(solverVariable2, -0.5f);
        this.f6328b = -f10;
        return this;
    }

    void r() {
        float f10 = this.f6328b;
        if (f10 < 0.0f) {
            this.f6328b = f10 * (-1.0f);
            this.f6331e.d();
        }
    }

    boolean s() {
        SolverVariable solverVariable = this.f6327a;
        return solverVariable != null && (solverVariable.f6307j == SolverVariable.Type.UNRESTRICTED || this.f6328b >= 0.0f);
    }

    boolean t(SolverVariable solverVariable) {
        return this.f6331e.a(solverVariable);
    }

    public String toString() {
        return z();
    }

    public SolverVariable v(SolverVariable solverVariable) {
        return w(null, solverVariable);
    }

    void x(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.f6327a;
        if (solverVariable2 != null) {
            this.f6331e.g(solverVariable2, -1.0f);
            this.f6327a.f6301d = -1;
            this.f6327a = null;
        }
        float fE = this.f6331e.e(solverVariable, true) * (-1.0f);
        this.f6327a = solverVariable;
        if (fE == 1.0f) {
            return;
        }
        this.f6328b /= fE;
        this.f6331e.j(fE);
    }

    public void y() {
        this.f6327a = null;
        this.f6331e.clear();
        this.f6328b = 0.0f;
        this.f6332f = false;
    }

    String z() {
        boolean z10;
        String str = (this.f6327a == null ? "0" : "" + this.f6327a) + " = ";
        if (this.f6328b != 0.0f) {
            str = str + this.f6328b;
            z10 = true;
        } else {
            z10 = false;
        }
        int currentSize = this.f6331e.getCurrentSize();
        for (int i10 = 0; i10 < currentSize; i10++) {
            SolverVariable solverVariableB = this.f6331e.b(i10);
            if (solverVariableB != null) {
                float fH = this.f6331e.h(i10);
                if (fH != 0.0f) {
                    String string = solverVariableB.toString();
                    if (z10) {
                        if (fH > 0.0f) {
                            str = str + " + ";
                        } else {
                            str = str + " - ";
                            fH *= -1.0f;
                        }
                    } else if (fH < 0.0f) {
                        str = str + "- ";
                        fH *= -1.0f;
                    }
                    str = fH == 1.0f ? str + string : str + fH + " " + string;
                    z10 = true;
                }
            }
        }
        if (z10) {
            return str;
        }
        return str + "0.0";
    }

    public b(c cVar) {
        this.f6331e = new androidx.constraintlayout.core.a(this, cVar);
    }
}
