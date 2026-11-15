package pn;

import com.transsion.player.p007enum.ScaleMode;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public interface f extends com.transsion.player.orplayer.f {

    public static final class a {
        public static void a(f fVar, com.transsion.player.orplayer.e listener) {
            Intrinsics.h(listener, "listener");
            com.transsion.player.orplayer.f.b.b(fVar, listener);
        }

        public static void b(f fVar, qn.d mediaTrackGroup, int i10) {
            Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
            com.transsion.player.orplayer.f.b.c(fVar, mediaTrackGroup, i10);
        }

        public static void c(f fVar) {
            com.transsion.player.orplayer.f.b.d(fVar);
        }

        public static qn.c d(f fVar) {
            return com.transsion.player.orplayer.f.b.h(fVar);
        }

        public static qn.b e(f fVar) {
            return com.transsion.player.orplayer.f.b.i(fVar);
        }

        public static Object f(f fVar) {
            return com.transsion.player.orplayer.f.b.j(fVar);
        }

        public static int g(f fVar) {
            return com.transsion.player.orplayer.f.b.k(fVar);
        }

        public static int h(f fVar) {
            return com.transsion.player.orplayer.f.b.l(fVar);
        }

        public static boolean i(f fVar) {
            return com.transsion.player.orplayer.f.b.m(fVar);
        }

        public static void j(f fVar, String str) {
            com.transsion.player.orplayer.f.b.o(fVar, str);
        }

        public static void k(f fVar, com.transsion.player.orplayer.e listener) {
            Intrinsics.h(listener, "listener");
            com.transsion.player.orplayer.f.b.q(fVar, listener);
        }

        public static boolean l(f fVar) {
            return com.transsion.player.orplayer.f.b.r(fVar);
        }

        public static void m(f fVar, String uuid, long j10) {
            Intrinsics.h(uuid, "uuid");
            com.transsion.player.orplayer.f.b.s(fVar, uuid, j10);
        }

        public static void n(f fVar, hn.d vodConfig) {
            Intrinsics.h(vodConfig, "vodConfig");
            com.transsion.player.orplayer.f.b.w(fVar, vodConfig);
        }

        public static void o(f fVar, ScaleMode scaleMode) {
            Intrinsics.h(scaleMode, "scaleMode");
            com.transsion.player.orplayer.f.b.x(fVar, scaleMode);
        }
    }

    boolean a(gn.e eVar);

    Map b();
}
