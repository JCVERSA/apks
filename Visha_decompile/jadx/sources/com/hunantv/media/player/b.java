package com.hunantv.media.player;

import android.annotation.TargetApi;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.hunantv.media.player.libnative.IMGTVMediaDataSource;
import com.hunantv.media.player.libnative.IMediaDataSource;
import com.hunantv.media.player.pragma.DebugLog;
import java.io.IOException;
import java.lang.ref.WeakReference;

public class b extends com.hunantv.media.player.a {
    private MediaPlayer a;
    private a b;
    private String c;
    private final Object d;
    private boolean e;
    private int f;

    public class a implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {
        public final WeakReference<b> a;

        public a(b bVar) {
            this.a = new WeakReference<>(bVar);
        }

        @Override
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
            if (this.a.get() == null) {
                return;
            }
            b.this.notifyOnBufferingUpdate(i);
            b.this.f = i;
        }

        @Override
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (this.a.get() == null) {
                return;
            }
            b.this.notifyOnCompletion(0, 0);
        }

        @Override
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            return this.a.get() != null && b.this.notifyOnError(i, i2);
        }

        @Override
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            return this.a.get() != null && b.this.notifyOnInfo(i, i2);
        }

        @Override
        public void onPrepared(MediaPlayer mediaPlayer) {
            if (this.a.get() == null) {
                return;
            }
            b.this.notifyOnPrepared();
        }

        @Override
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            if (this.a.get() == null) {
                return;
            }
            b.this.notifyOnSeekComplete(0, 0);
        }

        @Override
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            if (this.a.get() == null) {
                return;
            }
            b.this.notifyOnVideoSizeChanged(i, i2, 1, 1);
        }
    }

    public b() {
        this.d = new Object();
        a();
    }

    private void b() {
        this.a.setOnPreparedListener(this.b);
        this.a.setOnBufferingUpdateListener(this.b);
        this.a.setOnCompletionListener(this.b);
        this.a.setOnSeekCompleteListener(this.b);
        this.a.setOnVideoSizeChangedListener(this.b);
        this.a.setOnErrorListener(this.b);
        this.a.setOnInfoListener(this.b);
    }

    @Override
    public int getBufferedPercentage() {
        return this.f;
    }

    @Override
    public long getBufferedPositionMs() {
        return 0L;
    }

    @Override
    public int getBufferingPercent() {
        return 0;
    }

    @Override
    public long getCurrentPosition() {
        try {
            return this.a.getCurrentPosition();
        } catch (IllegalStateException e) {
            DebugLog.printStackTrace(e);
            return 0L;
        }
    }

    @Override
    public long getDuration() {
        try {
            return this.a.getDuration();
        } catch (IllegalStateException e) {
            DebugLog.printStackTrace(e);
            return 0L;
        }
    }

    @Override
    public float getPlaybackSpeed() {
        return 0.0f;
    }

    @Override
    public int getVideoHeight() {
        return this.a.getVideoHeight();
    }

    @Override
    public int getVideoSarDen() {
        return 1;
    }

    @Override
    public int getVideoSarNum() {
        return 1;
    }

    @Override
    public int getVideoWidth() {
        return this.a.getVideoWidth();
    }

    @Override
    public boolean isMediaCodecSWRender() {
        return false;
    }

    @Override
    public boolean isPlaying() {
        try {
            return this.a.isPlaying();
        } catch (IllegalStateException e) {
            DebugLog.printStackTrace(e);
            return false;
        }
    }

    @Override
    public int loopSwitchVideoSource(String str, int i, int i2, int i3) throws IllegalStateException, OutOfMemoryError {
        return 0;
    }

    @Override
    public void pause() throws IllegalStateException {
        this.a.pause();
        notifyOnInfo(MgtvMediaPlayer.MEDIA_INFO_PLAYBACK_STATE_CHANGED, d.t.MP_STATE_PAUSED.ordinal());
    }

    @Override
    public void prepareAsync() throws IllegalStateException {
        this.a.prepareAsync();
    }

    @Override
    public void release() {
        this.e = true;
        this.a.release();
        this.f = 0;
        resetListeners();
        b();
    }

    @Override
    public void reset() {
        this.a.reset();
        this.f = 0;
    }

    @Override
    public void seekTo(long j) throws IllegalStateException {
        this.a.seekTo((int) j);
    }

    @Override
    public void setAudioStreamType(int i) {
        this.a.setAudioStreamType(i);
    }

    @Override
    public void setDataSource(IMediaDataSource iMediaDataSource) {
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder) {
        synchronized (this.d) {
            try {
                if (!this.e) {
                    this.a.setDisplay(surfaceHolder);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void setPlaybackSpeed(float f) {
    }

    @Override
    public void setScreenOnWhilePlaying(boolean z) {
        this.a.setScreenOnWhilePlaying(z);
    }

    @Override
    @TargetApi(14)
    public void setSurface(Surface surface) {
        this.a.setSurface(surface);
    }

    @Override
    public void setVolume(float f, float f2) {
        this.a.setVolume(f, f2);
    }

    @Override
    public int smoothSwitchVideoSource(IMGTVMediaDataSource iMGTVMediaDataSource, String str, int i, int i2, int i3, int i4, String str2) throws IllegalStateException, OutOfMemoryError {
        return 0;
    }

    @Override
    public void start() throws IllegalStateException {
        this.a.start();
        notifyOnInfo(MgtvMediaPlayer.MEDIA_INFO_PLAYBACK_STATE_CHANGED, d.t.MP_STATE_STARTED.ordinal());
    }

    @Override
    public void stop() throws IllegalStateException {
        this.a.stop();
        this.f = 0;
    }

    @Override
    public void switchVideoSource(String str, int i, int i2, int i3) throws IllegalStateException, IOException, IllegalArgumentException {
    }

    public b(Bundle bundle) {
        super(bundle);
        this.d = new Object();
        a();
    }

    private void a() {
        MediaPlayer mediaPlayer;
        synchronized (this.d) {
            mediaPlayer = new MediaPlayer();
            this.a = mediaPlayer;
        }
        mediaPlayer.setAudioStreamType(3);
        this.b = new a(this);
        b();
    }

    @Override
    public void setDataSource(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.c = str;
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        if (TextUtils.isEmpty(scheme) || !scheme.equalsIgnoreCase("file")) {
            this.a.setDataSource(str);
        } else {
            this.a.setDataSource(uri.getPath());
        }
        this.f = 0;
    }

    @Override
    public void setDisplay(SurfaceHolder surfaceHolder, int i) {
        setDisplay(surfaceHolder);
    }

    @Override
    public void setSurface(Surface surface, int i) {
        setSurface(surface);
    }

    @Override
    public int smoothSwitchVideoSource(String str, int i, int i2, int i3, int i4, String str2) throws IllegalStateException, OutOfMemoryError {
        return 0;
    }
}
