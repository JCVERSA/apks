package nn;

import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.transsion.player.p007enum.PlayMimeType;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ln.c;

public final class a {

    public static final a f67319a = new a();

    private static boolean f67320b;

    private a() {
    }

    public final String a(ln.a bean) {
        Intrinsics.h(bean, "bean");
        if (bean.v() == PlayMimeType.DASH) {
            return "3";
        }
        if (bean.v() == PlayMimeType.HLS) {
            return bean.w() ? "5" : PrepareException.ERROR_NO_URL;
        }
        c cVar = (c) CollectionsKt.k0(bean.j());
        return (cVar == null || !cVar.j()) ? "0" : "4";
    }

    public final boolean b() {
        return f67320b;
    }

    public final void c(boolean z10) {
        f67320b = z10;
    }
}
