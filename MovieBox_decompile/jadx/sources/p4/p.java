package p4;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.airbnb.lottie.p0;
import java.util.Collections;

public class p {

    private final Matrix f69057a = new Matrix();

    private final Matrix f69058b;

    private final Matrix f69059c;

    private final Matrix f69060d;

    private final float[] f69061e;

    private a f69062f;

    private a f69063g;

    private a f69064h;

    private a f69065i;

    private a f69066j;

    private d f69067k;

    private d f69068l;

    private a f69069m;

    private a f69070n;

    private final boolean f69071o;

    public p(s4.n nVar) {
        this.f69062f = nVar.c() == null ? null : nVar.c().a();
        this.f69063g = nVar.f() == null ? null : nVar.f().a();
        this.f69064h = nVar.h() == null ? null : nVar.h().a();
        this.f69065i = nVar.g() == null ? null : nVar.g().a();
        this.f69067k = nVar.i() == null ? null : nVar.i().a();
        this.f69071o = nVar.l();
        if (this.f69067k != null) {
            this.f69058b = new Matrix();
            this.f69059c = new Matrix();
            this.f69060d = new Matrix();
            this.f69061e = new float[9];
        } else {
            this.f69058b = null;
            this.f69059c = null;
            this.f69060d = null;
            this.f69061e = null;
        }
        this.f69068l = nVar.j() == null ? null : nVar.j().a();
        if (nVar.e() != null) {
            this.f69066j = nVar.e().a();
        }
        if (nVar.k() != null) {
            this.f69069m = nVar.k().a();
        } else {
            this.f69069m = null;
        }
        if (nVar.d() != null) {
            this.f69070n = nVar.d().a();
        } else {
            this.f69070n = null;
        }
    }

    private void d() {
        for (int i10 = 0; i10 < 9; i10++) {
            this.f69061e[i10] = 0.0f;
        }
    }

    public void a(com.airbnb.lottie.model.layer.a aVar) {
        aVar.i(this.f69066j);
        aVar.i(this.f69069m);
        aVar.i(this.f69070n);
        aVar.i(this.f69062f);
        aVar.i(this.f69063g);
        aVar.i(this.f69064h);
        aVar.i(this.f69065i);
        aVar.i(this.f69067k);
        aVar.i(this.f69068l);
    }

    public void b(a.b bVar) {
        a aVar = this.f69066j;
        if (aVar != null) {
            aVar.a(bVar);
        }
        a aVar2 = this.f69069m;
        if (aVar2 != null) {
            aVar2.a(bVar);
        }
        a aVar3 = this.f69070n;
        if (aVar3 != null) {
            aVar3.a(bVar);
        }
        a aVar4 = this.f69062f;
        if (aVar4 != null) {
            aVar4.a(bVar);
        }
        a aVar5 = this.f69063g;
        if (aVar5 != null) {
            aVar5.a(bVar);
        }
        a aVar6 = this.f69064h;
        if (aVar6 != null) {
            aVar6.a(bVar);
        }
        a aVar7 = this.f69065i;
        if (aVar7 != null) {
            aVar7.a(bVar);
        }
        d dVar = this.f69067k;
        if (dVar != null) {
            dVar.a(bVar);
        }
        d dVar2 = this.f69068l;
        if (dVar2 != null) {
            dVar2.a(bVar);
        }
    }

    public boolean c(Object obj, y4.c cVar) {
        if (obj == p0.f17291f) {
            a aVar = this.f69062f;
            if (aVar == null) {
                this.f69062f = new q(cVar, new PointF());
                return true;
            }
            aVar.o(cVar);
            return true;
        }
        if (obj == p0.f17292g) {
            a aVar2 = this.f69063g;
            if (aVar2 == null) {
                this.f69063g = new q(cVar, new PointF());
                return true;
            }
            aVar2.o(cVar);
            return true;
        }
        if (obj == p0.f17293h) {
            a aVar3 = this.f69063g;
            if (aVar3 instanceof n) {
                ((n) aVar3).s(cVar);
                return true;
            }
        }
        if (obj == p0.f17294i) {
            a aVar4 = this.f69063g;
            if (aVar4 instanceof n) {
                ((n) aVar4).t(cVar);
                return true;
            }
        }
        if (obj == p0.f17300o) {
            a aVar5 = this.f69064h;
            if (aVar5 == null) {
                this.f69064h = new q(cVar, new y4.d());
                return true;
            }
            aVar5.o(cVar);
            return true;
        }
        if (obj == p0.f17301p) {
            a aVar6 = this.f69065i;
            if (aVar6 == null) {
                this.f69065i = new q(cVar, Float.valueOf(0.0f));
                return true;
            }
            aVar6.o(cVar);
            return true;
        }
        if (obj == p0.f17288c) {
            a aVar7 = this.f69066j;
            if (aVar7 == null) {
                this.f69066j = new q(cVar, 100);
                return true;
            }
            aVar7.o(cVar);
            return true;
        }
        if (obj == p0.C) {
            a aVar8 = this.f69069m;
            if (aVar8 == null) {
                this.f69069m = new q(cVar, Float.valueOf(100.0f));
                return true;
            }
            aVar8.o(cVar);
            return true;
        }
        if (obj == p0.D) {
            a aVar9 = this.f69070n;
            if (aVar9 == null) {
                this.f69070n = new q(cVar, Float.valueOf(100.0f));
                return true;
            }
            aVar9.o(cVar);
            return true;
        }
        if (obj == p0.f17302q) {
            if (this.f69067k == null) {
                this.f69067k = new d(Collections.singletonList(new y4.a(Float.valueOf(0.0f))));
            }
            this.f69067k.o(cVar);
            return true;
        }
        if (obj != p0.f17303r) {
            return false;
        }
        if (this.f69068l == null) {
            this.f69068l = new d(Collections.singletonList(new y4.a(Float.valueOf(0.0f))));
        }
        this.f69068l.o(cVar);
        return true;
    }

