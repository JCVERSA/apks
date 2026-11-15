package androidx.compose.material;

import androidx.compose.foundation.b0;
import androidx.compose.foundation.x;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class RippleKt {

    private static final s1 f3059a = CompositionLocalKt.f(new Function0<Boolean>() {
        @Override
        public final Boolean invoke() {
            return Boolean.FALSE;
        }
    });

    private static final s1 f3060b = CompositionLocalKt.d(null, new Function0<g>() {
        @Override
        public final g invoke() {
            return new g(0L, null, 3, null);
        }
    }, 1, null);

    private static final i f3061c;

    private static final i f3062d;

    private static final androidx.compose.material.ripple.c f3063e;

    private static final androidx.compose.material.ripple.c f3064f;

    private static final androidx.compose.material.ripple.c f3065g;

    static {
        o0.i.a aVar = o0.i.f67404b;
        float fB = aVar.b();
        u1.a aVar2 = u1.f4349b;
        f3061c = new i(true, fB, aVar2.e(), (DefaultConstructorMarker) null);
        f3062d = new i(false, aVar.b(), aVar2.e(), (DefaultConstructorMarker) null);
        f3063e = new androidx.compose.material.ripple.c(0.16f, 0.24f, 0.08f, 0.24f);
        f3064f = new androidx.compose.material.ripple.c(0.08f, 0.12f, 0.04f, 0.12f);
        f3065g = new androidx.compose.material.ripple.c(0.08f, 0.12f, 0.04f, 0.1f);
    }

    public static final s1 d() {
        return f3060b;
    }

    public static final b0 e(boolean z10, float f10, long j10) {
        if (o0.i.i(f10, o0.i.f67404b.b()) && u1.m(j10, u1.f4349b.e())) {
            return z10 ? f3061c : f3062d;
        }
        return new i(z10, f10, j10, (DefaultConstructorMarker) null);
    }

    public static final x f(boolean z10, float f10, long j10, androidx.compose.runtime.i iVar, int i10, int i11) {
        x xVarE;
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        boolean z11 = z10;
        if ((i11 & 2) != 0) {
            f10 = o0.i.f67404b.b();
        }
        float f11 = f10;
        if ((i11 & 4) != 0) {
            j10 = u1.f4349b.e();
        }
        long j11 = j10;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-58830494, i10, -1, "androidx.compose.material.rippleOrFallbackImplementation (Ripple.kt:264)");
        }
        if (((Boolean) iVar.l(f3059a)).booleanValue()) {
            iVar.P(96412190);
            xVarE = androidx.compose.material.ripple.h.f(z11, f11, j11, iVar, i10 & 1022, 0);
            iVar.K();
        } else {
            iVar.P(96503175);
            iVar.K();
            xVarE = e(z11, f11, j11);
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return xVarE;
    }
}
