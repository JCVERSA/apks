package androidx.compose.animation.core;

public abstract class r {
    public static int a(double d10) {
        long jDoubleToLongBits = Double.doubleToLongBits(d10);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }
}
