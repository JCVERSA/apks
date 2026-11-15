package androidx.compose.ui.semantics;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function1;

public abstract class k {

    private static AtomicInteger f5696a = new AtomicInteger(0);

    public static final int a() {
        return f5696a.addAndGet(1);
    }

    public static final androidx.compose.ui.f b(androidx.compose.ui.f fVar, boolean z10, Function1 function1) {
        return fVar.e(new AppendedSemanticsElement(z10, function1));
    }

    public static androidx.compose.ui.f c(androidx.compose.ui.f fVar, boolean z10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return b(fVar, z10, function1);
    }
}
