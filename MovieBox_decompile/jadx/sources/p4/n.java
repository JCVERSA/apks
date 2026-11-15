package p4;

import android.graphics.PointF;
import java.util.Collections;

public class n extends a {

    private final PointF f69047i;

    private final PointF f69048j;

    private final a f69049k;

    private final a f69050l;

    protected y4.c f69051m;

    protected y4.c f69052n;

    public n(a aVar, a aVar2) {
        super(Collections.emptyList());
        this.f69047i = new PointF();
        this.f69048j = new PointF();
        this.f69049k = aVar;
        this.f69050l = aVar2;
        n(f());
    }

    @Override
    public void n(float f10) {
        this.f69049k.n(f10);
        this.f69050l.n(f10);
        this.f69047i.set(((Float) this.f69049k.h()).floatValue(), ((Float) this.f69050l.h()).floatValue());
        for (int i10 = 0; i10 < this.f69001a.size(); i10++) {
            ((a.b) this.f69001a.get(i10)).a();
        }
    }

    @Override
    public PointF h() {
        return i(null, 0.0f);
    }

    @Override
    public PointF i(y4.a aVar, float f10) {
        Float f11;
        y4.a aVarB;
        y4.a aVarB2;
        Float f12 = null;
        if (this.f69051m == null || (aVarB2 = this.f69049k.b()) == null) {
            f11 = null;
        } else {
            float fD = this.f69049k.d();
            Float f13 = aVarB2.f76141h;
            y4.c cVar = this.f69051m;
            float f14 = aVarB2.f76140g;
            f11 = (Float) cVar.b(f14, f13 == null ? f14 : f13.floatValue(), (Float) aVarB2.f76135b, (Float) aVarB2.f76136c, f10, f10, fD);
        }
        if (this.f69052n != null && (aVarB = this.f69050l.b()) != null) {
            float fD2 = this.f69050l.d();
            Float f15 = aVarB.f76141h;
            y4.c cVar2 = this.f69052n;
            float f16 = aVarB.f76140g;
            f12 = (Float) cVar2.b(f16, f15 == null ? f16 : f15.floatValue(), (Float) aVarB.f76135b, (Float) aVarB.f76136c, f10, f10, fD2);
        }
        if (f11 == null) {
            this.f69048j.set(this.f69047i.x, 0.0f);
        } else {
            this.f69048j.set(f11.floatValue(), 0.0f);
        }
        if (f12 == null) {
            PointF pointF = this.f69048j;
            pointF.set(pointF.x, this.f69047i.y);
        } else {
            PointF pointF2 = this.f69048j;
            pointF2.set(pointF2.x, f12.floatValue());
        }
        return this.f69048j;
    }

    public void s(y4.c cVar) {
        y4.c cVar2 = this.f69051m;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f69051m = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }

    public void t(y4.c cVar) {
        y4.c cVar2 = this.f69052n;
        if (cVar2 != null) {
            cVar2.c(null);
        }
        this.f69052n = cVar;
        if (cVar != null) {
            cVar.c(this);
        }
    }
}
