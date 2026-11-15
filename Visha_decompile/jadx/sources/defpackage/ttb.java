package defpackage;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.net.Uri;
import android.util.Log;
import android.view.SurfaceHolder;
import com.transsion.magicvideo.R;
import com.transsion.widgets.VideoPlayerSurfaceView;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

public class ttb implements jxb, MediaPlayer.OnErrorListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnInfoListener, MediaPlayer.OnVideoSizeChangedListener, MediaPlayer.OnSeekCompleteListener, VideoPlayerSurfaceView.SurfaceCallback {
    public static int r = ((-1000) - 100) - 6;
    public MediaPlayer d;
    public VideoPlayerSurfaceView e;
    public Context f;
    public Uri g;
    public SurfaceHolder h;
    public boolean i;
    public boolean j;
    public boolean k;
    public int l;
    public int m;
    public int n;
    public int o;
    public final CopyOnWriteArrayList p;
    public int b = 0;
    public int c = 0;
    public float q = 1.0f;

    public ttb(Context context, VideoPlayerSurfaceView videoPlayerSurfaceView) {
        this.f = context;
        this.e = videoPlayerSurfaceView;
        this.h = videoPlayerSurfaceView.getSurfaceHolder();
        k();
        this.p = new CopyOnWriteArrayList();
    }

    @Override
    public int a() {
        return this.b;
    }

    @Override
    public void b(boolean z) {
        Log.d("VideoMediaPlayerWrapper", "pausePlayer");
        if (j()) {
            r(c());
            this.d.pause();
            this.b = 4;
            o(4);
        }
        if (z) {
            this.c = 4;
        }
    }

    @Override
    public int c() {
        if (this.b != 6 || this.c != 6 || this.m <= 0) {
            return l() ? this.d.getCurrentPosition() : this.l;
        }
        Log.w("VideoMediaPlayerWrapper", "getVideoCurrentPosition mDuration:" + this.m);
        return this.m;
    }

    @Override
    public void d(jxb.a aVar) {
        this.p.addIfAbsent(aVar);
    }

    @Override
    public void e(boolean z) {
        this.k = true;
        q(z);
    }

    @Override
    public void f(long j) {
        if (l()) {
            this.d.seekTo((int) j);
        } else {
            r((int) j);
        }
    }

    @Override
    public void g(Uri uri) {
        this.m = -1;
        h(true);
        r(0);
        this.g = uri;
        this.q = 1.0f;
        this.k = false;
        q(true);
    }

    @Override
    public int getVideoDuration() {
        if (l()) {
            int i = this.m;
            if (i > 0) {
                return i;
            }
            this.m = this.d.getDuration();
        }
        return this.m;
    }

    @Override
    public void h(boolean z) {
        Log.d("VideoMediaPlayerWrapper", "releasePlayer " + z);
        if (this.d != null) {
            if (z) {
                this.c = 0;
            } else {
                r(c());
            }
            this.d.reset();
            this.d.release();
            this.d = null;
            this.b = 0;
            o(0);
        }
    }

    @Override
    public void i() {
        Log.d("VideoMediaPlayerWrapper", "startPlayer");
        if (this.c == 6) {
            f(0L);
        }
        if (l()) {
            this.d.start();
            s(this.q);
            o(3);
        }
        this.c = 3;
    }

    public final boolean j() {
        int i;
        MediaPlayer mediaPlayer = this.d;
        return mediaPlayer != null && ((i = this.b) == 6 || i == 3 || mediaPlayer.isPlaying());
    }

    public final void k() {
        VideoPlayerSurfaceView videoPlayerSurfaceView = this.e;
        if (videoPlayerSurfaceView != null) {
            videoPlayerSurfaceView.setSurfaceListener(this);
        }
    }

    public boolean l() {
        int i;
        return (this.d == null || (i = this.b) == -1 || i == 0 || i == 1) ? false : true;
    }

    public boolean m() {
        return l() && this.d.isPlaying();
    }

