package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.x3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o0.p;
import o0.t;
import o0.u;
import y.m;
import z.f;
import z.g;

public final class a extends Painter {

    private final e4 f4312g;

    private final long f4313h;

    private final long f4314i;

    private int f4315j;

    private final long f4316k;

    private float f4317l;

    private v1 f4318m;

    public a(e4 e4Var, long j10, long j11, DefaultConstructorMarker defaultConstructorMarker) {
        this(e4Var, j10, j11);
    }

    private final long k(long j10, long j11) {
        if (p.h(j10) < 0 || p.i(j10) < 0 || t.g(j11) < 0 || t.f(j11) < 0 || t.g(j11) > this.f4312g.getWidth() || t.f(j11) > this.f4312g.getHeight()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        return j11;
    }

    @Override
    protected boolean a(float f10) {
        this.f4317l = f10;
        return true;
    }

    @Override
    protected boolean b(v1 v1Var) {
        this.f4318m = v1Var;
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f4312g, aVar.f4312g) && p.g(this.f4313h, aVar.f4313h) && t.e(this.f4314i, aVar.f4314i) && x3.d(this.f4315j, aVar.f4315j);
    }

    @Override
    public long h() {
        return u.d(this.f4316k);
    }

    public int hashCode() {
        return (((((this.f4312g.hashCode() * 31) + p.j(this.f4313h)) * 31) + t.h(this.f4314i)) * 31) + x3.e(this.f4315j);
    }

    @Override
    protected void j(g gVar) {
        f.e(gVar, this.f4312g, this.f4313h, this.f4314i, 0L, u.a(Math.round(m.i(gVar.i())), Math.round(m.g(gVar.i()))), this.f4317l, null, this.f4318m, 0, this.f4315j, 328, null);
    }

    public String toString() {
        return "BitmapPainter(image=" + this.f4312g + ", srcOffset=" + ((Object) p.m(this.f4313h)) + ", srcSize=" + ((Object) t.i(this.f4314i)) + ", filterQuality=" + ((Object) x3.f(this.f4315j)) + ')';
    }

    public a(e4 e4Var, long j10, long j11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(e4Var, (i10 & 2) != 0 ? p.f67416b.a() : j10, (i10 & 4) != 0 ? u.a(e4Var.getWidth(), e4Var.getHeight()) : j11, null);
    }

    private a(e4 e4Var, long j10, long j11) {
        this.f4312g = e4Var;
        this.f4313h = j10;
        this.f4314i = j11;
        this.f4315j = x3.f4570a.a();
        this.f4316k = k(j10, j11);
        this.f4317l = 1.0f;
    }
}
