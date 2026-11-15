package q;

import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.unit.LayoutDirection;
import y.m;

public abstract class a implements a5 {

    private final b f69314a;

    private final b f69315b;

    private final b f69316c;

    private final b f69317d;

    public a(b bVar, b bVar2, b bVar3, b bVar4) {
        this.f69314a = bVar;
        this.f69315b = bVar2;
        this.f69316c = bVar3;
        this.f69317d = bVar4;
    }

    @Override
    public final k4 a(long j10, LayoutDirection layoutDirection, o0.e eVar) {
        float fA = this.f69314a.a(j10, eVar);
        float fA2 = this.f69315b.a(j10, eVar);
        float fA3 = this.f69316c.a(j10, eVar);
        float fA4 = this.f69317d.a(j10, eVar);
        float fH = m.h(j10);
        float f10 = fA + fA4;
        if (f10 > fH) {
            float f11 = fH / f10;
            fA *= f11;
            fA4 *= f11;
        }
        float f12 = fA4;
        float f13 = fA2 + fA3;
        if (f13 > fH) {
            float f14 = fH / f13;
            fA2 *= f14;
            fA3 *= f14;
        }
        if (fA >= 0.0f && fA2 >= 0.0f && fA3 >= 0.0f && f12 >= 0.0f) {
            return b(j10, fA, fA2, fA3, f12, layoutDirection);
        }
        throw new IllegalArgumentException(("Corner size in Px can't be negative(topStart = " + fA + ", topEnd = " + fA2 + ", bottomEnd = " + fA3 + ", bottomStart = " + f12 + ")!").toString());
    }

    public abstract k4 b(long j10, float f10, float f11, float f12, float f13, LayoutDirection layoutDirection);

    public final b c() {
        return this.f69316c;
    }

    public final b d() {
        return this.f69317d;
    }

    public final b e() {
        return this.f69315b;
    }

    public final b f() {
        return this.f69314a;
    }
}
