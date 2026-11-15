package androidx.navigation;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class n {
    public static final l a(Function1 optionsBuilder) {
        Intrinsics.h(optionsBuilder, "optionsBuilder");
        m mVar = new m();
        optionsBuilder.invoke(mVar);
        return mVar.b();
    }
}
