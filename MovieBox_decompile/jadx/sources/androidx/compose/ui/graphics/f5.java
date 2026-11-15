package androidx.compose.ui.graphics;

public abstract class f5 {
    public static final long a(float f10, float f11) {
        return e5.b((((long) Float.floatToRawIntBits(f11)) & 4294967295L) | (Float.floatToRawIntBits(f10) << 32));
    }
}
