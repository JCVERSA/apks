package defpackage;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import java.util.ArrayList;
import java.util.List;

public class dw8 implements ag9, ab0.b {
    public final LottieDrawable a;
    public final String b;
    public final ab0 c;
    public sf9 d;

    public dw8(LottieDrawable lottieDrawable, a aVar, cw8 cw8Var) {
        this.a = lottieDrawable;
        this.b = cw8Var.c();
        ab0 ab0VarH = cw8Var.b().h();
        this.c = ab0VarH;
        aVar.i(ab0VarH);
        ab0VarH.a(this);
    }

    public static int b(int i, int i2) {
        int i3 = i / i2;
        return ((i ^ i2) >= 0 || i2 * i3 == i) ? i3 : i3 - 1;
    }

    public static int c(int i, int i2) {
        return i - (b(i, i2) * i2);
    }

    @Override
    public void e() {
        this.a.invalidateSelf();
    }

    @Override
    public void f(List list, List list2) {
    }

    /* JADX WARN: Code duplicated, block: B:27:0x009e  */
    @Override
    public sf9 g(sf9 sf9Var) {
        boolean z;
        sf9 sf9Var2;
        List listA = sf9Var.a();
        if (listA.size() <= 2) {
            return sf9Var;
        }
        float fFloatValue = ((Float) this.c.h()).floatValue();
        if (fFloatValue == 0.0f) {
            return sf9Var;
        }
        sf9 sf9VarI = i(sf9Var);
        sf9VarI.f(sf9Var.b().x, sf9Var.b().y);
        List listA2 = sf9VarI.a();
        boolean zD = sf9Var.d();
        int i = 0;
        int i2 = 0;
        while (i < listA.size()) {
            gm1 gm1Var = (gm1) listA.get(i);
            gm1 gm1Var2 = (gm1) listA.get(c(i - 1, listA.size()));
            gm1 gm1Var3 = (gm1) listA.get(c(i - 2, listA.size()));
            PointF pointFC = (i != 0 || zD) ? gm1Var2.c() : sf9Var.b();
            PointF pointFB = (i != 0 || zD) ? gm1Var2.b() : pointFC;
            PointF pointFA = gm1Var.a();
            PointF pointFC2 = gm1Var3.c();
            PointF pointFC3 = gm1Var.c();
            if (sf9Var.d()) {
                z = false;
            } else {
                z = true;
                if (i != 0 && i != listA.size() - 1) {
                    z = false;
                }
            }
            if (pointFB.equals(pointFC) && pointFA.equals(pointFC) && !z) {
                float f = pointFC.x;
                float f2 = f - pointFC2.x;
                float f3 = pointFC.y;
                float f4 = f3 - pointFC2.y;
                float f5 = pointFC3.x - f;
                float f6 = pointFC3.y - f3;
                sf9 sf9Var3 = sf9VarI;
                float fHypot = (float) Math.hypot(f2, f4);
                float fHypot2 = (float) Math.hypot(f5, f6);
                float fMin = Math.min(fFloatValue / fHypot, 0.5f);
                float fMin2 = Math.min(fFloatValue / fHypot2, 0.5f);
                float f7 = pointFC.x;
                float f8 = ((pointFC2.x - f7) * fMin) + f7;
                float f9 = pointFC.y;
                float f10 = ((pointFC2.y - f9) * fMin) + f9;
                float f11 = ((pointFC3.x - f7) * fMin2) + f7;
                float f12 = ((pointFC3.y - f9) * fMin2) + f9;
                float f13 = f8 - ((f8 - f7) * 0.5519f);
                float f14 = f10 - ((f10 - f9) * 0.5519f);
                float f15 = f11 - ((f11 - f7) * 0.5519f);
                float f16 = f12 - ((f12 - f9) * 0.5519f);
                gm1 gm1Var4 = (gm1) listA2.get(c(i2 - 1, listA2.size()));
                gm1 gm1Var5 = (gm1) listA2.get(i2);
                gm1Var4.e(f8, f10);
                gm1Var4.f(f8, f10);
                sf9Var2 = sf9Var3;
                if (i == 0) {
                    sf9Var2.f(f8, f10);
                }
                gm1Var5.d(f13, f14);
                gm1 gm1Var6 = (gm1) listA2.get(i2 + 1);
                gm1Var5.e(f15, f16);
                gm1Var5.f(f11, f12);
                gm1Var6.d(f11, f12);
                i2 += 2;
            } else {
                sf9Var2 = sf9VarI;
                gm1 gm1Var7 = (gm1) listA2.get(c(i2 - 1, listA2.size()));
                gm1 gm1Var8 = (gm1) listA2.get(i2);
                gm1Var7.e(gm1Var2.b().x, gm1Var2.b().y);
                gm1Var7.f(gm1Var2.c().x, gm1Var2.c().y);
                gm1Var8.d(gm1Var.a().x, gm1Var.a().y);
                i2++;
            }
            i++;
            sf9VarI = sf9Var2;
            listA = listA;
        }
        return sf9VarI;
    }

    public ab0 h() {
        return this.c;
    }

    public final sf9 i(sf9 sf9Var) {
        List listA = sf9Var.a();
        boolean zD = sf9Var.d();
        int size = listA.size() - 1;
        int i = 0;
        while (size >= 0) {
            gm1 gm1Var = (gm1) listA.get(size);
            gm1 gm1Var2 = (gm1) listA.get(c(size - 1, listA.size()));
            PointF pointFC = (size != 0 || zD) ? gm1Var2.c() : sf9Var.b();
            i = (((size != 0 || zD) ? gm1Var2.b() : pointFC).equals(pointFC) && gm1Var.a().equals(pointFC) && !(!sf9Var.d() && (size == 0 || size == listA.size() - 1))) ? i + 2 : i + 1;
            size--;
        }
        sf9 sf9Var2 = this.d;
        if (sf9Var2 == null || sf9Var2.a().size() != i) {
            ArrayList arrayList = new ArrayList(i);
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(new gm1());
            }
            this.d = new sf9(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.d.e(zD);
        return this.d;
    }
}
