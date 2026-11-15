package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class g0 implements m1 {

    private Canvas f4137a = h0.f4140a;

    private Rect f4138b;

    private Rect f4139c;

    private final void t(List list, m4 m4Var, int i10) {
        if (list.size() >= 2) {
            Paint paintW = m4Var.w();
            int i11 = 0;
            while (i11 < list.size() - 1) {
                long jV = ((y.g) list.get(i11)).v();
                long jV2 = ((y.g) list.get(i11 + 1)).v();
                this.f4137a.drawLine(y.g.m(jV), y.g.n(jV), y.g.m(jV2), y.g.n(jV2), paintW);
                i11 += i10;
            }
        }
    }

    private final void u(List list, m4 m4Var) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            long jV = ((y.g) list.get(i10)).v();
            this.f4137a.drawPoint(y.g.m(jV), y.g.n(jV), m4Var.w());
        }
    }

    @Override
    public void a(float f10, float f11, float f12, float f13, int i10) {
        this.f4137a.clipRect(f10, f11, f12, f13, x(i10));
    }

    @Override
    public void b(Path path, int i10) {
        Canvas canvas = this.f4137a;
        if (!(path instanceof u0)) {
            throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
        }
        canvas.clipPath(((u0) path).p(), x(i10));
    }

    @Override
    public void c(float f10, float f11) {
        this.f4137a.translate(f10, f11);
    }

    @Override
    public void d(y.i iVar, m4 m4Var) {
        this.f4137a.saveLayer(iVar.f(), iVar.i(), iVar.g(), iVar.c(), m4Var.w(), 31);
    }

    @Override
    public void e(float f10, float f11) {
        this.f4137a.scale(f10, f11);
    }

    @Override
    public void f(float f10, float f11, float f12, float f13, m4 m4Var) {
        this.f4137a.drawRect(f10, f11, f12, f13, m4Var.w());
    }

    @Override
    public void g(int i10, List list, m4 m4Var) {
        t4.a aVar = t4.f4342a;
        if (t4.e(i10, aVar.a())) {
            t(list, m4Var, 2);
        } else if (t4.e(i10, aVar.c())) {
            t(list, m4Var, 1);
        } else if (t4.e(i10, aVar.b())) {
            u(list, m4Var);
        }
    }

    @Override
    public void h(e4 e4Var, long j10, long j11, long j12, long j13, m4 m4Var) {
        if (this.f4138b == null) {
            this.f4138b = new Rect();
            this.f4139c = new Rect();
        }
        Canvas canvas = this.f4137a;
        Bitmap bitmapB = q0.b(e4Var);
        Rect rect = this.f4138b;
        Intrinsics.e(rect);
        rect.left = o0.p.h(j10);
        rect.top = o0.p.i(j10);
        rect.right = o0.p.h(j10) + o0.t.g(j11);
        rect.bottom = o0.p.i(j10) + o0.t.f(j11);
        Unit unit = Unit.f64096a;
        Rect rect2 = this.f4139c;
        Intrinsics.e(rect2);
        rect2.left = o0.p.h(j12);
        rect2.top = o0.p.i(j12);
        rect2.right = o0.p.h(j12) + o0.t.g(j13);
        rect2.bottom = o0.p.i(j12) + o0.t.f(j13);
        canvas.drawBitmap(bitmapB, rect, rect2, m4Var.w());
    }

    @Override
    public void i(y.i iVar, m4 m4Var) {
        l1.b(this, iVar, m4Var);
    }

    @Override
    public void j() {
        this.f4137a.restore();
    }

    @Override
    public void k() {
        p1.f4302a.a(this.f4137a, true);
    }

    @Override
    public void l(y.i iVar, int i10) {
        l1.a(this, iVar, i10);
    }

    @Override
    public void m(long j10, long j11, m4 m4Var) {
        this.f4137a.drawLine(y.g.m(j10), y.g.n(j10), y.g.m(j11), y.g.n(j11), m4Var.w());
    }

    @Override
    public void n() {
        this.f4137a.save();
    }

    @Override
    public void o() {
        p1.f4302a.a(this.f4137a, false);
    }

    @Override
    public void p(float[] fArr) {
        if (j4.c(fArr)) {
            return;
        }
        Matrix matrix = new Matrix();
        r0.a(matrix, fArr);
        this.f4137a.concat(matrix);
    }

    @Override
    public void q(Path path, m4 m4Var) {
        Canvas canvas = this.f4137a;
        if (!(path instanceof u0)) {
            throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
        }
        canvas.drawPath(((u0) path).p(), m4Var.w());
    }

    @Override
    public void r(long j10, float f10, m4 m4Var) {
        this.f4137a.drawCircle(y.g.m(j10), y.g.n(j10), f10, m4Var.w());
    }

    @Override
    public void s(float f10, float f11, float f12, float f13, float f14, float f15, m4 m4Var) {
        this.f4137a.drawRoundRect(f10, f11, f12, f13, f14, f15, m4Var.w());
    }

    public final Canvas v() {
        return this.f4137a;
    }

    public final void w(Canvas canvas) {
        this.f4137a = canvas;
    }

    public final Region.Op x(int i10) {
        return t1.d(i10, t1.f4338a.a()) ? Region.Op.DIFFERENCE : Region.Op.INTERSECT;
    }
}
