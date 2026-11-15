package defpackage;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.airbnb.lottie.model.layer.a;
import java.util.Collections;

public class x6b {
    public final Matrix a = new Matrix();
    public final Matrix b;
    public final Matrix c;
    public final Matrix d;
    public final float[] e;
    public ab0 f;
    public ab0 g;
    public ab0 h;
    public ab0 i;
    public ab0 j;
    public xy3 k;
    public xy3 l;
    public ab0 m;
    public ab0 n;
    public final boolean o;

    public x6b(rc rcVar) {
        this.f = rcVar.c() == null ? null : rcVar.c().h();
        this.g = rcVar.f() == null ? null : rcVar.f().h();
        this.h = rcVar.h() == null ? null : rcVar.h().h();
        this.i = rcVar.g() == null ? null : rcVar.g().h();
        this.k = rcVar.i() == null ? null : rcVar.i().h();
        this.o = rcVar.l();
        if (this.k != null) {
            this.b = new Matrix();
            this.c = new Matrix();
            this.d = new Matrix();
            this.e = new float[9];
        } else {
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
        }
        this.l = rcVar.j() == null ? null : rcVar.j().h();
        if (rcVar.e() != null) {
            this.j = rcVar.e().h();
        }
        if (rcVar.k() != null) {
            this.m = rcVar.k().h();
        } else {
            this.m = null;
        }
        if (rcVar.d() != null) {
            this.n = rcVar.d().h();
        } else {
            this.n = null;
        }
    }

    public void a(a aVar) {
        aVar.i(this.j);
        aVar.i(this.m);
        aVar.i(this.n);
        aVar.i(this.f);
        aVar.i(this.g);
        aVar.i(this.h);
        aVar.i(this.i);
        aVar.i(this.k);
        aVar.i(this.l);
    }

    public void b(ab0.b bVar) {
        ab0 ab0Var = this.j;
        if (ab0Var != null) {
            ab0Var.a(bVar);
        }
        ab0 ab0Var2 = this.m;
        if (ab0Var2 != null) {
            ab0Var2.a(bVar);
        }
        ab0 ab0Var3 = this.n;
        if (ab0Var3 != null) {
            ab0Var3.a(bVar);
        }
        ab0 ab0Var4 = this.f;
        if (ab0Var4 != null) {
            ab0Var4.a(bVar);
        }
        ab0 ab0Var5 = this.g;
        if (ab0Var5 != null) {
            ab0Var5.a(bVar);
        }
        ab0 ab0Var6 = this.h;
        if (ab0Var6 != null) {
            ab0Var6.a(bVar);
        }
        ab0 ab0Var7 = this.i;
        if (ab0Var7 != null) {
            ab0Var7.a(bVar);
        }
        xy3 xy3Var = this.k;
        if (xy3Var != null) {
            xy3Var.a(bVar);
        }
        xy3 xy3Var2 = this.l;
        if (xy3Var2 != null) {
            xy3Var2.a(bVar);
        }
    }

    public boolean c(Object obj, iu5 iu5Var) {
        if (obj == it5.f) {
            ab0 ab0Var = this.f;
            if (ab0Var == null) {
                this.f = new hnb(iu5Var, new PointF());
                return true;
            }
            ab0Var.o(iu5Var);
            return true;
        }
        if (obj == it5.g) {
            ab0 ab0Var2 = this.g;
            if (ab0Var2 == null) {
                this.g = new hnb(iu5Var, new PointF());
                return true;
            }
            ab0Var2.o(iu5Var);
            return true;
        }
        if (obj == it5.h) {
            ab0 ab0Var3 = this.g;
            if (ab0Var3 instanceof gv9) {
                ((gv9) ab0Var3).s(iu5Var);
                return true;
            }
        }
        if (obj == it5.i) {
            ab0 ab0Var4 = this.g;
            if (ab0Var4 instanceof gv9) {
                ((gv9) ab0Var4).t(iu5Var);
                return true;
            }
        }
        if (obj == it5.o) {
            ab0 ab0Var5 = this.h;
            if (ab0Var5 == null) {
                this.h = new hnb(iu5Var, new t19());
                return true;
            }
            ab0Var5.o(iu5Var);
            return true;
        }
        if (obj == it5.p) {
            ab0 ab0Var6 = this.i;
            if (ab0Var6 == null) {
                this.i = new hnb(iu5Var, Float.valueOf(0.0f));
                return true;
            }
            ab0Var6.o(iu5Var);
            return true;
        }
        if (obj == it5.c) {
            ab0 ab0Var7 = this.j;
            if (ab0Var7 == null) {
                this.j = new hnb(iu5Var, 100);
                return true;
            }
            ab0Var7.o(iu5Var);
            return true;
        }
        if (obj == it5.C) {
            ab0 ab0Var8 = this.m;
            if (ab0Var8 == null) {
                this.m = new hnb(iu5Var, Float.valueOf(100.0f));
                return true;
            }
            ab0Var8.o(iu5Var);
            return true;
        }
        if (obj == it5.D) {
            ab0 ab0Var9 = this.n;
            if (ab0Var9 == null) {
                this.n = new hnb(iu5Var, Float.valueOf(100.0f));
                return true;
            }
            ab0Var9.o(iu5Var);
            return true;
        }
        if (obj == it5.q) {
            if (this.k == null) {
                this.k = new xy3(Collections.singletonList(new dg5(Float.valueOf(0.0f))));
            }
            this.k.o(iu5Var);
            return true;
        }
        if (obj != it5.r) {
            return false;
        }
        if (this.l == null) {
            this.l = new xy3(Collections.singletonList(new dg5(Float.valueOf(0.0f))));
        }
        this.l.o(iu5Var);
        return true;
    }

