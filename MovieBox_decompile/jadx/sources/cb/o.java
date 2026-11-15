package cb;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;

public class o {

    private final p[] f16873a = new p[4];

    private final Matrix[] f16874b = new Matrix[4];

    private final Matrix[] f16875c = new Matrix[4];

    private final PointF f16876d = new PointF();

    private final Path f16877e = new Path();

    private final Path f16878f = new Path();

    private final p f16879g = new p();

    private final float[] f16880h = new float[2];

    private final float[] f16881i = new float[2];

    private final Path f16882j = new Path();

    private final Path f16883k = new Path();

    private boolean f16884l = true;

    private static class a {

        static final o f16885a = new o();
    }

    public interface b {
        void a(p pVar, Matrix matrix, int i10);

        void b(p pVar, Matrix matrix, int i10);
    }

    static final class c {

        public final n f16886a;

        public final Path f16887b;

        public final RectF f16888c;

        public final b f16889d;

        public final float f16890e;

        c(n nVar, float f10, RectF rectF, b bVar, Path path) {
            this.f16889d = bVar;
            this.f16886a = nVar;
            this.f16890e = f10;
            this.f16888c = rectF;
            this.f16887b = path;
        }
    }

    public o() {
        for (int i10 = 0; i10 < 4; i10++) {
            this.f16873a[i10] = new p();
            this.f16874b[i10] = new Matrix();
            this.f16875c[i10] = new Matrix();
        }
    }

    private float a(int i10) {
        return ((i10 + 1) % 4) * 90;
    }

    private void b(c cVar, int i10) {
        this.f16880h[0] = this.f16873a[i10].k();
        this.f16880h[1] = this.f16873a[i10].l();
        this.f16874b[i10].mapPoints(this.f16880h);
        if (i10 == 0) {
            Path path = cVar.f16887b;
            float[] fArr = this.f16880h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cVar.f16887b;
            float[] fArr2 = this.f16880h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f16873a[i10].d(this.f16874b[i10], cVar.f16887b);
        b bVar = cVar.f16889d;
        if (bVar != null) {
            bVar.a(this.f16873a[i10], this.f16874b[i10], i10);
        }
    }

    private void c(c cVar, int i10) {
        int i11 = (i10 + 1) % 4;
        this.f16880h[0] = this.f16873a[i10].i();
        this.f16880h[1] = this.f16873a[i10].j();
        this.f16874b[i10].mapPoints(this.f16880h);
        this.f16881i[0] = this.f16873a[i11].k();
        this.f16881i[1] = this.f16873a[i11].l();
        this.f16874b[i11].mapPoints(this.f16881i);
        float[] fArr = this.f16880h;
        float f10 = fArr[0];
        float[] fArr2 = this.f16881i;
        float fMax = Math.max(((float) Math.hypot(f10 - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
        float fI = i(cVar.f16888c, i10);
        this.f16879g.n(0.0f, 0.0f);
        g gVarJ = j(i10, cVar.f16886a);
        gVarJ.b(fMax, fI, cVar.f16890e, this.f16879g);
        this.f16882j.reset();
        this.f16879g.d(this.f16875c[i10], this.f16882j);
        if (this.f16884l && (gVarJ.a() || l(this.f16882j, i10) || l(this.f16882j, i11))) {
            Path path = this.f16882j;
            path.op(path, this.f16878f, Path.Op.DIFFERENCE);
            this.f16880h[0] = this.f16879g.k();
            this.f16880h[1] = this.f16879g.l();
            this.f16875c[i10].mapPoints(this.f16880h);
            Path path2 = this.f16877e;
            float[] fArr3 = this.f16880h;
            path2.moveTo(fArr3[0], fArr3[1]);
            this.f16879g.d(this.f16875c[i10], this.f16877e);
        } else {
            this.f16879g.d(this.f16875c[i10], cVar.f16887b);
        }
        b bVar = cVar.f16889d;
        if (bVar != null) {
            bVar.b(this.f16879g, this.f16875c[i10], i10);
        }
    }

    private void f(int i10, RectF rectF, PointF pointF) {
        if (i10 == 1) {
            pointF.set(rectF.right, rectF.bottom);
            return;
        }
        if (i10 == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i10 != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    private d g(int i10, n nVar) {
        if (i10 == 1) {
            return nVar.l();
        }
        if (i10 != 2) {
            return i10 != 3 ? nVar.t() : nVar.r();
        }
        return nVar.j();
    }

    private e h(int i10, n nVar) {
        if (i10 == 1) {
            return nVar.k();
        }
        if (i10 != 2) {
            return i10 != 3 ? nVar.s() : nVar.q();
        }
        return nVar.i();
    }

    private float i(RectF rectF, int i10) {
        float[] fArr = this.f16880h;
        p pVar = this.f16873a[i10];
        fArr[0] = pVar.f16893c;
        fArr[1] = pVar.f16894d;
        this.f16874b[i10].mapPoints(fArr);
        return (i10 == 1 || i10 == 3) ? Math.abs(rectF.centerX() - this.f16880h[0]) : Math.abs(rectF.centerY() - this.f16880h[1]);
    }

    private g j(int i10, n nVar) {
        if (i10 == 1) {
            return nVar.h();
        }
        if (i10 != 2) {
            return i10 != 3 ? nVar.o() : nVar.p();
        }
        return nVar.n();
    }

    public static o k() {
        return a.f16885a;
    }

    private boolean l(Path path, int i10) {
        this.f16883k.reset();
        this.f16873a[i10].d(this.f16874b[i10], this.f16883k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f16883k.computeBounds(rectF, true);
        path.op(this.f16883k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    private void m(c cVar, int i10) {
        h(i10, cVar.f16886a).c(this.f16873a[i10], 90.0f, cVar.f16890e, cVar.f16888c, g(i10, cVar.f16886a));
        float fA = a(i10);
        this.f16874b[i10].reset();
        f(i10, cVar.f16888c, this.f16876d);
        Matrix matrix = this.f16874b[i10];
        PointF pointF = this.f16876d;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f16874b[i10].preRotate(fA);
    }

    private void n(int i10) {
        this.f16880h[0] = this.f16873a[i10].i();
        this.f16880h[1] = this.f16873a[i10].j();
        this.f16874b[i10].mapPoints(this.f16880h);
        float fA = a(i10);
        this.f16875c[i10].reset();
        Matrix matrix = this.f16875c[i10];
        float[] fArr = this.f16880h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f16875c[i10].preRotate(fA);
    }

    public void d(n nVar, float f10, RectF rectF, Path path) {
        e(nVar, f10, rectF, null, path);
    }

    public void e(n nVar, float f10, RectF rectF, b bVar, Path path) {
        path.rewind();
        this.f16877e.rewind();
        this.f16878f.rewind();
        this.f16878f.addRect(rectF, Path.Direction.CW);
        c cVar = new c(nVar, f10, rectF, bVar, path);
        for (int i10 = 0; i10 < 4; i10++) {
            m(cVar, i10);
            n(i10);
        }
        for (int i11 = 0; i11 < 4; i11++) {
            b(cVar, i11);
            c(cVar, i11);
        }
        path.close();
        this.f16877e.close();
        if (this.f16877e.isEmpty()) {
            return;
        }
        path.op(this.f16877e, Path.Op.UNION);
    }
}
