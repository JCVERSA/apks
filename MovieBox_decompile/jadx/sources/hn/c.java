package hn;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import qi.h;

public final class c {

    public static final c f61413a = new c();

    private c() {
    }

    public final void a(String str, String str2, String str3, boolean z10) {
        if (str2 == null || str2.length() == 0) {
            return;
        }
        h hVar = h.f69682a;
        if (str == null) {
            str = hVar.h();
        }
        hVar.o(str, MapsKt.l(new Pair("module_name", "play_screen"), new Pair("subject_id", str2), new Pair("ops", str3), new Pair(NativeComponentConstants.KEY_COMPONENT_TYPE, z10 ? "1" : "0")));
    }
}
