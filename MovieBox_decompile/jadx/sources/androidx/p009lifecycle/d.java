package androidx.p009lifecycle;

import kotlin.jvm.internal.Intrinsics;

public final class d implements r {

    private final k[] f9274a;

    public d(k[] generatedAdapters) {
        Intrinsics.h(generatedAdapters, "generatedAdapters");
        this.f9274a = generatedAdapters;
    }

    @Override
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        new a0();
        k[] kVarArr = this.f9274a;
        if (kVarArr.length > 0) {
            k kVar = kVarArr[0];
            throw null;
        }
        if (kVarArr.length <= 0) {
            return;
        }
        k kVar2 = kVarArr[0];
        throw null;
    }
}
