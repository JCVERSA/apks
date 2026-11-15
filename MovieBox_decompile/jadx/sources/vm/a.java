package vm;

import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.e;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a implements e {

    public static final C0912a f73664c = new C0912a(null);

    private wm.a f73665a;

    private int f73666b;

    public static final class C0912a {
        public C0912a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0912a() {
        }
    }

    public final int a() {
        return this.f73666b;
    }

    public final void b(wm.a aVar) {
        this.f73665a = aVar;
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        e.a.a(this, z10, i10, i11, dVar);
    }

    @Override
    public void initPlayer() {
        e.a.b(this);
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        e.a.c(this, eVar);
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        e.a.d(this, j10, eVar);
    }

    @Override
    public void onCompletion(gn.e eVar) {
        e.a.e(this, eVar);
        wf.a.C0922a.f(wf.a.f74274a, "GifPlayerListener", "onCompletion", false, 4, null);
        wm.a aVar = this.f73665a;
        if (aVar != null) {
            aVar.q();
        }
    }

    @Override
    public void onFocusChange(boolean z10) {
        e.a.g(this, z10);
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        e.a.h(this, z10);
    }

    @Override
    public void onLoadingBegin(gn.e eVar) {
        e.a.i(this, eVar);
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        e.a.k(this, eVar);
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        e.a.m(this, i10, f10, eVar);
        wf.a.C0922a.f(wf.a.f74274a, "GifPlayerListener", "percent=" + i10, false, 4, null);
    }

    @Override
    public void onLoopingStart() {
        e.a.o(this);
    }

    @Override
    public void onMediaItemTransition(String str) {
        e.a.p(this, str);
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        e.a.q(this, errorInfo, eVar);
        wf.a.C0922a.f(wf.a.f74274a, "GifPlayerListener", "errorInfo code=" + errorInfo.getErrorCode() + " message=" + errorInfo.getErrorMessage(), false, 4, null);
        Integer errorCode = errorInfo.getErrorCode();
        this.f73666b = errorCode != null ? errorCode.intValue() : 0;
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        e.a.t(this, eVar);
    }

    @Override
    public void onPlayerReset() {
        e.a.v(this);
    }

    @Override
    public void onPrepare(gn.e eVar) {
        e.a.w(this, eVar);
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        e.a.y(this, j10, eVar);
    }

    @Override
    public void onRenderFirstFrame() {
        wf.a.C0922a.f(wf.a.f74274a, "GifPlayerListener", "onRenderFirstFrame", false, 4, null);
        wm.a aVar = this.f73665a;
        if (aVar != null) {
            aVar.p();
        }
        this.f73666b = 0;
    }

    @Override
    public void onSetDataSource() {
        e.a.B(this);
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        e.a.C(this, i10);
    }

    @Override
    public void onTracksChange(qn.c cVar) {
        e.a.D(this, cVar);
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        e.a.E(this, i10);
    }

    @Override
    public void onVideoPause(gn.e eVar) {
        e.a.F(this, eVar);
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        e.a.I(this, eVar);
        wf.a.C0922a.f(wf.a.f74274a, "GifPlayerListener", "onVideoStart", false, 4, null);
    }

    @Override
    public void setOnSeekCompleteListener() {
        e.a.K(this);
    }
}