    public a e() {
        return this.f69070n;
    }

    public Matrix f() {
        PointF pointF;
        y4.d dVar;
        PointF pointF2;
        this.f69057a.reset();
        a aVar = this.f69063g;
        if (aVar != null && (pointF2 = (PointF) aVar.h()) != null) {
            float f10 = pointF2.x;
            if (f10 != 0.0f || pointF2.y != 0.0f) {
                this.f69057a.preTranslate(f10, pointF2.y);
            }
        }
        if (!this.f69071o) {
            a aVar2 = this.f69065i;
            if (aVar2 != null) {
                float fFloatValue = aVar2 instanceof q ? ((Float) aVar2.h()).floatValue() : ((d) aVar2).q();
                if (fFloatValue != 0.0f) {
                    this.f69057a.preRotate(fFloatValue);
                }
            }
        } else if (aVar != null) {
            float f11 = aVar.f();
            PointF pointF3 = (PointF) aVar.h();
            float f12 = pointF3.x;
            float f13 = pointF3.y;
            aVar.n(1.0E-4f + f11);
            PointF pointF4 = (PointF) aVar.h();
            aVar.n(f11);
            this.f69057a.preRotate((float) Math.toDegrees(Math.atan2(pointF4.y - f13, pointF4.x - f12)));
        }
        d dVar2 = this.f69067k;
        if (dVar2 != null) {
            d dVar3 = this.f69068l;
            float fCos = dVar3 == null ? 0.0f : (float) Math.cos(Math.toRadians((-dVar3.q()) + 90.0f));
            d dVar4 = this.f69068l;
            float fSin = dVar4 == null ? 1.0f : (float) Math.sin(Math.toRadians((-dVar4.q()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(dVar2.q()));
            d();
            float[] fArr = this.f69061e;
            fArr[0] = fCos;
            fArr[1] = fSin;
            float f14 = -fSin;
            fArr[3] = f14;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            this.f69058b.setValues(fArr);
            d();
            float[] fArr2 = this.f69061e;
            fArr2[0] = 1.0f;
            fArr2[3] = fTan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.f69059c.setValues(fArr2);
            d();
            float[] fArr3 = this.f69061e;
            fArr3[0] = fCos;
            fArr3[1] = f14;
            fArr3[3] = fSin;
            fArr3[4] = fCos;
            fArr3[8] = 1.0f;
            this.f69060d.setValues(fArr3);
            this.f69059c.preConcat(this.f69058b);
            this.f69060d.preConcat(this.f69059c);
            this.f69057a.preConcat(this.f69060d);
        }
        a aVar3 = this.f69064h;
        if (aVar3 != null && (dVar = (y4.d) aVar3.h()) != null && (dVar.b() != 1.0f || dVar.c() != 1.0f)) {
            this.f69057a.preScale(dVar.b(), dVar.c());
        }
        a aVar4 = this.f69062f;
        if (aVar4 != null && (pointF = (PointF) aVar4.h()) != null) {
            float f15 = pointF.x;
            if (f15 != 0.0f || pointF.y != 0.0f) {
                this.f69057a.preTranslate(-f15, -pointF.y);
            }
        }
        return this.f69057a;
    }

    public Matrix g(float f10) {
        a aVar = this.f69063g;
        PointF pointF = aVar == null ? null : (PointF) aVar.h();
        a aVar2 = this.f69064h;
        y4.d dVar = aVar2 == null ? null : (y4.d) aVar2.h();
        this.f69057a.reset();
        if (pointF != null) {
            this.f69057a.preTranslate(pointF.x * f10, pointF.y * f10);
        }
        if (dVar != null) {
            double d10 = f10;
            this.f69057a.preScale((float) Math.pow(dVar.b(), d10), (float) Math.pow(dVar.c(), d10));
        }
        a aVar3 = this.f69065i;
        if (aVar3 != null) {
            float fFloatValue = ((Float) aVar3.h()).floatValue();
            a aVar4 = this.f69062f;
            PointF pointF2 = aVar4 != null ? (PointF) aVar4.h() : null;
            this.f69057a.preRotate(fFloatValue * f10, pointF2 == null ? 0.0f : pointF2.x, pointF2 != null ? pointF2.y : 0.0f);
        }
        return this.f69057a;
    }

    public a h() {
        return this.f69066j;
    }

    public a i() {
        return this.f69069m;
    }

    public void j(float f10) {
        a aVar = this.f69066j;
        if (aVar != null) {
            aVar.n(f10);
        }
        a aVar2 = this.f69069m;
        if (aVar2 != null) {
            aVar2.n(f10);
        }
        a aVar3 = this.f69070n;
        if (aVar3 != null) {
            aVar3.n(f10);
        }
        a aVar4 = this.f69062f;
        if (aVar4 != null) {
            aVar4.n(f10);
        }
        a aVar5 = this.f69063g;
        if (aVar5 != null) {
            aVar5.n(f10);
        }
        a aVar6 = this.f69064h;
        if (aVar6 != null) {
            aVar6.n(f10);
        }
        a aVar7 = this.f69065i;
        if (aVar7 != null) {
            aVar7.n(f10);
        }
        d dVar = this.f69067k;
        if (dVar != null) {
            dVar.n(f10);
        }
        d dVar2 = this.f69068l;
        if (dVar2 != null) {
            dVar2.n(f10);
        }
    }
}
