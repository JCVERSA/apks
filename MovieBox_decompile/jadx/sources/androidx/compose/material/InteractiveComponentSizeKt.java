package androidx.compose.material;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.s1;
import kotlin.jvm.functions.Function0;

public abstract class InteractiveComponentSizeKt {

    private static final s1 f3050a;

    private static final s1 f3051b;

    private static final long f3052c;

    static {
        s1 s1VarF = CompositionLocalKt.f(new Function0<Boolean>() {
            @Override
            public final Boolean invoke() {
                return Boolean.TRUE;
            }
        });
        f3050a = s1VarF;
        f3051b = s1VarF;
        float f10 = 48;
        f3052c = o0.j.b(o0.i.g(f10), o0.i.g(f10));
    }

    public static final s1 b() {
        return f3050a;
    }

    public static final androidx.compose.ui.f c(androidx.compose.ui.f fVar) {
        return fVar.e(MinimumInteractiveModifier.f3053b);
    }
}
