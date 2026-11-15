package com.transsion.player.ui.longvideo;

import android.view.MotionEvent;
import com.transsion.player.orplayer.f;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import gn.e;
import hn.d;
import kotlin.jvm.internal.Intrinsics;
import on.z;

public interface a extends f {

    public static final class C0617a {
        public static boolean a(a aVar, e mediaSource) {
            Intrinsics.h(mediaSource, "mediaSource");
            return f.b.a(aVar, mediaSource);
        }

        public static void b(a aVar) {
            f.b.d(aVar);
        }

        public static e c(a aVar) {
            return f.b.f(aVar);
        }

        public static int d(a aVar) {
            return f.b.k(aVar);
        }

        public static int e(a aVar) {
            return f.b.l(aVar);
        }

        public static boolean f(a aVar) {
            return f.b.m(aVar);
        }

        public static boolean g(a aVar) {
            return f.b.n(aVar);
        }

        public static void h(a aVar, String str) {
            f.b.o(aVar, str);
        }

        public static boolean i(a aVar, e mediaSource) {
            Intrinsics.h(mediaSource, "mediaSource");
            return f.b.p(aVar, mediaSource);
        }

        public static void j(a aVar, String uuid, long j10) {
            Intrinsics.h(uuid, "uuid");
            f.b.s(aVar, uuid, j10);
        }

        public static void k(a aVar) {
            f.b.t(aVar);
        }

        public static void l(a aVar, z listener) {
            Intrinsics.h(listener, "listener");
            f.b.u(aVar, listener);
        }

        public static void m(a aVar, boolean z10) {
            f.b.v(aVar, z10);
        }

        public static void n(a aVar, d vodConfig) {
            Intrinsics.h(vodConfig, "vodConfig");
            f.b.w(aVar, vodConfig);
        }

        public static void o(a aVar, ScaleMode scaleMode) {
            Intrinsics.h(scaleMode, "scaleMode");
            f.b.x(aVar, scaleMode);
        }
    }

    public interface b {
        void a();

        void b(float f10, float f11);

        void c();

        void onDoubleTap(MotionEvent motionEvent);

        void onLongPress(MotionEvent motionEvent);
    }

    void enableGesture(boolean z10);

    f getOrPlayer();

    void initLongVodPlayer(hn.a aVar, ORPlayerView oRPlayerView);

    void setExistPlayer(hn.a aVar, f fVar, ORPlayerView oRPlayerView);

    void setGestureListener(b bVar);
}
