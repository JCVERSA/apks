package cb;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class p {

    public float f16891a;

    public float f16892b;

    public float f16893c;

    public float f16894d;

    public float f16895e;

    public float f16896f;

    private final List f16897g = new ArrayList();

    private final List f16898h = new ArrayList();

    private boolean f16899i;

    class a extends g {

        final List f16900c;

        final Matrix f16901d;

        a(List list, Matrix matrix) {
            this.f16900c = list;
            this.f16901d = matrix;
        }

        @Override
        public void a(Matrix matrix, bb.a aVar, int i10, Canvas canvas) {
            Iterator it = this.f16900c.iterator();
            while (it.hasNext()) {
                ((g) it.next()).a(this.f16901d, aVar, i10, canvas);
            }
        }
    }

    static class b extends g {

        private final d f16903c;

        public b(d dVar) {
            this.f16903c = dVar;
        }

        @Override
        public void a(Matrix matrix, bb.a aVar, int i10, Canvas canvas) {
            aVar.a(canvas, matrix, new RectF(this.f16903c.k(), this.f16903c.o(), this.f16903c.l(), this.f16903c.j()), i10, this.f16903c.m(), this.f16903c.n());
        }
    }

    static class c extends g {

        private final e f16904c;

        private final float f16905d;

        private final float f16906e;

        public c(e eVar, float f10, float f11) {
            this.f16904c = eVar;
            this.f16905d = f10;
            this.f16906e = f11;
        }

        @Override
        public void a(Matrix matrix, bb.a aVar, int i10, Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.f16904c.f16915c - this.f16906e, this.f16904c.f16914b - this.f16905d), 0.0f);
            this.f16918a.set(matrix);
            this.f16918a.preTranslate(this.f16905d, this.f16906e);
            this.f16918a.preRotate(c());
            aVar.b(canvas, this.f16918a, rectF, i10);
        }

        float c() {
            return (float) Math.toDegrees(Math.atan((this.f16904c.f16915c - this.f16906e) / (this.f16904c.f16914b - this.f16905d)));
        }
    }

    public static class d extends f {

        private static final RectF f16907h = new RectF();

        public float f16908b;

        public float f16909c;

        public float f16910d;

        public float f16911e;

        public float f16912f;

        public float f16913g;

        public d(float f10, float f11, float f12, float f13) {
            q(f10);
            u(f11);
            r(f12);
            p(f13);
        }

        public float j() {
            return this.f16911e;
        }

        public float k() {
            return this.f16908b;
        }

        public float l() {
            return this.f16910d;
        }

        public float m() {
            return this.f16912f;
        }

        public float n() {
            return this.f16913g;
        }

        public float o() {
            return this.f16909c;
        }

        private void p(float f10) {
            this.f16911e = f10;
        }

        private void q(float f10) {
            this.f16908b = f10;
        }

        private void r(float f10) {
            this.f16910d = f10;
        }

        public void s(float f10) {
            this.f16912f = f10;
        }

        public void t(float f10) {
            this.f16913g = f10;
        }

        private void u(float f10) {
            this.f16909c = f10;
        }

        @Override
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f16916a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f16907h;
            rectF.set(k(), o(), l(), j());
            path.arcTo(rectF, m(), n(), false);
            path.transform(matrix);
        }
    }

    public static class e extends f {

        private float f16914b;

        private float f16915c;

        @Override
        public void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.f16916a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f16914b, this.f16915c);
            path.transform(matrix);
        }
    }

    public static abstract class f {

        protected final Matrix f16916a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    static abstract class g {

        static final Matrix f16917b = new Matrix();

        final Matrix f16918a = new Matrix();

        g() {
        }

        public abstract void a(Matrix matrix, bb.a aVar, int i10, Canvas canvas);

        public final void b(bb.a aVar, int i10, Canvas canvas) {
            a(f16917b, aVar, i10, canvas);
        }
    }

    public p() {
        n(0.0f, 0.0f);
    }

    private void b(float f10) {
        if (g() == f10) {
            return;
        }
        float fG = ((f10 - g()) + 360.0f) % 360.0f;
        if (fG > 180.0f) {
            return;
        }
        d dVar = new d(i(), j(), i(), j());
        dVar.s(g());
        dVar.t(fG);
        this.f16898h.add(new b(dVar));
        p(f10);
    }

    private void c(g gVar, float f10, float f11) {
        b(f10);
        this.f16898h.add(gVar);
        p(f11);
    }

    private float g() {
        return this.f16895e;
    }

    private float h() {
        return this.f16896f;
    }

    private void p(float f10) {
        this.f16895e = f10;
    }

    private void q(float f10) {
        this.f16896f = f10;
    }

    private void r(float f10) {
        this.f16893c = f10;
    }

    private void s(float f10) {
        this.f16894d = f10;
    }

    private void t(float f10) {
        this.f16891a = f10;
    }

    private void u(float f10) {
        this.f16892b = f10;
    }

    public void a(float f10, float f11, float f12, float f13, float f14, float f15) {
        d dVar = new d(f10, f11, f12, f13);
        dVar.s(f14);
        dVar.t(f15);
        this.f16897g.add(dVar);
        b bVar = new b(dVar);
        float f16 = f14 + f15;
        boolean z10 = f15 < 0.0f;
        if (z10) {
            f14 = (f14 + 180.0f) % 360.0f;
        }
        c(bVar, f14, z10 ? (180.0f + f16) % 360.0f : f16);
        double d10 = f16;
        r(((f10 + f12) * 0.5f) + (((f12 - f10) / 2.0f) * ((float) Math.cos(Math.toRadians(d10)))));
        s(((f11 + f13) * 0.5f) + (((f13 - f11) / 2.0f) * ((float) Math.sin(Math.toRadians(d10)))));
    }

    public void d(Matrix matrix, Path path) {
        int size = this.f16897g.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((f) this.f16897g.get(i10)).a(matrix, path);
        }
    }

    boolean e() {
        return this.f16899i;
    }

    g f(Matrix matrix) {
        b(h());
        return new a(new ArrayList(this.f16898h), new Matrix(matrix));
    }

    float i() {
        return this.f16893c;
    }

    float j() {
        return this.f16894d;
    }

    float k() {
        return this.f16891a;
    }

    float l() {
        return this.f16892b;
    }

    public void m(float f10, float f11) {
        e eVar = new e();
        eVar.f16914b = f10;
        eVar.f16915c = f11;
        this.f16897g.add(eVar);
        c cVar = new c(eVar, i(), j());
        c(cVar, cVar.c() + 270.0f, cVar.c() + 270.0f);
        r(f10);
        s(f11);
    }

    public void n(float f10, float f11) {
        o(f10, f11, 270.0f, 0.0f);
    }

    public void o(float f10, float f11, float f12, float f13) {
        t(f10);
        u(f11);
        r(f10);
        s(f11);
        p(f12);
        q((f12 + f13) % 360.0f);
        this.f16897g.clear();
        this.f16898h.clear();
        this.f16899i = false;
    }
}