    public final void d() {
        for (int i = 0; i < 9; i++) {
            this.e[i] = 0.0f;
        }
    }

    public ab0 e() {
        return this.n;
    }

    public Matrix f() {
        PointF pointF;
        t19 t19Var;
        PointF pointF2;
        this.a.reset();
        ab0 ab0Var = this.g;
        if (ab0Var != null && (pointF2 = (PointF) ab0Var.h()) != null) {
            float f = pointF2.x;
            if (f != 0.0f || pointF2.y != 0.0f) {
                this.a.preTranslate(f, pointF2.y);
            }
        }
        if (!this.o) {
            ab0 ab0Var2 = this.i;
            if (ab0Var2 != null) {
                float fFloatValue = ab0Var2 instanceof hnb ? ((Float) ab0Var2.h()).floatValue() : ((xy3) ab0Var2).q();
                if (fFloatValue != 0.0f) {
                    this.a.preRotate(fFloatValue);
                }
            }
        } else if (ab0Var != null) {
            float f2 = ab0Var.f();
            PointF pointF3 = (PointF) ab0Var.h();
            float f3 = pointF3.x;
            float f4 = pointF3.y;
            ab0Var.n(1.0E-4f + f2);
            PointF pointF4 = (PointF) ab0Var.h();
            ab0Var.n(f2);
            this.a.preRotate((float) Math.toDegrees(Math.atan2(pointF4.y - f4, pointF4.x - f3)));
        }
        xy3 xy3Var = this.k;
        if (xy3Var != null) {
            xy3 xy3Var2 = this.l;
            float fCos = xy3Var2 == null ? 0.0f : (float) Math.cos(Math.toRadians((-xy3Var2.q()) + 90.0f));
            xy3 xy3Var3 = this.l;
            float fSin = xy3Var3 == null ? 1.0f : (float) Math.sin(Math.toRadians((-xy3Var3.q()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(xy3Var.q()));
            d();
            float[] fArr = this.e;
            fArr[0] = fCos;
            fArr[1] = fSin;
            float f5 = -fSin;
            fArr[3] = f5;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            this.b.setValues(fArr);
            d();
            float[] fArr2 = this.e;
            fArr2[0] = 1.0f;
            fArr2[3] = fTan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.c.setValues(fArr2);
            d();
            float[] fArr3 = this.e;
            fArr3[0] = fCos;
            fArr3[1] = f5;
            fArr3[3] = fSin;
            fArr3[4] = fCos;
            fArr3[8] = 1.0f;
            this.d.setValues(fArr3);
            this.c.preConcat(this.b);
            this.d.preConcat(this.c);
            this.a.preConcat(this.d);
        }
        ab0 ab0Var3 = this.h;
        if (ab0Var3 != null && (t19Var = (t19) ab0Var3.h()) != null && (t19Var.b() != 1.0f || t19Var.c() != 1.0f)) {
            this.a.preScale(t19Var.b(), t19Var.c());
        }
        ab0 ab0Var4 = this.f;
        if (ab0Var4 != null && (pointF = (PointF) ab0Var4.h()) != null) {
            float f6 = pointF.x;
            if (f6 != 0.0f || pointF.y != 0.0f) {
                this.a.preTranslate(-f6, -pointF.y);
            }
        }
        return this.a;
    }

    public Matrix g(float f) {
        ab0 ab0Var = this.g;
        PointF pointF = ab0Var == null ? null : (PointF) ab0Var.h();
        ab0 ab0Var2 = this.h;
        t19 t19Var = ab0Var2 == null ? null : (t19) ab0Var2.h();
        this.a.reset();
        if (pointF != null) {
            this.a.preTranslate(pointF.x * f, pointF.y * f);
        }
        if (t19Var != null) {
            double d = f;
            this.a.preScale((float) Math.pow(t19Var.b(), d), (float) Math.pow(t19Var.c(), d));
        }
        ab0 ab0Var3 = this.i;
        if (ab0Var3 != null) {
            float fFloatValue = ((Float) ab0Var3.h()).floatValue();
            ab0 ab0Var4 = this.f;
            PointF pointF2 = ab0Var4 != null ? (PointF) ab0Var4.h() : null;
            this.a.preRotate(fFloatValue * f, pointF2 == null ? 0.0f : pointF2.x, pointF2 != null ? pointF2.y : 0.0f);
        }
        return this.a;
    }

    public ab0 h() {
        return this.j;
    }

    public ab0 i() {
        return this.m;
    }

    public void j(float f) {
        ab0 ab0Var = this.j;
        if (ab0Var != null) {
            ab0Var.n(f);
        }
        ab0 ab0Var2 = this.m;
        if (ab0Var2 != null) {
            ab0Var2.n(f);
        }
        ab0 ab0Var3 = this.n;
        if (ab0Var3 != null) {
            ab0Var3.n(f);
        }
        ab0 ab0Var4 = this.f;
        if (ab0Var4 != null) {
            ab0Var4.n(f);
        }
        ab0 ab0Var5 = this.g;
        if (ab0Var5 != null) {
            ab0Var5.n(f);
        }
        ab0 ab0Var6 = this.h;
        if (ab0Var6 != null) {
            ab0Var6.n(f);
        }
        ab0 ab0Var7 = this.i;
        if (ab0Var7 != null) {
            ab0Var7.n(f);
        }
        xy3 xy3Var = this.k;
        if (xy3Var != null) {
            xy3Var.n(f);
        }
        xy3 xy3Var2 = this.l;
        if (xy3Var2 != null) {
            xy3Var2.n(f);
        }
    }
}
