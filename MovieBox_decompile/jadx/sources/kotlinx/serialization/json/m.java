package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.j0;

final class m extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(f configuration, ty.c module) {
        super(configuration, module, null);
        Intrinsics.h(configuration, "configuration");
        Intrinsics.h(module, "module");
        g();
    }

    private final void g() {
        if (Intrinsics.c(a(), ty.d.a())) {
            return;
        }
        a().a(new j0(e().k(), e().c()));
    }
}
