package androidx.compose.ui.platform;

public abstract class h1 {
    private static final float a(float f10) {
        return (float) (f10 >= 0.0f ? Math.ceil(f10) : Math.floor(f10));
    }

    public static final int b(float f10) {
        return ((int) a(f10)) * (-1);
    }
}
