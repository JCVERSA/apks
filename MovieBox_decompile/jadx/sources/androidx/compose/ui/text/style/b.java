package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.y4;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

final class b implements l {

    private final y4 f6050b;

    private final float f6051c;

    public b(y4 y4Var, float f10) {
        this.f6050b = y4Var;
        this.f6051c = f10;
    }

    @Override
    public long a() {
        return u1.f4349b.e();
    }

    @Override
    public l b(Function0 function0) {
        return TextForegroundStyle$CC.b(this, function0);
    }

    @Override
    public l c(l lVar) {
        return TextForegroundStyle$CC.a(this, lVar);
    }

    @Override
    public j1 d() {
        return this.f6050b;
    }

    public final y4 e() {
        return this.f6050b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f6050b, bVar.f6050b) && Float.compare(this.f6051c, bVar.f6051c) == 0;
    }

    @Override
    public float getAlpha() {
        return this.f6051c;
    }

    public int hashCode() {
        return (this.f6050b.hashCode() * 31) + Float.floatToIntBits(this.f6051c);
    }

    public String toString() {
        return "BrushStyle(value=" + this.f6050b + ", alpha=" + this.f6051c + ')';
    }
}