    public void n() {
        if (!this.i || this.g == null || this.h == null) {
            Log.d("VideoMediaPlayerWrapper", "openVideo, not ready for playback just yet, will try again later, mOnResumed = " + this.i + ", mUri = " + this.g + ", mSurfaceHolder = " + this.h);
            return;
        }
        try {
            this.d = new MediaPlayer();
            Log.d("VideoMediaPlayerWrapper", "openVideo " + this.d);
            this.d.setOnPreparedListener(this);
            this.d.setOnVideoSizeChangedListener(this);
            this.d.setOnCompletionListener(this);
            this.d.setOnErrorListener(this);
            this.d.setOnInfoListener(this);
            this.d.setOnBufferingUpdateListener(this);
            this.d.setOnSeekCompleteListener(this);
            this.d.setDataSource(this.f, this.g);
            this.d.setDisplay(this.h);
            this.d.setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(3).build());
            this.d.setScreenOnWhilePlaying(true);
            this.d.prepareAsync();
            p();
            this.b = 1;
            o(1);
        } catch (IOException e) {
            Log.e("VideoMediaPlayerWrapper", "unable to open content: " + this.g, e);
            onError(this.d, 1, 0);
        } catch (IllegalArgumentException e2) {
            Log.e("VideoMediaPlayerWrapper", "unable to open content: " + this.g, e2);
            onError(this.d, 1, 0);
        } catch (Exception e3) {
            Log.e("VideoMediaPlayerWrapper", "unable to open content: " + this.g, e3);
            onError(this.d, 1, 0);
        }
    }

    public final void o(int i) {
        this.b = i;
        Log.d("VideoMediaPlayerWrapper", "playStateChange: " + this.b + ",mVideoSourceSwitching:" + this.j);
        if (t(i)) {
            return;
        }
        for (jxb.a aVar : this.p) {
            if (aVar != null) {
                aVar.onMediaPlayerStateChange(i);
            }
        }
    }

    @Override
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
    }

    @Override
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.b = 6;
        this.c = 6;
        o(6);
        Log.d("VideoMediaPlayerWrapper", "onCompletion");
    }

    @Override
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        int i3;
        Log.e("VideoMediaPlayerWrapper", "onError(" + mediaPlayer + "), what = " + i + ", extra = " + i2);
        if (this.b == -1 || (i == 260 && i2 == r)) {
            Log.v("VideoMediaPlayerWrapper", "current state is error, skip error: " + i + ", " + i2);
            return true;
        }
        r(c());
        o(-1);
        this.b = -1;
        this.c = -1;
        VideoPlayerSurfaceView videoPlayerSurfaceView = this.e;
        if (videoPlayerSurfaceView == null || videoPlayerSurfaceView.getWindowToken() == null) {
            return true;
        }
        if (i == 260) {
            i3 = R.string.str_video_bad_file;
        } else if (i == 261) {
            i3 = R.string.str_video_cannot_connect_to_server;
        } else if (i == 262) {
            i3 = R.string.str_video_type_not_supported;
        } else if (i == 263) {
            i3 = R.string.str_video_drm_not_supported;
        } else if (i == 264) {
            i3 = R.string.str_video_invalid_connection;
        } else {
            i3 = i == 200 ? R.string.str_video_invalid_progressive_playback : R.string.cannot_play_video;
        }
        for (jxb.a aVar : this.p) {
            if (aVar != null) {
                aVar.onShowError(this.g, i3);
            }
        }
        return true;
    }

    @Override
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Log.i("VideoMediaPlayerWrapper", "onInfo what:" + i + ",extra:" + i2);
        for (jxb.a aVar : this.p) {
            if (aVar != null) {
                aVar.onInfo(i, i2);
            }
        }
        return false;
    }

    @Override
    public void onPrepared(MediaPlayer mediaPlayer) {
        SurfaceHolder surfaceHolder;
        Log.d("VideoMediaPlayerWrapper", "onPrepared mTargetState:" + this.c + StringUtils.COMMA + this.k);
        o(2);
        int i = this.l;
        if (i != 0) {
            f(i);
        }
        this.n = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.o = videoHeight;
        int i2 = this.n;
        if (i2 != 0 && videoHeight != 0 && (surfaceHolder = this.h) != null) {
            surfaceHolder.setFixedSize(i2, videoHeight);
        }
        if (this.c != 3 || this.k) {
            return;
        }
        if (!this.i) {
            Log.w("VideoMediaPlayerWrapper", "not Resumed so won't start");
            return;
        }
        this.d.start();
        s(this.q);
        this.c = 3;
        o(3);
    }

    @Override
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        Log.d("VideoMediaPlayerWrapper", "onSeekComplete ");
    }

    @Override
    public void onSurfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override
    public void onSurfaceCreated(SurfaceHolder surfaceHolder) {
        this.h = surfaceHolder;
        Log.d("VideoMediaPlayerWrapper", "onSurfaceCreated");
        n();
    }

    @Override
    public void onSurfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.h = null;
        Log.d("VideoMediaPlayerWrapper", "onSurfaceDestroyed");
        h(false);
    }

    @Override
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        for (jxb.a aVar : this.p) {
            if (aVar != null) {
                aVar.onVideoSizeChanged(i, i2);
            }
        }
    }

    public void p() {
        if (this.d != null) {
            this.d.setLooping(w6c.h(this.f) == 2);
        }
    }

    public void q(boolean z) {
        Log.d("VideoMediaPlayerWrapper", "resumeOrPause(" + z + ") mUri=" + this.g + ", mOnResumed=" + this.i);
        this.i = z;
        if (!z) {
            b(false);
            return;
        }
        if (this.d != null) {
            h(false);
        }
        n();
    }

    public void r(int i) {
        this.l = i;
        Log.d("VideoMediaPlayerWrapper", "setLastPosition, mLastPosition = " + this.l);
    }

    public void s(float f) {
        MediaPlayer mediaPlayer = this.d;
        if (mediaPlayer == null) {
            return;
        }
        try {
            PlaybackParams playbackParams = mediaPlayer.getPlaybackParams();
            playbackParams.setSpeed(f);
            this.q = f;
            if (this.d.isPlaying()) {
                this.d.setPlaybackParams(playbackParams);
            }
        } catch (Exception e) {
            Log.e("VideoMediaPlayerWrapper", "setPlayerSpeed " + e);
        }
    }

    public final boolean t(int i) {
        if (this.j && i != 1 && i != 0 && i != 2) {
            this.j = false;
        }
        return this.j;
    }
}
