package com.transsion.magicvideo.widgets;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.SeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.view.MotionEventCompat;
import androidx.media3.common.C;
import com.transsion.core.log.LogUtils;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.dbdata.beans.media.SubtitleTrackInfo;
import com.transsion.hubsdk.api.view.TranWindowManager;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.services.VideosService;
import com.transsion.magicvideo.subtitle.widgets.SubtitleVideoView;
import com.transsion.magicvideo.widgets.FloatingVideoWidget;
import defpackage.k29;
import defpackage.kdc;
import defpackage.mc7;
import defpackage.p06;
import defpackage.pp3;
import defpackage.t74;
import defpackage.tpb;
import defpackage.vb;
import defpackage.vha;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.mozilla.javascript.ES6Iterator;

public class FloatingVideoWidget extends ConstraintLayout implements View.OnClickListener {
    public static int U;
    public static int V;
    public static int W;
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public float I;
    public int J;
    public int K;
    public int L;
    public int M;
    public float N;
    public WindowManager O;
    public GestureDetector P;
    public int Q;
    public final Handler R;
    public SubtitleVideoView S;
    public Runnable T;
    public Context b;
    public VideosService c;
    public VideoPlayManager d;
    public SurfaceHolder e;
    public float f;
    public float g;
    public TouchMode h;
    public int i;
    public int j;
    public WindowManager.LayoutParams k;
    public SurfaceView l;
    public ImageView m;
    public ImageView n;
    public ImageView o;
    public ImageView p;
    public ImageView q;
    public Group r;
    public Group s;
    public View t;
    public SeekBar u;
    public int v;
    public String w;
    public String x;
    public final Runnable y;
    public int z;

    public enum TouchMode {
        SCALE,
        MOVING,
        NONE
    }

    public class a implements SurfaceHolder.Callback {
        public a() {
        }

        @Override
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        }

