package rh;

import com.blankj.utilcode.util.o;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f71234a = new e();

    private e() {
    }

    public final boolean a() {
        return com.transsion.ad.strategy.e.f41179a.c().getBoolean("kv_is_skip_ad", false);
    }

    public final void b(List strings) {
        Intrinsics.h(strings, "strings");
        com.transsion.ad.strategy.e.f41179a.c().putString("member_scene_id_whit_list", o.j(strings));
    }

    public final void c(boolean z10) {
        com.transsion.ad.strategy.e.f41179a.c().putBoolean("kv_is_skip_ad", z10);
    }
}
