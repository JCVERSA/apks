package p4;

import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;

public class c implements p4.a.b {

    private final com.airbnb.lottie.model.layer.a f69015a;

    private final p4.a.b f69016b;

    private final p4.a f69017c;

    private final d f69018d;

    private final d f69019e;

    private final d f69020f;

    private final d f69021g;

    private float f69022h = Float.NaN;

    private float f69023i = Float.NaN;

    private float f69024j = Float.NaN;

    private int f69025k = 0;

    private final float[] f69026l = new float[9];

    class a extends y4.c {

        final y4.c f69027d;

        a(y4.c cVar) {
            this.f69027d = cVar;
        }

        @Override
        public Float a(y4.b bVar) {
            Float f10 = (Float) this.f69027d.a(bVar);
            if (f10 == null) {
                return null;
            }
            return Float.valueOf(f10.floatValue() * 2.55f);
        }
    }

    public c(p4.a.b bVar, com.airbnb.lottie.model.layer.a aVar, w4.j jVar) {
        this.f69016b = bVar;
        this.f69015a = aVar;
        p4.a aVarA = jVar.a().a();
        this.f69017c = aVarA;
        aVarA.a(this);
        aVar.i(aVarA);
        d dVarA = jVar.d().a();
        this.f69018d = dVarA;
        dVarA.a(this);
        aVar.i(dVarA);
        d dVarA2 = jVar.b().a();
        this.f69019e = dVarA2;
        dVarA2.a(this);
        aVar.i(dVarA2);
        d dVarA3 = jVar.c().a();
        this.f69020f = dVarA3;
        dVarA3.a(this);
        aVar.i(dVarA3);
        d dVarA4 = jVar.e().a();
        this.f69021g = dVarA4;
        dVarA4.a(this);
        aVar.i(dVarA4);
    }

    @Override
    public void a() {
        this.f69016b.a();
    }

    public void b(Paint paint, Matrix matrix, int i10) {
        float fQ = this.f69019e.q() * 0.017453292f;
        float fFloatValue = ((Float) this.f69020f.h()).floatValue();
        double d10 = fQ;
        float fSin = ((float) Math.sin(d10)) * fFloatValue;
        float fCos = ((float) Math.cos(d10 + 3.141592653589793d)) * fFloatValue;
        this.f69015a.f17264x.f().getValues(this.f69026l);
        float[] fArr = this.f69026l;
        float f10 = fArr[0];
        float f11 = fArr[4];
        matrix.getValues(fArr);
        float[] fArr2 = this.f69026l;
        float f12 = fArr2[0] / f10;
        float f13 = fSin * f12;
        float f14 = fCos * (fArr2[4] / f11);
        int iIntValue = ((Integer) this.f69017c.h()).intValue();
        int iArgb = Color.argb(Math.round((((Float) this.f69018d.h()).floatValue() * i10) / 255.0f), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue));
        float fMax = Math.max(((Float) this.f69021g.h()).floatValue() * f12, Float.MIN_VALUE);
        if (this.f69022h == fMax && this.f69023i == f13 && this.f69024j == f14 && this.f69025k == iArgb) {
            return;
        }
        this.f69022h = fMax;
        this.f69023i = f13;
        this.f69024j = f14;
        this.f69025k = iArgb;
        paint.setShadowLayer(fMax, f13, f14, iArgb);
    }

    public void c(y4.c cVar) {
        this.f69017c.o(cVar);
    }

    public void d(y4.c cVar) {
        this.f69019e.o(cVar);
    }

    public void e(y4.c cVar) {
        this.f69020f.o(cVar);
    }

    public void f(y4.c cVar) {
        if (cVar == null) {
            this.f69018d.o(null);
        } else {
            this.f69018d.o(new a(cVar));
        }
    }

    public void g(y4.c cVar) {
        this.f69021g.o(cVar);
    }
}
