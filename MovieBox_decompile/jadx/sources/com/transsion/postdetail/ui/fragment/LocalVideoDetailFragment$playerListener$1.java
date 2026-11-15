package com.transsion.postdetail.ui.fragment;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.fragment.app.FragmentActivity;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.player.orplayer.PlayError;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsion.postdetail.util.LocalVideoAdHelper;
import com.transsion.subtitle.VideoSubtitleControl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class LocalVideoDetailFragment$playerListener$1 implements com.transsion.player.orplayer.e {

    final LocalVideoDetailFragment f47463a;

    LocalVideoDetailFragment$playerListener$1(LocalVideoDetailFragment localVideoDetailFragment) {
        this.f47463a = localVideoDetailFragment;
    }

    public static final Unit c(LocalVideoDetailFragment localVideoDetailFragment) {
        com.transsion.player.orplayer.f fVar = localVideoDetailFragment.orPlayer;
        if (fVar != null) {
            fVar.play();
        }
        return Unit.f64096a;
    }

    public static final Unit d(LocalVideoDetailFragment localVideoDetailFragment) {
        localVideoDetailFragment.h2().h(LayerFlag.PLAYER_FOREGROUND, Boolean.FALSE);
        com.transsion.player.orplayer.f fVar = localVideoDetailFragment.orPlayer;
        if (fVar != null) {
            fVar.play();
        }
        return Unit.f64096a;
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.f47463a.localVideoDot;
        if (c0Var != null) {
            c0Var.y(true);
        }
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onCompletion(gn.e eVar) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.f47463a.localVideoDot;
        if (c0Var != null) {
            c0Var.h();
        }
        wf.a.C0922a.f(wf.a.f74274a, this.f47463a.TAG, "onCompletion", false, 4, null);
        this.f47463a.a3();
        this.f47463a.localVideoAdHelper.u2();
    }

    @Override
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.e.a.g(this, z10);
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        wf.a.C0922a.f(wf.a.f74274a, this.f47463a.TAG, "onIsPlayingChanged：" + z10, false, 4, null);
        VideoSubtitleControl videoSubtitleControl = this.f47463a.subtitleControl;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.b0(z10);
        }
    }

    @Override
    public void onLoadingBegin(gn.e eVar) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.f47463a.localVideoDot;
        if (c0Var != null) {
            c0Var.i();
        }
        wf.a.C0922a.f(wf.a.f74274a, this.f47463a.TAG, "onLoadingBegin", false, 4, null);
        this.f47463a.h2().g(LayerFlag.LOADING_BEGIN, Boolean.FALSE);
        if (this.f47463a.isDownloadingPlay) {
            this.f47463a.Y1();
        }
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.f47463a.localVideoDot;
        if (c0Var != null) {
            c0Var.j();
        }
        wf.a.C0922a.f(wf.a.f74274a, this.f47463a.TAG, "onLoadingEnd", false, 4, null);
        this.f47463a.getHandler().removeCallbacksAndMessages(null);
        this.f47463a.h2().g(LayerFlag.LOADING_END, Boolean.FALSE);
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLoopingStart() {
        wf.a.C0922a.f(wf.a.f74274a, this.f47463a.TAG, "onLoopingStart", false, 4, null);
        this.f47463a.h2().g(LayerFlag.LOOPING_START, new Object[0]);
    }

    @Override
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.e.a.p(this, str);
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f47463a.q3();
        this.f47463a.errorInfo = errorInfo;
        com.transsion.postdetail.layer.local.c0 c0Var = this.f47463a.localVideoDot;
        if (c0Var != null) {
            c0Var.l(errorInfo);
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.i("long_video_play", "onPlayError()  errorCode:" + errorInfo.getErrorCode() + " errorMessage:" + errorInfo.getErrorMessage() + "  playProgress = " + this.f47463a.playProgress + " url:" + (eVar != null ? eVar.j() : null) + " --> 长播放失败了", true);
        this.f47463a.h2().g(LayerFlag.PLAY_ERROR, errorInfo);
        LocalVideoDetailFragment localVideoDetailFragment = this.f47463a;
        Integer errorCode = errorInfo.getErrorCode();
        localVideoDetailFragment.isPlayerNetTimeout = errorCode != null && errorCode.intValue() == 537067524;
        if (this.f47463a.playProgress > 0) {
            LocalVideoDetailFragment localVideoDetailFragment2 = this.f47463a;
            LocalVideoDetailFragment.s3(localVideoDetailFragment2, localVideoDetailFragment2.downloadBean, this.f47463a.playProgress, false, 4, null);
        }
        if (yg.l.f76264a.e()) {
            if (this.f47463a.isPlayerNetTimeout) {
                return;
            }
            c0922a.x("long_video_play", "video error，reload~~ from onPlayError", true);
            LocalVideoDetailFragment.o3(this.f47463a, false, 1, null);
            return;
        }
        wf.a.C0922a.f(c0922a, this.f47463a.TAG, "onPlayError， not net----", false, 4, null);
        DownloadBean downloadBean = this.f47463a.downloadBean;
        if ((downloadBean != null ? downloadBean.getProgress() : 0L) > PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            this.f47463a.h2().g(LayerFlag.LOADING_END, new Object[0]);
            this.f47463a.h2().h(LayerFlag.NETWORK_CHANGE, Boolean.FALSE);
        }
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        com.transsion.player.orplayer.e.a.t(this, eVar);
    }

    @Override
    public void onPlayerReset() {
        wf.a.C0922a.f(wf.a.f74274a, this.f47463a.TAG, "onPlayerReset", false, 4, null);
        this.f47463a.h2().g(LayerFlag.PLAYER_RESET, new Object[0]);
        this.f47463a.localVideoAdHelper.w2();
    }

    @Override
    public void onPrepare(gn.e eVar) {
        this.f47463a.q3();
        this.f47463a.isPlayerNetTimeout = false;
        this.f47463a.isPrepare = true;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.f47463a.TAG;
        DownloadBean downloadBean = this.f47463a.downloadBean;
        wf.a.C0922a.f(c0922a, str, "onPrepare, epse = " + (downloadBean != null ? Integer.valueOf(downloadBean.getEpse()) : null), false, 4, null);
        if (this.f47463a.downloadBean == null) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f47463a), kotlinx.coroutines.y0.b(), null, new LocalVideoDetailFragment$playerListener$1$onPrepare$1(this.f47463a, null), 2, null);
        } else {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f47463a), kotlinx.coroutines.y0.c(), null, new LocalVideoDetailFragment$playerListener$1$onPrepare$2(this.f47463a, null), 2, null);
        }
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.f47463a.localVideoDot;
        if (c0Var != null) {
            c0Var.m(j10);
        }
        this.f47463a.playProgress = j10;
        this.f47463a.h2().g(LayerFlag.PROGRESS, Long.valueOf(j10));
        LocalVideoAdHelper localVideoAdHelper = this.f47463a.localVideoAdHelper;
        final LocalVideoDetailFragment localVideoDetailFragment = this.f47463a;
        localVideoAdHelper.N(j10, new Function0() {
            @Override
            public final Object invoke() {
                return LocalVideoDetailFragment$playerListener$1.c(localVideoDetailFragment);
            }
        });
    }

    @Override
    public void onRenderFirstFrame() {
        com.transsion.postdetail.layer.local.c0 c0Var = this.f47463a.localVideoDot;
        if (c0Var != null) {
            c0Var.n();
        }
        wf.a.C0922a.f(wf.a.f74274a, this.f47463a.TAG, "onRenderFirstFrame", false, 4, null);
        this.f47463a.h2().g(LayerFlag.RENDER_FIRST_FRAME, new Object[0]);
        com.transsion.player.orplayer.f fVar = this.f47463a.orPlayer;
        if (fVar != null) {
            fVar.pause();
        }
        LocalVideoAdHelper localVideoAdHelper = this.f47463a.localVideoAdHelper;
        final LocalVideoDetailFragment localVideoDetailFragment = this.f47463a;
        localVideoAdHelper.Y1(new Function0() {
            @Override
            public final Object invoke() {
                return LocalVideoDetailFragment$playerListener$1.d(localVideoDetailFragment);
            }
        });
    }

    @Override
    public void onSetDataSource() {
        com.transsion.player.orplayer.e.a.B(this);
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.C(this, i10);
        com.transsion.postdetail.layer.local.c0 c0Var = this.f47463a.localVideoDot;
        if (c0Var != null) {
            c0Var.t(i10);
        }
    }

    @Override
    public void onTracksChange(qn.c cVar) {
        com.transsion.player.orplayer.e.a.D(this, cVar);
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.E(this, i10);
        com.transsion.postdetail.layer.local.c0 c0Var = this.f47463a.localVideoDot;
        if (c0Var != null) {
            c0Var.u(i10);
        }
    }

    @Override
    public void onVideoPause(gn.e eVar) {
        this.f47463a.z3(true);
        com.transsion.postdetail.layer.local.c0 c0Var = this.f47463a.localVideoDot;
        if (c0Var != null) {
            c0Var.v();
        }
        wf.a.C0922a.f(wf.a.f74274a, this.f47463a.TAG, "onVideoPause", false, 4, null);
        FragmentActivity activity = this.f47463a.getActivity();
        if (activity != null) {
            com.transsion.postdetail.util.s.f48087a.b(activity, false);
        }
        this.f47463a.h2().g(LayerFlag.VIDEO_PAUSE, new Object[0]);
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        this.f47463a.videoWidth = i10;
        this.f47463a.videoHeight = i11;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.f47463a.TAG, "onVideoSizeChanged", false, 4, null);
        wf.a.C0922a.f(c0922a, this.f47463a.TAG, "onVideoSizeChanged width:" + i10 + ",height:" + i11, false, 4, null);
        this.f47463a.h2().g(LayerFlag.VIDEO_SIZE_CHANGED, Integer.valueOf(i10), Integer.valueOf(i11));
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        this.f47463a.q3();
        this.f47463a.z3(false);
        com.transsion.postdetail.layer.local.c0 c0Var = this.f47463a.localVideoDot;
        if (c0Var != null) {
            c0Var.w();
        }
        wf.a.C0922a.f(wf.a.f74274a, this.f47463a.TAG, "onVideoStart", false, 4, null);
        this.f47463a.playingDownloadHandler.removeCallbacks(this.f47463a.notNetRunnable);
        this.f47463a.h2().g(LayerFlag.VIDEO_START, new Object[0]);
        this.f47463a.h2().g(LayerFlag.LOADING_END, new Object[0]);
        ep.a aVarC2 = this.f47463a.c2();
        if (aVarC2 != null) {
            aVarC2.pause();
        }
        this.f47463a.E3();
        this.f47463a.localVideoAdHelper.y2();
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
    }
}
