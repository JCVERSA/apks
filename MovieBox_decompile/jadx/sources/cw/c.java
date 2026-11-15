package cw;

import com.transsion.player.orplayer.f;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final c f58664a = new c();

    private c() {
    }

    public final void a() {
        b.C0694b.a(b.f58659a.c(), false, 1, null);
        e.b.a(e.f58665a.b(), false, 1, null);
    }

    public final boolean b(String tag) {
        Intrinsics.h(tag, "tag");
        return b.f58659a.c().b(tag) || e.f58665a.b().b(tag);
    }

    public final boolean c(f fVar) {
        return b.f58659a.c().c(fVar) || e.f58665a.b().g(fVar);
    }

    public final boolean d() {
        return b.f58659a.c().isPlaying() || e.f58665a.b().isPlaying();
    }
}
