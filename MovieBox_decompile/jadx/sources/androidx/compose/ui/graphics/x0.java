package androidx.compose.ui.graphics;

import kotlin.NoWhenBranchMatchedException;

public abstract class x0 {

    public class a {

        public static final int[] f4569a;

        static {
            int[] iArr = new int[Path.Direction.values().length];
            try {
                iArr[Path.Direction.CounterClockwise.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Path.Direction.Clockwise.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f4569a = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Path a() {
        return new u0(null, 1, 0 == true ? 1 : 0);
    }

    public static final void c(String str) {
        throw new IllegalStateException(str);
    }

    public static final android.graphics.Path.Direction d(Path.Direction direction) {
        int i10 = a.f4569a[direction.ordinal()];
        if (i10 == 1) {
            return android.graphics.Path.Direction.CCW;
        }
        if (i10 == 2) {
            return android.graphics.Path.Direction.CW;
        }
        throw new NoWhenBranchMatchedException();
    }
}
