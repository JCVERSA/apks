package defpackage;

import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.media.AudioAttributes;
import android.media.audiofx.Visualizer;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import androidx.datastore.preferences.protobuf.DescriptorProtos;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.dbdata.database.AudioTrack;
import com.transsion.playercommon.R;
import com.transsion.playercommon.player.a;
import com.transsion.playercommon.player.b;
import com.transsion.tranplayer.IMediaPlayer;
import com.transsion.tranplayer.ITimedText;
import com.transsion.tranplayer.MediaPlayer;
import com.transsion.tranplayer.TranMediaPlayer;
import com.transsion.utils.ToastUtils;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Predicate;

public class ifc implements b, Visualizer.OnDataCaptureListener, IMediaPlayer.OnTimedTextListener, IMediaPlayer.OnSubTitleTypeListener {
    public static int V = 100002;
    public static int W = 100011;
    public static int X = 100012;
    public static int Y = 100004;
    public static int Z = 100001;
    public static int a0 = 2000001;
    public Uri A;
    public float B;
    public ArrayList C;
    public ArrayList D;
    public String E;
    public WeakReference F;
    public boolean G;
    public boolean H;
    public String I;
    public String J;
    public int K;
    public final Map L;
    public jb8 M;
    public ArrayList N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public int R;
    public final Runnable S;
    public final Runnable T;
    public boolean U;
    public TranMediaPlayer b;
    public int c;
    public b.a d;
    public Context e;
    public int f;
    public boolean g;
    public boolean h;
    public SurfaceHolder i;
    public int j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public boolean o;
    public boolean p;
    public long q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public boolean z;

    public ifc(Context context, boolean z) {
        this(context, z, false);
    }

    public static boolean n0(MediaPlayer.TrackDescription trackDescription, SubtitleTrackInfo subtitleTrackInfo) {
        return subtitleTrackInfo.sub_inner_id == trackDescription.id;
    }

    public static boolean o0(int i, AudioTrack audioTrack) {
        return i == audioTrack.audioId;
    }

    @Override
    public List A() {
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer == null) {
            Log.e("VishaTranPlayer", "getAudioTracks return");
            return null;
        }
        MediaPlayer.TrackDescription[] audioTracks = tranMediaPlayer.getAudioTracks();
        if (audioTracks == null || audioTracks.length == 0) {
            Log.e("VishaTranPlayer", "getAudioTracks null " + audioTracks);
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (MediaPlayer.TrackDescription trackDescription : audioTracks) {
            AudioTrack audioTrack = new AudioTrack();
            audioTrack.audioId = trackDescription.id;
            audioTrack.name = trackDescription.name;
            arrayList.add(audioTrack);
        }
        this.N.clear();
        this.N.addAll(arrayList);
        return arrayList;
    }

    @Override
    public ifc n(b.a aVar) {
        this.d = aVar;
        if (aVar != null) {
            aVar.onPlayerStateUpdate(this.c);
        }
        return this;
    }

