package androidx.constraintlayout.core;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.Arrays;
import java.util.HashMap;

public class d {

    public static boolean f6337r = false;

    public static boolean f6338s = true;

    public static boolean f6339t = true;

    public static boolean f6340u = true;

    public static boolean f6341v = false;

    private static int f6342w = 1000;

    public static e f6343x;

    public static long f6344y;

    public static long f6345z;

    private a f6349d;

    androidx.constraintlayout.core.b[] f6352g;

    final c f6359n;

    private a f6362q;

    public boolean f6346a = false;

    int f6347b = 0;

    private HashMap f6348c = null;

    private int f6350e = 32;

    private int f6351f = 32;

    public boolean f6353h = false;

    public boolean f6354i = false;

    private boolean[] f6355j = new boolean[32];

    int f6356k = 1;

    int f6357l = 0;

    private int f6358m = 32;

    private SolverVariable[] f6360o = new SolverVariable[f6342w];

    private int f6361p = 0;

    interface a {
        void a(a aVar);

        SolverVariable b(d dVar, boolean[] zArr);

        void c(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        boolean isEmpty();
    }

    class b extends androidx.constraintlayout.core.b {
        public b(c cVar) {
            this.f6331e = new h(this, cVar);
        }
    }

    public d() {
        this.f6352g = null;
        this.f6352g = new androidx.constraintlayout.core.b[32];
        D();
        c cVar = new c();
        this.f6359n = cVar;
        this.f6349d = new PriorityGoalRow(cVar);
        if (f6341v) {
            this.f6362q = new b(cVar);
        } else {
            this.f6362q = new androidx.constraintlayout.core.b(cVar);
        }
    }

    private final int C(a aVar, boolean z10) {
        e eVar = f6343x;
        if (eVar != null) {
            eVar.f6371h++;
        }
        for (int i10 = 0; i10 < this.f6356k; i10++) {
            this.f6355j[i10] = false;
        }
        boolean z11 = false;
        int i11 = 0;
        while (!z11) {
            e eVar2 = f6343x;
            if (eVar2 != null) {
                eVar2.f6372i++;
            }
            i11++;
            if (i11 >= this.f6356k * 2) {
                return i11;
            }
            if (aVar.getKey() != null) {
                this.f6355j[aVar.getKey().f6300c] = true;
            }
            SolverVariable solverVariableB = aVar.b(this, this.f6355j);
            if (solverVariableB != null) {
                boolean[] zArr = this.f6355j;
                int i12 = solverVariableB.f6300c;
                if (zArr[i12]) {
                    return i11;
                }
                zArr[i12] = true;
            }
            if (solverVariableB != null) {
                float f10 = Float.MAX_VALUE;
                int i13 = -1;
                for (int i14 = 0; i14 < this.f6357l; i14++) {
                    androidx.constraintlayout.core.b bVar = this.f6352g[i14];
                    if (bVar.f6327a.f6307j != SolverVariable.Type.UNRESTRICTED && !bVar.f6332f && bVar.t(solverVariableB)) {
                        float fI = bVar.f6331e.i(solverVariableB);
                        if (fI < 0.0f) {
                            float f11 = (-bVar.f6328b) / fI;
                            if (f11 < f10) {
                                i13 = i14;
                                f10 = f11;
                            }
                        }
                    }
                }
                if (i13 > -1) {
                    androidx.constraintlayout.core.b bVar2 = this.f6352g[i13];
                    bVar2.f6327a.f6301d = -1;
                    e eVar3 = f6343x;
                    if (eVar3 != null) {
                        eVar3.f6373j++;
                    }
                    bVar2.x(solverVariableB);
                    SolverVariable solverVariable = bVar2.f6327a;
                    solverVariable.f6301d = i13;
                    solverVariable.i(this, bVar2);
                }
            } else {
                z11 = true;
            }
        }
        return i11;
    }

