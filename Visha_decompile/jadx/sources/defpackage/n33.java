package defpackage;

import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;

public class n33 implements ab0.b {
    public final com.airbnb.lottie.model.layer.a a;
    public final ab0.b b;
    public final ab0 c;
    public final xy3 d;
    public final xy3 e;
    public final xy3 f;
    public final xy3 g;
    public float h = Float.NaN;
    public float i = Float.NaN;
    public float j = Float.NaN;
    public int k = 0;
    public final float[] l = new float[9];

    public class a extends iu5 {
        public final iu5 d;

        public a(iu5 iu5Var) {
            this.d = iu5Var;
        }

        @Override
        public Float a(bt5 bt5Var) {
            Float f = (Float) this.d.a(bt5Var);
            if (f == null) {
                return null;
            }
            return Float.valueOf(f.floatValue() * 2.55f);
        }
    }

    public n33(ab0.b bVar, com.airbnb.lottie.model.layer.a aVar, l33 l33Var) {
        this.b = bVar;
        this.a = aVar;
        ab0 ab0VarH = l33Var.a().h();
        this.c = ab0VarH;
        ab0VarH.a(this);
        aVar.i(ab0VarH);
        xy3 xy3VarH = l33Var.d().h();
        this.d = xy3VarH;
        xy3VarH.a(this);
        aVar.i(xy3VarH);
        xy3 xy3VarH2 = l33Var.b().h();
        this.e = xy3VarH2;
        xy3VarH2.a(this);
        aVar.i(xy3VarH2);
        xy3 xy3VarH3 = l33Var.c().h();
        this.f = xy3VarH3;
        xy3VarH3.a(this);
        aVar.i(xy3VarH3);
        xy3 xy3VarH4 = l33Var.e().h();
        this.g = xy3VarH4;
        xy3VarH4.a(this);
        aVar.i(xy3VarH4);
    }

    public void a(Paint paint, Matrix matrix, int i) {
        float fQ = this.e.q() * 0.017453292f;
        float fFloatValue = ((Float) this.f.h()).floatValue();
        double d = fQ;
        float fSin = ((float) Math.sin(d)) * fFloatValue;
        float fCos = ((float) Math.cos(d + 3.141592653589793d)) * fFloatValue;
        this.a.x.f().getValues(this.l);
        float[] fArr = this.l;
        float f = fArr[0];
        float f2 = fArr[4];
        matrix.getValues(fArr);
        float[] fArr2 = this.l;
        float f3 = fArr2[0] / f;
        float f4 = fSin * f3;
        float f5 = fCos * (fArr2[4] / f2);
        int iIntValue = ((Integer) this.c.h()).intValue();
        int iArgb = Color.argb(Math.round((((Float) this.d.h()).floatValue() * i) / 255.0f), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue));
        float fMax = Math.max(((Float) this.g.h()).floatValue() * f3 * 0.33f, Float.MIN_VALUE);
        if (this.h == fMax && this.i == f4 && this.j == f5 && this.k == iArgb) {
            return;
        }
        this.h = fMax;
        this.i = f4;
        this.j = f5;
        this.k = iArgb;
        paint.setShadowLayer(fMax, f4, f5, iArgb);
    }

    public void b(iu5 iu5Var) {
        this.c.o(iu5Var);
    }

    public void c(iu5 iu5Var) {
        this.e.o(iu5Var);
    }

    public void d(iu5 iu5Var) {
        this.f.o(iu5Var);
    }

    @Override
    public void e() {
        this.b.e();
    }

    public void f(iu5 iu5Var) {
        if (iu5Var == null) {
            this.d.o(null);
        } else {
            this.d.o(new a(iu5Var));
        }
    }

    public void g(iu5 iu5Var) {
        this.g.o(iu5Var);
    }
}
