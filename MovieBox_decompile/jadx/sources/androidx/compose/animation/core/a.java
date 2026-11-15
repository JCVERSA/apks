package androidx.compose.animation.core;

import kotlin.jvm.internal.FloatCompanionObject;

public abstract class a {

    private static final k f2090a = p.a(Float.POSITIVE_INFINITY);

    private static final l f2091b = p.b(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);

    private static final m f2092c = p.c(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);

    private static final n f2093d = p.d(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);

    private static final k f2094e = p.a(Float.NEGATIVE_INFINITY);

    private static final l f2095f = p.b(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    private static final m f2096g = p.c(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    private static final n f2097h = p.d(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    public static final Animatable a(float f10, float f11) {
        return new Animatable(Float.valueOf(f10), VectorConvertersKt.b(FloatCompanionObject.f64316a), Float.valueOf(f11), null, 8, null);
    }

    public static Animatable b(float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.01f;
        }
        return a(f10, f11);
    }
}
