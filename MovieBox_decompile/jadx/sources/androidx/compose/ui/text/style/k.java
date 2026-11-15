package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function0;

public abstract class k {
    public static final long b(long j10, float f10) {
        return (Float.isNaN(f10) || f10 >= 1.0f) ? j10 : u1.k(j10, u1.n(j10) * f10, 0.0f, 0.0f, 0.0f, 14, null);
    }

    public static final float c(float f10, Function0 function0) {
        return Float.isNaN(f10) ? ((Number) function0.invoke()).floatValue() : f10;
    }
}
