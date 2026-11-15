package o4;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.p0;
import java.util.List;

public class n implements m, p4.a.b, k {

    private final String f67547e;

    private final LottieDrawable f67548f;

    private final PolystarShape.Type f67549g;

    private final boolean f67550h;

    private final boolean f67551i;

    private final p4.a f67552j;

    private final p4.a f67553k;

    private final p4.a f67554l;

    private final p4.a f67555m;

    private final p4.a f67556n;

    private final p4.a f67557o;

    private final p4.a f67558p;

    private boolean f67560r;

    private final Path f67543a = new Path();

    private final Path f67544b = new Path();

    private final PathMeasure f67545c = new PathMeasure();

    private final float[] f67546d = new float[2];

    private final b f67559q = new b();

    static class a {

        static final int[] f67561a;

        static {
            int[] iArr = new int[PolystarShape.Type.values().length];
            f67561a = iArr;
            try {
                iArr[PolystarShape.Type.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f67561a[PolystarShape.Type.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public n(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, PolystarShape polystarShape) {
        this.f67548f = lottieDrawable;
        this.f67547e = polystarShape.d();
        PolystarShape.Type typeJ = polystarShape.j();
        this.f67549g = typeJ;
        this.f67550h = polystarShape.k();
        this.f67551i = polystarShape.l();
        p4.d dVarA = polystarShape.g().a();
        this.f67552j = dVarA;
        p4.a aVarA = polystarShape.h().a();
        this.f67553k = aVarA;
        p4.d dVarA2 = polystarShape.i().a();
        this.f67554l = dVarA2;
        p4.d dVarA3 = polystarShape.e().a();
        this.f67556n = dVarA3;
        p4.d dVarA4 = polystarShape.f().a();
        this.f67558p = dVarA4;
        PolystarShape.Type type = PolystarShape.Type.STAR;
        if (typeJ == type) {
            this.f67555m = polystarShape.b().a();
            this.f67557o = polystarShape.c().a();
        } else {
            this.f67555m = null;
            this.f67557o = null;
        }
        aVar.i(dVarA);
        aVar.i(aVarA);
        aVar.i(dVarA2);
        aVar.i(dVarA3);
        aVar.i(dVarA4);
        if (typeJ == type) {
            aVar.i(this.f67555m);
            aVar.i(this.f67557o);
        }
        dVarA.a(this);
        aVarA.a(this);
        dVarA2.a(this);
        dVarA3.a(this);
        dVarA4.a(this);
        if (typeJ == type) {
            this.f67555m.a(this);
            this.f67557o.a(this);
        }
    }

    private void g() {
        double d10;
        float f10;
        n nVar;
        n nVar2 = this;
        int iFloor = (int) Math.floor(((Float) nVar2.f67552j.h()).floatValue());
        p4.a aVar = nVar2.f67554l;
        double radians = Math.toRadians((aVar == null ? 0.0d : ((Float) aVar.h()).floatValue()) - 90.0d);
        double d11 = iFloor;
        float fFloatValue = ((Float) nVar2.f67558p.h()).floatValue() / 100.0f;
        float fFloatValue2 = ((Float) nVar2.f67556n.h()).floatValue();
        double d12 = fFloatValue2;
        float fCos = (float) (Math.cos(radians) * d12);
        float fSin = (float) (Math.sin(radians) * d12);
        nVar2.f67543a.moveTo(fCos, fSin);
        double d13 = (float) (6.283185307179586d / d11);
        double dCeil = Math.ceil(d11);
        double d14 = radians + d13;
        int i10 = 0;
        while (true) {
            double d15 = i10;
            if (d15 >= dCeil) {
                n nVar3 = nVar2;
                PointF pointF = (PointF) nVar3.f67553k.h();
                nVar3.f67543a.offset(pointF.x, pointF.y);
                nVar3.f67543a.close();
                return;
            }
            int i11 = i10;
            float fCos2 = (float) (d12 * Math.cos(d14));
            double d16 = d13;
            float fSin2 = (float) (d12 * Math.sin(d14));
            if (fFloatValue != 0.0f) {
                d10 = d12;
                double dAtan2 = (float) (Math.atan2(fSin, fCos) - 1.5707963267948966d);
                float fCos3 = (float) Math.cos(dAtan2);
                float fSin3 = (float) Math.sin(dAtan2);
                f10 = fSin2;
                double dAtan3 = (float) (Math.atan2(fSin2, fCos2) - 1.5707963267948966d);
                float f11 = fFloatValue2 * fFloatValue * 0.25f;
                float f12 = fCos3 * f11;
                float f13 = fSin3 * f11;
                float fCos4 = ((float) Math.cos(dAtan3)) * f11;
                float fSin4 = f11 * ((float) Math.sin(dAtan3));
                if (d15 == dCeil - 1.0d) {
                    nVar = this;
                    nVar.f67544b.reset();
                    nVar.f67544b.moveTo(fCos, fSin);
                    float f14 = fCos - f12;
                    float f15 = fSin - f13;
                    float f16 = fCos2 + fCos4;
                    float f17 = fSin4 + f10;
                    nVar.f67544b.cubicTo(f14, f15, f16, f17, fCos2, f10);
                    nVar.f67545c.setPath(nVar.f67544b, false);
                    PathMeasure pathMeasure = nVar.f67545c;
                    pathMeasure.getPosTan(pathMeasure.getLength() * 0.9999f, nVar.f67546d, null);
                    Path path = nVar.f67543a;
                    float[] fArr = nVar.f67546d;
                    path.cubicTo(f14, f15, f16, f17, fArr[0], fArr[1]);
                } else {
                    nVar = this;
                    nVar.f67543a.cubicTo(fCos - f12, fSin - f13, fCos2 + fCos4, f10 + fSin4, fCos2, f10);
                }
            } else {
                d10 = d12;
                f10 = fSin2;
                nVar = nVar2;
                if (d15 != dCeil - 1.0d) {
                    nVar.f67543a.lineTo(fCos2, f10);
                }
                fSin = f10;
                fCos = fCos2;
                d13 = d16;
                i10 = i11 + 1;
                nVar2 = nVar;
                d12 = d10;
            }
            d14 += d16;
            fSin = f10;
            fCos = fCos2;
            d13 = d16;
            i10 = i11 + 1;
            nVar2 = nVar;
            d12 = d10;
        }
    }

    private void i() {
        float f10;
        float f11;
        double d10;
        float fSin;
        float f12;
        float f13;
        float f14;
        float fFloatValue = ((Float) this.f67552j.h()).floatValue();
        p4.a aVar = this.f67554l;
        double radians = Math.toRadians((aVar == null ? 0.0d : ((Float) aVar.h()).floatValue()) - 90.0d);
        double d11 = fFloatValue;
        float f15 = (float) (6.283185307179586d / d11);
        if (this.f67551i) {
            f15 *= -1.0f;
        }
        float f16 = f15 / 2.0f;
        float f17 = fFloatValue - ((int) fFloatValue);
        if (f17 != 0.0f) {
            radians += (double) ((1.0f - f17) * f16);
        }
        float fFloatValue2 = ((Float) this.f67556n.h()).floatValue();
        float fFloatValue3 = ((Float) this.f67555m.h()).floatValue();
        p4.a aVar2 = this.f67557o;
        float fFloatValue4 = aVar2 != null ? ((Float) aVar2.h()).floatValue() / 100.0f : 0.0f;
        p4.a aVar3 = this.f67558p;
        float fFloatValue5 = aVar3 != null ? ((Float) aVar3.h()).floatValue() / 100.0f : 0.0f;
        if (f17 != 0.0f) {
            f12 = ((fFloatValue2 - fFloatValue3) * f17) + fFloatValue3;
            double d12 = f12;
            float fCos = (float) (d12 * Math.cos(radians));
            fSin = (float) (d12 * Math.sin(radians));
            this.f67543a.moveTo(fCos, fSin);
            d10 = radians + ((double) ((f15 * f17) / 2.0f));
            f10 = fCos;
            f11 = f16;
        } else {
            double d13 = fFloatValue2;
            float fCos2 = (float) (Math.cos(radians) * d13);
            float fSin2 = (float) (d13 * Math.sin(radians));
            this.f67543a.moveTo(fCos2, fSin2);
            f10 = fCos2;
            f11 = f16;
            d10 = radians + ((double) f11);
            fSin = fSin2;
            f12 = 0.0f;
        }
        double dCeil = Math.ceil(d11) * 2.0d;
        int i10 = 0;
        float f18 = f11;
        float f19 = f10;
        boolean z10 = false;
        while (true) {
            double d14 = i10;
            if (d14 >= dCeil) {
                PointF pointF = (PointF) this.f67553k.h();
                this.f67543a.offset(pointF.x, pointF.y);
                this.f67543a.close();
                return;
            }
            float f20 = z10 ? fFloatValue2 : fFloatValue3;
            float f21 = (f12 == 0.0f || d14 != dCeil - 2.0d) ? f18 : (f15 * f17) / 2.0f;
            if (f12 == 0.0f || d14 != dCeil - 1.0d) {
                f12 = f20;
            }
            double d15 = f12;
            double d16 = dCeil;
            float fCos3 = (float) (d15 * Math.cos(d10));
            float fSin3 = (float) (d15 * Math.sin(d10));
            if (fFloatValue4 == 0.0f && fFloatValue5 == 0.0f) {
                this.f67543a.lineTo(fCos3, fSin3);
                f13 = fFloatValue4;
                f14 = fFloatValue5;
            } else {
                f13 = fFloatValue4;
                double dAtan2 = (float) (Math.atan2(fSin, f19) - 1.5707963267948966d);
                float fCos4 = (float) Math.cos(dAtan2);
                float fSin4 = (float) Math.sin(dAtan2);
                f14 = fFloatValue5;
                double dAtan3 = (float) (Math.atan2(fSin3, fCos3) - 1.5707963267948966d);
                float fCos5 = (float) Math.cos(dAtan3);
                float fSin5 = (float) Math.sin(dAtan3);
                float f22 = z10 ? f13 : f14;
                float f23 = z10 ? f14 : f13;
                float f24 = (z10 ? fFloatValue3 : fFloatValue2) * f22 * 0.47829f;
                float f25 = fCos4 * f24;
                float f26 = f24 * fSin4;
                float f27 = (z10 ? fFloatValue2 : fFloatValue3) * f23 * 0.47829f;
                float f28 = fCos5 * f27;
                float f29 = f27 * fSin5;
                if (f17 != 0.0f) {
                    if (i10 == 0) {
                        f25 *= f17;
                        f26 *= f17;
                    } else if (d14 == d16 - 1.0d) {
                        f28 *= f17;
                        f29 *= f17;
                    }
                }
                this.f67543a.cubicTo(f19 - f25, fSin - f26, fCos3 + f28, fSin3 + f29, fCos3, fSin3);
            }
            d10 += (double) f21;
            z10 = !z10;
            i10++;
            f19 = fCos3;
            fSin = fSin3;
            fFloatValue5 = f14;
            fFloatValue4 = f13;
            f12 = f12;
            f15 = f15;
            dCeil = d16;
        }
    }

    private void j() {
        this.f67560r = false;
        this.f67548f.invalidateSelf();
    }

    @Override
    public void a() {
        j();
    }

    @Override
    public void b(List list, List list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = (c) list.get(i10);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.j() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f67559q.a(uVar);
                    uVar.c(this);
                }
            }
        }
    }

    @Override
    public void c(r4.d dVar, int i10, List list, r4.d dVar2) {
        x4.k.k(dVar, i10, list, dVar2, this);
    }

    @Override
    public void d(Object obj, y4.c cVar) {
        p4.a aVar;
        p4.a aVar2;
        if (obj == p0.f17308w) {
            this.f67552j.o(cVar);
            return;
        }
        if (obj == p0.f17309x) {
            this.f67554l.o(cVar);
            return;
        }
        if (obj == p0.f17299n) {
            this.f67553k.o(cVar);
            return;
        }
        if (obj == p0.f17310y && (aVar2 = this.f67555m) != null) {
            aVar2.o(cVar);
            return;
        }
        if (obj == p0.f17311z) {
            this.f67556n.o(cVar);
            return;
        }
        if (obj == p0.A && (aVar = this.f67557o) != null) {
            aVar.o(cVar);
        } else if (obj == p0.B) {
            this.f67558p.o(cVar);
        }
    }

    @Override
    public String getName() {
        return this.f67547e;
    }

    @Override
    public Path getPath() {
        if (this.f67560r) {
            return this.f67543a;
        }
        this.f67543a.reset();
        if (this.f67550h) {
            this.f67560r = true;
            return this.f67543a;
        }
        int i10 = a.f67561a[this.f67549g.ordinal()];
        if (i10 == 1) {
            i();
        } else if (i10 == 2) {
            g();
        }
        this.f67543a.close();
        this.f67559q.b(this.f67543a);
        this.f67560r = true;
        return this.f67543a;
    }
}
