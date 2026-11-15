package on;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.transsion.player.mediasession.MediaBrowserCompatHelper;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.Intrinsics;

public final class a implements com.transsion.player.orplayer.e {

    private long f67833b;

    private CopyOnWriteArrayList f67832a = new CopyOnWriteArrayList();

    private final int f67834c = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;

    private final String b() {
        String simpleName = a.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final String c(long j10) {
        SimpleDateFormat simpleDateFormat = j10 >= 3600000 ? new SimpleDateFormat("H:mm:ss") : new SimpleDateFormat("mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+0:00"));
        String str = simpleDateFormat.format(Long.valueOf(j10));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public final void a(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        if (this.f67832a.contains(listener)) {
            return;
        }
        this.f67832a.add(listener);
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dashVideoTracksGroup) {
        Intrinsics.h(dashVideoTracksGroup, "dashVideoTracksGroup");
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dashVideoTracksGroup);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).canNonSubscriberPlay(z10, i10, i11, dashVideoTracksGroup);
        }
    }

    public final void d(com.transsion.player.orplayer.e listener) {
        Intrinsics.h(listener, "listener");
        this.f67832a.remove(listener);
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).initPlayer();
        }
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.player.orplayer.e.a.c(this, eVar);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onAliyunDecodeErrorChangeSoftwareDecoder(eVar);
        }
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onBufferedPosition(j10, eVar);
        }
    }

    @Override
    public void onCompletion(gn.e eVar) {
        com.transsion.player.orplayer.e.a.e(this, eVar);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onCompletion(eVar);
        }
        com.transsion.player.mediasession.i.f46432a.a(b() + " --> onCompletion() --> 刷新通知栏");
        MediaBrowserCompatHelper.f46405h.a().r(eVar != null ? eVar.h() : null);
    }

    @Override
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.e.a.g(this, z10);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onFocusChange(z10);
        }
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.e.a.h(this, z10);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onIsPlayingChanged(z10);
        }
    }

    @Override
    public void onLoadingBegin(gn.e eVar) {
        com.transsion.player.orplayer.e.a.i(this, eVar);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onLoadingBegin(eVar);
        }
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        com.transsion.player.orplayer.e.a.k(this, eVar);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onLoadingEnd(eVar);
        }
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onLoadingProgress(i10, f10, eVar);
        }
    }

    @Override
    public void onLoopingStart() {
        com.transsion.player.orplayer.e.a.o(this);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onLoopingStart();
        }
    }

    @Override
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.e.a.p(this, str);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onMediaItemTransition(str);
        }
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.e.a.q(this, errorInfo, eVar);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onPlayError(errorInfo, eVar);
        }
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        com.transsion.player.orplayer.e.a.t(this, eVar);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onPlayerRelease(eVar);
        }
    }

    @Override
    public void onPlayerReset() {
        com.transsion.player.orplayer.e.a.v(this);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onPlayerReset();
        }
    }

    @Override
    public void onPrepare(gn.e eVar) {
        com.transsion.player.orplayer.e.a.w(this, eVar);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onPrepare(eVar);
        }
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        MediaItem mediaItemH;
        MediaItem mediaItemH2;
        com.transsion.player.orplayer.e.a.y(this, j10, eVar);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onProgress(j10, eVar);
        }
        if (System.currentTimeMillis() - this.f67833b > this.f67834c) {
            this.f67833b = System.currentTimeMillis();
            if (eVar != null && (mediaItemH2 = eVar.h()) != null) {
                com.transsion.player.orplayer.f fVarE = e0.f67859a.e();
                mediaItemH2.setDuration(fVarE != null ? Long.valueOf(fVarE.getDuration()) : null);
            }
            if (eVar != null && (mediaItemH = eVar.h()) != null) {
                mediaItemH.setPosition(Long.valueOf(j10));
            }
            MediaBrowserCompatHelper.f46405h.a().t(eVar != null ? eVar.h() : null);
        }
    }

    @Override
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.e.a.A(this);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onRenderFirstFrame();
        }
    }

    @Override
    public void onSetDataSource() {
        com.transsion.player.orplayer.e.a.B(this);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onSetDataSource();
        }
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.C(this, i10);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onTracksAudioBitrateChange(i10);
        }
    }

    @Override
    public void onTracksChange(qn.c tracks) {
        Intrinsics.h(tracks, "tracks");
        com.transsion.player.orplayer.e.a.D(this, tracks);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onTracksChange(tracks);
        }
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.E(this, i10);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onTracksVideoBitrateChange(i10);
        }
    }

    @Override
    public void onVideoPause(gn.e eVar) {
        MediaItem mediaItemH;
        MediaItem mediaItemH2;
        MediaItem mediaItemH3;
        MediaItem mediaItemH4;
        Long position;
        com.transsion.player.orplayer.e.a.F(this, eVar);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onVideoPause(eVar);
        }
        com.transsion.player.mediasession.i.f46432a.a(b() + " --> onVideoPause() --> 刷新通知栏 --> position = " + c((eVar == null || (mediaItemH4 = eVar.h()) == null || (position = mediaItemH4.getPosition()) == null) ? 0L : position.longValue()) + " --> position = " + ((eVar == null || (mediaItemH3 = eVar.h()) == null) ? null : mediaItemH3.getPosition()));
        if (eVar != null && (mediaItemH2 = eVar.h()) != null) {
            com.transsion.player.orplayer.f fVarE = e0.f67859a.e();
            mediaItemH2.setDuration(fVarE != null ? Long.valueOf(fVarE.getDuration()) : null);
        }
        if (eVar != null && (mediaItemH = eVar.h()) != null) {
            com.transsion.player.orplayer.f fVarE2 = e0.f67859a.e();
            mediaItemH.setPosition(fVarE2 != null ? Long.valueOf(fVarE2.getCurrentPosition()) : null);
        }
        MediaBrowserCompatHelper.f46405h.a().r(eVar != null ? eVar.h() : null);
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        com.transsion.player.orplayer.e.a.H(this, i10, i11);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onVideoSizeChanged(i10, i11);
        }
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        MediaItem mediaItemH;
        MediaItem mediaItemH2;
        MediaItem mediaItemH3;
        MediaItem mediaItemH4;
        Long position;
        com.transsion.player.orplayer.e.a.I(this, eVar);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).onVideoStart(eVar);
        }
        com.transsion.player.mediasession.i.f46432a.a(b() + " --> onVideoStart() --> 刷新通知栏 --> position = " + c((eVar == null || (mediaItemH4 = eVar.h()) == null || (position = mediaItemH4.getPosition()) == null) ? 0L : position.longValue()) + " --> position = " + ((eVar == null || (mediaItemH3 = eVar.h()) == null) ? null : mediaItemH3.getPosition()));
        if (eVar != null && (mediaItemH2 = eVar.h()) != null) {
            com.transsion.player.orplayer.f fVarE = e0.f67859a.e();
            mediaItemH2.setDuration(fVarE != null ? Long.valueOf(fVarE.getDuration()) : null);
        }
        if (eVar != null && (mediaItemH = eVar.h()) != null) {
            com.transsion.player.orplayer.f fVarE2 = e0.f67859a.e();
            mediaItemH.setPosition(fVarE2 != null ? Long.valueOf(fVarE2.getCurrentPosition()) : null);
        }
        MediaBrowserCompatHelper.f46405h.a().t(eVar != null ? eVar.h() : null);
    }

    @Override
    public void setOnSeekCompleteListener() {
        Long position;
        gn.e eVarCurrentMediaSource;
        com.transsion.player.orplayer.e.a.K(this);
        Iterator it = this.f67832a.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.e) it.next()).setOnSeekCompleteListener();
        }
        e0 e0Var = e0.f67859a;
        com.transsion.player.orplayer.f fVarE = e0Var.e();
        MediaItem mediaItemH = (fVarE == null || (eVarCurrentMediaSource = fVarE.currentMediaSource()) == null) ? null : eVarCurrentMediaSource.h();
        if (mediaItemH != null) {
            com.transsion.player.orplayer.f fVarE2 = e0Var.e();
            mediaItemH.setDuration(fVarE2 != null ? Long.valueOf(fVarE2.getDuration()) : null);
        }
        if (mediaItemH != null) {
            com.transsion.player.orplayer.f fVarE3 = e0Var.e();
            mediaItemH.setPosition(fVarE3 != null ? Long.valueOf(fVarE3.getCurrentPosition()) : null);
        }
        com.transsion.player.mediasession.i.f46432a.a(b() + " --> setOnSeekCompleteListener() --> 刷新通知栏 --> position = " + c((mediaItemH == null || (position = mediaItemH.getPosition()) == null) ? 0L : position.longValue()) + " --> position = " + (mediaItemH != null ? mediaItemH.getPosition() : null));
        MediaBrowserCompatHelper.f46405h.a().t(mediaItemH);
    }
}
