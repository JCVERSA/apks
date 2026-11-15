package com.transsion.player.orplayer;

import com.transsion.player.orplayer.global.TnPlayerType;
import kotlin.jvm.internal.Intrinsics;

public interface e {

    public static final class a {
        public static void A(e eVar) {
        }

        public static void B(e eVar) {
        }

        public static void C(e eVar, int i10) {
        }

        public static void D(e eVar, qn.c tracks) {
            Intrinsics.h(tracks, "tracks");
        }

        public static void E(e eVar, int i10) {
        }

        public static void F(e eVar, gn.e eVar2) {
        }

        public static void G(e eVar, gn.e eVar2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onVideoPause");
            }
            if ((i10 & 1) != 0) {
                eVar2 = null;
            }
            eVar.onVideoPause(eVar2);
        }

        public static void H(e eVar, int i10, int i11) {
        }

        public static void I(e eVar, gn.e eVar2) {
        }

        public static void J(e eVar, gn.e eVar2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onVideoStart");
            }
            if ((i10 & 1) != 0) {
                eVar2 = null;
            }
            eVar.onVideoStart(eVar2);
        }

        public static void K(e eVar) {
        }

        public static void a(e eVar, boolean z10, int i10, int i11, qn.d dashVideoTracksGroup) {
            Intrinsics.h(dashVideoTracksGroup, "dashVideoTracksGroup");
        }

        public static void b(e eVar) {
        }

        public static void c(e eVar, gn.e eVar2) {
        }

        public static void d(e eVar, long j10, gn.e eVar2) {
        }

        public static void e(e eVar, gn.e eVar2) {
        }

        public static void f(e eVar, gn.e eVar2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onCompletion");
            }
            if ((i10 & 1) != 0) {
                eVar2 = null;
            }
            eVar.onCompletion(eVar2);
        }

        public static void g(e eVar, boolean z10) {
        }

        public static void h(e eVar, boolean z10) {
        }

        public static void i(e eVar, gn.e eVar2) {
        }

        public static void j(e eVar, gn.e eVar2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onLoadingBegin");
            }
            if ((i10 & 1) != 0) {
                eVar2 = null;
            }
            eVar.onLoadingBegin(eVar2);
        }

        public static void k(e eVar, gn.e eVar2) {
        }

        public static void l(e eVar, gn.e eVar2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onLoadingEnd");
            }
            if ((i10 & 1) != 0) {
                eVar2 = null;
            }
            eVar.onLoadingEnd(eVar2);
        }

        public static void m(e eVar, int i10, float f10, gn.e eVar2) {
        }

        public static void n(e eVar, int i10, float f10, gn.e eVar2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onLoadingProgress");
            }
            if ((i11 & 4) != 0) {
                eVar2 = null;
            }
            eVar.onLoadingProgress(i10, f10, eVar2);
        }

        public static void o(e eVar) {
        }

        public static void p(e eVar, String str) {
        }

        public static void q(e eVar, PlayError errorInfo, gn.e eVar2) {
            Intrinsics.h(errorInfo, "errorInfo");
        }

        public static void r(e eVar, PlayError playError, gn.e eVar2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onPlayError");
            }
            if ((i10 & 2) != 0) {
                eVar2 = null;
            }
            eVar.onPlayError(playError, eVar2);
        }

        public static void s(e eVar, TnPlayerType errorType, gn.e eVar2) {
            Intrinsics.h(errorType, "errorType");
        }

        public static void t(e eVar, gn.e eVar2) {
        }

        public static void u(e eVar, gn.e eVar2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onPlayerRelease");
            }
            if ((i10 & 1) != 0) {
                eVar2 = null;
            }
            eVar.onPlayerRelease(eVar2);
        }

        public static void v(e eVar) {
        }

        public static void w(e eVar, gn.e eVar2) {
        }

        public static void x(e eVar, gn.e eVar2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onPrepare");
            }
            if ((i10 & 1) != 0) {
                eVar2 = null;
            }
            eVar.onPrepare(eVar2);
        }

        public static void y(e eVar, long j10, gn.e eVar2) {
        }

        public static void z(e eVar, long j10, gn.e eVar2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onProgress");
            }
            if ((i10 & 2) != 0) {
                eVar2 = null;
            }
            eVar.onProgress(j10, eVar2);
        }
    }

    void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar);

    void initPlayer();

    void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar);

    void onBufferedPosition(long j10, gn.e eVar);

    void onCompletion(gn.e eVar);

    void onFocusChange(boolean z10);

    void onIsPlayingChanged(boolean z10);

    void onLoadingBegin(gn.e eVar);

    void onLoadingEnd(gn.e eVar);

    void onLoadingProgress(int i10, float f10, gn.e eVar);

    void onLoopingStart();

    void onMediaItemTransition(String str);

    void onPlayError(PlayError playError, gn.e eVar);

    void onPlayerRelease(gn.e eVar);

    void onPlayerReset();

    void onPrepare(gn.e eVar);

    void onProgress(long j10, gn.e eVar);

    void onRenderFirstFrame();

    void onSetDataSource();

    void onTracksAudioBitrateChange(int i10);

    void onTracksChange(qn.c cVar);

    void onTracksVideoBitrateChange(int i10);

    void onVideoPause(gn.e eVar);

    void onVideoSizeChanged(int i10, int i11);

    void onVideoStart(gn.e eVar);

    void setOnSeekCompleteListener();
}
