package androidx.compose.animation.core;

public abstract class b0 {

    private static final z f2098a = new u(0.4f, 0.0f, 0.2f, 1.0f);

    private static final z f2099b = new u(0.0f, 0.0f, 0.2f, 1.0f);

    private static final z f2100c = new u(0.4f, 0.0f, 1.0f, 1.0f);

    private static final z f2101d = new z() {
        @Override
        public final float a(float f10) {
            return b0.b(f10);
        }
    };

    public static final z c() {
        return f2098a;
    }

    public static final z d() {
        return f2101d;
    }

    public static final float b(float f10) {
        return f10;
    }
}
