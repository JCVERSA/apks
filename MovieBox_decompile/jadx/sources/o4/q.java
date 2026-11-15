package o4;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import java.util.ArrayList;
import java.util.List;

public class q implements s, p4.a.b {

    private final LottieDrawable f67583a;

    private final String f67584b;

    private final p4.a f67585c;

    private t4.i f67586d;

    public q(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, t4.h hVar) {
        this.f67583a = lottieDrawable;
        this.f67584b = hVar.c();
        p4.a aVarA = hVar.b().a();
        this.f67585c = aVarA;
        aVar.i(aVarA);
        aVarA.a(this);
    }

    private static int c(int i10, int i11) {
        int i12 = i10 / i11;
        return ((i10 ^ i11) >= 0 || i11 * i12 == i10) ? i12 : i12 - 1;
    }

    private static int d(int i10, int i11) {
        return i10 - (c(i10, i11) * i11);
    }

    private t4.i i(t4.i iVar) {
        List listA = iVar.a();
        boolean zD = iVar.d();
        int size = listA.size() - 1;
        int i10 = 0;
        while (size >= 0) {
            r4.a aVar = (r4.a) listA.get(size);
            r4.a aVar2 = (r4.a) listA.get(d(size - 1, listA.size()));
            PointF pointFC = (size != 0 || zD) ? aVar2.c() : iVar.b();
            i10 = (((size != 0 || zD) ? aVar2.b() : pointFC).equals(pointFC) && aVar.a().equals(pointFC) && !(!iVar.d() && (size == 0 || size == listA.size() - 1))) ? i10 + 2 : i10 + 1;
            size--;
        }
        t4.i iVar2 = this.f67586d;
        if (iVar2 == null || iVar2.a().size() != i10) {
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(new r4.a());
            }
            this.f67586d = new t4.i(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.f67586d.e(zD);
        return this.f67586d;
    }

    @Override
    public void a() {
        this.f67583a.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x009f  */
    @Override
    public t4.i e(t4.i iVar) {
        boolean z10;
        List listA = iVar.a();
        if (listA.size() <= 2) {
            return iVar;
        }
        float fFloatValue = ((Float) this.f67585c.h()).floatValue();
        if (fFloatValue == 0.0f) {
            return iVar;
        }
        t4.i iVarI = i(iVar);
        iVarI.f(iVar.b().x, iVar.b().y);
        List listA2 = iVarI.a();
        boolean zD = iVar.d();
        int i10 = 0;
        int i11 = 0;
        while (i10 < listA.size()) {
            r4.a aVar = (r4.a) listA.get(i10);
            r4.a aVar2 = (r4.a) listA.get(d(i10 - 1, listA.size()));
            r4.a aVar3 = (r4.a) listA.get(d(i10 - 2, listA.size()));
            PointF pointFC = (i10 != 0 || zD) ? aVar2.c() : iVar.b();
            PointF pointFB = (i10 != 0 || zD) ? aVar2.b() : pointFC;
            PointF pointFA = aVar.a();
            PointF pointFC2 = aVar3.c();
            PointF pointFC3 = aVar.c();
            if (iVar.d()) {
                z10 = false;
            } else {
                z10 = true;
                if (i10 != 0 && i10 != listA.size() - 1) {
                    z10 = false;
                }
            }
            if (pointFB.equals(pointFC) && pointFA.equals(pointFC) && !z10) {
                float f10 = pointFC.x;
                float f11 = f10 - pointFC2.x;
                float f12 = pointFC.y;
                float f13 = f12 - pointFC2.y;
                float f14 = pointFC3.x - f10;
                float f15 = pointFC3.y - f12;
                float fHypot = (float) Math.hypot(f11, f13);
                float fHypot2 = (float) Math.hypot(f14, f15);
                float fMin = Math.min(fFloatValue / fHypot, 0.5f);
                float fMin2 = Math.min(fFloatValue / fHypot2, 0.5f);
                float f16 = pointFC.x;
                float f17 = ((pointFC2.x - f16) * fMin) + f16;
                float f18 = pointFC.y;
                float f19 = ((pointFC2.y - f18) * fMin) + f18;
                float f20 = ((pointFC3.x - f16) * fMin2) + f16;
                float f21 = ((pointFC3.y - f18) * fMin2) + f18;
                float f22 = f17 - ((f17 - f16) * 0.5519f);
                float f23 = f19 - ((f19 - f18) * 0.5519f);
                float f24 = f20 - ((f20 - f16) * 0.5519f);
                float f25 = f21 - ((f21 - f18) * 0.5519f);
                r4.a aVar4 = (r4.a) listA2.get(d(i11 - 1, listA2.size()));
                r4.a aVar5 = (r4.a) listA2.get(i11);
                aVar4.e(f17, f19);
                aVar4.f(f17, f19);
                if (i10 == 0) {
                    iVarI.f(f17, f19);
                }
                aVar5.d(f22, f23);
                r4.a aVar6 = (r4.a) listA2.get(i11 + 1);
                aVar5.e(f24, f25);
                aVar5.f(f20, f21);
                aVar6.d(f20, f21);
                i11 += 2;
            } else {
                r4.a aVar7 = (r4.a) listA2.get(d(i11 - 1, listA2.size()));
                r4.a aVar8 = (r4.a) listA2.get(i11);
                aVar7.e(aVar2.b().x, aVar2.b().y);
                aVar7.f(aVar2.c().x, aVar2.c().y);
                aVar8.d(aVar.a().x, aVar.a().y);
                i11++;
            }
            i10++;
            listA = listA;
        }
        return iVarI;
    }

    public p4.a g() {
        return this.f67585c;
    }

    @Override
    public void b(List list, List list2) {
    }
}
