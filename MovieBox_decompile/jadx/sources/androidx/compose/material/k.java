package androidx.compose.material;

import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;

public final class k {

    public static final k f3109a = new k();

    public static final int f3110b = 0;

    private k() {
    }

    public final j a(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, androidx.compose.runtime.i iVar, int i10, int i11, int i12) {
        long jH;
        long jH2 = (i12 & 1) != 0 ? e.f3100a.a(iVar, 6).h() : j10;
        if ((i12 & 2) != 0) {
            e eVar = e.f3100a;
            jH = w1.h(u1.k(eVar.a(iVar, 6).g(), c.f3089a.b(iVar, 6), 0.0f, 0.0f, 0.0f, 14, null), eVar.a(iVar, 6).l());
        } else {
            jH = j11;
        }
        long jH3 = (i12 & 4) != 0 ? e.f3100a.a(iVar, 6).h() : j12;
        long jK = (i12 & 8) != 0 ? u1.k(jH3, 0.24f, 0.0f, 0.0f, 0.0f, 14, null) : j13;
        long jK2 = (i12 & 16) != 0 ? u1.k(e.f3100a.a(iVar, 6).g(), 0.32f, 0.0f, 0.0f, 0.0f, 14, null) : j14;
        long jK3 = (i12 & 32) != 0 ? u1.k(jK2, 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j15;
        long jK4 = (i12 & 64) != 0 ? u1.k(ColorsKt.b(jH3, iVar, (i10 >> 6) & 14), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j16;
        long jK5 = (i12 & 128) != 0 ? u1.k(jH3, 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j17;
        long jK6 = (i12 & 256) != 0 ? u1.k(jK4, 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j18;
        long jK7 = (i12 & 512) != 0 ? u1.k(jK3, 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j19;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(436017687, i10, i11, "androidx.compose.material.SliderDefaults.colors (Slider.kt:500)");
        }
        d dVar = new d(jH2, jH, jH3, jK, jK2, jK3, jK4, jK5, jK6, jK7, null);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return dVar;
    }
}
