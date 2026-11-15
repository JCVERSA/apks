package defpackage;

import com.google.android.material.color.utilities.DynamicScheme;
import com.google.android.material.color.utilities.MaterialDynamicColors;
import java.util.function.Function;

public final class o86 implements Function {
    public final MaterialDynamicColors a;

    @Override
    public final Object apply(Object obj) {
        return this.a.highestSurface((DynamicScheme) obj);
    }
}