    @Override
    public int B() {
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            return tranMediaPlayer.getAudioTrack();
        }
        Log.e("VishaTranPlayer", "getAudioTrack play not init");
        return -1;
    }

    public final boolean B0(int i) {
        if (this.g && i != 1 && i != 0 && i != 2) {
            this.g = false;
        }
        return this.g;
    }

    public final void C0(int i, boolean z) {
        if (this.c != i) {
            Log.d("VishaTranPlayer", "updatePlayerState state:" + i + ",delay: " + z + ", " + this.A);
            if (i == 2) {
                h27.c().e(this.n ? 1066 : 1065, new Object[0]);
            }
            this.c = i;
            if (B0(i)) {
                return;
            }
            boolean z2 = i == 3;
            se.b().removeCallbacks(this.S);
            if (z) {
                se.b().postDelayed(this.S, z ? 200L : 0L);
            } else if (this.d != null) {
                Log.d("VishaTranPlayer", "playerStateUpdateRunnable state:" + this.c + this.A);
                this.d.onPlayerStateUpdate(this.c);
            }
            if (this.h != z2) {
                this.h = z2;
                F0();
                c0(false, this.c);
            }
        }
    }

    public final void D0(int i) {
        Log.d("VishaTranPlayer", "updatePlayerTargetState " + i);
        if (this.l != i) {
            this.l = i;
        }
    }

    @Override
    public boolean E() {
        return this.b != null;
    }

    public final void E0(String str, int i) {
        this.I = str;
        this.K = i;
    }

    @Override
    public boolean F() {
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            return tranMediaPlayer.getIsVideoMediaCodec();
        }
        return false;
    }

    public final void F0() {
        SurfaceHolder surfaceHolder = this.i;
        if (surfaceHolder != null) {
            surfaceHolder.setKeepScreenOn(this.c == 3);
        }
    }

    @Override
    public boolean G(SurfaceView surfaceView) {
        WeakReference weakReference = this.F;
        return (weakReference == null || weakReference.get() == null || !((SurfaceView) this.F.get()).equals(surfaceView)) ? false : true;
    }

    @Override
    public void H(boolean z, int i) {
        this.P = z;
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
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            return tranMediaPlayer.getVideoFPS();
        }
        return 0.0f;
    }

    @Override
    public void K(boolean z) {
        this.x = z;
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer == null) {
            Log.w("VishaTranPlayer", "start player not init");
            return;
        }
        try {
            tranMediaPlayer.setPictureInPictureMode(z);
        } catch (IllegalStateException e) {
            Log.e("VishaTranPlayer", "setPictureInPictureMode " + e);
        }
    }

    @Override
    public void L(SurfaceView surfaceView, boolean z) {
        Log.e("VishaTranPlayer", "setSubtitleDisplay isAdd： " + z + "::surfaceView " + surfaceView);
        if (!z) {
            Log.w("VishaTranPlayer", "setSubtitleDisplay remove view");
            WeakReference weakReference = this.F;
            if (weakReference != null) {
                weakReference.clear();
            }
            TranMediaPlayer tranMediaPlayer = this.b;
            if (tranMediaPlayer != null) {
                tranMediaPlayer.setTimedTextView((SurfaceView) null);
                return;
            }
            return;
        }
        this.F = new WeakReference(surfaceView);
        TranMediaPlayer tranMediaPlayer2 = this.b;
        if (tranMediaPlayer2 == null) {
            Log.w("VishaTranPlayer", "setSubtitleDisplay player not init");
            return;
        }
        try {
            tranMediaPlayer2.setTimedTextView(i0());
        } catch (IllegalStateException e) {
            Log.e("VishaTranPlayer", "setSubtitleDisplay " + e);
        }
    }

    @Override
    public void M(int i) {
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            float f = i / 100.0f;
            tranMediaPlayer.setVolume(f, f);
        }
    }

    @Override
    public void N(boolean z) {
        this.s = z;
    }

    @Override
    public void O(SurfaceHolder surfaceHolder, boolean z) {
        Log.e("VishaTranPlayer", "setDisplay surfaceHolder:" + surfaceHolder + ", isAdd:" + z + StringUtils.COMMA + this.G);
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer == null) {
            if (!z) {
                surfaceHolder = null;
            }
            this.i = surfaceHolder;
            Log.w("VishaTranPlayer", "setDisplay player not init");
            return;
        }
        if (surfaceHolder == null && !z) {
            this.i = null;
            try {
                tranMediaPlayer.setDisplay(null);
                return;
            } catch (Exception e) {
                Log.e("VishaTranPlayer", "setDisplay player error", e);
                return;
            }
        }
        if (z) {
            try {
                WeakReference weakReference = this.F;
                if (weakReference != null) {
                    L((SurfaceView) weakReference.get(), true);
                }
            } catch (IllegalStateException e2) {
                Log.e("VishaTranPlayer", "setDisplay " + e2);
                return;
            }
        }
        if (z) {
            this.i = surfaceHolder;
            this.b.setDisplay(surfaceHolder);
            if (this.y) {
                se.b().removeCallbacks(this.T);
                se.b().postDelayed(this.T, 150L);
            } else {
                b0();
            }
        } else if (surfaceHolder == this.i) {
            this.b.setDisplay(null);
            this.i = null;
        }
        F0();
    }

    @Override
    public int P() {
        int i = this.m;
        return i == 0 ? R.string.cannot_play_video : i;
    }

    @Override
    public void Q(boolean z) {
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            tranMediaPlayer.setMute(z);
        }
    }

    @Override
    public void R(jb8 jb8Var) {
        if (jb8Var == null) {
            Log.e("VishaTranPlayer", "startToPlay error no player parameters");
            return;
        }
        this.M = jb8Var;
        this.z = jb8Var.f;
        this.j = (int) jb8Var.c;
        Log.d("VishaTranPlayer", "startToPlay " + jb8Var);
        this.Q = false;
        x0(jb8Var.a, jb8Var.b, jb8Var.d);
    }

    @Override
    public int a() {
        return this.c;
    }

    @Override
    public int b() {
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            return tranMediaPlayer.getAudioSessionId();
        }
        return 0;
    }

    public final void b0() {
        KeyguardManager keyguardManager = (KeyguardManager) se.a().getSystemService("keyguard");
        se.b().removeCallbacks(this.T);
        if (keyguardManager.isKeyguardLocked()) {
            Log.i("VishaTranPlayer", "autoResumeCheckKeyguardState isKeyguardLocked delay");
            se.b().postDelayed(this.T, 150L);
        } else {
            Log.i("VishaTranPlayer", "autoResumeCheckKeyguardState");
            i(true);
        }
    }

    @Override
    public void c(boolean z) {
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer == null) {
            Log.e("VishaTranPlayer", "changeLoopForMediaPlayer return");
        } else {
            tranMediaPlayer.setLooping(z);
        }
    }

    public final void c0(boolean z, int i) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (z || !this.h) {
            long j = this.q;
            if (j != -1) {
                long j2 = jCurrentTimeMillis - j;
                if (j2 > 1000) {
                    if (!this.G) {
                        boolean z2 = this.n;
                        boolean z3 = this.r;
                        Uri uri = this.A;
                        p06.x0(j2, z2, z3, uri != null ? uri.toString() : "", getDuration() / 1000, i);
                    }
                    if (!this.n || this.G) {
                        p06.w0(ry5.a, this.G, this.H);
                    }
                }
            }
        }
        this.q = System.currentTimeMillis();
    }

    @Override
    public void d(boolean z) {
        Log.d("VishaTranPlayer", "start " + z);
        if (this.b == null) {
            Log.w("VishaTranPlayer", "start player not init");
            return;
        }
        try {
            if (m0() || f0()) {
                a.a().d(this.n);
                h27.c().e(1138, new Object[0]);
                this.b.start();
                b.a aVar = this.d;
                if (aVar != null) {
                    aVar.d(3, 0);
                }
                if (!this.n) {
                    l(this.z ? w6c.b(this.e) : 1.0f);
                } else if (!this.G && !this.p) {
                    Uri uri = this.A;
                    p16.b(this, uri != null ? uri.toString() : "");
                }
                C0(3, false);
            }
        } catch (Exception e) {
            Log.w("VishaTranPlayer", "start player " + e);
        }
        if (z) {
            D0(3);
        }
        pw2.e();
    }

    public final void d0() {
        SurfaceHolder holder;
        Canvas canvasLockCanvas;
        if (j0() == -1) {
            Log.e("VishaTranPlayer", "clearLastItemSubtitleSurface return");
            return;
        }
        try {
            WeakReference weakReference = this.F;
            if (weakReference == null || weakReference.get() == null || (canvasLockCanvas = (holder = ((SurfaceView) this.F.get()).getHolder()).lockCanvas()) == null) {
                return;
            }
            canvasLockCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
            holder.unlockCanvasAndPost(canvasLockCanvas);
        } catch (Exception e) {
            Log.e("VishaTranPlayer", "clearLastItemSubtitleSurface " + e);
        }
    }

    @Override
    public void e(int i) {
        if (this.c < 2) {
            y0(false);
            E0("", i);
            Log.w("VishaTranPlayer", "setSubtitleTrack player not PREPARED");
            return;
        }
        if (this.G) {
            E0("", i);
            Log.w("VishaTranPlayer", "setSubtitleTrack in music mode");
            return;
        }
        if (i != -1 && i == j0()) {
            Log.w("VishaTranPlayer", "setSubtitleTrack current track is same :" + i);
            return;
        }
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            try {
                tranMediaPlayer.setSpuTrack(i);
            } catch (Exception e) {
                Log.e("VishaTranPlayer", "setSubtitleTrack :" + e);
            }
        }
        y0(false);
        E0("", i);
    }

    public final String e0(String str) {
        return !TextUtils.isEmpty(str) ? str.replaceFirst("Track", "").trim() : str;
    }

    @Override
    public boolean f(boolean z) {
        if (this.A == null) {
            return false;
        }
        if (z) {
            this.f = 0;
        } else {
            this.f = this.k;
        }
        R(this.M);
        return true;
    }

    public final boolean f0() {
        return this.c == 0 && this.l == 3;
    }

    @Override
    public void g() {
        if (this.b != null && !this.t) {
            int iH = this.n ? w6c.h(this.e) : w6c.d(this.e, "audio_play_repeat_mode", 1);
            this.b.setLooping(false);
            this.U = iH == 2;
        }
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer == null || !this.v) {
            return;
        }
        this.U = true;
        tranMediaPlayer.setLooping(false);
    }

    public IMediaPlayer g0() {
        if (this.b == null) {
            TranMediaPlayer tranMediaPlayer = new TranMediaPlayer(this.e);
            this.b = tranMediaPlayer;
            tranMediaPlayer.setOnCompletionListener(new IMediaPlayer.OnCompletionListener() {
                @Override
                public final void onCompletion(IMediaPlayer iMediaPlayer) {
                    this.a.t0(iMediaPlayer);
                }
            });
            this.b.setOnPreparedListener(new IMediaPlayer.OnPreparedListener() {
                @Override
                public final void onPrepared(IMediaPlayer iMediaPlayer) {
                    this.a.u0(iMediaPlayer);
                }
            });
            this.b.setOnErrorListener(new IMediaPlayer.OnErrorListener() {
                @Override
                public final boolean onError(IMediaPlayer iMediaPlayer, int i, int i2) {
                    return this.a.r0(iMediaPlayer, i, i2);
                }
            });
            this.b.setOnSeekCompleteListener(new IMediaPlayer.OnSeekCompleteListener() {
                @Override
                public final void onSeekComplete(IMediaPlayer iMediaPlayer) {
                    this.a.v0(iMediaPlayer);
                }
            });
            this.b.setOnInfoListener(new IMediaPlayer.OnInfoListener() {
                @Override
                public final boolean onInfo(IMediaPlayer iMediaPlayer, int i, int i2) {
                    return this.a.s0(iMediaPlayer, i, i2);
                }
            });
            this.b.setOnTimedTextListener(new IMediaPlayer.OnTimedTextListener() {
                @Override
                public final void onTimedText(IMediaPlayer iMediaPlayer, ITimedText iTimedText) {
                    this.b.onTimedText(iMediaPlayer, iTimedText);
                }
            });
            this.b.setOnSubTitleTypeListener(new IMediaPlayer.OnSubTitleTypeListener() {
                @Override
                public final void onSubTitleType(IMediaPlayer iMediaPlayer, int i, int i2) {
                    this.b.onSubTitleType(iMediaPlayer, i, i2);
                }
            });
            this.b.setOnVideoSizeChangedListener(new IMediaPlayer.OnVideoSizeChangedListener() {
                @Override
                public final void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i, int i2, int i3, int i4) {
                    this.a.w0(iMediaPlayer, i, i2, i3, i4);
                }
            });
            this.b.setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(3).build());
            this.b.setScreenOnWhilePlaying(true);
            if (!this.n) {
                lc3.g(this.b.getAudioSessionId());
            } else if (pp3.u) {
                pw2.c(this.e);
            } else {
                jrb.f(this.b.getAudioSessionId());
            }
            g();
        }
        return this.b;
    }

    @Override
    public int getCurrentPosition() {
        int i;
        if (this.c == 6 && (i = this.j) > 0) {
            return i;
        }
        if (!m0()) {
            return this.k;
        }
        int currentPosition = (int) this.b.getCurrentPosition();
        if (this.O) {
            return this.k;
        }
        this.k = currentPosition;
        return currentPosition;
    }

    @Override
    public int getDuration() {
        if (m0()) {
            int i = this.j;
            if (i > 0) {
                return i;
            }
            this.j = (int) this.b.getDuration();
        }
        return this.j;
    }

    @Override
    public void h(boolean z) {
        Log.e("VishaTranPlayer", "setMusicMode " + z);
        this.G = z;
        if (!z) {
            k0();
        }
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            tranMediaPlayer.setListenVideoMode(z);
        }
    }

    public final void h0() {
        if (this.n && this.b != null) {
            this.C.clear();
            MediaPlayer.TrackDescription[] spuTracks = this.b.getSpuTracks();
            if (spuTracks == null || spuTracks.length == 0) {
                Log.e("VishaTranPlayer", "getSpuTracks no");
                return;
            }
            for (final MediaPlayer.TrackDescription trackDescription : spuTracks) {
                SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
                int i = trackDescription.id;
                subtitleTrackInfo.sub_inner_id = i;
                if (i == -1) {
                    subtitleTrackInfo.name = this.e.getResources().getString(R.string.subtitle_unselected);
                } else {
                    subtitleTrackInfo.name = e0(trackDescription.name);
                }
                int i2 = 1;
                subtitleTrackInfo.isInnerSubtitle = true;
                Optional optionalFindFirst = this.D.stream().filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return ifc.n0(trackDescription, (SubtitleTrackInfo) obj);
                    }
                }).findFirst();
                try {
                    if (optionalFindFirst.get() != null) {
                        i2 = ((SubtitleTrackInfo) optionalFindFirst.get()).sub_format;
                    }
                    subtitleTrackInfo.sub_format = i2;
                } catch (Exception unused) {
                }
                Log.e("VishaTranPlayer", "getSpuTracks " + subtitleTrackInfo);
                this.C.add(subtitleTrackInfo);
            }
        }
    }

    @Override
    public void i(boolean z) {
        this.u = z;
        if (!z) {
            se.b().removeCallbacks(this.T);
            if (isPlaying()) {
                if (this.c == 3) {
                    D0(3);
                }
                pause(false);
                return;
            }
            return;
        }
        boolean z2 = this.n;
        if ((!z2 && this.l == 3) || (z2 && this.l == 3 && (this.G || this.i != null))) {
            D0(0);
            d(true);
            return;
        }
        Log.w("VishaTranPlayer", "autoPauseOrResume " + this.l + ", " + this.i + " mIsMusicModeForVideo:" + this.G + " mIsPlayVideo:" + this.n);
    }

    public final SurfaceView i0() {
        WeakReference weakReference = this.F;
        if (weakReference == null) {
            return null;
        }
        return (SurfaceView) weakReference.get();
    }

    @Override
    public boolean isPlaying() {
        return m0() && this.b.isPlaying();
    }

    @Override
    public int j() {
        return this.R;
    }

    public int j0() {
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer == null) {
            Log.e("VishaTranPlayer", "getSubtitleTrack play not init");
            return -1;
        }
        int spuTrack = tranMediaPlayer.getSpuTrack();
        if (spuTrack == 0) {
            return -1;
        }
        return spuTrack;
    }

    @Override
    public Object k(int i, Object obj) {
        if (i != 3 || !(obj instanceof SurfaceView)) {
            return null;
        }
        this.F = new WeakReference((SurfaceView) obj);
        return null;
    }

    public final void k0() {
        if (TextUtils.isEmpty(this.I)) {
            e(this.K);
        } else {
            y(this.I, true);
        }
    }

    @Override
    public void l(float f) {
        this.B = f;
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer == null) {
            Log.e("VishaTranPlayer", "setPlayerSpeed return");
            return;
        }
        try {
            float speed = tranMediaPlayer.getSpeed();
            Log.e("VishaTranPlayer", "setPlayerSpeed currentSpeed:" + speed + ",speed:" + f);
            if (speed != f) {
                this.b.setSpeed(f);
            }
        } catch (Exception e) {
            Log.e("VishaTranPlayer", "setPlayerSpeed " + e);
        }
    }

    public final boolean l0() {
        return this.n && this.G && this.R == 0;
    }

    @Override
    public void m(long j) {
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer == null) {
            Log.e("VishaTranPlayer", "setSubtitleDelay error");
        } else {
            tranMediaPlayer.setTimedTextDelay(j * 1000);
        }
    }

    public boolean m0() {
        int i;
        return (this.b == null || (i = this.c) == -1 || i == 0 || i == 1) ? false : true;
    }

    @Override
    public void o(boolean z) {
        this.p = z;
    }

    @Override
    public void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i) {
    }

    @Override
    public void onSubTitleType(IMediaPlayer iMediaPlayer, int i, int i2) {
        Log.e("VishaTranPlayer", "onSubTitleType subtype:" + i2 + ", subid:" + i);
        SubtitleTrackInfo subtitleTrackInfo = new SubtitleTrackInfo();
        subtitleTrackInfo.sub_inner_id = i;
        subtitleTrackInfo.sub_format = i2;
        this.D.add(subtitleTrackInfo);
    }

    @Override
    public void onTimedText(IMediaPlayer iMediaPlayer, ITimedText iTimedText) {
        if (!this.w) {
            Log.i("VishaTranPlayer", "onTimedText subtitleLoad not Finished");
            return;
        }
        String text = iTimedText != null ? iTimedText.getText() : "";
        if (text.equals(this.E)) {
            return;
        }
        Log.i("VishaTranPlayer", "onTimedText newText:" + text);
        this.E = text;
        b.a aVar = this.d;
        if (aVar != null) {
            aVar.onSubtitleText(text);
        }
    }

    @Override
    public void onWaveFormDataCapture(Visualizer visualizer, byte[] bArr, int i) {
    }

    @Override
    public void p(boolean z) {
        this.y = z;
    }

    public final void p0() {
        if (this.d != null) {
            Log.d("VishaTranPlayer", "playerStateUpdateRunnable state:" + this.c + this.A);
            this.d.onPlayerStateUpdate(this.c);
        }
    }

    @Override
    public void pause(boolean z) {
        Log.d("VishaTranPlayer", "pause " + z);
        if (this.b == null) {
            Log.w("VishaTranPlayer", "pause player not init");
            return;
        }
        if (this.n && !this.G && !this.p) {
            Uri uri = this.A;
            p16.d(this, uri != null ? uri.toString() : "");
        }
        this.Q = true;
        if (this.h) {
            this.b.pause();
        }
        if (m0()) {
            C0(4, false);
        }
        if (z) {
            D0(4);
        }
        pw2.a();
    }

    @Override
    public void q(boolean z) {
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            tranMediaPlayer.setOnPause(z);
        }
    }

    public final void q0() {
        if (this.d != null) {
            Log.d("VishaTranPlayer", "autoPauseOrResumeRunnable");
            b0();
        }
    }

    @Override
    public ArrayList r() {
        return this.C;
    }

    public final boolean r0(IMediaPlayer iMediaPlayer, int i, int i2) {
        int i3;
        Log.e("VishaTranPlayer", "onError(" + iMediaPlayer + "), what = " + i + ", extra = " + i2);
        if (this.c == -1 || (i == 260 && i2 == m88.a)) {
            Log.v("VishaTranPlayer", "current state is error, skip error: " + i + ", " + i2);
        } else {
            if (i == 100009 || i == 100010) {
                this.b.stop();
                this.b.release();
            }
            z0(getCurrentPosition());
            D0(-1);
            C0(-1, true);
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
            } else if (i == 99999) {
                i3 = R.string.visha_resolution_high_forbidden_play;
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
    public void reset() {
        Log.d("VishaTranPlayer", "reset");
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            tranMediaPlayer.reset();
        }
        this.L.clear();
        C0(0, true);
        D0(0);
    }

    @Override
    public AudioTrack s() {
        if (this.b == null) {
            Log.e("VishaTranPlayer", "getTheAudioTrack play not init");
            return null;
        }
        try {
            if (this.N.isEmpty()) {
                A();
            }
            final int iB = B();
            return (AudioTrack) this.N.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ifc.o0(iB, (AudioTrack) obj);
                }
            }).findFirst().get();
        } catch (Exception e) {
            Log.e("VishaTranPlayer", "getTheAudioTrack " + e);
            return null;
        }
    }

    public boolean s0(IMediaPlayer iMediaPlayer, int i, int i2) {
        Log.i("VishaTranPlayer", "onInfo what:" + i + ",extra:" + i2);
        if (i == 100004) {
            this.w = true;
        }
        b.a aVar = this.d;
        if (aVar != null) {
            if (i == 100009 || i == 100010) {
                r0(iMediaPlayer, i, i2);
            } else if (i == 100002) {
                aVar.onInfo(V, i2);
            } else if (i == 100012) {
                aVar.onInfo(X, i2);
            } else if (i == 100004) {
                aVar.onInfo(Y, i2);
            } else if (i == 100001) {
                aVar.onInfo(Z, i2);
                if (this.o && this.t) {
                    this.d.onLoadingOnlineVideo(false, true);
                    this.o = false;
                }
            } else if (i == 100013) {
                this.R = i2;
                if (l0()) {
                    ToastUtils.s(R.string.video_has_no_audio);
                }
            } else {
                aVar.onInfo(i, i2);
                if (i == 701 && this.t) {
                    this.d.onLoadingOnlineVideo(true, this.o);
                } else if (i == 702 && this.t) {
                    this.d.onLoadingOnlineVideo(false, this.o);
                    this.o = false;
                }
            }
        }
        return false;
    }

    @Override
    public void seekTo(int i) {
        Log.d("VishaTranPlayer", "seekTo " + i);
        if (!m0()) {
            z0(i);
        } else {
            if (this.j < 0) {
                return;
            }
            this.O = true;
            z0(i);
            this.b.seekTo(i, true, true);
        }
        b.a aVar = this.d;
        if (aVar != null) {
            aVar.d(6, 0);
        }
    }

    @Override
    public void setVolume(float f, float f2) {
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            tranMediaPlayer.setVolume(f, f2);
        }
    }

    @Override
    public void t(boolean z, boolean z2) {
        int i = z2 ? 3 : 4;
        if (z) {
            D0(i);
        }
        if (!z2) {
            pause(z);
        } else {
            if (l0()) {
                return;
            }
            d(z);
        }
    }

    public final void t0(IMediaPlayer iMediaPlayer) {
        if (!this.U) {
            C0(6, true);
            D0(6);
            return;
        }
        h27.c().e(this.n ? 1066 : 1065, new Object[0]);
        try {
            C0(6, true);
        } catch (Exception e) {
            Log.w("VishaTranPlayer", "completion start " + e);
        }
        b.a aVar = this.d;
        if (aVar != null) {
            aVar.d(3, (int) iMediaPlayer.getDuration());
        }
    }

    @Override
    public void u(boolean z) {
        Log.d("VishaTranPlayer", "release " + z);
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            tranMediaPlayer.release();
            this.b = null;
        }
        this.L.clear();
        this.N.clear();
        C0(0, true);
        if (z) {
            D0(0);
        }
        y0(true);
        lc3.j();
        pw2.a();
        this.O = false;
    }

    public final void u0(IMediaPlayer iMediaPlayer) {
        b.a aVar;
        if (this.f != 0) {
            this.O = true;
        }
        C0(2, true);
        if (Math.abs(iMediaPlayer.getDuration() - ((long) this.j)) > 1000) {
            this.j = (int) iMediaPlayer.getDuration();
        }
        Log.e("VishaTranPlayer", "onPlayerPrepared");
        if (this.n && (aVar = this.d) != null) {
            aVar.e();
            this.d.onInfo(a0, 0);
        }
        k0();
        h0();
        int i = this.f;
        if (i != 0) {
            seekTo(i);
        }
        if (this.v) {
            pause(true);
            return;
        }
        if (!this.s || this.Q) {
            return;
        }
        if ((this.n || this.M.g) && !l0()) {
            d(true);
        }
    }

    public final void v0(IMediaPlayer iMediaPlayer) {
        this.O = false;
    }

    @Override
    public String w() {
        TranMediaPlayer tranMediaPlayer = this.b;
        return tranMediaPlayer != null ? tranMediaPlayer.getVideoCodecName() : "";
    }

    public final void w0(IMediaPlayer iMediaPlayer, int i, int i2, int i3, int i4) {
        Log.v("VishaTranPlayer", "onVideoSizeChanged, width = " + i + ", height = " + i2);
        b.a aVar = this.d;
        if (aVar != null) {
            aVar.onVideoSizeChanged(i, i2);
        }
    }

    @Override
    public boolean x(int i) {
        TranMediaPlayer tranMediaPlayer = this.b;
        if (tranMediaPlayer != null) {
            return tranMediaPlayer.setAudioTrack(i);
        }
        Log.e("VishaTranPlayer", "setAudioTrack play not init");
        return false;
    }

    public void x0(Uri uri, long j, boolean z) {
        this.A = uri;
        int i = (int) j;
        this.f = i;
        se.b().removeCallbacks(this.T);
        d0();
        u(false);
        g0();
        jb8 jb8Var = this.M;
        if (jb8Var != null && jb8Var.h) {
            r0(this.b, DescriptorProtos.Edition.EDITION_99999_TEST_ONLY_VALUE, 0);
            return;
        }
        if (this.z && this.n) {
            this.B = 1.0f;
            w6c.B(this.e, 1.0f);
        }
        this.g = true;
        this.o = true;
        b.a aVar = this.d;
        if (aVar != null && z) {
            aVar.onLoadingOnlineVideo(true, true);
        }
        this.t = z;
        z0(i);
        try {
            this.L.clear();
            if (this.G || (!this.n && !this.p)) {
                this.L.put("listen-video", "1");
            }
            if (this.P) {
                this.L.put("audio-setmute", "1");
            }
            this.b.setPictureInPictureMode(this.x);
            this.R = -1;
            if (z) {
                this.b.setDataSource(uri.toString(), this.L);
            } else {
                this.L.putAll(i44.d().c());
                this.b.setDataSource(this.e, uri, this.L);
            }
            this.D.clear();
            SurfaceHolder surfaceHolder = this.i;
            if (surfaceHolder != null && (this.n || this.p)) {
                O(surfaceHolder, true);
            }
            this.b.prepareAsync();
            g();
            if (this.c == -1) {
                C0(1, false);
            } else {
                C0(1, true);
            }
        } catch (IOException e) {
            Log.e("VishaTranPlayer", "unable to open content: " + uri, e);
            r0(this.b, 1, 0);
        } catch (Exception e2) {
            Log.e("VishaTranPlayer", "unable to open content: " + uri, e2);
            r0(this.b, 1, 0);
        }
    }

    @Override
    public boolean y(String str, boolean z) {
        if (this.c < 2) {
            y0(false);
            E0(str, -1);
            Log.w("VishaTranPlayer", "addSubtitle player not PREPARED");
            return false;
        }
        if (this.G) {
            Log.w("VishaTranPlayer", "addSubtitle in music mode");
            E0(str, -1);
            return false;
        }
        if (this.b == null) {
            return false;
        }
        Log.d("VishaTranPlayer", "addSubtitle uri :" + str);
        if (this.J.equals(str)) {
            Log.w("VishaTranPlayer", "addSubtitle same path");
            return false;
        }
        this.b.setSpuTrack(-1);
        this.b.addTimedTextSource(str, "");
        y0(false);
        E0(str, -1);
        this.J = str;
        return true;
    }

    public final void y0(boolean z) {
        onTimedText(null, null);
        this.w = false;
        this.J = "";
        if (z) {
            E0("", -1);
        }
    }

    @Override
    public void z(boolean z, int i) {
        c0(true, i);
        this.r = z;
    }

    public final void z0(int i) {
        this.k = i;
        Log.d("VishaTranPlayer", "setLastPosition, mLastPosition = " + this.k);
    }

    public ifc(Context context, boolean z, boolean z2) {
        this.c = 0;
        this.l = 0;
        this.q = -1L;
        this.s = true;
        this.z = true;
        this.B = 1.0f;
        this.C = new ArrayList();
        this.D = new ArrayList();
        this.I = "";
        this.J = "";
        this.K = -1;
        this.L = new HashMap();
        this.M = new jb8();
        this.N = new ArrayList();
        this.R = -1;
        this.S = new Runnable() {
            @Override
            public final void run() {
                this.b.p0();
            }
        };
        this.T = new Runnable() {
            @Override
            public final void run() {
                this.b.q0();
            }
        };
        this.n = z;
        this.e = context;
        this.v = z2;
    }
}
