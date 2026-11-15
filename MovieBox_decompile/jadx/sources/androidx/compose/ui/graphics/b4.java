package androidx.compose.ui.graphics;

import androidx.compose.ui.platform.InspectableValueKt;

public abstract class b4 {
    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, a5 a5Var, boolean z10, w4 w4Var, long j11, long j12, int i10) {
        return fVar.e(new GraphicsLayerElement(f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, j10, a5Var, z10, w4Var, j11, j12, i10, null));
    }

    public static androidx.compose.ui.f b(androidx.compose.ui.f fVar, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, a5 a5Var, boolean z10, w4 w4Var, long j11, long j12, int i10, int i11, Object obj) {
        return a(fVar, (i11 & 1) != 0 ? 1.0f : f10, (i11 & 2) != 0 ? 1.0f : f11, (i11 & 4) == 0 ? f12 : 1.0f, (i11 & 8) != 0 ? 0.0f : f13, (i11 & 16) != 0 ? 0.0f : f14, (i11 & 32) != 0 ? 0.0f : f15, (i11 & 64) != 0 ? 0.0f : f16, (i11 & 128) != 0 ? 0.0f : f17, (i11 & 256) == 0 ? f18 : 0.0f, (i11 & 512) != 0 ? 8.0f : f19, (i11 & 1024) != 0 ? e5.f4127a.a() : j10, (i11 & 2048) != 0 ? v4.a() : a5Var, (i11 & 4096) != 0 ? false : z10, (i11 & 8192) != 0 ? null : w4Var, (i11 & 16384) != 0 ? d4.a() : j11, (i11 & 32768) != 0 ? d4.a() : j12, (i11 & 65536) != 0 ? w3.f4565a.a() : i10);
    }

    public static final androidx.compose.ui.f c(androidx.compose.ui.f fVar) {
        return InspectableValueKt.b() ? fVar.e(b(androidx.compose.ui.f.f3869a, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null)) : fVar;
    }
}
