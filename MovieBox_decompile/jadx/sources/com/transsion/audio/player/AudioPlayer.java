package com.transsion.audio.player;

import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.audio.viewmodel.HistoryListManager;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.player.orplayer.PlayError;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class AudioPlayer {

    public static final a f41764i = new a(null);

    private static final Lazy f41765j = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return AudioPlayer.x();
        }
    });

    private com.transsion.player.orplayer.f f41767b;

    private com.transsion.audio.player.a f41768c;

    private long f41769d;

    private AudioBean f41770e;

    private AudioBean f41771f;

    private long f41766a = 1;

    private List f41772g = new ArrayList();

    private String f41773h = "";

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AudioPlayer a() {
            return (AudioPlayer) AudioPlayer.f41765j.getValue();
        }

        private a() {
        }
    }

    public final void A(boolean z10) {
        for (com.transsion.player.orplayer.e eVar : this.f41772g) {
            if (eVar != null) {
                eVar.onIsPlayingChanged(z10);
            }
        }
    }

    public final void B(gn.e eVar) {
        for (com.transsion.player.orplayer.e eVar2 : this.f41772g) {
            if (eVar2 != null) {
                eVar2.onLoadingBegin(eVar);
            }
        }
        com.transsion.audio.player.a aVar = this.f41768c;
        if (aVar != null) {
            aVar.c();
        }
    }

    public final void C(gn.e eVar) {
        for (com.transsion.player.orplayer.e eVar2 : this.f41772g) {
            if (eVar2 != null) {
                eVar2.onLoadingEnd(eVar);
            }
        }
        com.transsion.audio.player.a aVar = this.f41768c;
        if (aVar != null) {
            aVar.d();
        }
    }

    public final void D(int i10, float f10, gn.e eVar) {
        for (com.transsion.player.orplayer.e eVar2 : this.f41772g) {
            if (eVar2 != null) {
                eVar2.onLoadingProgress(i10, f10, eVar);
            }
        }
    }

    public final void E(gn.e eVar) {
        AudioBean audioBean = this.f41770e;
        if (audioBean == null || audioBean.getStatus() != 6) {
            com.transsion.audio.view.d.k().q(4);
            n(4);
            for (com.transsion.player.orplayer.e eVar2 : this.f41772g) {
                if (eVar2 != null) {
                    eVar2.onVideoPause(eVar);
                }
            }
            com.transsion.audio.player.a aVar = this.f41768c;
            if (aVar != null) {
                aVar.h();
            }
        }
    }

    public final void F(gn.e eVar) {
        com.transsion.audio.view.d.k().q(3);
        n(3);
        for (com.transsion.player.orplayer.e eVar2 : this.f41772g) {
            if (eVar2 != null) {
                eVar2.onVideoStart(eVar);
            }
        }
        com.transsion.audio.player.a aVar = this.f41768c;
        if (aVar != null) {
            aVar.i();
        }
    }

    public final void H(PlayError playError, gn.e eVar) {
        n(7);
        for (com.transsion.player.orplayer.e eVar2 : this.f41772g) {
            if (eVar2 != null) {
                eVar2.onPlayError(playError, eVar);
            }
        }
        com.transsion.audio.player.a aVar = this.f41768c;
        if (aVar != null) {
            aVar.e(playError);
        }
    }

    public final void I(gn.e eVar) {
        n(0);
        com.transsion.audio.view.d.k().q(0);
        for (com.transsion.player.orplayer.e eVar2 : this.f41772g) {
            if (eVar2 != null) {
                eVar2.onPlayerRelease(eVar);
            }
        }
        com.transsion.audio.player.a aVar = this.f41768c;
        if (aVar != null) {
            aVar.b();
        }
        this.f41768c = null;
    }

    public final void M(long j10, gn.e eVar) {
        com.transsion.audio.view.d.k().p(Long.valueOf(j10), Long.valueOf(this.f41766a));
        AudioBean audioBean = this.f41770e;
        if (audioBean != null) {
            audioBean.setReadProcess(Long.valueOf(j10));
        }
        if (System.currentTimeMillis() - this.f41769d > 1000) {
            for (com.transsion.player.orplayer.e eVar2 : this.f41772g) {
                if (eVar2 != null) {
                    eVar2.onProgress(j10, eVar);
                }
            }
            AudioBean audioBean2 = this.f41770e;
            if (audioBean2 != null) {
                HistoryListManager.f41836e.b().w(audioBean2);
            }
            this.f41769d = System.currentTimeMillis();
            String str = this.f41773h;
            AudioBean audioBean3 = this.f41770e;
            if (!TextUtils.equals(str, audioBean3 != null ? audioBean3.getAudioUrl() : null)) {
                AudioBean audioBean4 = this.f41770e;
                this.f41773h = audioBean4 != null ? audioBean4.getAudioUrl() : null;
            }
        }
        com.transsion.audio.player.a aVar = this.f41768c;
        if (aVar != null) {
            aVar.f(j10);
        }
    }

    private final void n(int i10) {
        AudioBean audioBean = this.f41770e;
        int status = audioBean != null ? audioBean.getStatus() : 1;
        switch (i10) {
            case 2:
            case 3:
                status = 3;
                break;
            case 4:
            case 5:
                status = 4;
                break;
            case 6:
                status = 6;
                break;
            case 7:
                status = 7;
                break;
        }
        AudioBean audioBean2 = this.f41770e;
        if (audioBean2 == null || audioBean2.getStatus() != 6 || status < 4) {
            AudioBean audioBean3 = this.f41770e;
            if (audioBean3 != null) {
                audioBean3.setStatus(status);
            }
            AudioBean audioBean4 = this.f41770e;
            if (audioBean4 != null) {
                HistoryListManager.f41836e.b().k(audioBean4);
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            AudioBean audioBean5 = this.f41770e;
            Integer numValueOf = audioBean5 != null ? Integer.valueOf(audioBean5.getStatus()) : null;
            AudioBean audioBean6 = this.f41770e;
            wf.a.C0922a.f(c0922a, "audio_log", "onStateChanged " + numValueOf + " ..title.. " + (audioBean6 != null ? audioBean6.getTitle() : null), false, 4, null);
        }
    }

    public final void o(gn.e eVar) {
        n(6);
        com.transsion.audio.view.d.k().q(6);
        for (com.transsion.player.orplayer.e eVar2 : this.f41772g) {
            if (eVar2 != null) {
                eVar2.onCompletion(eVar);
            }
        }
        com.transsion.audio.player.a aVar = this.f41768c;
        if (aVar != null) {
            aVar.b();
        }
        this.f41768c = null;
    }

    private final void w() {
        l lVar = new l(Utils.a());
        this.f41767b = lVar;
        lVar.setPlayerListener(new com.transsion.player.orplayer.e() {
            @Override
            public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
                com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
            }

            @Override
            public void initPlayer() {
                com.transsion.player.orplayer.e.a.b(this);
                wf.a.C0922a.f(wf.a.f74274a, "audio_log", "AudioPlayer --> initPlayer --> initPlayer ...", false, 4, null);
            }

            @Override
            public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
                com.transsion.player.orplayer.e.a.c(this, eVar);
            }

            @Override
            public void onBufferedPosition(long j10, gn.e eVar) {
                com.transsion.player.orplayer.e.a.d(this, j10, eVar);
            }

            @Override
            public void onCompletion(gn.e eVar) {
                com.transsion.player.orplayer.e.a.e(this, eVar);
                this.f41774a.o(eVar);
            }

            @Override
            public void onFocusChange(boolean z10) {
                com.transsion.player.orplayer.e.a.g(this, z10);
            }

            @Override
            public void onIsPlayingChanged(boolean z10) {
                this.f41774a.A(z10);
            }

            @Override
            public void onLoadingBegin(gn.e eVar) {
                com.transsion.player.orplayer.e.a.i(this, eVar);
                this.f41774a.B(eVar);
            }

            @Override
            public void onLoadingEnd(gn.e eVar) {
                com.transsion.player.orplayer.e.a.k(this, eVar);
                this.f41774a.C(eVar);
            }

            @Override
            public void onLoadingProgress(int i10, float f10, gn.e eVar) {
                com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
                this.f41774a.D(i10, f10, eVar);
            }

            @Override
            public void onLoopingStart() {
                com.transsion.player.orplayer.e.a.o(this);
            }

            @Override
            public void onMediaItemTransition(String str) {
                com.transsion.player.orplayer.e.a.p(this, str);
            }

            @Override
            public void onPlayError(PlayError errorInfo, gn.e eVar) {
                Intrinsics.h(errorInfo, "errorInfo");
                com.transsion.player.orplayer.e.a.q(this, errorInfo, eVar);
                this.f41774a.H(errorInfo, eVar);
            }

            @Override
            public void onPlayerRelease(gn.e eVar) {
                com.transsion.player.orplayer.e.a.t(this, eVar);
                this.f41774a.I(eVar);
            }

            @Override
            public void onPlayerReset() {
                com.transsion.player.orplayer.e.a.v(this);
            }

            @Override
            public void onPrepare(gn.e eVar) {
                com.transsion.player.orplayer.e.a.w(this, eVar);
                wf.a.C0922a.f(wf.a.f74274a, "audio_log", "AudioPlayer --> initPlayer -->onPrepare ...", false, 4, null);
                AudioPlayer audioPlayer = this.f41774a;
                com.transsion.player.orplayer.f fVarV = audioPlayer.v();
                audioPlayer.Q(fVarV != null ? fVarV.getDuration() : 1L);
                AudioBean audioBeanU = this.f41774a.u();
                if (audioBeanU != null) {
                    audioBeanU.setDuration(Long.valueOf(this.f41774a.s()));
                }
                AudioPlayer audioPlayer2 = this.f41774a;
                audioPlayer2.R(audioPlayer2.u());
                if (this.f41774a.t() == null) {
                    com.transsion.player.orplayer.f fVarV2 = this.f41774a.v();
                    if (fVarV2 != null) {
                        fVarV2.play();
                        return;
                    }
                    return;
                }
                kotlinx.coroutines.k.d(o0.a(y0.a()), null, null, new AudioPlayer$initPlayer$1$onPrepare$1(this.f41774a, null), 3, null);
                com.transsion.player.orplayer.f fVarV3 = this.f41774a.v();
                if (fVarV3 != null) {
                    fVarV3.play();
                }
            }

            @Override
            public void onProgress(long j10, gn.e eVar) {
                com.transsion.player.orplayer.e.a.y(this, j10, eVar);
                this.f41774a.M(j10, eVar);
            }

            @Override
            public void onRenderFirstFrame() {
                com.transsion.player.orplayer.e.a.A(this);
                a aVarR = this.f41774a.r();
                if (aVarR != null) {
                    aVarR.g();
                }
            }

            @Override
            public void onSetDataSource() {
                com.transsion.player.orplayer.e.a.B(this);
            }

            @Override
            public void onTracksAudioBitrateChange(int i10) {
                com.transsion.player.orplayer.e.a.C(this, i10);
            }

            @Override
            public void onTracksChange(qn.c cVar) {
                com.transsion.player.orplayer.e.a.D(this, cVar);
            }

            @Override
            public void onTracksVideoBitrateChange(int i10) {
                com.transsion.player.orplayer.e.a.E(this, i10);
            }

            @Override
            public void onVideoPause(gn.e eVar) {
                com.transsion.player.orplayer.e.a.F(this, eVar);
                this.f41774a.E(eVar);
                wf.a.C0922a.f(wf.a.f74274a, "player", "AudioPlayer --> initPlayer --> onStateChanged 4 ...", false, 4, null);
            }

            @Override
            public void onVideoSizeChanged(int i10, int i11) {
                com.transsion.player.orplayer.e.a.H(this, i10, i11);
                wf.a.C0922a.f(wf.a.f74274a, "audio_log", "AudioPlayer --> initPlayer --> onVideoSizeChanged ...", false, 4, null);
            }

            @Override
            public void onVideoStart(gn.e eVar) {
                com.transsion.player.orplayer.e.a.I(this, eVar);
                this.f41774a.F(eVar);
                wf.a.C0922a.f(wf.a.f74274a, "player", "onStateChanged 3 ...", false, 4, null);
            }

            @Override
            public void setOnSeekCompleteListener() {
                com.transsion.player.orplayer.e.a.K(this);
            }
        });
    }

    public static final AudioPlayer x() {
        return new AudioPlayer();
    }

    public final void G() {
        com.transsion.player.orplayer.f fVar = this.f41767b;
        if (fVar != null) {
            fVar.pause();
        }
    }

    public final boolean J() {
        com.transsion.player.orplayer.f fVar = this.f41767b;
        if (fVar != null) {
            return fVar.isPlaying();
        }
        return false;
    }

    public final void K() {
        com.transsion.player.orplayer.f fVar = this.f41767b;
        if (fVar != null) {
            fVar.prepare();
        }
    }

    public final void L(AudioBean audio) {
        Intrinsics.h(audio, "audio");
        if (this.f41767b == null) {
            w();
        }
        wf.a.C0922a.f(wf.a.f74274a, "audio_log", "AudioPlayer --> prepare --> " + audio, false, 4, null);
        this.f41771f = audio;
        com.transsion.audio.player.a aVar = this.f41768c;
        if (aVar != null) {
            if (aVar != null) {
                aVar.b();
            }
            this.f41768c = null;
        }
        this.f41768c = new com.transsion.audio.player.a(audio);
        String url = audio.getUrl();
        if (url != null) {
            com.transsion.player.orplayer.f fVar = this.f41767b;
            if (fVar != null) {
                fVar.stop();
            }
            com.transsion.player.orplayer.f fVar2 = this.f41767b;
            if (fVar2 != null) {
                fVar2.setDataSource(new gn.e(url, url, 0, null, null, 28, null));
            }
            com.transsion.player.orplayer.f fVar3 = this.f41767b;
            if (fVar3 != null) {
                fVar3.prepare();
            }
        }
        for (com.transsion.player.orplayer.e eVar : this.f41772g) {
            if (eVar != null) {
                eVar.onPrepare(new gn.e(audio.getAudioUrl(), audio.getAudioUrl(), 0, null, null, 28, null));
            }
        }
    }

    public final void N() {
        com.transsion.player.orplayer.f fVar = this.f41767b;
        if (fVar != null) {
            fVar.release();
        }
        this.f41767b = null;
        this.f41770e = null;
        com.transsion.audio.player.a aVar = this.f41768c;
        if (aVar != null) {
            aVar.b();
        }
        this.f41768c = null;
    }

    public final void O(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f41772g.remove(listener);
    }

    public final void P(long j10) {
        com.transsion.player.orplayer.f fVar = this.f41767b;
        if (fVar != null) {
            fVar.seekTo(j10);
        }
    }

    public final void Q(long j10) {
        this.f41766a = j10;
    }

    public final void R(AudioBean audioBean) {
        this.f41770e = audioBean;
    }

    public final void S() {
        com.transsion.player.orplayer.f fVar = this.f41767b;
        if (fVar != null) {
            fVar.play();
        }
    }

    public final void T() {
        com.transsion.player.orplayer.f fVar = this.f41767b;
        if (fVar != null) {
            fVar.stop();
        }
    }

    public final void m(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f41772g.add(listener);
    }

    public final boolean p() {
        return this.f41767b == null;
    }

    public final void q() {
        com.transsion.player.orplayer.f fVar = this.f41767b;
        if (fVar != null) {
            fVar.stop();
        }
        N();
    }

    public final com.transsion.audio.player.a r() {
        return this.f41768c;
    }

    public final long s() {
        return this.f41766a;
    }

    public final AudioBean t() {
        return this.f41770e;
    }

    public final AudioBean u() {
        return this.f41771f;
    }

    public final com.transsion.player.orplayer.f v() {
        return this.f41767b;
    }

    public final boolean y(AudioBean audio) {
        Intrinsics.h(audio, "audio");
        String audioUrl = audio.getAudioUrl();
        AudioBean audioBean = this.f41770e;
        return TextUtils.equals(audioUrl, audioBean != null ? audioBean.getAudioUrl() : null);
    }

    public final boolean z(String audioUrl) {
        Intrinsics.h(audioUrl, "audioUrl");
        AudioBean audioBean = this.f41770e;
        return TextUtils.equals(audioUrl, audioBean != null ? audioBean.getAudioUrl() : null);
    }
}
