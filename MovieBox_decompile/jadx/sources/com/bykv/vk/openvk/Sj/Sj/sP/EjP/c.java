package com.bykv.vk.openvk.Sj.Sj.sP.EjP;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

public class c extends com.bykv.vk.openvk.Sj.Sj.sP.EjP.a {

    private final MediaPlayer f19554i;

    private final a f19555j;

    private f6.a f19556k;

    private Surface f19557l;

    private final Object f19558m;

    private volatile boolean f19559n;

    private static class a implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {

        private final WeakReference f19560a;

        public a(c cVar) {
            this.f19560a = new WeakReference(cVar);
        }

        @Override
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
            try {
                c cVar = (c) this.f19560a.get();
                if (cVar != null) {
                    cVar.m(i10);
                }
            } catch (Throwable unused) {
            }
        }

        @Override
        public void onCompletion(MediaPlayer mediaPlayer) {
            try {
                c cVar = (c) this.f19560a.get();
                if (cVar != null) {
                    cVar.p();
                }
            } catch (Throwable unused) {
            }
        }

        @Override
        public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
            try {
                c cVar = (c) this.f19560a.get();
                return cVar != null && cVar.o(i10, i11);
            } catch (Throwable unused) {
                return false;
            }
        }

        @Override
        public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
            try {
                c cVar = (c) this.f19560a.get();
                return cVar != null && cVar.r(i10, i11);
            } catch (Throwable unused) {
                return false;
            }
        }

        @Override
        public void onPrepared(MediaPlayer mediaPlayer) {
            try {
                c cVar = (c) this.f19560a.get();
                if (cVar != null) {
                    cVar.q();
                }
            } catch (Throwable unused) {
            }
        }

        @Override
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            try {
                c cVar = (c) this.f19560a.get();
                if (cVar != null) {
                    cVar.k();
                }
            } catch (Throwable unused) {
            }
        }

        @Override
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
            try {
                c cVar = (c) this.f19560a.get();
                if (cVar != null) {
                    cVar.n(i10, i11, 1, 1);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public c() {
        MediaPlayer mediaPlayer;
        Object obj = new Object();
        this.f19558m = obj;
        synchronized (obj) {
            mediaPlayer = new MediaPlayer();
            this.f19554i = mediaPlayer;
        }
        s(mediaPlayer);
        try {
            mediaPlayer.setAudioStreamType(3);
        } catch (Throwable unused) {
        }
        this.f19555j = new a(this);
        v();
    }

    private void s(MediaPlayer mediaPlayer) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        try {
            Class<?> cls = Class.forName("android.media.MediaTimeProvider");
            Class<?> cls2 = Class.forName("android.media.SubtitleController");
            Class<?> cls3 = Class.forName("android.media.SubtitleController$Anchor");
            Object objNewInstance = cls2.getConstructor(Context.class, cls, Class.forName("android.media.SubtitleController$Listener")).newInstance(v5.b.c(), null, null);
            Field declaredField = cls2.getDeclaredField("mHandler");
            declaredField.setAccessible(true);
            try {
                declaredField.set(objNewInstance, new Handler());
                declaredField.setAccessible(false);
                mediaPlayer.getClass().getMethod("setSubtitleAnchor", cls2, cls3).invoke(mediaPlayer, objNewInstance, null);
            } catch (Throwable unused) {
                declaredField.setAccessible(false);
            }
        } catch (Throwable unused2) {
        }
    }

    private void t() {
        f6.a aVar = this.f19556k;
        if (aVar != null) {
            try {
                aVar.close();
            } catch (Throwable unused) {
            }
            this.f19556k = null;
        }
    }

    private void u() {
        try {
            Surface surface = this.f19557l;
            if (surface != null) {
                surface.release();
                this.f19557l = null;
            }
        } catch (Throwable unused) {
        }
    }

    private void v() {
        this.f19554i.setOnPreparedListener(this.f19555j);
        this.f19554i.setOnBufferingUpdateListener(this.f19555j);
        this.f19554i.setOnCompletionListener(this.f19555j);
        this.f19554i.setOnSeekCompleteListener(this.f19555j);
        this.f19554i.setOnVideoSizeChangedListener(this.f19555j);
        this.f19554i.setOnErrorListener(this.f19555j);
        this.f19554i.setOnInfoListener(this.f19555j);
    }

    @Override
    public void Dq() {
        MediaPlayer mediaPlayer = this.f19554i;
        if (mediaPlayer != null) {
            mediaPlayer.prepareAsync();
        }
    }

    @Override
    public void EjP(boolean z10) {
        MediaPlayer mediaPlayer = this.f19554i;
        if (mediaPlayer == null) {
            return;
        }
        if (z10) {
            mediaPlayer.setVolume(0.0f, 0.0f);
        } else {
            mediaPlayer.setVolume(1.0f, 1.0f);
        }
    }

    @Override
    public int Fmk() {
        MediaPlayer mediaPlayer = this.f19554i;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override
    public void HiB() {
        this.f19554i.start();
    }

    @Override
    public void Jcg() {
        this.f19554i.pause();
    }

    @Override
    public void Sj(SurfaceHolder surfaceHolder) {
        synchronized (this.f19558m) {
            try {
                if (!this.f19559n && surfaceHolder != null && surfaceHolder.getSurface() != null && this.f19553h) {
                    this.f19554i.setDisplay(surfaceHolder);
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override
    public long TEQ() {
        try {
            return this.f19554i.getDuration();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    @Override
    public void TKC(boolean z10) {
        this.f19554i.setLooping(z10);
    }

    @Override
    public void Ym() {
        synchronized (this.f19558m) {
            try {
                if (!this.f19559n) {
                    this.f19554i.release();
                    this.f19559n = true;
                    u();
                    t();
                    l();
                    v();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void aa() {
        try {
            this.f19554i.reset();
        } catch (Throwable unused) {
        }
        t();
        l();
        v();
    }

    @Override
    public void f(FileDescriptor fileDescriptor) throws IOException {
        this.f19554i.setDataSource(fileDescriptor);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        u();
    }

    @Override
    public void g(Surface surface) {
        u();
        this.f19557l = surface;
        this.f19554i.setSurface(surface);
    }

    @Override
    public void i(v5.c cVar) {
        this.f19554i.setPlaybackParams(this.f19554i.getPlaybackParams().setSpeed(cVar.a()));
    }

    @Override
    public void sP(boolean z10) {
        this.f19554i.setScreenOnWhilePlaying(z10);
    }

    @Override
    public int sef() {
        MediaPlayer mediaPlayer = this.f19554i;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override
    public long uA() {
        try {
            return this.f19554i.getCurrentPosition();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    @Override
    public void vS() {
        this.f19554i.stop();
    }

    @Override
    public void Sj(String str) throws IOException {
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        if (!TextUtils.isEmpty(scheme) && scheme.equalsIgnoreCase(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE)) {
            this.f19554i.setDataSource(uri.getPath());
        } else {
            this.f19554i.setDataSource(str);
        }
    }

    @Override
    public synchronized void Sj(TKC tkc) {
        this.f19556k = f6.a.f(v5.b.c(), tkc);
        g6.b.b(tkc);
        this.f19554i.setDataSource(this.f19556k);
    }

    @Override
    public void Sj(long j10, int i10) {
        if (Build.VERSION.SDK_INT < 26) {
            this.f19554i.seekTo((int) j10);
            return;
        }
        if (i10 == 0) {
            this.f19554i.seekTo((int) j10, 0);
            return;
        }
        if (i10 == 1) {
            this.f19554i.seekTo((int) j10, 1);
            return;
        }
        if (i10 == 2) {
            this.f19554i.seekTo((int) j10, 2);
        } else if (i10 == 3) {
            this.f19554i.seekTo((int) j10, 3);
        } else {
            this.f19554i.seekTo((int) j10);
        }
    }
}
