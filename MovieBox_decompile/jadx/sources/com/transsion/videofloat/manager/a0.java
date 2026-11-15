package com.transsion.videofloat.manager;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class a0 {

    public static final a0 f55763a = new a0();

    private static final Map f55764b = new LinkedHashMap();

    private a0() {
    }

    public final void a(String tag, com.transsion.player.orplayer.f player) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(player, "player");
        wf.a.C0922a.r(wf.a.f74274a, "VideoFloat", new String[]{"PlayerView-----addPlayerView," + tag}, false, 4, null);
        f55764b.put(tag, player);
    }

    public final com.transsion.player.orplayer.f b(String tag) {
        Intrinsics.h(tag, "tag");
        Map map = f55764b;
        com.transsion.player.orplayer.f fVar = (com.transsion.player.orplayer.f) map.remove(tag);
        if (fVar == null) {
            if (!map.isEmpty()) {
                for (Map.Entry entry : map.entrySet()) {
                    wf.a.f74274a.x("VideoFloat", "PlayerView---player null clear. release, tag:" + tag + ", curTag：" + entry.getKey(), true);
                    ((com.transsion.player.orplayer.f) entry.getValue()).release();
                }
                Iterator it = f55764b.values().iterator();
                while (it.hasNext()) {
                    ((com.transsion.player.orplayer.f) it.next()).release();
                }
            }
            f55764b.clear();
        }
        return fVar;
    }

    public final boolean c(com.transsion.player.orplayer.f fVar) {
        for (com.transsion.player.orplayer.f fVar2 : f55764b.values()) {
            if (Intrinsics.c(fVar2, fVar)) {
                wf.a.f74274a.c("VideoFloat", "hasPlayerCache，true player:" + fVar, true);
                return true;
            }
            wf.a.f74274a.c("VideoFloat", "hasPlayerCache，false player:" + fVar + ", cachePayer:" + fVar2, true);
        }
        return false;
    }

    public final void d() {
        f55764b.clear();
    }

    public final void e(String tag) {
        Intrinsics.h(tag, "tag");
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "PlayerView-----removePlayerView", false, 4, null);
        f55764b.remove(tag);
    }
}
