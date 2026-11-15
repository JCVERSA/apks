package defpackage;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

public class sf9 {
    public final List a;
    public PointF b;
    public boolean c;

    public sf9(PointF pointF, boolean z, List list) {
        this.b = pointF;
        this.c = z;
        this.a = new ArrayList(list);
    }

    public List a() {
        return this.a;
    }

    public PointF b() {
        return this.b;
    }

    public void c(sf9 sf9Var, sf9 sf9Var2, float f) {
        if (this.b == null) {
            this.b = new PointF();
        }
        this.c = sf9Var.d() || sf9Var2.d();
        if (sf9Var.a().size() != sf9Var2.a().size()) {
            mq5.c("Curves must have the same number of control points. Shape 1: " + sf9Var.a().size() + "\tShape 2: " + sf9Var2.a().size());
        }
        int iMin = Math.min(sf9Var.a().size(), sf9Var2.a().size());
        if (this.a.size() < iMin) {
            for (int size = this.a.size(); size < iMin; size++) {
                this.a.add(new gm1());
            }
        } else if (this.a.size() > iMin) {
            for (int size2 = this.a.size() - 1; size2 >= iMin; size2--) {
                List list = this.a;
                list.remove(list.size() - 1);
            }
        }
        PointF pointFB = sf9Var.b();
        PointF pointFB2 = sf9Var2.b();
        f(xp6.i(pointFB.x, pointFB2.x, f), xp6.i(pointFB.y, pointFB2.y, f));
        for (int size3 = this.a.size() - 1; size3 >= 0; size3--) {
            gm1 gm1Var = (gm1) sf9Var.a().get(size3);
            gm1 gm1Var2 = (gm1) sf9Var2.a().get(size3);
            PointF pointFA = gm1Var.a();
            PointF pointFB3 = gm1Var.b();
            PointF pointFC = gm1Var.c();
            PointF pointFA2 = gm1Var2.a();
            PointF pointFB4 = gm1Var2.b();
            PointF pointFC2 = gm1Var2.c();
            ((gm1) this.a.get(size3)).d(xp6.i(pointFA.x, pointFA2.x, f), xp6.i(pointFA.y, pointFA2.y, f));
            ((gm1) this.a.get(size3)).e(xp6.i(pointFB3.x, pointFB4.x, f), xp6.i(pointFB3.y, pointFB4.y, f));
            ((gm1) this.a.get(size3)).f(xp6.i(pointFC.x, pointFC2.x, f), xp6.i(pointFC.y, pointFC2.y, f));
        }
    }

    public boolean d() {
        return this.c;
    }

    public void e(boolean z) {
        this.c = z;
    }

    public void f(float f, float f2) {
        if (this.b == null) {
            this.b = new PointF();
        }
        this.b.set(f, f2);
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.a.size() + "closed=" + this.c + '}';
    }

    public sf9() {
        this.a = new ArrayList();
    }
}
