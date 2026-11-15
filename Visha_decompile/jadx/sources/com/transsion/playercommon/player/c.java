package com.transsion.playercommon.player;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.media.audiofx.Visualizer;
import android.net.Uri;
import android.util.Log;
import android.view.SurfaceHolder;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.playercommon.R;
import defpackage.fn;
import defpackage.h27;
import defpackage.jb8;
import defpackage.jrb;
import defpackage.lc3;
import defpackage.m88;
import defpackage.mw2;
import defpackage.p06;
import defpackage.p16;
import defpackage.pp3;
import defpackage.pw2;
import defpackage.ry5;
import defpackage.se;
import defpackage.w6c;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;

public class c implements b, Visualizer.OnDataCaptureListener {
    public boolean A;
    public boolean B;
    public boolean F;
    public MediaPlayer b;
    public b.a d;
    public Context e;
    public int f;
    public boolean g;
    public boolean h;
    public SurfaceHolder i;
    public int j;
    public int k;
    public int m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean r;
    public boolean t;
    public boolean u;
    public boolean v;
    public String x;
    public String y;
    public int z;
    public int c = 0;
    public int l = 0;
    public long q = -1;
    public boolean s = true;
    public boolean w = true;
    public jb8 C = new jb8();
    public final Runnable D = new Runnable() {
        @Override
        public final void run() {
            this.b.f0();
        }
    };
    public final Runnable E = new Runnable() {
        @Override
        public final void run() {
            this.b.g0();
        }
    };

    public c(Context context, boolean z) {
        this.n = z;
        this.e = context;
    }

