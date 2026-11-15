package androidx.compose.ui.graphics;

import android.graphics.RectF;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class u0 implements Path {

    private final android.graphics.Path f4346b;

    private RectF f4347c;

    private float[] f4348d;

    /* JADX WARN: Multi-variable type inference failed */
    public u0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final void q(y.i iVar) {
        if (Float.isNaN(iVar.f()) || Float.isNaN(iVar.i()) || Float.isNaN(iVar.g()) || Float.isNaN(iVar.c())) {
            x0.c("Invalid rectangle, make sure no value is NaN");
        }
    }

    @Override
    public boolean a() {
        return this.f4346b.isConvex();
    }

    @Override
    public void b() {
        this.f4346b.rewind();
    }

    @Override
    public void c(float f10, float f11) {
        this.f4346b.rMoveTo(f10, f11);
    }

    @Override
    public void close() {
        this.f4346b.close();
    }

    @Override
    public void d(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.f4346b.rCubicTo(f10, f11, f12, f13, f14, f15);
    }

    @Override
    public void e(int i10) {
        this.f4346b.setFillType(q4.d(i10, q4.f4319a.a()) ? android.graphics.Path.FillType.EVEN_ODD : android.graphics.Path.FillType.WINDING);
    }

    @Override
    public void f(float f10, float f11, float f12, float f13) {
        this.f4346b.quadTo(f10, f11, f12, f13);
    }

    @Override
    public void g(float f10, float f11, float f12, float f13) {
        this.f4346b.rQuadTo(f10, f11, f12, f13);
    }

    @Override
    public y.i getBounds() {
        if (this.f4347c == null) {
            this.f4347c = new RectF();
        }
        RectF rectF = this.f4347c;
        Intrinsics.e(rectF);
        this.f4346b.computeBounds(rectF, true);
        return new y.i(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    @Override
    public int h() {
        return this.f4346b.getFillType() == android.graphics.Path.FillType.EVEN_ODD ? q4.f4319a.a() : q4.f4319a.b();
    }

    @Override
    public void i(y.k kVar, Path.Direction direction) {
        if (this.f4347c == null) {
            this.f4347c = new RectF();
        }
        RectF rectF = this.f4347c;
        Intrinsics.e(rectF);
        rectF.set(kVar.e(), kVar.g(), kVar.f(), kVar.a());
        if (this.f4348d == null) {
            this.f4348d = new float[8];
        }
        float[] fArr = this.f4348d;
        Intrinsics.e(fArr);
        fArr[0] = y.a.d(kVar.h());
        fArr[1] = y.a.e(kVar.h());
        fArr[2] = y.a.d(kVar.i());
        fArr[3] = y.a.e(kVar.i());
        fArr[4] = y.a.d(kVar.c());
        fArr[5] = y.a.e(kVar.c());
        fArr[6] = y.a.d(kVar.b());
        fArr[7] = y.a.e(kVar.b());
        android.graphics.Path path = this.f4346b;
        RectF rectF2 = this.f4347c;
        Intrinsics.e(rectF2);
        float[] fArr2 = this.f4348d;
        Intrinsics.e(fArr2);
        path.addRoundRect(rectF2, fArr2, x0.d(direction));
    }

    @Override
    public boolean isEmpty() {
        return this.f4346b.isEmpty();
    }

    @Override
    public void j(float f10, float f11) {
        this.f4346b.moveTo(f10, f11);
    }

    @Override
    public void k(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.f4346b.cubicTo(f10, f11, f12, f13, f14, f15);
    }

    @Override
    public boolean l(Path path, Path path2, int i10) {
        android.graphics.Path.Op op2;
        s4.a aVar = s4.f4329a;
        if (s4.f(i10, aVar.a())) {
            op2 = android.graphics.Path.Op.DIFFERENCE;
        } else if (s4.f(i10, aVar.b())) {
            op2 = android.graphics.Path.Op.INTERSECT;
        } else if (s4.f(i10, aVar.c())) {
            op2 = android.graphics.Path.Op.REVERSE_DIFFERENCE;
        } else {
            op2 = s4.f(i10, aVar.d()) ? android.graphics.Path.Op.UNION : android.graphics.Path.Op.XOR;
        }
        android.graphics.Path path3 = this.f4346b;
        if (!(path instanceof u0)) {
            throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
        }
        android.graphics.Path pathP = ((u0) path).p();
        if (path2 instanceof u0) {
            return path3.op(pathP, ((u0) path2).p(), op2);
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @Override
    public void m(float f10, float f11) {
        this.f4346b.rLineTo(f10, f11);
    }

    @Override
    public void n(y.i iVar, Path.Direction direction) {
        q(iVar);
        if (this.f4347c == null) {
            this.f4347c = new RectF();
        }
        RectF rectF = this.f4347c;
        Intrinsics.e(rectF);
        rectF.set(iVar.f(), iVar.i(), iVar.g(), iVar.c());
        android.graphics.Path path = this.f4346b;
        RectF rectF2 = this.f4347c;
        Intrinsics.e(rectF2);
        path.addRect(rectF2, x0.d(direction));
    }

    @Override
    public void o(float f10, float f11) {
        this.f4346b.lineTo(f10, f11);
    }

    public final android.graphics.Path p() {
        return this.f4346b;
    }

    @Override
    public void reset() {
        this.f4346b.reset();
    }

    public u0(android.graphics.Path path) {
        this.f4346b = path;
    }

    public u0(android.graphics.Path path, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new android.graphics.Path() : path);
    }
}
