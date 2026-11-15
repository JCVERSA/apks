package androidx.compose.animation.core;

public abstract class t {
    public static final s a(double d10) {
        return d10 < 0.0d ? new s(0.0d, Math.sqrt(Math.abs(d10))) : new s(Math.sqrt(d10), 0.0d);
    }
}
