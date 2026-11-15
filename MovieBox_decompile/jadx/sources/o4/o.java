package o4;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.p0;
import java.util.List;

public class o implements p4.a.b, k, m {

    private final String f67564c;

    private final boolean f67565d;

    private final LottieDrawable f67566e;

    private final p4.a f67567f;

    private final p4.a f67568g;

    private final p4.a f67569h;

    private boolean f67572k;

    private final Path f67562a = new Path();

    private final RectF f67563b = new RectF();

    private final b f67570i = new b();

    private p4.a f67571j = null;

    public o(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, t4.f fVar) {
        this.f67564c = fVar.c();
        this.f67565d = fVar.f();
        this.f67566e = lottieDrawable;
        p4.a aVarA = fVar.d().a();
        this.f67567f = aVarA;
        p4.a aVarA2 = fVar.e().a();
        this.f67568g = aVarA2;
        p4.d dVarA = fVar.b().a();
        this.f67569h = dVarA;
        aVar.i(aVarA);
        aVar.i(aVarA2);
        aVar.i(dVarA);
        aVarA.a(this);
        aVarA2.a(this);
        dVarA.a(this);
    }

    private void g() {
        this.f67572k = false;
        this.f67566e.invalidateSelf();
    }

    @Override
    public void a() {
        g();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0025  */
    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    /* JADX WARN: Code duplicated, block: B:18:0x0031 A[SYNTHETIC] */
    @Override
    public void b(List list, List list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = (c) list.get(i10);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.j() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f67570i.a(uVar);
                    uVar.c(this);
                } else if (cVar instanceof q) {
                    this.f67571j = ((q) cVar).g();
                }
            } else if (cVar instanceof q) {
                this.f67571j = ((q) cVar).g();
            }
        }
    }

    @Override
    public void c(r4.d dVar, int i10, List list, r4.d dVar2) {
        x4.k.k(dVar, i10, list, dVar2, this);
    }

    @Override
    public void d(Object obj, y4.c cVar) {
        if (obj == p0.f17297l) {
            this.f67568g.o(cVar);
        } else if (obj == p0.f17299n) {
            this.f67567f.o(cVar);
        } else if (obj == p0.f17298m) {
            this.f67569h.o(cVar);
        }
    }

    @Override
    public String getName() {
        return this.f67564c;
    }

    @Override
    public Path getPath() {
        p4.a aVar;
        if (this.f67572k) {
            return this.f67562a;
        }
        this.f67562a.reset();
        if (this.f67565d) {
            this.f67572k = true;
            return this.f67562a;
        }
        PointF pointF = (PointF) this.f67568g.h();
        float f10 = pointF.x / 2.0f;
        float f11 = pointF.y / 2.0f;
        p4.a aVar2 = this.f67569h;
        float fQ = aVar2 == null ? 0.0f : ((p4.d) aVar2).q();
        if (fQ == 0.0f && (aVar = this.f67571j) != null) {
            fQ = Math.min(((Float) aVar.h()).floatValue(), Math.min(f10, f11));
        }
        float fMin = Math.min(f10, f11);
        if (fQ > fMin) {
            fQ = fMin;
        }
        PointF pointF2 = (PointF) this.f67567f.h();
        this.f67562a.moveTo(pointF2.x + f10, (pointF2.y - f11) + fQ);
        this.f67562a.lineTo(pointF2.x + f10, (pointF2.y + f11) - fQ);
        if (fQ > 0.0f) {
            RectF rectF = this.f67563b;
            float f12 = pointF2.x;
            float f13 = fQ * 2.0f;
            float f14 = pointF2.y;
            rectF.set((f12 + f10) - f13, (f14 + f11) - f13, f12 + f10, f14 + f11);
            this.f67562a.arcTo(this.f67563b, 0.0f, 90.0f, false);
        }
        this.f67562a.lineTo((pointF2.x - f10) + fQ, pointF2.y + f11);
        if (fQ > 0.0f) {
            RectF rectF2 = this.f67563b;
            float f15 = pointF2.x;
            float f16 = pointF2.y;
            float f17 = fQ * 2.0f;
            rectF2.set(f15 - f10, (f16 + f11) - f17, (f15 - f10) + f17, f16 + f11);
            this.f67562a.arcTo(this.f67563b, 90.0f, 90.0f, false);
        }
        this.f67562a.lineTo(pointF2.x - f10, (pointF2.y - f11) + fQ);
        if (fQ > 0.0f) {
            RectF rectF3 = this.f67563b;
            float f18 = pointF2.x;
            float f19 = pointF2.y;
            float f20 = fQ * 2.0f;
            rectF3.set(f18 - f10, f19 - f11, (f18 - f10) + f20, (f19 - f11) + f20);
            this.f67562a.arcTo(this.f67563b, 180.0f, 90.0f, false);
        }
        this.f67562a.lineTo((pointF2.x + f10) - fQ, pointF2.y - f11);
        if (fQ > 0.0f) {
            RectF rectF4 = this.f67563b;
            float f21 = pointF2.x;
            float f22 = fQ * 2.0f;
            float f23 = pointF2.y;
            rectF4.set((f21 + f10) - f22, f23 - f11, f21 + f10, (f23 - f11) + f22);
            this.f67562a.arcTo(this.f67563b, 270.0f, 90.0f, false);
        }
        this.f67562a.close();
        this.f67570i.b(this.f67562a);
        this.f67572k = true;
        return this.f67562a;
    }
}
