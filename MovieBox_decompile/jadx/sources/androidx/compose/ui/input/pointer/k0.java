package androidx.compose.ui.input.pointer;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public final class k0 implements Function1 {

    private PointerInteropFilter f4696a;

    public void a(boolean z10) {
        PointerInteropFilter pointerInteropFilter = this.f4696a;
        if (pointerInteropFilter == null) {
            return;
        }
        pointerInteropFilter.j(z10);
    }

    public final void b(PointerInteropFilter pointerInteropFilter) {
        this.f4696a = pointerInteropFilter;
    }

    @Override
    public Object invoke(Object obj) {
        a(((Boolean) obj).booleanValue());
        return Unit.f64096a;
    }
}
