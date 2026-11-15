package androidx.compose.animation.core;

import kotlin.jvm.internal.FloatCompanionObject;

public abstract class j {
    public static final i a(float f10, float f11, long j10, long j11, boolean z10) {
        return new i(VectorConvertersKt.b(FloatCompanionObject.f64316a), Float.valueOf(f10), p.a(f11), j10, j11, z10);
    }

    public static final i b(s0 s0Var, Object obj, Object obj2, long j10, long j11, boolean z10) {
        return new i(s0Var, obj, (o) s0Var.a().invoke(obj2), j10, j11, z10);
    }

    public static i c(float f10, float f11, long j10, long j11, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        long j12 = (i10 & 4) != 0 ? Long.MIN_VALUE : j10;
        long j13 = (i10 & 8) == 0 ? j11 : Long.MIN_VALUE;
        if ((i10 & 16) != 0) {
            z10 = false;
        }
        return a(f10, f11, j12, j13, z10);
    }

    public static final i e(i iVar, float f10, float f11, long j10, long j11, boolean z10) {
        return new i(iVar.e(), Float.valueOf(f10), p.a(f11), j10, j11, z10);
    }

    public static final i f(i iVar, Object obj, o oVar, long j10, long j11, boolean z10) {
        return new i(iVar.e(), obj, oVar, j10, j11, z10);
    }

    public static i g(i iVar, float f10, float f11, long j10, long j11, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = ((Number) iVar.getValue()).floatValue();
        }
        if ((i10 & 2) != 0) {
            f11 = ((k) iVar.g()).f();
        }
        float f12 = f11;
        if ((i10 & 4) != 0) {
            j10 = iVar.d();
        }
        long j12 = j10;
        if ((i10 & 8) != 0) {
            j11 = iVar.c();
        }
        long j13 = j11;
        if ((i10 & 16) != 0) {
            z10 = iVar.h();
        }
        return e(iVar, f10, f12, j12, j13, z10);
    }

    public static i h(i iVar, Object obj, o oVar, long j10, long j11, boolean z10, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = iVar.getValue();
        }
        if ((i10 & 2) != 0) {
            oVar = p.e(iVar.g());
        }
        o oVar2 = oVar;
        if ((i10 & 4) != 0) {
            j10 = iVar.d();
        }
        long j12 = j10;
        if ((i10 & 8) != 0) {
            j11 = iVar.c();
        }
        long j13 = j11;
        if ((i10 & 16) != 0) {
            z10 = iVar.h();
        }
        return f(iVar, obj, oVar2, j12, j13, z10);
    }

    public static final o i(s0 s0Var, Object obj) {
        o oVar = (o) s0Var.a().invoke(obj);
        oVar.d();
        return oVar;
    }
}
