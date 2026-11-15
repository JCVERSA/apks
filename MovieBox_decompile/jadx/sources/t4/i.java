package t4;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

public class i {

    private final List f72500a;

    private PointF f72501b;

    private boolean f72502c;

    public i(PointF pointF, boolean z10, List list) {
        this.f72501b = pointF;
        this.f72502c = z10;
        this.f72500a = new ArrayList(list);
    }

    public List a() {
        return this.f72500a;
    }

    public PointF b() {
        return this.f72501b;
    }

    public void c(i iVar, i iVar2, float f10) {
        if (this.f72501b == null) {
            this.f72501b = new PointF();
        }
        this.f72502c = iVar.d() || iVar2.d();
        if (iVar.a().size() != iVar2.a().size()) {
            x4.f.c("Curves must have the same number of control points. Shape 1: " + iVar.a().size() + "\tShape 2: " + iVar2.a().size());
        }
        int iMin = Math.min(iVar.a().size(), iVar2.a().size());
        if (this.f72500a.size() < iMin) {
            for (int size = this.f72500a.size(); size < iMin; size++) {
                this.f72500a.add(new r4.a());
            }
        } else if (this.f72500a.size() > iMin) {
            for (int size2 = this.f72500a.size() - 1; size2 >= iMin; size2--) {
                List list = this.f72500a;
                list.remove(list.size() - 1);
            }
        }
        PointF pointFB = iVar.b();
        PointF pointFB2 = iVar2.b();
        f(x4.k.i(pointFB.x, pointFB2.x, f10), x4.k.i(pointFB.y, pointFB2.y, f10));
        for (int size3 = this.f72500a.size() - 1; size3 >= 0; size3--) {
            r4.a aVar = (r4.a) iVar.a().get(size3);
            r4.a aVar2 = (r4.a) iVar2.a().get(size3);
            PointF pointFA = aVar.a();
            PointF pointFB3 = aVar.b();
            PointF pointFC = aVar.c();
            PointF pointFA2 = aVar2.a();
            PointF pointFB4 = aVar2.b();
            PointF pointFC2 = aVar2.c();
            ((r4.a) this.f72500a.get(size3)).d(x4.k.i(pointFA.x, pointFA2.x, f10), x4.k.i(pointFA.y, pointFA2.y, f10));
            ((r4.a) this.f72500a.get(size3)).e(x4.k.i(pointFB3.x, pointFB4.x, f10), x4.k.i(pointFB3.y, pointFB4.y, f10));
            ((r4.a) this.f72500a.get(size3)).f(x4.k.i(pointFC.x, pointFC2.x, f10), x4.k.i(pointFC.y, pointFC2.y, f10));
        }
    }

    public boolean d() {
        return this.f72502c;
    }

    public void e(boolean z10) {
        this.f72502c = z10;
    }

    public void f(float f10, float f11) {
        if (this.f72501b == null) {
            this.f72501b = new PointF();
        }
        this.f72501b.set(f10, f11);
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f72500a.size() + "closed=" + this.f72502c + '}';
    }

    public i() {
        this.f72500a = new ArrayList();
    }
}
