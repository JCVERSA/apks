package androidx.compose.foundation.gestures;

public interface d {

    public static final a f2407a = a.f2408a;

    public static final class a {

        static final a f2408a = new a();

        private static final androidx.compose.animation.core.g f2409b = androidx.compose.animation.core.h.d(0.0f, 0.0f, null, 7, null);

        private static final d f2410c = new C0025a();

        public static final class C0025a implements d {
            C0025a() {
            }

            @Override
            public float a(float f10, float f11, float f12) {
                return c.a(this, f10, f11, f12);
            }

            @Override
            public androidx.compose.animation.core.g b() {
                return c.b(this);
            }
        }

        private a() {
        }

        public final float a(float f10, float f11, float f12) {
            float f13 = f11 + f10;
            if ((f10 >= 0.0f && f13 <= f12) || (f10 < 0.0f && f13 > f12)) {
                return 0.0f;
            }
            float f14 = f13 - f12;
            return Math.abs(f10) < Math.abs(f14) ? f10 : f14;
        }

        public final d b() {
            return f2410c;
        }

        public final androidx.compose.animation.core.g c() {
            return f2409b;
        }
    }

    float a(float f10, float f11, float f12);

    androidx.compose.animation.core.g b();
}
