package defpackage;

import java.io.IOException;
import java.util.Iterator;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.types.j;

public abstract class sm9 extends mgb implements tm9, gbb {
    public sm9() {
        super(null);
    }

    public abstract sm9 P0(boolean z);

    public abstract sm9 Q0(j jVar);

    public String toString() throws IOException {
        StringBuilder sb = new StringBuilder();
        Iterator it = getAnnotations().iterator();
        while (it.hasNext()) {
            d1a.n(sb, "[", DescriptorRenderer.u(DescriptorRenderer.j, (gd) it.next(), null, 2, null), "] ");
        }
        sb.append(I0());
        if (!G0().isEmpty()) {
            i81.v0(G0(), sb, (124 & 2) != 0 ? ", " : ", ", (124 & 4) != 0 ? "" : "<", (124 & 8) == 0 ? ">" : "", (124 & 16) != 0 ? -1 : 0, (124 & 32) != 0 ? "..." : null, (124 & 64) != 0 ? null : null);
        }
        if (J0()) {
            sb.append("?");
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