    private void Z(boolean z, int i) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (z || !this.h) {
            long j = this.q;
            if (j != -1) {
                long j2 = jCurrentTimeMillis - j;
                if (j2 > 1000) {
                    if (!this.A) {
                        p06.x0(j2, this.n, this.r, this.x, getDuration() / 1000, i);
                    }
                    if (!this.n || this.A) {
                        p06.w0(ry5.a, this.A, this.B);
                    }
                }
            }
        }
        this.q = System.currentTimeMillis();
    }

    public void f0() {
        lc3.g(this.b.getAudioSessionId());
    }

    public void g0() {
        if (this.d != null) {
            Log.d("MusicMediaPlayer", "playerStateUpdateRunnable state:" + this.c + this.x);
            this.d.onPlayerStateUpdate(this.c);
        }
    }

    private void p0(int i) {
        this.k = i;
        Log.d("MusicMediaPlayer", "setLastPosition, mLastPosition = " + this.k);
    }

    private boolean r0(int i) {
        if (this.g && i != 1 && i != 0 && i != 2) {
            this.g = false;
        }
        return this.g;
    }

    private void s0(int i, boolean z) {
        if (this.c != i) {
            Log.d("MusicMediaPlayer", "updatePlayerState state:" + i + this.x);
            if (i == 2) {
                h27.c().e(this.n ? 1066 : 1065, new Object[0]);
            }
            this.c = i;
            if (r0(i)) {
                return;
            }
            boolean z2 = i == 3;
            se.b().removeCallbacks(this.E);
            se.b().postDelayed(this.E, z ? 200L : 0L);
            if (this.h != z2) {
                this.h = z2;
                if (z2) {
                    c0();
                }
                Z(false, this.c);
            }
        }
    }

    private void t0(int i) {
        if (this.l != i) {
            this.l = i;
        }
    }

    @Override
    public void D(int i) {
        this.z = i;
    }

    @Override
    public boolean E() {
        return this.b != null;
    }

    @Override
    public boolean F() {
        return false;
    }

    @Override
    public void H(boolean z, int i) {
        if (z) {
            M(0);
        } else {
            M(i);
        }
    }

    @Override
    public int I() {
        return this.l;
    }

    @Override
    public float J() {
        return 0.0f;
    }

    @Override
    public void M(int i) {
        MediaPlayer mediaPlayer = this.b;
        if (mediaPlayer != null) {
            if (i > 0) {
                mediaPlayer.setVolume(1.0f, 1.0f);
            } else {
                mediaPlayer.setVolume(0.0f, 0.0f);
            }
        }
    }

    @Override
    public void N(boolean z) {
        this.s = z;
    }

    @Override
    public void O(SurfaceHolder surfaceHolder, boolean z) {
        Log.e("MusicMediaPlayer", "setDisplay surfaceHolder:" + surfaceHolder + ", isAdd:" + z);
        if (this.b == null) {
            if (!z) {
                surfaceHolder = null;
            }
            this.i = surfaceHolder;
            Log.w("MusicMediaPlayer", "setDisplay player not init");
            return;
        }
        try {
            int currentPosition = getCurrentPosition();
            if (z) {
                this.i = surfaceHolder;
                this.b.setDisplay(surfaceHolder);
            } else if (surfaceHolder == this.i) {
                this.b.setDisplay(null);
                this.i = null;
            }
            boolean z2 = this.c != 6;
            if (!isPlaying()) {
                o0(currentPosition, this.c == 6 ? 2 : 3);
            }
            a0(this.i, z2);
        } catch (IllegalStateException e) {
            Log.e("MusicMediaPlayer", "setDisplay " + e);
        }
    }

    @Override
    public int P() {
        int i = this.m;
        return i == 0 ? R.string.cannot_play_video : i;
    }

    @Override
    public void Q(boolean z) {
    }

    @Override
    public void R(jb8 jb8Var) {
        if (jb8Var == null) {
            Log.e("MusicMediaPlayer", "startToPlay error no player parameters");
            return;
        }
        Log.d("MusicMediaPlayer", "startToPlay " + jb8Var);
        this.C = jb8Var;
        this.w = jb8Var.f;
        this.j = (int) jb8Var.c;
        n0(jb8Var.a, jb8Var.b, jb8Var.d);
    }

    @Override
    public int a() {
        return this.c;
    }

    public void a0(SurfaceHolder surfaceHolder, boolean z) {
        if (surfaceHolder == null || !surfaceHolder.isCreating()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (surfaceHolder.isCreating() && Math.abs(System.currentTimeMillis() - jCurrentTimeMillis) < 200) {
            try {
                Thread.sleep(5);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public MediaPlayer b0() {
        if (this.b == null) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.b = mediaPlayer;
            mediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
                @Override
                public final void onCompletion(MediaPlayer mediaPlayer2) {
                    this.b.j0(mediaPlayer2);
                }
            });
            this.b.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
                @Override
                public final void onPrepared(MediaPlayer mediaPlayer2) {
                    this.b.k0(mediaPlayer2);
                }
            });
            this.b.setOnErrorListener(new MediaPlayer.OnErrorListener() {
                @Override
                public final boolean onError(MediaPlayer mediaPlayer2, int i, int i2) {
                    return this.b.h0(mediaPlayer2, i, i2);
                }
            });
            this.b.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() {
                @Override
                public final void onSeekComplete(MediaPlayer mediaPlayer2) {
                    this.b.l0(mediaPlayer2);
                }
            });
            this.b.setOnInfoListener(new MediaPlayer.OnInfoListener() {
                @Override
                public final boolean onInfo(MediaPlayer mediaPlayer2, int i, int i2) {
                    return this.b.i0(mediaPlayer2, i, i2);
                }
            });
            this.b.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() {
                @Override
                public final void onVideoSizeChanged(MediaPlayer mediaPlayer2, int i, int i2) {
                    this.b.m0(mediaPlayer2, i, i2);
                }
            });
            this.b.setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(3).build());
            this.b.setScreenOnWhilePlaying(true);
            g();
        }
        return this.b;
    }

    @Override
    public void c(boolean z) {
        try {
            this.b.setLooping(z);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void c0() {
        if (this.p) {
            return;
        }
        this.p = true;
        if (!this.n) {
            d0();
        } else if (pp3.u) {
            pw2.c(this.e);
        } else {
            jrb.f(this.b.getAudioSessionId());
        }
    }

    @Override
    public void d(boolean z) {
        Log.d("MusicMediaPlayer", "start " + z);
        if (this.b == null) {
            Log.w("MusicMediaPlayer", "start player not init");
            return;
        }
        if (e0()) {
            a.a().d(this.n);
            this.b.start();
            if (this.n) {
                if (!this.A) {
                    p16.b(this, this.x);
                }
                l(this.w ? w6c.i(this.e) : 1.0f);
            } else {
                l(this.w ? w6c.b(this.e) : 1.0f);
            }
            s0(3, false);
            b.a aVar = this.d;
            if (aVar != null) {
                aVar.d(3, 0);
            }
        }
        if (z) {
            t0(3);
        }
        mw2.h();
    }

    public final synchronized void d0() {
        ThreadUtils.l().execute(this.D);
    }

    public boolean e0() {
        int i;
        return (this.b == null || (i = this.c) == -1 || i == 0 || i == 1) ? false : true;
    }

    @Override
    public void g() {
        if (this.b != null && !this.t) {
            int iH = this.n ? w6c.h(this.e) : w6c.d(this.e, "audio_play_repeat_mode", 1);
            this.b.setLooping(false);
            this.F = iH == 2;
        }
        if (this.v) {
            this.F = true;
            this.b.setLooping(false);
        }
    }

    @Override
    public int getCurrentPosition() {
        int i;
        if (this.c == 6 && this.l == 6 && (i = this.j) > 0) {
            return i;
        }
        return e0() ? this.b.getCurrentPosition() : this.k;
    }

    @Override
    public int getDuration() {
        if (e0() && !this.t) {
            int i = this.j;
            if (i > 0) {
                return i;
            }
            this.j = this.b.getDuration();
        }
        return this.j;
    }

    @Override
    public void h(boolean z) {
        Log.d("MusicMediaPlayer", "setMusicMode " + z);
        this.A = z;
    }

    public final boolean h0(MediaPlayer mediaPlayer, int i, int i2) {
        int i3;
        Log.e("MusicMediaPlayer", "onError(" + mediaPlayer + "), what = " + i + ", extra = " + i2);
        if (this.c == -1 || (i == 260 && i2 == m88.a)) {
            Log.v("MusicMediaPlayer", "current state is error, skip error: " + i + ", " + i2);
        } else {
            if (i == 804 || i == 805) {
                u(true);
            }
            t0(-1);
            s0(-1, true);
            p0(getCurrentPosition());
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
            } else if (i == 200) {
                i3 = R.string.str_video_invalid_progressive_playback;
            } else {
                i3 = this.n ? R.string.cannot_play_video : R.string.cannot_play_music;
            }
            this.m = i3;
            b.a aVar = this.d;
            if (aVar != null) {
                aVar.onShowError(i, i3);
            }
        }
        return true;
    }

    @Override
    public void i(boolean z) {
        this.u = z;
        if (!z) {
            if (isPlaying()) {
                pause(false);
            }
        } else if (this.l == 3) {
            seekTo(getCurrentPosition());
            d(true);
        }
    }

    public boolean i0(MediaPlayer mediaPlayer, int i, int i2) {
        Log.i("MusicMediaPlayer", "onInfo what:" + i + ",extra:" + i2);
        b.a aVar = this.d;
        if (aVar != null) {
            if (i == 804 || i == 805) {
                h0(mediaPlayer, i, i2);
            } else {
                aVar.onInfo(i, i2);
                if (i == 701) {
                    this.d.onLoadingOnlineVideo(true, this.o);
                } else if (i == 702) {
                    this.d.onLoadingOnlineVideo(false, this.o);
                    this.o = false;
                }
            }
        }
        return false;
    }

    @Override
    public boolean isPlaying() {
        return e0() && this.b.isPlaying();
    }

    public final void j0(MediaPlayer mediaPlayer) {
        if (this.F) {
            h27.c().e(this.n ? 1066 : 1065, new Object[0]);
            b.a aVar = this.d;
            if (aVar != null) {
                aVar.d(3, mediaPlayer.getDuration());
            }
        }
        s0(6, true);
        t0(6);
    }

    public final void k0(MediaPlayer mediaPlayer) {
        String str;
        s0(2, true);
        if (this.t) {
            if (this.u && this.s) {
                d(true);
                return;
            }
            return;
        }
        if (this.v) {
            pause(true);
        } else if (this.s && this.C.g) {
            d(true);
        }
        String str2 = this.y;
        if (str2 == null || (str = this.x) == null) {
            return;
        }
        if (str2.equals(str) || this.n) {
            Log.d("MusicMediaPlayer", "onPlayerPrepared: mLastPlayUrl = " + this.y + ", mPlayUrl = " + this.x);
            seekTo(this.f);
        }
    }

    @Override
    public void l(float f) {
        MediaPlayer mediaPlayer = this.b;
        if (mediaPlayer == null) {
            return;
        }
        try {
            PlaybackParams playbackParams = mediaPlayer.getPlaybackParams();
            if (playbackParams.getSpeed() == f || !isPlaying()) {
                return;
            }
            playbackParams.setSpeed(f);
            this.b.setPlaybackParams(playbackParams);
        } catch (Exception e) {
            Log.e("MusicMediaPlayer", "setPlayerSpeed " + e);
        }
    }

    public final void l0(MediaPlayer mediaPlayer) {
    }

    public final void m0(MediaPlayer mediaPlayer, int i, int i2) {
        Log.v("MusicMediaPlayer", "onVideoSizeChanged, width = " + i + ", height = " + i2);
        b.a aVar = this.d;
        if (aVar != null) {
            aVar.onVideoSizeChanged(i, i2);
        }
    }

    public void n0(Uri uri, long j, boolean z) {
        SurfaceHolder surfaceHolder;
        this.y = this.x;
        this.x = uri.toString();
        int i = (int) j;
        this.f = i;
        lc3.j();
        this.p = false;
        s0(0, true);
        b0().reset();
        if (this.w && this.n) {
            w6c.B(this.e, 1.0f);
        }
        this.g = true;
        this.o = true;
        b.a aVar = this.d;
        if (aVar != null && z) {
            aVar.onLoadingOnlineVideo(true, true);
        }
        this.t = z;
        p0(i);
        try {
            if (z) {
                this.b.setDataSource(fn.b(uri.toString()));
            } else {
                this.b.setDataSource(this.e, uri);
            }
            this.b.prepareAsync();
            if (this.n && (surfaceHolder = this.i) != null) {
                O(surfaceHolder, true);
            }
            g();
            s0(1, true);
        } catch (IOException e) {
            Log.e("MusicMediaPlayer", "unable to open content: " + uri, e);
            h0(this.b, 1, 0);
        } catch (Exception e2) {
            Log.e("MusicMediaPlayer", "unable to open content: " + uri, e2);
            h0(this.b, 1, 0);
        }
    }

    public void o0(int i, int i2) {
        Log.d("MusicMediaPlayer", "seekToMode " + i + StringUtils.COMMA + i2);
        if (!e0()) {
            p0(i);
        } else {
            if (this.j < 0) {
                return;
            }
            this.b.seekTo(i, i2);
        }
    }

    @Override
    public void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i) {
    }

    @Override
    public void onWaveFormDataCapture(Visualizer visualizer, byte[] bArr, int i) {
    }

    @Override
    public void pause(boolean z) {
        Log.d("MusicMediaPlayer", "pause " + z);
        if (this.b == null) {
            Log.w("MusicMediaPlayer", "pause player not init");
            return;
        }
        if (isPlaying()) {
            this.b.pause();
            if (this.n && !this.A) {
                p16.d(this, this.x);
            }
        }
        s0(4, false);
        if (z) {
            t0(4);
        }
        mw2.a();
    }

    @Override
    public void q(boolean z) {
    }

    @Override
    public c n(b.a aVar) {
        this.d = aVar;
        if (aVar != null) {
            aVar.onPlayerStateUpdate(this.c);
        }
        return this;
    }

    @Override
    public void reset() {
        MediaPlayer mediaPlayer = this.b;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
        }
        s0(0, true);
        t0(0);
    }

    @Override
    public void seekTo(int i) {
        o0(i, 2);
        b.a aVar = this.d;
        if (aVar != null) {
            aVar.d(6, 0);
        }
    }

    @Override
    public void setVolume(float f, float f2) {
        MediaPlayer mediaPlayer = this.b;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f, f2);
        }
    }

    @Override
    public void t(boolean z, boolean z2) {
        if (!z2) {
            pause(z);
            return;
        }
        if (getDuration() == getCurrentPosition() || this.c == 6) {
            seekTo(0);
        } else if (!this.n) {
            seekTo(getCurrentPosition());
        }
        d(z);
    }

    @Override
    public void u(boolean z) {
        MediaPlayer mediaPlayer = this.b;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            this.b = null;
        }
        s0(0, true);
        if (z) {
            t0(0);
        }
        lc3.j();
        mw2.a();
    }

    @Override
    public String w() {
        return null;
    }

    @Override
    public void z(boolean z, int i) {
        Z(true, i);
        this.r = z;
    }

    public c(Context context, boolean z, boolean z2) {
        this.n = z;
        this.e = context;
        this.v = z2;
    }
}