    private void D() {
        int i10 = 0;
        if (f6341v) {
            while (i10 < this.f6357l) {
                androidx.constraintlayout.core.b bVar = this.f6352g[i10];
                if (bVar != null) {
                    this.f6359n.f6333a.release(bVar);
                }
                this.f6352g[i10] = null;
                i10++;
            }
            return;
        }
        while (i10 < this.f6357l) {
            androidx.constraintlayout.core.b bVar2 = this.f6352g[i10];
            if (bVar2 != null) {
                this.f6359n.f6334b.release(bVar2);
            }
            this.f6352g[i10] = null;
            i10++;
        }
    }

    private SolverVariable a(SolverVariable.Type type, String str) {
        SolverVariable solverVariable = (SolverVariable) this.f6359n.f6335c.acquire();
        if (solverVariable == null) {
            solverVariable = new SolverVariable(type, str);
            solverVariable.h(type, str);
        } else {
            solverVariable.f();
            solverVariable.h(type, str);
        }
        int i10 = this.f6361p;
        int i11 = f6342w;
        if (i10 >= i11) {
            int i12 = i11 * 2;
            f6342w = i12;
            this.f6360o = (SolverVariable[]) Arrays.copyOf(this.f6360o, i12);
        }
        SolverVariable[] solverVariableArr = this.f6360o;
        int i13 = this.f6361p;
        this.f6361p = i13 + 1;
        solverVariableArr[i13] = solverVariable;
        return solverVariable;
    }

    private final void l(androidx.constraintlayout.core.b bVar) {
        int i10;
        if (f6339t && bVar.f6332f) {
            bVar.f6327a.g(this, bVar.f6328b);
        } else {
            androidx.constraintlayout.core.b[] bVarArr = this.f6352g;
            int i11 = this.f6357l;
            bVarArr[i11] = bVar;
            SolverVariable solverVariable = bVar.f6327a;
            solverVariable.f6301d = i11;
            this.f6357l = i11 + 1;
            solverVariable.i(this, bVar);
        }
        if (f6339t && this.f6346a) {
            int i12 = 0;
            while (i12 < this.f6357l) {
                if (this.f6352g[i12] == null) {
                    System.out.println("WTF");
                }
                androidx.constraintlayout.core.b bVar2 = this.f6352g[i12];
                if (bVar2 != null && bVar2.f6332f) {
                    bVar2.f6327a.g(this, bVar2.f6328b);
                    if (f6341v) {
                        this.f6359n.f6333a.release(bVar2);
                    } else {
                        this.f6359n.f6334b.release(bVar2);
                    }
                    this.f6352g[i12] = null;
                    int i13 = i12 + 1;
                    int i14 = i13;
                    while (true) {
                        i10 = this.f6357l;
                        if (i13 >= i10) {
                            break;
                        }
                        androidx.constraintlayout.core.b[] bVarArr2 = this.f6352g;
                        int i15 = i13 - 1;
                        androidx.constraintlayout.core.b bVar3 = bVarArr2[i13];
                        bVarArr2[i15] = bVar3;
                        SolverVariable solverVariable2 = bVar3.f6327a;
                        if (solverVariable2.f6301d == i13) {
                            solverVariable2.f6301d = i15;
                        }
                        i14 = i13;
                        i13++;
                    }
                    if (i14 < i10) {
                        this.f6352g[i14] = null;
                    }
                    this.f6357l = i10 - 1;
                    i12--;
                }
                i12++;
            }
            this.f6346a = false;
        }
    }

    private void n() {
        for (int i10 = 0; i10 < this.f6357l; i10++) {
            androidx.constraintlayout.core.b bVar = this.f6352g[i10];
            bVar.f6327a.f6303f = bVar.f6328b;
        }
    }

    public static androidx.constraintlayout.core.b s(d dVar, SolverVariable solverVariable, SolverVariable solverVariable2, float f10) {
        return dVar.r().j(solverVariable, solverVariable2, f10);
    }

