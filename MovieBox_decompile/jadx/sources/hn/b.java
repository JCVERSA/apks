package hn;

import com.transsion.player.config.RenderType;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public static final b f61411a = new b();

    private static d f61412b;

    private b() {
    }

    public final d a() {
        if (f61412b == null) {
            f61412b = new d(RenderType.SURFACE_VIEW, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, false, false, false, false, "", 65534, null);
        }
        d dVar = f61412b;
        Intrinsics.e(dVar);
        return dVar;
    }

    public final boolean b() {
        d dVar = f61412b;
        return (dVar != null ? dVar.p() : null) == RenderType.SURFACE_VIEW;
    }

    public final boolean c() {
        d dVar = f61412b;
        if (dVar != null) {
            return dVar.j();
        }
        return true;
    }

    public final void d(d dVar) {
        f61412b = dVar;
    }
}
