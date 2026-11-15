package com.hunantv.media.player;

import android.os.Bundle;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.hunantv.media.drm.utils.MgtvDrmUtils;
import com.hunantv.media.player.libnative.IMGTVMediaDataSource;
import com.hunantv.media.player.libnative.IMediaDataSource;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

public interface d {

    public interface a {
        boolean a(d dVar, int i, int i2);
    }

    public interface b {
        void a(d dVar, int i);
    }

    public interface c {
        void a(d dVar, int i, int i2);
    }

    public interface InterfaceC0135d {
        void a(Map<UUID, MgtvDrmUtils.PSSH> map);

        void a(byte[] bArr);
    }

    public interface e {
        boolean a(d dVar, int i, int i2);
    }

    public interface f {
        void a(d dVar, int i, int i2);

        void a(d dVar, int i, int i2, String str);
    }

    public interface g {
        boolean a(d dVar, int i, int i2);
    }

    public interface h {
        boolean a(d dVar, int i, String str);
    }

    public interface i {
        void a(d dVar, String str, int i, int i2);

        void b(d dVar, String str, int i, int i2);

        void c(d dVar, String str, int i, int i2);
    }

    public interface j {
        void a(d dVar, int i, Bundle bundle);
    }

    public interface k {
        void a(d dVar);
    }

    public interface l {
        void a(d dVar, int i, int i2);

        void b(d dVar, int i, int i2);
    }

    public interface m {
        void a(d dVar, int i, int i2);
    }

    public interface n {
        void onSmoothSwitchSourceComplete(d dVar, int i, int i2, String str);

        void onSmoothSwitchSourceFailed(d dVar, int i, int i2, String str);

        void onSmoothSwitchSourceInfo(d dVar, int i, int i2, String str);
    }

    public interface o {
        void a(d dVar, int i, Bundle bundle);
    }

    public interface p {
        boolean a(d dVar, int i, Bundle bundle);

        void b(d dVar, int i, Bundle bundle);
    }

    public interface q {
        void a(d dVar, int i, Bundle bundle);
    }

    public interface r {
        void a(d dVar, String str, int i, int i2);

        void b(d dVar, String str, int i, int i2);

        void c(d dVar, String str, int i, int i2);
    }

    public interface s {
        void a(d dVar, int i, int i2, int i3, int i4);
    }

    public enum t {
        MP_STATE_IDLE,
        MP_STATE_INITIALIZED,
        MP_STATE_ASYNC_PREPARING,
        MP_STATE_PREPARED,
        MP_STATE_STARTED,
        MP_STATE_PAUSED,
        MP_STATE_COMPLETED,
        MP_STATE_STOPPED,
        MP_STATE_ERROR,
        MP_STATE_END
    }

    int getBufferedPercentage();

    long getBufferedPositionMs();

    int getBufferingPercent();

    long getCurrentPosition();

    long getDuration();

    String getLogTag();

    float getPlaybackSpeed();

    int getVideoHeight();

    int getVideoSarDen();

    int getVideoSarNum();

    int getVideoWidth();

    boolean isMediaCodecSWRender();

    boolean isPlaying();

    int loopSwitchVideoSource(String str, int i2, int i3, int i4) throws IllegalStateException, OutOfMemoryError;

    void pause() throws IllegalStateException;

    void prepareAsync() throws IllegalStateException;

    void release();

    void reset();

    void seekTo(long j2) throws IllegalStateException;

    void setAudioStreamType(int i2);

    void setDataSource(IMediaDataSource iMediaDataSource);

    void setDataSource(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException;

    void setDisplay(SurfaceHolder surfaceHolder);

    void setDisplay(SurfaceHolder surfaceHolder, int i2);

    void setOnBufferingTimeoutListener(a aVar);

    void setOnBufferingUpdateListener(b bVar);

    void setOnCompletionListener(c cVar);

    void setOnDrmListener(InterfaceC0135d interfaceC0135d);

    void setOnErrorListener(e eVar);

    void setOnGetFrameImageListener(f fVar);

    void setOnInfoListener(g gVar);

    void setOnInfoStringListener(h hVar);

    void setOnLoopSwitchSourceListener(i iVar);

    void setOnPlayerEventListener(j jVar);

    void setOnPreparedListener(k kVar);

    void setOnRecordVideoListener(l lVar);

    void setOnSeekCompleteListener(m mVar);

    void setOnSmoothSwitchSourceListener(n nVar);

    void setOnSourceFlowHandledListener(o oVar);

    void setOnSourceNetHandledListener(p pVar);

    void setOnStreamInfoListener(q qVar);

    void setOnSwitchSourceListener(r rVar);

    void setOnVideoSizeChangedListener(s sVar);

    void setPlaybackSpeed(float f2);

    void setScreenOnWhilePlaying(boolean z);

    void setSurface(Surface surface);

    void setSurface(Surface surface, int i2);

    void setVolume(float f2, float f3);

    int smoothSwitchVideoSource(IMGTVMediaDataSource iMGTVMediaDataSource, String str, int i2, int i3, int i4, int i5, String str2) throws IllegalStateException, OutOfMemoryError;

    int smoothSwitchVideoSource(String str, int i2, int i3, int i4, int i5, String str2) throws IllegalStateException, OutOfMemoryError;

    void start() throws IllegalStateException;

    void stop() throws IllegalStateException;

    void switchVideoSource(String str, int i2, int i3, int i4) throws IllegalStateException, IOException, IllegalArgumentException;
}
