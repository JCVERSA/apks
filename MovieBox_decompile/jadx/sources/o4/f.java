package o4;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.p0;
import java.util.List;

public class f implements m, p4.a.b, k {

    private final String f67486b;

    private final LottieDrawable f67487c;

    private final p4.a f67488d;

    private final p4.a f67489e;

    private final t4.b f67490f;

    private boolean f67492h;

    private final Path f67485a = new Path();

    private final b f67491g = new b();

    public f(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, t4.b bVar) {
        this.f67486b = bVar.b();
        this.f67487c = lottieDrawable;
        p4.a aVarA = bVar.d().a();
        this.f67488d = aVarA;
        p4.a aVarA2 = bVar.c().a();
        this.f67489e = aVarA2;
        this.f67490f = bVar;
        aVar.i(aVarA);
        aVar.i(aVarA2);
        aVarA.a(this);
        aVarA2.a(this);
    }

    private void g() {
        this.f67492h = false;
        this.f67487c.invalidateSelf();
    }

    @Override
    public void a() {
        g();
    }

    @Override
    public void b(List list, List list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = (c) list.get(i10);
            if (cVar instanceof u) {
                u uVar = (u) cVar;
                if (uVar.j() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f67491g.a(uVar);
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
        if (obj == p0.f17296k) {
            this.f67488d.o(cVar);
        } else if (obj == p0.f17299n) {
            this.f67489e.o(cVar);
        }
    }

    @Override
    public String getName() {
        return this.f67486b;
    }

    @Override
    public Path getPath() {
        if (this.f67492h) {
            return this.f67485a;
        }
        this.f67485a.reset();
        if (this.f67490f.e()) {
            this.f67492h = true;
            return this.f67485a;
        }
        PointF pointF = (PointF) this.f67488d.h();
        float f10 = pointF.x / 2.0f;
        float f11 = pointF.y / 2.0f;
        float f12 = f10 * 0.55228f;
        float f13 = 0.55228f * f11;
        this.f67485a.reset();
        if (this.f67490f.f()) {
            float f14 = -f11;
            this.f67485a.moveTo(0.0f, f14);
            float f15 = 0.0f - f12;
            float f16 = -f10;
            float f17 = 0.0f - f13;
            this.f67485a.cubicTo(f15, f14, f16, f17, f16, 0.0f);
            float f18 = f13 + 0.0f;
            this.f67485a.cubicTo(f16, f18, f15, f11, 0.0f, f11);
            float f19 = f12 + 0.0f;
            this.f67485a.cubicTo(f19, f11, f10, f18, f10, 0.0f);
            this.f67485a.cubicTo(f10, f17, f19, f14, 0.0f, f14);
        } else {
            float f20 = -f11;
            this.f67485a.moveTo(0.0f, f20);
            float f21 = f12 + 0.0f;
            float f22 = 0.0f - f13;
            this.f67485a.cubicTo(f21, f20, f10, f22, f10, 0.0f);
            float f23 = f13 + 0.0f;
            this.f67485a.cubicTo(f10, f23, f21, f11, 0.0f, f11);
            float f24 = 0.0f - f12;
            float f25 = -f10;
            this.f67485a.cubicTo(f24, f11, f25, f23, f25, 0.0f);
            this.f67485a.cubicTo(f25, f22, f24, f20, 0.0f, f20);
        }
        PointF pointF2 = (PointF) this.f67489e.h();
        this.f67485a.offset(pointF2.x, pointF2.y);
        this.f67485a.close();
        this.f67491g.b(this.f67485a);
        this.f67492h = true;
        return this.f67485a;
    }
}
