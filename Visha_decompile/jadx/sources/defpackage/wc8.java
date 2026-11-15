package defpackage;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.List;

public class wc8 implements by7, ab0.b, vf5 {
    public final String e;
    public final LottieDrawable f;
    public final PolystarShape.Type g;
    public final boolean h;
    public final boolean i;
    public final ab0 j;
    public final ab0 k;
    public final ab0 l;
    public final ab0 m;
    public final ab0 n;
    public final ab0 o;
    public final ab0 p;
    public boolean r;
    public final Path a = new Path();
    public final Path b = new Path();
    public final PathMeasure c = new PathMeasure();
    public final float[] d = new float[2];
    public final vd1 q = new vd1();

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[PolystarShape.Type.values().length];
            a = iArr;
            try {
                iArr[PolystarShape.Type.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[PolystarShape.Type.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public wc8(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, PolystarShape polystarShape) {
        this.f = lottieDrawable;
        this.e = polystarShape.d();
        PolystarShape.Type typeJ = polystarShape.j();
        this.g = typeJ;
        this.h = polystarShape.k();
        this.i = polystarShape.l();
        xy3 xy3VarH = polystarShape.g().h();
        this.j = xy3VarH;
        ab0 ab0VarH = polystarShape.h().h();
        this.k = ab0VarH;
        xy3 xy3VarH2 = polystarShape.i().h();
        this.l = xy3VarH2;
        xy3 xy3VarH3 = polystarShape.e().h();
        this.n = xy3VarH3;
        xy3 xy3VarH4 = polystarShape.f().h();
        this.p = xy3VarH4;
        PolystarShape.Type type = PolystarShape.Type.STAR;
        if (typeJ == type) {
            this.m = polystarShape.b().h();
            this.o = polystarShape.c().h();
        } else {
            this.m = null;
            this.o = null;
        }
        aVar.i(xy3VarH);
        aVar.i(ab0VarH);
        aVar.i(xy3VarH2);
        aVar.i(xy3VarH3);
        aVar.i(xy3VarH4);
        if (typeJ == type) {
            aVar.i(this.m);
            aVar.i(this.o);
        }
        xy3VarH.a(this);
        ab0VarH.a(this);
        xy3VarH2.a(this);
        xy3VarH3.a(this);
        xy3VarH4.a(this);
        if (typeJ == type) {
            this.m.a(this);
            this.o.a(this);
        }
    }

    private void j() {
        this.r = false;
        this.f.invalidateSelf();
    }

    public final void b() {
        double d;
        float f;
        wc8 wc8Var;
        wc8 wc8Var2 = this;
        int iFloor = (int) Math.floor(((Float) wc8Var2.j.h()).floatValue());
        ab0 ab0Var = wc8Var2.l;
        double radians = Math.toRadians((ab0Var == null ? 0.0d : ((Float) ab0Var.h()).floatValue()) - 90.0d);
        double d2 = iFloor;
        float fFloatValue = ((Float) wc8Var2.p.h()).floatValue() / 100.0f;
        float fFloatValue2 = ((Float) wc8Var2.n.h()).floatValue();
        double d3 = fFloatValue2;
        float fCos = (float) (Math.cos(radians) * d3);
        float fSin = (float) (Math.sin(radians) * d3);
        wc8Var2.a.moveTo(fCos, fSin);
        double d4 = (float) (6.283185307179586d / d2);
        double dCeil = Math.ceil(d2);
        double d5 = radians + d4;
        int i = 0;
        while (true) {
            double d6 = i;
            if (d6 >= dCeil) {
                wc8 wc8Var3 = wc8Var2;
                PointF pointF = (PointF) wc8Var3.k.h();
                wc8Var3.a.offset(pointF.x, pointF.y);
                wc8Var3.a.close();
                return;
            }
            int i2 = i;
            float fCos2 = (float) (d3 * Math.cos(d5));
            double d7 = d4;
            float fSin2 = (float) (d3 * Math.sin(d5));
            if (fFloatValue != 0.0f) {
                d = d3;
                double dAtan2 = (float) (Math.atan2(fSin, fCos) - 1.5707963267948966d);
                float fCos3 = (float) Math.cos(dAtan2);
                float fSin3 = (float) Math.sin(dAtan2);
                f = fSin2;
                double dAtan3 = (float) (Math.atan2(fSin2, fCos2) - 1.5707963267948966d);
                float f2 = fFloatValue2 * fFloatValue * 0.25f;
                float f3 = fCos3 * f2;
                float f4 = fSin3 * f2;
                float fCos4 = ((float) Math.cos(dAtan3)) * f2;
                float fSin4 = f2 * ((float) Math.sin(dAtan3));
                if (d6 == dCeil - 1.0d) {
                    wc8Var = this;
                    wc8Var.b.reset();
                    wc8Var.b.moveTo(fCos, fSin);
                    float f5 = fCos - f3;
                    float f6 = fSin - f4;
                    float f7 = fCos2 + fCos4;
                    float f8 = fSin4 + f;
                    wc8Var.b.cubicTo(f5, f6, f7, f8, fCos2, f);
                    wc8Var.c.setPath(wc8Var.b, false);
                    PathMeasure pathMeasure = wc8Var.c;
                    pathMeasure.getPosTan(pathMeasure.getLength() * 0.9999f, wc8Var.d, null);
                    Path path = wc8Var.a;
                    float[] fArr = wc8Var.d;
                    path.cubicTo(f5, f6, f7, f8, fArr[0], fArr[1]);
                } else {
                    wc8Var = this;
                    wc8Var.a.cubicTo(fCos - f3, fSin - f4, fCos2 + fCos4, f + fSin4, fCos2, f);
                }
            } else {
                d = d3;
                f = fSin2;
                wc8Var = wc8Var2;
                if (d6 != dCeil - 1.0d) {
                    wc8Var.a.lineTo(fCos2, f);
                }
                fSin = f;
                fCos = fCos2;
                d4 = d7;
                i = i2 + 1;
                wc8Var2 = wc8Var;
                d3 = d;
            }
            d5 += d7;
            fSin = f;
            fCos = fCos2;
            d4 = d7;
            i = i2 + 1;
            wc8Var2 = wc8Var;
            d3 = d;
        }
    }

    @Override
    public void c(tf5 tf5Var, int i, List list, tf5 tf5Var2) {
        xp6.k(tf5Var, i, list, tf5Var2, this);
    }

    @Override
    public void e() {
        j();
    }

    @Override
    public void f(List list, List list2) {
        for (int i = 0; i < list.size(); i++) {
            bg1 bg1Var = (bg1) list.get(i);
            if (bg1Var instanceof bab) {
                bab babVar = (bab) bg1Var;
                if (babVar.j() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.q.a(babVar);
                    babVar.b(this);
                }
            }
        }
    }

    @Override
    public String getName() {
        return this.e;
    }

    @Override
    public Path getPath() {
        if (this.r) {
            return this.a;
        }
        this.a.reset();
        if (this.h) {
            this.r = true;
            return this.a;
        }
        int i = a.a[this.g.ordinal()];
        if (i == 1) {
            i();
        } else if (i == 2) {
            b();
        }
        this.a.close();
        this.q.b(this.a);
        this.r = true;
        return this.a;
    }

    @Override
    public void h(Object obj, iu5 iu5Var) {
        ab0 ab0Var;
        ab0 ab0Var2;
        if (obj == it5.w) {
            this.j.o(iu5Var);
            return;
        }
        if (obj == it5.x) {
            this.l.o(iu5Var);
            return;
        }
        if (obj == it5.n) {
            this.k.o(iu5Var);
            return;
        }
        if (obj == it5.y && (ab0Var2 = this.m) != null) {
            ab0Var2.o(iu5Var);
            return;
        }
        if (obj == it5.z) {
            this.n.o(iu5Var);
            return;
        }
        if (obj == it5.A && (ab0Var = this.o) != null) {
            ab0Var.o(iu5Var);
        } else if (obj == it5.B) {
            this.p.o(iu5Var);
        }
    }

    public final void i() {
        float f;
        float f2;
        double d;
        float fSin;
        float f3;
        float f4;
        float f5;
        float fFloatValue = ((Float) this.j.h()).floatValue();
        ab0 ab0Var = this.l;
        double radians = Math.toRadians((ab0Var == null ? 0.0d : ((Float) ab0Var.h()).floatValue()) - 90.0d);
        double d2 = fFloatValue;
        float f6 = (float) (6.283185307179586d / d2);
        if (this.i) {
            f6 *= -1.0f;
        }
        float f7 = f6 / 2.0f;
        float f8 = fFloatValue - ((int) fFloatValue);
        if (f8 != 0.0f) {
            radians += (double) ((1.0f - f8) * f7);
        }
        float fFloatValue2 = ((Float) this.n.h()).floatValue();
        float fFloatValue3 = ((Float) this.m.h()).floatValue();
        ab0 ab0Var2 = this.o;
        float fFloatValue4 = ab0Var2 != null ? ((Float) ab0Var2.h()).floatValue() / 100.0f : 0.0f;
        ab0 ab0Var3 = this.p;
        float fFloatValue5 = ab0Var3 != null ? ((Float) ab0Var3.h()).floatValue() / 100.0f : 0.0f;
        if (f8 != 0.0f) {
            f3 = ((fFloatValue2 - fFloatValue3) * f8) + fFloatValue3;
            double d3 = f3;
            float fCos = (float) (d3 * Math.cos(radians));
            fSin = (float) (d3 * Math.sin(radians));
            this.a.moveTo(fCos, fSin);
            d = radians + ((double) ((f6 * f8) / 2.0f));
            f = fCos;
            f2 = f7;
        } else {
            double d4 = fFloatValue2;
            float fCos2 = (float) (Math.cos(radians) * d4);
            float fSin2 = (float) (d4 * Math.sin(radians));
            this.a.moveTo(fCos2, fSin2);
            f = fCos2;
            f2 = f7;
            d = radians + ((double) f2);
            fSin = fSin2;
            f3 = 0.0f;
        }
        double dCeil = Math.ceil(d2) * 2.0d;
        int i = 0;
        float f9 = f2;
        float f10 = f;
        boolean z = false;
        while (true) {
            double d5 = i;
            if (d5 >= dCeil) {
                PointF pointF = (PointF) this.k.h();
                this.a.offset(pointF.x, pointF.y);
                this.a.close();
                return;
            }
            float f11 = z ? fFloatValue2 : fFloatValue3;
            float f12 = (f3 == 0.0f || d5 != dCeil - 2.0d) ? f9 : (f6 * f8) / 2.0f;
            if (f3 == 0.0f || d5 != dCeil - 1.0d) {
                f3 = f11;
            }
            double d6 = f3;
            double d7 = dCeil;
            float fCos3 = (float) (d6 * Math.cos(d));
            float fSin3 = (float) (d6 * Math.sin(d));
            if (fFloatValue4 == 0.0f && fFloatValue5 == 0.0f) {
                this.a.lineTo(fCos3, fSin3);
                f4 = fFloatValue4;
                f5 = fFloatValue5;
            } else {
                f4 = fFloatValue4;
                double dAtan2 = (float) (Math.atan2(fSin, f10) - 1.5707963267948966d);
                float fCos4 = (float) Math.cos(dAtan2);
                float fSin4 = (float) Math.sin(dAtan2);
                f5 = fFloatValue5;
                double dAtan3 = (float) (Math.atan2(fSin3, fCos3) - 1.5707963267948966d);
                float fCos5 = (float) Math.cos(dAtan3);
                float fSin5 = (float) Math.sin(dAtan3);
                float f13 = z ? f4 : f5;
                float f14 = z ? f5 : f4;
                float f15 = (z ? fFloatValue3 : fFloatValue2) * f13 * 0.47829f;
                float f16 = fCos4 * f15;
                float f17 = f15 * fSin4;
                float f18 = (z ? fFloatValue2 : fFloatValue3) * f14 * 0.47829f;
                float f19 = fCos5 * f18;
                float f20 = f18 * fSin5;
                if (f8 != 0.0f) {
                    if (i == 0) {
                        f16 *= f8;
                        f17 *= f8;
                    } else if (d5 == d7 - 1.0d) {
                        f19 *= f8;
                        f20 *= f8;
                    }
                }
                this.a.cubicTo(f10 - f16, fSin - f17, fCos3 + f19, fSin3 + f20, fCos3, fSin3);
            }
            d += (double) f12;
            z = !z;
            i++;
            f10 = fCos3;
            fSin = fSin3;
            fFloatValue5 = f5;
            fFloatValue4 = f4;
            f3 = f3;
            f6 = f6;
            dCeil = d7;
        }
    }
}
