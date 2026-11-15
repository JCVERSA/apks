package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public class m {

    static int f6669g;

    int f6671b;

    int f6673d;

    ArrayList f6670a = new ArrayList();

    boolean f6672c = false;

    ArrayList f6674e = null;

    private int f6675f = -1;

    class a {

        WeakReference f6676a;

        int f6677b;

        int f6678c;

        int f6679d;

        int f6680e;

        int f6681f;

        int f6682g;

        public a(ConstraintWidget constraintWidget, androidx.constraintlayout.core.d dVar, int i10) {
            this.f6676a = new WeakReference(constraintWidget);
            this.f6677b = dVar.y(constraintWidget.Q);
            this.f6678c = dVar.y(constraintWidget.R);
            this.f6679d = dVar.y(constraintWidget.S);
            this.f6680e = dVar.y(constraintWidget.T);
            this.f6681f = dVar.y(constraintWidget.U);
            this.f6682g = i10;
        }
    }

    public m(int i10) {
        int i11 = f6669g;
        f6669g = i11 + 1;
        this.f6671b = i11;
        this.f6673d = i10;
    }

    private String e() {
        int i10 = this.f6673d;
        if (i10 == 0) {
            return "Horizontal";
        }
        if (i10 == 1) {
            return "Vertical";
        }
        return i10 == 2 ? "Both" : "Unknown";
    }

    private int j(androidx.constraintlayout.core.d dVar, ArrayList arrayList, int i10) {
        int iY;
        int iY2;
        androidx.constraintlayout.core.widgets.d dVar2 = (androidx.constraintlayout.core.widgets.d) ((ConstraintWidget) arrayList.get(0)).M();
        dVar.E();
        dVar2.g(dVar, false);
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            ((ConstraintWidget) arrayList.get(i11)).g(dVar, false);
        }
        if (i10 == 0 && dVar2.f6713h1 > 0) {
            androidx.constraintlayout.core.widgets.b.b(dVar2, dVar, arrayList, 0);
        }
        if (i10 == 1 && dVar2.f6714i1 > 0) {
            androidx.constraintlayout.core.widgets.b.b(dVar2, dVar, arrayList, 1);
        }
        try {
            dVar.A();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f6674e = new ArrayList();
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            this.f6674e.add(new a((ConstraintWidget) arrayList.get(i12), dVar, i10));
        }
        if (i10 == 0) {
            iY = dVar.y(dVar2.Q);
            iY2 = dVar.y(dVar2.S);
            dVar.E();
        } else {
            iY = dVar.y(dVar2.R);
            iY2 = dVar.y(dVar2.T);
            dVar.E();
        }
        return iY2 - iY;
    }

    public boolean a(ConstraintWidget constraintWidget) {
        if (this.f6670a.contains(constraintWidget)) {
            return false;
        }
        this.f6670a.add(constraintWidget);
        return true;
    }

    public void b(ArrayList arrayList) {
        int size = this.f6670a.size();
        if (this.f6675f != -1 && size > 0) {
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                m mVar = (m) arrayList.get(i10);
                if (this.f6675f == mVar.f6671b) {
                    g(this.f6673d, mVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public int c() {
        return this.f6671b;
    }

    public int d() {
        return this.f6673d;
    }

    public int f(androidx.constraintlayout.core.d dVar, int i10) {
        if (this.f6670a.size() == 0) {
            return 0;
        }
        return j(dVar, this.f6670a, i10);
    }

    public void g(int i10, m mVar) {
        for (ConstraintWidget constraintWidget : this.f6670a) {
            mVar.a(constraintWidget);
            if (i10 == 0) {
                constraintWidget.S0 = mVar.c();
            } else {
                constraintWidget.T0 = mVar.c();
            }
        }
        this.f6675f = mVar.f6671b;
    }

    public void h(boolean z10) {
        this.f6672c = z10;
    }

    public void i(int i10) {
        this.f6673d = i10;
    }

    public String toString() {
        String str = e() + " [" + this.f6671b + "] <";
        Iterator it = this.f6670a.iterator();
        while (it.hasNext()) {
            str = str + " " + ((ConstraintWidget) it.next()).v();
        }
        return str + " >";
    }
}