        @Override
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            Log.d("FloatingVideoWidget", "surfaceCreated ");
            FloatingVideoWidget.this.e = surfaceHolder;
            FloatingVideoWidget.this.d.S1(FloatingVideoWidget.this.e, true);
        }

        @Override
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            Log.d("FloatingVideoWidget", "surfaceDestroyed ");
            FloatingVideoWidget.this.e = surfaceHolder;
            FloatingVideoWidget.this.d.S1(surfaceHolder, false);
        }
    }

    public class b extends GestureDetector.SimpleOnGestureListener {
        public b() {
        }

        @Override
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            Log.d("FloatingVideoWidget", "onSingleTapConfirmed " + MotionEvent.actionToString(motionEvent.getAction()));
            FloatingVideoWidget.this.n();
            return true;
        }
    }

    public FloatingVideoWidget(Context context, int i, int i2) throws Throwable {
        super(context);
        this.f = -1.0f;
        this.h = TouchMode.NONE;
        this.y = new Runnable() {
            @Override
            public void run() {
                FloatingVideoWidget.this.setControlGroupVisibility(false);
            }
        };
        this.I = 1.0f;
        this.N = -1.0f;
        this.R = new Handler(Looper.getMainLooper());
        this.T = new Runnable() {
            @Override
            public void run() throws Throwable {
                FloatingVideoWidget.this.C(true);
            }
        };
        init(context);
        H(i, i2);
        s((i * 1.0f) / i2);
    }

    private void E(boolean z) {
        kdc.b((ImageView) findViewById(R.id.iv_video_play_pause), z ? R.drawable.ic_floating_pause : R.drawable.ic_floating_play);
    }

    private void F(long j, long j2, long j3) {
        if (this.v == 6) {
            j = j2;
        }
        this.u.setProgress(Math.round((j * 100) / j2));
    }

    private float getRate() {
        float f = Float.compare(this.f, 0.0f) == -1 ? (this.i * 1.0f) / this.j : this.f;
        this.f = f;
        return f;
    }

    private void r() {
        this.R.removeCallbacks(this.y);
        this.R.postDelayed(this.y, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    public void setControlGroupVisibility(boolean z) {
        LogUtils.p("FloatingVideoWidget", "setControlGroupVisibility " + z);
        Group group = this.r;
        if (group != null) {
            group.setVisibility(z ? 0 : 8);
        }
        Group group2 = this.s;
        if (group2 != null) {
            group2.setVisibility(z ? 0 : 8);
        }
    }

    public static List t(int i, int i2, FloatingVideoWidget floatingVideoWidget) {
        return tpb.j0().M(i, i2);
    }

    public static List u(List list) {
        List list2 = (List) list.stream().sorted(Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Long.valueOf(((SubtitleTrackInfo) obj).getTime());
            }
        }).reversed()).collect(Collectors.toList());
        return list2.subList(0, Math.min(8, list2.size()));
    }

    public static void w(Throwable th) {
        LogUtils.e("...", th.getMessage());
    }

    public static int x(SubtitleTrackInfo subtitleTrackInfo, SubtitleTrackInfo subtitleTrackInfo2) {
        long j = subtitleTrackInfo.time;
        long j2 = subtitleTrackInfo2.time;
        if (j - j2 > 0) {
            return 1;
        }
        return j == j2 ? 0 : -1;
    }

    public final void A(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return;
        }
        WindowManager.LayoutParams layoutParams = this.k;
        if (layoutParams != null && (layoutParams.width != i || layoutParams.height != i2)) {
            layoutParams.width = i;
            layoutParams.height = i2;
            I(layoutParams);
        }
        this.S.setTextSize((getResources().getDimensionPixelOffset(com.avery.subtitle.R.dimen.subtitle_text_size_pip_min) * i) / U);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0017  */
    /* JADX WARN: Code duplicated, block: B:13:0x001e  */
    /* JADX WARN: Code duplicated, block: B:15:0x0022  */
    /* JADX WARN: Code duplicated, block: B:17:0x0028  */
    /* JADX WARN: Code duplicated, block: B:22:0x0057  */
    /* JADX WARN: Code duplicated, block: B:25:0x005c  */
    /* JADX WARN: Code duplicated, block: B:28:0x0067  */
    /* JADX WARN: Code duplicated, block: B:31:0x0072  */
    public final void B(int i, int i2, boolean z) {
        float f;
        float f2;
        int i3;
        float f3;
        float f4;
        int i4;
        int i5;
        WindowManager.LayoutParams layoutParams;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = this.z;
        if (i <= i11) {
            i11 = U;
            if (i < i11) {
                f = i11;
                f2 = this.f;
            }
            i3 = this.A;
            if (i2 > i3) {
                i3 = V;
                if (i2 < i3) {
                    f3 = i3;
                    f4 = this.f;
                }
                if (z && (i10 = U) != 0) {
                    this.I = (float) (((double) Math.round((i * 100) / i10)) / 100.0d);
                    Log.d("FloatingVideoWidget", "resetSizePosition mScaleRate:" + this.I);
                }
                i4 = this.D;
                if (i >= i4) {
                    i = i4;
                }
                i5 = this.E;
                if (i2 >= i5) {
                    i2 = i5;
                }
                layoutParams = this.k;
                i6 = layoutParams.x;
                i7 = layoutParams.width;
                if (i6 > i4 - i7) {
                    layoutParams.x = i4 - i7;
                }
                i8 = layoutParams.y;
                i9 = layoutParams.height;
                if (i8 > i5 - i9) {
                    layoutParams.y = i5 - i9;
                }
                A(i, i2);
            }
            f3 = i3;
            f4 = this.f;
            i = (int) (f3 * f4);
            i2 = i3;
            if (z) {
                this.I = (float) (((double) Math.round((i * 100) / i10)) / 100.0d);
                Log.d("FloatingVideoWidget", "resetSizePosition mScaleRate:" + this.I);
            }
            i4 = this.D;
            if (i >= i4) {
                i = i4;
            }
            i5 = this.E;
            if (i2 >= i5) {
                i2 = i5;
            }
            layoutParams = this.k;
            i6 = layoutParams.x;
            i7 = layoutParams.width;
            if (i6 > i4 - i7) {
                layoutParams.x = i4 - i7;
            }
            i8 = layoutParams.y;
            i9 = layoutParams.height;
            if (i8 > i5 - i9) {
                layoutParams.y = i5 - i9;
            }
            A(i, i2);
        }
        f = i11;
        f2 = this.f;
        i2 = (int) (f / f2);
        i = i11;
        i3 = this.A;
        if (i2 > i3) {
            i3 = V;
            if (i2 < i3) {
                f3 = i3;
                f4 = this.f;
            }
            if (z) {
                this.I = (float) (((double) Math.round((i * 100) / i10)) / 100.0d);
                Log.d("FloatingVideoWidget", "resetSizePosition mScaleRate:" + this.I);
            }
            i4 = this.D;
            if (i >= i4) {
                i = i4;
            }
            i5 = this.E;
            if (i2 >= i5) {
                i2 = i5;
            }
            layoutParams = this.k;
            i6 = layoutParams.x;
            i7 = layoutParams.width;
            if (i6 > i4 - i7) {
                layoutParams.x = i4 - i7;
            }
            i8 = layoutParams.y;
            i9 = layoutParams.height;
            if (i8 > i5 - i9) {
                layoutParams.y = i5 - i9;
            }
            A(i, i2);
        }
        f3 = i3;
        f4 = this.f;
        i = (int) (f3 * f4);
        i2 = i3;
        if (z) {
            this.I = (float) (((double) Math.round((i * 100) / i10)) / 100.0d);
            Log.d("FloatingVideoWidget", "resetSizePosition mScaleRate:" + this.I);
        }
        i4 = this.D;
        if (i >= i4) {
            i = i4;
        }
        i5 = this.E;
        if (i2 >= i5) {
            i2 = i5;
        }
        layoutParams = this.k;
        i6 = layoutParams.x;
        i7 = layoutParams.width;
        if (i6 > i4 - i7) {
            layoutParams.x = i4 - i7;
        }
        i8 = layoutParams.y;
        i9 = layoutParams.height;
        if (i8 > i5 - i9) {
            layoutParams.y = i5 - i9;
        }
        A(i, i2);
    }

    public void C(boolean z) throws Throwable {
        long jV;
        try {
            jV = this.d.V();
            try {
                long jS = this.d.S();
                if (z) {
                    this.R.removeCallbacks(this.T);
                    this.R.postDelayed(this.T, 500L);
                }
                if (jV > 0) {
                    F(jS, jV, 0L);
                    return;
                }
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                if (z) {
                    this.R.removeCallbacks(this.T);
                    this.R.postDelayed(this.T, 500L);
                }
                if (jV > 0) {
                    F(0L, jV, 0L);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            jV = 0;
        }
        this.u.setProgress(0);
    }

    public final void v(int i, List list) {
        List list2 = (List) list.stream().sorted(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return FloatingVideoWidget.x((SubtitleTrackInfo) obj, (SubtitleTrackInfo) obj2);
            }
        }).collect(Collectors.toList());
        SubtitleTrackInfo subtitleTrackInfo = list2.size() > 0 ? (SubtitleTrackInfo) list2.get(list.size() - 1) : null;
        if (subtitleTrackInfo == null) {
            if (i == 0) {
                this.S.setFirstTrackSubtitle(null);
                this.S.setFirstTrackDelay(0L);
                return;
            } else {
                this.S.setSecondTrackSubtitle(null);
                this.S.setSecondTrackDelay(0L);
                return;
            }
        }
        if (i == 0) {
            this.S.setFirstTrackSubtitle(subtitleTrackInfo);
            this.S.setFirstTrackDelay((long) subtitleTrackInfo.delayTime);
            Log.e("FloatingVideoWidget", "trackInfo1 =" + subtitleTrackInfo);
            return;
        }
        this.S.setSecondTrackSubtitle(subtitleTrackInfo);
        this.S.setSecondTrackDelay((long) subtitleTrackInfo.delayTime);
        Log.e("FloatingVideoWidget", "trackInfo2 =" + subtitleTrackInfo);
    }

    public final void G() {
        this.F = com.transsion.utils.a.n(getContext());
        this.H = com.transsion.utils.a.s(getContext()) ? com.transsion.utils.a.f(getContext()) : 0;
        this.D = com.transsion.utils.a.m(getContext());
        this.E = (com.transsion.utils.a.i(getContext()) - this.F) - this.H;
        Log.d("FloatingVideoWidget", "updateScreenSize screenW:" + this.D + ",screenH:" + this.E + ",statusBarHeight:" + this.F);
    }

    public final void H(int i, int i2) {
        if (this.B == i && this.C == i2) {
            return;
        }
        this.B = i;
        this.C = i2;
        float fRound = (float) (((double) Math.round((i * 100) / i2)) / 100.0d);
        double d = fRound;
        if (d <= 0.66d) {
            this.f = (float) (((double) Math.round(56.0f)) / 100.0d);
            U = com.transsion.utils.a.d(getContext(), 164.0f);
            V = com.transsion.utils.a.d(getContext(), 291.0f);
            this.z = com.transsion.utils.a.d(getContext(), 218.0f);
            this.A = com.transsion.utils.a.d(getContext(), 388.0f);
        } else if (d > 0.66d && d <= 0.85d) {
            this.f = (float) (((double) Math.round(75.0f)) / 100.0d);
            U = com.transsion.utils.a.d(getContext(), 164.0f);
            V = com.transsion.utils.a.d(getContext(), 218.0f);
            this.z = com.transsion.utils.a.d(getContext(), 218.0f);
            this.A = com.transsion.utils.a.d(getContext(), 291.0f);
        } else if (d > 0.85d && d <= 1.1d) {
            this.f = 1.0f;
            int iD = com.transsion.utils.a.d(getContext(), 164.0f);
            U = iD;
            V = iD;
            int iD2 = com.transsion.utils.a.d(getContext(), 218.0f);
            this.z = iD2;
            this.A = iD2;
        } else if (d <= 1.1d || d > 1.5d) {
            this.f = (float) (((double) Math.round(177.0f)) / 100.0d);
            U = com.transsion.utils.a.d(getContext(), 164.0f);
            V = com.transsion.utils.a.d(getContext(), 92.0f);
            this.z = com.transsion.utils.a.d(getContext(), 328.0f);
            this.A = com.transsion.utils.a.d(getContext(), 184.0f);
        } else {
            this.f = (float) (((double) Math.round(133.0f)) / 100.0d);
            U = com.transsion.utils.a.d(getContext(), 164.0f);
            V = com.transsion.utils.a.d(getContext(), 123.0f);
            this.z = com.transsion.utils.a.d(getContext(), 328.0f);
            this.A = com.transsion.utils.a.d(getContext(), 246.0f);
        }
        Log.d("FloatingVideoWidget", "updateVideoRate origin_rate:" + fRound + ",w_h_rate:" + this.f + ",min_size_w:" + U + ",min_size_h:" + V + ",max_size_w:" + this.z + ",max_size_h:" + this.A);
    }

    public final void I(WindowManager.LayoutParams layoutParams) {
        if (this.O == null) {
            this.O = (WindowManager) getContext().getSystemService("window");
        }
        this.O.updateViewLayout(this, layoutParams);
    }

    public void attchWindow() {
        l(this.k);
    }

    public void bindWindow(VideosService videosService) {
        this.c = videosService;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if ((action == 1 || action == 3) && motionEvent.getPointerCount() == 1) {
                r();
            }
        } else if (motionEvent.getPointerCount() == 1) {
            this.R.removeCallbacks(this.y);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void exitWindow() {
        this.l.setVisibility(8);
        try {
            this.O.removeView(this);
        } catch (IllegalArgumentException unused) {
        }
    }

    public void init(Context context) throws Throwable {
        vha.u(context);
        this.b = context;
        this.d = VideoPlayManager.X();
        View viewInflate = View.inflate(context, R.layout.floating_video_widget_copy, this);
        this.t = viewInflate.findViewById(R.id.black_cover);
        this.q = (ImageView) viewInflate.findViewById(R.id.video_detail_full_screen);
        this.p = (ImageView) viewInflate.findViewById(R.id.iv_video_play_close);
        this.o = (ImageView) viewInflate.findViewById(R.id.iv_video_play_next);
        this.n = (ImageView) viewInflate.findViewById(R.id.iv_video_play_pause);
        this.m = (ImageView) viewInflate.findViewById(R.id.iv_video_play_previous);
        this.l = (SurfaceView) viewInflate.findViewById(R.id.player_surface_view);
        this.u = (SeekBar) viewInflate.findViewById(R.id.seekbar_bottom);
        SubtitleVideoView subtitleVideoView = (SubtitleVideoView) viewInflate.findViewById(R.id.tracks_subtitle_view);
        this.S = subtitleVideoView;
        subtitleVideoView.bindToIPlayer(this.d.f0());
        this.S.setPictureInPictureMode(true);
        this.S.setSettingDrag(false, true);
        if (pp3.t()) {
            SurfaceView surfaceView = (SurfaceView) findViewById(R.id.subtitle_surface_view);
            surfaceView.setVisibility(0);
            this.d.L(3, surfaceView);
            surfaceView.setZOrderMediaOverlay(true);
            SurfaceHolder holder = surfaceView.getHolder();
            if (holder != null) {
                holder.setFormat(-3);
            }
        }
        this.G = getResources().getConfiguration().screenHeightDp;
        this.r = (Group) viewInflate.findViewById(R.id.control_group);
        this.s = (Group) viewInflate.findViewById(R.id.play_control_group);
        this.q.setOnClickListener(this);
        this.p.setOnClickListener(this);
        this.o.setOnClickListener(this);
        this.n.setOnClickListener(this);
        this.m.setOnClickListener(this);
        this.l.getHolder().addCallback(new a());
        this.P = new GestureDetector(context, new b());
        U = com.transsion.utils.a.d(getContext(), 144.0f);
        V = com.transsion.utils.a.d(getContext(), 108.0f);
        W = com.transsion.utils.a.d(getContext(), 6.0f);
        C(true);
        setControlGroupVisibility(false);
        this.u.setEnabled(false);
        PlayVideoData playVideoDataT = this.d.T();
        if (playVideoDataT != null) {
            queryVideoSubtitles(playVideoDataT.mediaId);
        }
    }

    public final void k() {
        float f = this.N;
        if (f != -1.0f) {
            if (f > 1.05d) {
                this.w = "zoomout";
            } else if (f < 0.95d) {
                this.w = "zoomin";
            }
        }
        if ("draft".equals(this.x)) {
            p06.l0("draft");
        }
        if ("zoomin".equals(this.w)) {
            p06.l0("zoomin");
        } else if ("zoomout".equals(this.w)) {
            p06.l0("zoomout");
        }
    }

    public final void l(WindowManager.LayoutParams layoutParams) {
        if (this.O == null) {
            this.O = (WindowManager) getContext().getSystemService("window");
        }
        this.O.addView(this, layoutParams);
    }

    public WindowManager.LayoutParams m(int i, int i2, int i3, int i4) {
        Log.d("FloatingVideoWidget", "createLayoutParams width:" + i + ",height:" + i2 + ",paddingleft:" + i3 + ",paddingtop:" + i4);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(i, i2, TranWindowManager.TYPE_APPLICATION_OVERLAY, 262184, -3);
        layoutParams.gravity = 51;
        layoutParams.x = i3;
        layoutParams.y = i4;
        layoutParams.setTitle(getResources().getString(R.string.video));
        return layoutParams;
    }

    public final void n() {
        boolean z = this.r.getVisibility() == 0;
        Log.d("FloatingVideoWidget", "delayMissControl " + z);
        setControlGroupVisibility(z ^ true);
        this.R.removeCallbacks(this.y);
        if (z) {
            return;
        }
        this.R.postDelayed(this.y, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    public final float o(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        r();
    }

    @Override
    public void onClick(View view) {
        PlayVideoData playVideoDataT;
        if (view.getId() == R.id.iv_video_play_close) {
            VideosService videosService = this.c;
            if (videosService != null) {
                videosService.u();
                this.c.n();
                p06.l0("off");
                return;
            }
            return;
        }
        if (view.getId() == R.id.video_detail_full_screen) {
            if (this.c == null || (playVideoDataT = this.d.T()) == null) {
                return;
            }
            playVideoDataT.fromBackgroundPlay = true;
            if (VideoPlayManager.X().O) {
                playVideoDataT.isPipMute = true;
            }
            playVideoDataT.mPlayFrom = PlayVideoData.ePlayFrom.PLAY_FROM_PIP.from;
            VideoPlayerActivityInner.G2(playVideoDataT);
            this.c.o();
            VideoPlayManager.X().G1();
            p06.l0("return");
            return;
        }
        if (view.getId() == R.id.iv_video_play_next) {
            this.d.o1();
            p06.l0(ES6Iterator.NEXT_METHOD);
        } else if (view.getId() == R.id.iv_video_play_pause) {
            String str = this.d.A0() ? "pause" : PlayAudioData.TAG_NEED_PLAY;
            this.d.q2();
            p06.l0(str);
        } else if (view.getId() == R.id.iv_video_play_previous) {
            this.d.r1();
            p06.l0("pre");
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Log.d("FloatingVideoWidget", "onConfigurationChanged " + this.G + StringUtils.COMMA + configuration.screenHeightDp + StringUtils.COMMA + configuration.orientation);
        int i = this.G;
        int i2 = configuration.screenHeightDp;
        if (i != i2) {
            this.G = i2;
            G();
        }
        B(getWidth(), getHeight(), false);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.R.removeCallbacksAndMessages(null);
        VideoPlayManager.X().O = false;
    }

    public boolean onInfo(int i, int i2) {
        if (pp3.w() || i != 3) {
            return false;
        }
        Log.d("FloatingVideoWidget", "onInfo hide cover, first video frame ");
        this.t.setVisibility(8);
        return false;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) == 5 && motionEvent.getPointerCount() == 2) {
            return onTouchEvent(motionEvent);
        }
        return false;
    }

    public void onPlayItemChanged(MediaItem mediaItem) {
        Log.d("FloatingVideoWidget", "onPlayItemChanged ");
        if (pp3.w() && Build.VERSION.SDK_INT > 30) {
            this.l.setVisibility(0);
        }
        if (mediaItem != null) {
            queryVideoSubtitles(mediaItem.id);
        }
    }

    public void onPlayerStateUpdate(int i) {
        if (i == 3 && VideoPlayManager.X().O) {
            VideoPlayManager.X().Z1(true);
        }
        this.v = i;
        E(this.d.A0());
    }

    public void onStartChangedPlayItem(MediaItem mediaItem) {
        Log.d("FloatingVideoWidget", "onStartChangedPlayItem start ");
        if (!pp3.w() || Build.VERSION.SDK_INT <= 30) {
            return;
        }
        this.t.setVisibility(0);
        this.l.setVisibility(8);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        TouchMode touchMode = this.h;
        TouchMode touchMode2 = TouchMode.SCALE;
        if (touchMode != touchMode2 && this.P.onTouchEvent(motionEvent)) {
            return false;
        }
        int action = motionEvent.getAction();
        int i = action & 255;
        if (i != 0) {
            if (i == 1) {
                k();
            } else if (i == 2) {
                int pointerCount = motionEvent.getPointerCount();
                if (pointerCount == 1) {
                    this.L = (int) motionEvent.getRawX();
                    this.M = (int) motionEvent.getRawY();
                    if (Math.abs(this.L - this.J) >= 20 || Math.abs(this.M - this.K) >= 20) {
                        this.x = "draft";
                    }
                    y(this.L - this.J, this.M - this.K);
                    this.J = this.L;
                    this.K = this.M;
                } else if (pointerCount >= 2 && this.h == touchMode2) {
                    float fO = o(motionEvent.getRawX(), motionEvent.getRawY(), p(motionEvent, 1), q(motionEvent, 1));
                    if (Math.abs(fO - this.g) > 2.0f) {
                        float f = fO / this.g;
                        this.N = f;
                        int i2 = (int) (this.j * f);
                        int i3 = (int) (i2 * this.f);
                        B(i3, i2, true);
                        this.g = fO;
                        this.i = i3;
                        this.j = i2;
                    }
                }
            } else if (i != 5) {
                if (i == 6) {
                    int i4 = (action & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                    int pointerCount2 = motionEvent.getPointerCount();
                    if (pointerCount2 == 3) {
                        this.h = touchMode2;
                    } else if (pointerCount2 == 2) {
                        this.J = (int) p(motionEvent, i4 == 0 ? 1 : 0);
                        this.K = (int) q(motionEvent, i4 == 0 ? 1 : 0);
                        this.h = TouchMode.MOVING;
                    } else {
                        this.h = TouchMode.NONE;
                    }
                }
            }
            return true;
        }
        this.J = (int) motionEvent.getRawX();
        this.K = (int) motionEvent.getRawY();
        this.h = TouchMode.MOVING;
        this.w = "";
        this.x = "";
        this.N = -1.0f;
        if (motionEvent.getPointerCount() == 2) {
            this.g = o(motionEvent.getRawX(), motionEvent.getRawY(), p(motionEvent, 1), q(motionEvent, 1));
            this.i = getWidth();
            this.j = getHeight();
            this.h = touchMode2;
            setControlGroupVisibility(false);
        }
        return true;
    }

    public void onVideoSizeChanged(int i, int i2) {
        Log.d("FloatingVideoWidget", "onVideoSizeChanged width:" + i + ",height:" + i2);
        this.t.setVisibility(8);
        z(i, i2);
    }

    public final float p(MotionEvent motionEvent, int i) {
        if (motionEvent.getPointerCount() >= i + 1) {
            return (motionEvent.getX(i) + motionEvent.getRawX()) - motionEvent.getX();
        }
        throw new IllegalArgumentException("pointIndex is invalid");
    }

    public final float q(MotionEvent motionEvent, int i) {
        if (motionEvent.getPointerCount() >= i + 1) {
            return (motionEvent.getY(i) + motionEvent.getRawY()) - motionEvent.getY();
        }
        throw new IllegalArgumentException("pointIndex is invalid");
    }

    public void queryTrackSubtitle(final int i, final int i2) {
        mc7.K(this).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return FloatingVideoWidget.t(i, i2, (FloatingVideoWidget) obj);
            }
        }).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return FloatingVideoWidget.u((List) obj);
            }
        }).d0(k29.c()).M(vb.a()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.v(i2, (List) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                FloatingVideoWidget.w((Throwable) obj);
            }
        });
    }

    public void queryVideoSubtitles(int i) {
        queryTrackSubtitle(i, 0);
        queryTrackSubtitle(i, 1);
    }

    public final void s(float f) {
        int iD;
        int iD2;
        this.Q = this.b.getResources().getConfiguration().orientation;
        G();
        if (this.Q == 1) {
            iD = com.transsion.utils.a.d(getContext(), 10.0f);
            iD2 = com.transsion.utils.a.d(getContext(), 40.0f);
        } else {
            iD = com.transsion.utils.a.d(getContext(), 10.0f);
            iD2 = com.transsion.utils.a.d(getContext(), 10.0f);
        }
        int i = U;
        int i2 = V;
        int i3 = (this.D - i) - iD;
        int i4 = (this.E - i2) - iD2;
        this.O = (WindowManager) getContext().getSystemService("window");
        this.k = m(i, i2, i3, i4);
    }

    public void updateConfig(Configuration configuration) {
        Log.d("FloatingVideoWidget", "updateConfig " + this.G + StringUtils.COMMA + configuration.screenHeightDp + StringUtils.COMMA + configuration.orientation);
        int i = this.G;
        int i2 = configuration.screenHeightDp;
        if (i != i2) {
            this.G = i2;
            G();
        }
    }

    public void updateNextAndPreviousState(boolean z, boolean z2) {
        this.m.setImageResource(z ? R.drawable.ic_floating_previous : R.drawable.ic_floating_previous_disable);
        this.o.setImageResource(z2 ? R.drawable.ic_floating_next : R.drawable.ic_floating_next_disable);
        if (z) {
            this.m.setClickable(true);
        } else {
            this.m.setClickable(false);
        }
        if (z2) {
            this.o.setClickable(true);
        } else {
            this.o.setClickable(false);
        }
    }

    public final void y(int i, int i2) {
        WindowManager.LayoutParams layoutParams = this.k;
        if (layoutParams != null) {
            int i3 = i + layoutParams.x;
            int i4 = i2 + layoutParams.y;
            layoutParams.x = i3;
            layoutParams.y = i4;
            if (i3 < 0) {
                layoutParams.x = 0;
            } else {
                int i5 = this.D;
                int i6 = layoutParams.width;
                if (i3 > i5 - i6) {
                    layoutParams.x = i5 - i6;
                }
            }
            if (i4 < 0) {
                layoutParams.y = 0;
            } else {
                int i7 = this.E;
                int i8 = layoutParams.height;
                if (i4 > i7 - i8) {
                    layoutParams.y = i7 - i8;
                }
            }
            I(layoutParams);
        }
    }

    public final void z(int i, int i2) {
        if (this.k == null || i == 0 || i2 == 0) {
            return;
        }
        H(i, i2);
        float f = U;
        float f2 = this.I;
        B((int) (f * f2), (int) (V * f2), false);
    }

    public FloatingVideoWidget(Context context) throws Throwable {
        super(context);
        this.f = -1.0f;
        this.h = TouchMode.NONE;
        this.y = new Runnable() {
            @Override
            public void run() {
                FloatingVideoWidget.this.setControlGroupVisibility(false);
            }
        };
        this.I = 1.0f;
        this.N = -1.0f;
        this.R = new Handler(Looper.getMainLooper());
        this.T = new Runnable() {
            @Override
            public void run() throws Throwable {
                FloatingVideoWidget.this.C(true);
            }
        };
        init(context);
    }

    public FloatingVideoWidget(Context context, AttributeSet attributeSet) throws Throwable {
        super(context, attributeSet);
        this.f = -1.0f;
        this.h = TouchMode.NONE;
        this.y = new Runnable() {
            @Override
            public void run() {
                FloatingVideoWidget.this.setControlGroupVisibility(false);
            }
        };
        this.I = 1.0f;
        this.N = -1.0f;
        this.R = new Handler(Looper.getMainLooper());
        this.T = new Runnable() {
            @Override
            public void run() throws Throwable {
                FloatingVideoWidget.this.C(true);
            }
        };
        init(context);
    }

    public FloatingVideoWidget(Context context, AttributeSet attributeSet, int i) throws Throwable {
        super(context, attributeSet, i);
        this.f = -1.0f;
        this.h = TouchMode.NONE;
        this.y = new Runnable() {
            @Override
            public void run() {
                FloatingVideoWidget.this.setControlGroupVisibility(false);
            }
        };
        this.I = 1.0f;
        this.N = -1.0f;
        this.R = new Handler(Looper.getMainLooper());
        this.T = new Runnable() {
            @Override
            public void run() throws Throwable {
                FloatingVideoWidget.this.C(true);
            }
        };
        init(context);
    }
}