    private int u(a aVar) {
        for (int i10 = 0; i10 < this.f6357l; i10++) {
            androidx.constraintlayout.core.b bVar = this.f6352g[i10];
            if (bVar.f6327a.f6307j != SolverVariable.Type.UNRESTRICTED && bVar.f6328b < 0.0f) {
                boolean z10 = false;
                int i11 = 0;
                while (!z10) {
                    e eVar = f6343x;
                    if (eVar != null) {
                        eVar.f6374k++;
                    }
                    i11++;
                    float f10 = Float.MAX_VALUE;
                    int i12 = 0;
                    int i13 = -1;
                    int i14 = -1;
                    int i15 = 0;
                    while (true) {
                        if (i12 >= this.f6357l) {
                            break;
                        }
                        androidx.constraintlayout.core.b bVar2 = this.f6352g[i12];
                        if (bVar2.f6327a.f6307j != SolverVariable.Type.UNRESTRICTED && !bVar2.f6332f && bVar2.f6328b < 0.0f) {
                            int i16 = 9;
                            if (f6340u) {
                                int currentSize = bVar2.f6331e.getCurrentSize();
                                int i17 = 0;
                                while (i17 < currentSize) {
                                    SolverVariable solverVariableB = bVar2.f6331e.b(i17);
                                    float fI = bVar2.f6331e.i(solverVariableB);
                                    if (fI > 0.0f) {
                                        int i18 = 0;
                                        while (i18 < i16) {
                                            float f11 = solverVariableB.f6305h[i18] / fI;
                                            if ((f11 < f10 && i18 == i15) || i18 > i15) {
                                                i15 = i18;
                                                i14 = solverVariableB.f6300c;
                                                i13 = i12;
                                                f10 = f11;
                                            }
                                            i18++;
                                            i16 = 9;
                                        }
                                    }
                                    i17++;
                                    i16 = 9;
                                }
                            } else {
                                for (int i19 = 1; i19 < this.f6356k; i19++) {
                                    SolverVariable solverVariable = this.f6359n.f6336d[i19];
                                    float fI2 = bVar2.f6331e.i(solverVariable);
                                    if (fI2 > 0.0f) {
                                        for (int i20 = 0; i20 < 9; i20++) {
                                            float f12 = solverVariable.f6305h[i20] / fI2;
                                            if ((f12 < f10 && i20 == i15) || i20 > i15) {
                                                i15 = i20;
                                                i13 = i12;
                                                i14 = i19;
                                                f10 = f12;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        i12++;
                    }
                    if (i13 != -1) {
                        androidx.constraintlayout.core.b bVar3 = this.f6352g[i13];
                        bVar3.f6327a.f6301d = -1;
                        e eVar2 = f6343x;
                        if (eVar2 != null) {
                            eVar2.f6373j++;
                        }
                        bVar3.x(this.f6359n.f6336d[i14]);
                        SolverVariable solverVariable2 = bVar3.f6327a;
                        solverVariable2.f6301d = i13;
                        solverVariable2.i(this, bVar3);
                    } else {
                        z10 = true;
                    }
                    if (i11 > this.f6356k / 2) {
                        z10 = true;
                    }
                }
                return i11;
            }
        }
        return 0;
    }

    public static e x() {
        return f6343x;
    }

    private void z() {
        int i10 = this.f6350e * 2;
        this.f6350e = i10;
        this.f6352g = (androidx.constraintlayout.core.b[]) Arrays.copyOf(this.f6352g, i10);
        c cVar = this.f6359n;
        cVar.f6336d = (SolverVariable[]) Arrays.copyOf(cVar.f6336d, this.f6350e);
        int i11 = this.f6350e;
        this.f6355j = new boolean[i11];
        this.f6351f = i11;
        this.f6358m = i11;
        e eVar = f6343x;
        if (eVar != null) {
            eVar.f6367d++;
            eVar.f6378o = Math.max(eVar.f6378o, i11);
            e eVar2 = f6343x;
            eVar2.f6388y = eVar2.f6378o;
        }
    }

    public void A() {
        e eVar = f6343x;
        if (eVar != null) {
            eVar.f6368e++;
        }
        if (this.f6349d.isEmpty()) {
            n();
            return;
        }
        if (!this.f6353h && !this.f6354i) {
            B(this.f6349d);
            return;
        }
        e eVar2 = f6343x;
        if (eVar2 != null) {
            eVar2.f6380q++;
        }
        for (int i10 = 0; i10 < this.f6357l; i10++) {
            if (!this.f6352g[i10].f6332f) {
                B(this.f6349d);
                return;
            }
        }
        e eVar3 = f6343x;
        if (eVar3 != null) {
            eVar3.f6379p++;
        }
        n();
    }

    void B(a aVar) {
        e eVar = f6343x;
        if (eVar != null) {
            eVar.f6383t++;
            eVar.f6384u = Math.max(eVar.f6384u, this.f6356k);
            e eVar2 = f6343x;
            eVar2.f6385v = Math.max(eVar2.f6385v, this.f6357l);
        }
        u(aVar);
        C(aVar, false);
        n();
    }

    public void E() {
        c cVar;
        int i10 = 0;
        while (true) {
            cVar = this.f6359n;
            SolverVariable[] solverVariableArr = cVar.f6336d;
            if (i10 >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i10];
            if (solverVariable != null) {
                solverVariable.f();
            }
            i10++;
        }
        cVar.f6335c.a(this.f6360o, this.f6361p);
        this.f6361p = 0;
        Arrays.fill(this.f6359n.f6336d, (Object) null);
        HashMap map = this.f6348c;
        if (map != null) {
            map.clear();
        }
        this.f6347b = 0;
        this.f6349d.clear();
        this.f6356k = 1;
        for (int i11 = 0; i11 < this.f6357l; i11++) {
            androidx.constraintlayout.core.b bVar = this.f6352g[i11];
            if (bVar != null) {
                bVar.f6329c = false;
            }
        }
        D();
        this.f6357l = 0;
        if (f6341v) {
            this.f6362q = new b(this.f6359n);
        } else {
            this.f6362q = new androidx.constraintlayout.core.b(this.f6359n);
        }
    }

    public void b(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f10, int i10) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
        SolverVariable solverVariableQ = q(constraintWidget.q(type));
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
        SolverVariable solverVariableQ2 = q(constraintWidget.q(type2));
        ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
        SolverVariable solverVariableQ3 = q(constraintWidget.q(type3));
        ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
        SolverVariable solverVariableQ4 = q(constraintWidget.q(type4));
        SolverVariable solverVariableQ5 = q(constraintWidget2.q(type));
        SolverVariable solverVariableQ6 = q(constraintWidget2.q(type2));
        SolverVariable solverVariableQ7 = q(constraintWidget2.q(type3));
        SolverVariable solverVariableQ8 = q(constraintWidget2.q(type4));
        androidx.constraintlayout.core.b bVarR = r();
        double d10 = f10;
        double d11 = i10;
        bVarR.q(solverVariableQ2, solverVariableQ4, solverVariableQ6, solverVariableQ8, (float) (Math.sin(d10) * d11));
        d(bVarR);
        androidx.constraintlayout.core.b bVarR2 = r();
        bVarR2.q(solverVariableQ, solverVariableQ3, solverVariableQ5, solverVariableQ7, (float) (Math.cos(d10) * d11));
        d(bVarR2);
    }

    public void c(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, float f10, SolverVariable solverVariable3, SolverVariable solverVariable4, int i11, int i12) {
        androidx.constraintlayout.core.b bVarR = r();
        bVarR.h(solverVariable, solverVariable2, i10, f10, solverVariable3, solverVariable4, i11);
        if (i12 != 8) {
            bVarR.d(this, i12);
        }
        d(bVarR);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0098  */
    public void d(androidx.constraintlayout.core.b bVar) {
        SolverVariable solverVariableV;
        if (bVar == null) {
            return;
        }
        e eVar = f6343x;
        if (eVar != null) {
            eVar.f6369f++;
            if (bVar.f6332f) {
                eVar.f6370g++;
            }
        }
        boolean z10 = true;
        if (this.f6357l + 1 >= this.f6358m || this.f6356k + 1 >= this.f6351f) {
            z();
        }
        boolean z11 = false;
        if (!bVar.f6332f) {
            bVar.D(this);
            if (bVar.isEmpty()) {
                return;
            }
            bVar.r();
            if (bVar.f(this)) {
                SolverVariable solverVariableP = p();
                bVar.f6327a = solverVariableP;
                int i10 = this.f6357l;
                l(bVar);
                if (this.f6357l == i10 + 1) {
                    this.f6362q.a(bVar);
                    C(this.f6362q, true);
                    if (solverVariableP.f6301d == -1) {
                        if (bVar.f6327a == solverVariableP && (solverVariableV = bVar.v(solverVariableP)) != null) {
                            e eVar2 = f6343x;
                            if (eVar2 != null) {
                                eVar2.f6373j++;
                            }
                            bVar.x(solverVariableV);
                        }
                        if (!bVar.f6332f) {
                            bVar.f6327a.i(this, bVar);
                        }
                        if (f6341v) {
                            this.f6359n.f6333a.release(bVar);
                        } else {
                            this.f6359n.f6334b.release(bVar);
                        }
                        this.f6357l--;
                    }
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            if (!bVar.s()) {
                return;
            } else {
                z11 = z10;
            }
        }
        if (z11) {
            return;
        }
        l(bVar);
    }

    public androidx.constraintlayout.core.b e(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, int i11) {
        if (f6338s && i11 == 8 && solverVariable2.f6304g && solverVariable.f6301d == -1) {
            solverVariable.g(this, solverVariable2.f6303f + i10);
            return null;
        }
        androidx.constraintlayout.core.b bVarR = r();
        bVarR.n(solverVariable, solverVariable2, i10);
        if (i11 != 8) {
            bVarR.d(this, i11);
        }
        d(bVarR);
        return bVarR;
    }

    public void f(SolverVariable solverVariable, int i10) {
        if (f6338s && solverVariable.f6301d == -1) {
            float f10 = i10;
            solverVariable.g(this, f10);
            for (int i11 = 0; i11 < this.f6347b + 1; i11++) {
                SolverVariable solverVariable2 = this.f6359n.f6336d[i11];
                if (solverVariable2 != null && solverVariable2.f6311n && solverVariable2.f6312o == solverVariable.f6300c) {
                    solverVariable2.g(this, solverVariable2.f6313p + f10);
                }
            }
            return;
        }
        int i12 = solverVariable.f6301d;
        if (i12 == -1) {
            androidx.constraintlayout.core.b bVarR = r();
            bVarR.i(solverVariable, i10);
            d(bVarR);
            return;
        }
        androidx.constraintlayout.core.b bVar = this.f6352g[i12];
        if (bVar.f6332f) {
            bVar.f6328b = i10;
            return;
        }
        if (bVar.f6331e.getCurrentSize() == 0) {
            bVar.f6332f = true;
            bVar.f6328b = i10;
        } else {
            androidx.constraintlayout.core.b bVarR2 = r();
            bVarR2.m(solverVariable, i10);
            d(bVarR2);
        }
    }

    public void g(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, boolean z10) {
        androidx.constraintlayout.core.b bVarR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.f6302e = 0;
        bVarR.o(solverVariable, solverVariable2, solverVariableT, i10);
        d(bVarR);
    }

    public void h(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, int i11) {
        androidx.constraintlayout.core.b bVarR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.f6302e = 0;
        bVarR.o(solverVariable, solverVariable2, solverVariableT, i10);
        if (i11 != 8) {
            m(bVarR, (int) (bVarR.f6331e.i(solverVariableT) * (-1.0f)), i11);
        }
        d(bVarR);
    }

    public void i(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, boolean z10) {
        androidx.constraintlayout.core.b bVarR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.f6302e = 0;
        bVarR.p(solverVariable, solverVariable2, solverVariableT, i10);
        d(bVarR);
    }

    public void j(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, int i11) {
        androidx.constraintlayout.core.b bVarR = r();
        SolverVariable solverVariableT = t();
        solverVariableT.f6302e = 0;
        bVarR.p(solverVariable, solverVariable2, solverVariableT, i10);
        if (i11 != 8) {
            m(bVarR, (int) (bVarR.f6331e.i(solverVariableT) * (-1.0f)), i11);
        }
        d(bVarR);
    }

    public void k(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f10, int i10) {
        androidx.constraintlayout.core.b bVarR = r();
        bVarR.k(solverVariable, solverVariable2, solverVariable3, solverVariable4, f10);
        if (i10 != 8) {
            bVarR.d(this, i10);
        }
        d(bVarR);
    }

    void m(androidx.constraintlayout.core.b bVar, int i10, int i11) {
        bVar.e(o(i11, null), i10);
    }

    public SolverVariable o(int i10, String str) {
        e eVar = f6343x;
        if (eVar != null) {
            eVar.f6375l++;
        }
        if (this.f6356k + 1 >= this.f6351f) {
            z();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.ERROR, str);
        int i11 = this.f6347b + 1;
        this.f6347b = i11;
        this.f6356k++;
        solverVariableA.f6300c = i11;
        solverVariableA.f6302e = i10;
        this.f6359n.f6336d[i11] = solverVariableA;
        this.f6349d.c(solverVariableA);
        return solverVariableA;
    }

    public SolverVariable p() {
        e eVar = f6343x;
        if (eVar != null) {
            eVar.f6377n++;
        }
        if (this.f6356k + 1 >= this.f6351f) {
            z();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.SLACK, null);
        int i10 = this.f6347b + 1;
        this.f6347b = i10;
        this.f6356k++;
        solverVariableA.f6300c = i10;
        this.f6359n.f6336d[i10] = solverVariableA;
        return solverVariableA;
    }

    public SolverVariable q(Object obj) {
        SolverVariable solverVariableI = null;
        if (obj == null) {
            return null;
        }
        if (this.f6356k + 1 >= this.f6351f) {
            z();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariableI = constraintAnchor.i();
            if (solverVariableI == null) {
                constraintAnchor.s(this.f6359n);
                solverVariableI = constraintAnchor.i();
            }
            int i10 = solverVariableI.f6300c;
            if (i10 == -1 || i10 > this.f6347b || this.f6359n.f6336d[i10] == null) {
                if (i10 != -1) {
                    solverVariableI.f();
                }
                int i11 = this.f6347b + 1;
                this.f6347b = i11;
                this.f6356k++;
                solverVariableI.f6300c = i11;
                solverVariableI.f6307j = SolverVariable.Type.UNRESTRICTED;
                this.f6359n.f6336d[i11] = solverVariableI;
            }
        }
        return solverVariableI;
    }

    public androidx.constraintlayout.core.b r() {
        androidx.constraintlayout.core.b bVar;
        if (f6341v) {
            bVar = (androidx.constraintlayout.core.b) this.f6359n.f6333a.acquire();
            if (bVar == null) {
                bVar = new b(this.f6359n);
                f6345z++;
            } else {
                bVar.y();
            }
        } else {
            bVar = (androidx.constraintlayout.core.b) this.f6359n.f6334b.acquire();
            if (bVar == null) {
                bVar = new androidx.constraintlayout.core.b(this.f6359n);
                f6344y++;
            } else {
                bVar.y();
            }
        }
        SolverVariable.d();
        return bVar;
    }

    public SolverVariable t() {
        e eVar = f6343x;
        if (eVar != null) {
            eVar.f6376m++;
        }
        if (this.f6356k + 1 >= this.f6351f) {
            z();
        }
        SolverVariable solverVariableA = a(SolverVariable.Type.SLACK, null);
        int i10 = this.f6347b + 1;
        this.f6347b = i10;
        this.f6356k++;
        solverVariableA.f6300c = i10;
        this.f6359n.f6336d[i10] = solverVariableA;
        return solverVariableA;
    }

    public void v(e eVar) {
        f6343x = eVar;
    }

    public c w() {
        return this.f6359n;
    }

    public int y(Object obj) {
        SolverVariable solverVariableI = ((ConstraintAnchor) obj).i();
        if (solverVariableI != null) {
            return (int) (solverVariableI.f6303f + 0.5f);
        }
        return 0;
    }
}
