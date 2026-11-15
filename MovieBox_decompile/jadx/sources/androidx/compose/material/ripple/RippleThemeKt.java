package androidx.compose.material.ripple;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import kotlin.jvm.functions.Function0;

public abstract class RippleThemeKt {

    private static final s1 f3176a = CompositionLocalKt.f(new Function0<i>() {
        @Override
        public final i invoke() {
            return a.f3185b;
        }
    });

    private static final c f3177b = new c(0.16f, 0.24f, 0.08f, 0.24f);

    private static final c f3178c = new c(0.08f, 0.12f, 0.04f, 0.12f);

    private static final c f3179d = new c(0.08f, 0.12f, 0.04f, 0.1f);

    public static final s1 d() {
        return f3176a;
    }
}
