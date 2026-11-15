package androidx.compose.animation.core;

public abstract class h {
    public static final o b(s0 s0Var, Object obj) {
        if (obj == null) {
            return null;
        }
        return (o) s0Var.a().invoke(obj);
    }

    public static final o0 c(float f10, float f11, Object obj) {
        return new o0(f10, f11, obj);
    }

    public static o0 d(float f10, float f11, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 1500.0f;
        }
        if ((i10 & 4) != 0) {
            obj = null;
        }
        return c(f10, f11, obj);
    }

    public static final r0 e(int i10, int i11, z zVar) {
        return new r0(i10, i11, zVar);
    }

    public static r0 f(int i10, int i11, z zVar, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 300;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        if ((i12 & 4) != 0) {
            zVar = b0.c();
        }
        return e(i10, i11, zVar);
    }
}
