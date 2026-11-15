package androidx.compose.ui.text.style;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class TextForegroundStyle$CC {
    public static l a(final l lVar, l lVar2) {
        boolean z10 = lVar2 instanceof b;
        if (z10 && (lVar instanceof b)) {
            return new b(((b) lVar2).e(), k.c(lVar2.getAlpha(), new Function0<Float>() {
                {
                    super(0);
                }

                @Override
                public final Float invoke() {
                    return Float.valueOf(lVar.getAlpha());
                }
            }));
        }
        if (!z10 || (lVar instanceof b)) {
            return (z10 || !(lVar instanceof b)) ? lVar2.b(new Function0<l>() {
                {
                    super(0);
                }

                @Override
                public final l invoke() {
                    return lVar;
                }
            }) : lVar;
        }
        return lVar2;
    }

    public static l b(l lVar, Function0 function0) {
        return !Intrinsics.c(lVar, l.b.f6115b) ? lVar : (l) function0.invoke();
    }
}
