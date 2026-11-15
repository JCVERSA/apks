package com.transsion.magicvideo.widgets;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.WindowInfoViewModel;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayerActivity;
import com.transsion.magicvideo.data.VideoDuration;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.widgets.ScaleTouchView.OnScaleSurfaceListener;
import defpackage.hb0;
import defpackage.jxb;
import defpackage.pp3;
import defpackage.rtb;
import defpackage.woc;

public class VideoPlayerMediaView extends FrameLayout implements jxb.a, OnScaleSurfaceListener {
    public static final float MAX_SCALE = 6.0f;
    public static final float MIN_SCALE = 0.25f;
    public int A;
    public boolean B;
    public ScaleStatusView C;
    public int D;
    public boolean E;
    public c F;
    public boolean G;
    public boolean H;
    public boolean I;
    public SurfaceView J;
    public SurfaceView K;
    public ImageView L;
    public final SurfaceHolder.Callback M;
    public final View.OnLayoutChangeListener N;
    public final float[] O;
    public final Runnable P;
    public WindowInfoViewModel Q;
    public Observer R;
    public final float b;
    public final float c;
    public final float d;
    public final float e;
    public final int[] f;
    public int g;
    public int h;
    public int i;
    public boolean isDragMode;
    public boolean isDragged;
    public boolean isOrigValue;
    public boolean isScaleMode;
    public int j;
    public final RectF k;
    public final RectF l;
    public final RectF m;
    public final Matrix n;
    public final Matrix o;
    public final Matrix p;
    public boolean q;
    public boolean r;
    public int s;
    public jxb t;
    public SurfaceHolder u;
    public d v;
    public FrameLayout w;
    public final VideoDuration x;
    public Uri y;
    public e z;

    public class OverScrollRunnable implements Runnable {
        private final OverScroller mScroller;

        public OverScrollRunnable(Context context, int i, int i2, int i3, int i4) {
            OverScroller overScroller = new OverScroller(context);
            this.mScroller = overScroller;
            overScroller.startScroll(i, i2, i3, i4);
            VideoPlayerMediaView.this.o.set(VideoPlayerMediaView.this.n);
        }

        @Override
        public void run() {
            int startX = this.mScroller.getStartX();
            int startY = this.mScroller.getStartY();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            if (!this.mScroller.computeScrollOffset()) {
                VideoPlayerMediaView.this.n.postTranslate((-startX) + this.mScroller.getFinalX(), (-startY) + this.mScroller.getFinalY());
                VideoPlayerMediaView.this.n.mapRect(VideoPlayerMediaView.this.k, VideoPlayerMediaView.this.l);
                VideoPlayerMediaView.this.reLayout(true, true);
            } else {
                VideoPlayerMediaView.this.o.set(VideoPlayerMediaView.this.n);
                VideoPlayerMediaView.this.o.postTranslate((-startX) + currX, (-startY) + currY);
                VideoPlayerMediaView.this.o.mapRect(VideoPlayerMediaView.this.k, VideoPlayerMediaView.this.l);
                VideoPlayerMediaView.this.reLayout(true, true);
                VideoPlayerMediaView.this.postOnAnimation(this);
            }
        }
    }

    public class a implements SurfaceHolder.Callback {
        public a() {
        }

        @Override
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            Log.v("VideoPlayerMediaView", "surfaceChanged(" + surfaceHolder + ",width:" + i2 + ",height:" + i3 + ")");
            if (VideoPlayerMediaView.this.v != null) {
                VideoPlayerMediaView.this.v.onSurfaceChanged(surfaceHolder, i, i2, i3);
            }
        }

        @Override
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            Log.v("VideoPlayerMediaView", "surfaceCreated(" + surfaceHolder + ")");
            VideoPlayerMediaView.this.B = true;
            VideoPlayerMediaView.this.u = surfaceHolder;
            if (VideoPlayerMediaView.this.v != null) {
                VideoPlayerMediaView.this.v.onSurfaceCreated(surfaceHolder);
            }
        }

        @Override
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            if (VideoPlayerMediaView.this.v != null) {
                VideoPlayerMediaView.this.v.onSurfaceDestroyed(surfaceHolder);
            }
            Log.v("VideoPlayerMediaView", "surfaceDestroyed(" + surfaceHolder + ")");
            VideoPlayerMediaView.this.u = null;
            VideoPlayerMediaView.this.B = false;
        }
    }

    public class b implements View.OnLayoutChangeListener {
        public b() {
        }

        @Override
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (i != i5 || i2 != i6 || i3 != i7 || i4 != i8) {
                VideoPlayerMediaView.this.i = i3 - i;
                VideoPlayerMediaView.this.j = i4 - i2;
                VideoPlayerMediaView.this.m.set(0.0f, 0.0f, VideoPlayerMediaView.this.i, VideoPlayerMediaView.this.j);
                VideoPlayerMediaView videoPlayerMediaView = VideoPlayerMediaView.this;
                videoPlayerMediaView.fixVideoSize(videoPlayerMediaView.g, VideoPlayerMediaView.this.h, VideoPlayerMediaView.this.i, VideoPlayerMediaView.this.j, 0, 0);
                VideoPlayerMediaView.this.z();
            }
            VideoPlayerMediaView videoPlayerMediaView2 = VideoPlayerMediaView.this;
            videoPlayerMediaView2.G = videoPlayerMediaView2.getLayoutDirection() == 1;
        }
    }

    public interface c {
        void a(boolean z);

        void b(boolean z);
    }

    public interface d {
        void onSurfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3);

        void onSurfaceCreated(SurfaceHolder surfaceHolder);

        void onSurfaceDestroyed(SurfaceHolder surfaceHolder);
    }

    public interface e {
        void onVideoPlayerStateChange(int i);
    }

    public VideoPlayerMediaView(Context context) {
        this(context, null, 0);
    }

    public void checkBorder() {
        if (this.k.width() > this.m.width()) {
            float f = this.k.left;
            float f2 = this.m.left;
            if (f > f2) {
                this.n.postTranslate(f2 - f, 0.0f);
            }
            float f3 = this.k.right;
            float f4 = this.m.right;
            if (f3 < f4) {
                this.n.postTranslate(f4 - f3, 0.0f);
            }
        }
        if (this.k.height() > this.m.height()) {
            float f5 = this.k.top;
            float f6 = this.m.top;
            if (f5 > f6) {
                this.n.postTranslate(0.0f, f6 - f5);
            }
            float f7 = this.k.bottom;
            float f8 = this.m.bottom;
            if (f7 < f8) {
                this.n.postTranslate(0.0f, f8 - f7);
            }
        }
    }

    @Override
    public void controlVideoRect(float[] fArr) {
        this.n.postTranslate(fArr[0], fArr[1]);
        this.n.mapRect(this.k, this.l);
        reLayout(true, false);
    }

    public SurfaceView findMatchSubtitleSurfaceView(SurfaceHolder surfaceHolder) {
        SurfaceHolder surfaceHolder2;
        if (surfaceHolder == null || (surfaceHolder2 = this.u) == null || surfaceHolder2 != surfaceHolder) {
            return null;
        }
        return this.K;
    }

    public void fixVideoSize(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int iRound;
        int iRound2;
        int i8;
        float f = (i * 1.0f) / i2;
        float f2 = i3;
        float f3 = i4;
        float f4 = (1.0f * f2) / f3;
        int i9 = this.A;
        if (i9 == 0) {
            if (Float.compare(f, f4) == 1) {
                int iRound3 = Math.round(f2 / f);
                int iRound4 = Math.round((i4 - iRound3) / 2.0f);
                i4 = iRound3;
                i8 = iRound4;
                iRound2 = 0;
            } else {
                int iRound5 = Math.round(f3 * f);
                iRound2 = Math.round((i3 - iRound5) / 2.0f);
                i3 = iRound5;
                i8 = 0;
            }
            this.k.set(0.0f, 0.0f, i3, i4);
            int[] iArr = this.f;
            int i10 = iRound2 + i5;
            iArr[0] = i10;
            int i11 = i8 + i6;
            iArr[1] = i11;
            this.k.offset(i10, i11);
        } else if (4 == i9) {
            if (Float.compare(f, f4) == 1) {
                int iRound6 = Math.round(f3 * f);
                iRound = Math.round(i3 - iRound6) / 2;
                i3 = iRound6;
                i7 = 0;
            } else {
                int iRound7 = Math.round(f2 / f);
                int iRound8 = Math.round((i4 - iRound7) / 2.0f);
                i4 = iRound7;
                i7 = iRound8;
                iRound = 0;
            }
            this.k.set(0.0f, 0.0f, i3, i4);
            int[] iArr2 = this.f;
            int i12 = iRound + i5;
            iArr2[0] = i12;
            int i13 = i7 + i6;
            iArr2[1] = i13;
            this.k.offset(i12, i13);
        } else if (3 == i9) {
            this.k.set(0.0f, 0.0f, f2, f3);
            int[] iArr3 = this.f;
            iArr3[0] = 0;
            iArr3[1] = 0;
        }
        this.l.set(this.k);
    }

    public long getFixDuration() {
        return getFixDuration(0L);
    }

    public SurfaceHolder getHolder() {
        return this.u;
    }

    public jxb getPlayer() {
        return this.t;
    }

    public int getResizeMode() {
        return this.A;
    }

    public float getScale(Matrix matrix) {
        return (float) Math.sqrt(((float) Math.pow(u(matrix, 0), 2.0d)) + ((float) Math.pow(u(matrix, 3), 2.0d)));
    }

    @Override
    public int getScaleMode() {
        return 0;
    }

    public float getScaleX(Matrix matrix) {
        return u(matrix, 0);
    }

    public float getScaleY(Matrix matrix) {
        return u(matrix, 4);
    }

    public SurfaceView getSubtitleSurfaceView() {
        return this.K;
    }

    public float[] getTranslate(Matrix matrix) {
        return new float[]{u(matrix, 2), u(matrix, 5)};
    }

    public ImageView getVideoCoverView() {
        return this.L;
    }

    public int getVideoHeight() {
        return this.h;
    }

    public int getVideoWidth() {
        return this.g;
    }

    @Override
    public void hideScaleStateView() {
        this.C.setVisibility(8);
    }

    @Override
    public boolean isInScaleMode() {
        return !this.isOrigValue;
    }

    @Override
    public boolean isTouchDrag(MotionEvent motionEvent) {
        return this.C.isTouchDrag(motionEvent);
    }

    @Override
    public boolean isValueRestored() {
        return this.isOrigValue;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (getContext() instanceof VideoPlayerActivity) {
            VideoPlayerActivity videoPlayerActivity = (VideoPlayerActivity) getContext();
            WindowInfoViewModel windowInfoViewModel = (WindowInfoViewModel) new ViewModelProvider(videoPlayerActivity).get(WindowInfoViewModel.class);
            this.Q = windowInfoViewModel;
            MutableLiveData mutableLiveData = windowInfoViewModel.a;
            Observer observer = new Observer() {
                @Override
                public final void onChanged(Object obj) {
                    this.a.w((woc) obj);
                }
            };
            this.R = observer;
            mutableLiveData.observe(videoPlayerActivity, observer);
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WindowInfoViewModel windowInfoViewModel = this.Q;
        if (windowInfoViewModel != null) {
            windowInfoViewModel.a.removeObserver(this.R);
        }
        VideoPlayManager.X().g2(this.K, false);
    }

    @Override
    public void onDragStatusChange(boolean z) {
        this.isDragMode = z;
        onScaleStateChange(z);
        this.isDragged = true;
    }

    @Override
    public boolean onFling(@NonNull MotionEvent motionEvent, @NonNull MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override
    public boolean onInfo(int i, int i2) {
        return super.onInfo(i, i2);
    }

    @Override
    public void onMediaPlayerStateChange(int i) {
        e eVar = this.z;
        if (eVar != null) {
            eVar.onVideoPlayerStateChange(i);
        }
    }

    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        this.E = z;
    }

    @Override
    public void onPointerCount(int i) {
        this.s = i;
        if (i == 0 && this.isScaleMode) {
            onScaleStateChange(false);
        }
        if (this.s == 0) {
            t();
        }
        if (this.s == 0 && this.isDragged) {
            hb0.markDirect("vd_video_playshow_zoomdrag");
            this.isDragged = false;
        }
    }

    @Override
    public boolean onRestoreClick() {
        hb0.markKV("vd_video_playshow_zoom_recover", new hb0.a("rotate_status", Integer.valueOf(getResources().getConfiguration().orientation == 2 ? 1 : 2)));
        z();
        return this.isOrigValue;
    }

    @Override
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        onScaleStateChange(true);
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        float focusX = scaleGestureDetector.getFocusX();
        float focusY = scaleGestureDetector.getFocusY();
        float scaleX = getScaleX(this.n);
        if (this.I) {
            focusY -= this.m.height() / 2.0f;
        }
        if (!this.r && !this.q && Float.compare(scaleX, 1.1f) == -1 && Float.compare(scaleX, 0.9f) == 1) {
            this.n.setScale(1.0f, 1.0f);
            this.p.set(this.n);
            this.q = true;
            reLayout(true);
            setRecoverValue(true);
        } else if (this.q) {
            this.p.postScale(scaleFactor, scaleFactor, focusX, focusY);
            float scaleX2 = getScaleX(this.p);
            if (Float.compare(scaleX2, 1.1f) == 1 || Float.compare(scaleX2, 0.9f) == -1) {
                this.q = false;
                this.n.set(this.p);
            }
        } else {
            if (this.r && (Float.compare(scaleX, 1.1f) == 1 || Float.compare(scaleX, 0.9f) == -1)) {
                this.r = false;
            }
            this.n.postScale(scaleFactor, scaleFactor, focusX, focusY);
            if (Float.compare(scaleX, 6.0f) == 1) {
                float f = 6.0f / scaleX;
                this.n.postScale(f, f, focusX, focusY);
            }
            if (Float.compare(scaleX, 0.25f) == -1) {
                float f2 = 0.25f / scaleX;
                this.n.postScale(f2, f2, focusX, focusY);
            }
            this.n.mapRect(this.k, this.l);
            reLayout(true);
        }
        return true;
    }

    @Override
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        float focusY = scaleGestureDetector.getFocusY();
        onScaleStateChange(true);
        this.p.set(this.n);
        boolean z = false;
        this.q = false;
        this.r = true;
        if (this.H && focusY > this.m.height() / 2.0f) {
            z = true;
        }
        this.I = z;
        return true;
    }

    @Override
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        onScaleStateChange(false);
        hb0.markKV("vd_video_playshow_zoom", new hb0.a("org_duration", Long.valueOf(this.x.getDuration())), new hb0.a("asp_ratio", this.g + "/" + this.h), new hb0.a("rotate_status", Integer.valueOf(getResources().getConfiguration().orientation == 2 ? 1 : 2)), new hb0.a("scal_ratio", Float.valueOf(getScaleX(this.n))));
    }

    public boolean onScaleStateChange(boolean z) {
        boolean z2 = true;
        this.isOrigValue = Float.compare(Math.abs(getScaleX(this.n) - 1.0f), 0.005f) == -1;
        if (!z && !this.isDragMode) {
            z2 = false;
        }
        this.isScaleMode = z2;
        if (z2) {
            this.C.setVisibility(0);
            this.C.removeCallbacks(this.P);
        } else {
            this.C.postDelayed(this.P, 2000L);
        }
        c cVar = this.F;
        if (cVar != null) {
            cVar.b(this.isScaleMode);
        }
        setRecoverValue(this.isOrigValue);
        return this.isScaleMode;
    }

    @Override
    public boolean onScroll(@NonNull MotionEvent motionEvent, @NonNull MotionEvent motionEvent2, float f, float f2) {
        if (this.s <= 1) {
            return false;
        }
        onScaleStateChange(true);
        this.n.postTranslate(-f, -f2);
        this.n.mapRect(this.k, this.l);
        reLayout(true);
        return true;
    }

    @Override
    public void onShowError(Uri uri, int i) {
        super.onShowError(uri, i);
    }

    @Override
    public void onVideoSizeChanged(int i, int i2) {
        int i3;
        if (!this.B && this.g == i && this.h == i2) {
            return;
        }
        this.B = false;
        Log.v("VideoPlayerMediaView", "onVideoSizeChanged, width = " + i + ", height = " + i2 + ",mVideoWidth=" + this.g + ",mVideoHeight=" + this.h + ",mSurfaceHolder:" + this.u);
        this.g = i;
        this.h = i2;
        this.G = getLayoutDirection() == 1;
        int i4 = this.g;
        if (i4 == 0 || (i3 = this.h) == 0 || this.u == null) {
            return;
        }
        fixVideoSize(i4, i3, this.i, this.j, 0, 0);
        this.C.setVideoSize(this.g, this.h, this.k, this.m);
        reLayout(true);
        this.isOrigValue = true;
        this.isDragMode = false;
        this.isScaleMode = false;
        this.n.reset();
        onScaleStateChange(false);
        setRecoverValue(true);
        ScaleStatusView scaleStatusView = this.C;
        if (scaleStatusView != null) {
            scaleStatusView.post(this.P);
        }
    }

    public void playUri(PlayerViewController playerViewController, Uri uri, long j) {
        if (uri == null) {
            return;
        }
        rtb.l(this);
        setTag(R.id.play_media_source_error, null);
        this.x.setUri(getContext(), uri);
        this.y = uri;
        this.t.g(uri);
        y(uri);
        if (j > 0) {
            rtb.o(this, j);
        }
    }

    public void reLayout(boolean z) {
        reLayout(z, this.isScaleMode);
    }

    public void resetScaleForNewVideo() {
        z();
    }

    public void setDisplaySurfaceView(boolean z) {
        if (this.J != null) {
            LogUtils.O("setDisplaySurfaceView: " + z);
            final int i = z ? 0 : 8;
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.x(i);
                }
            });
        }
    }

    public void setHalfOpenMode(boolean z) {
        this.H = z;
    }

    public void setOnScaleStatesChangeListener(c cVar) {
        this.F = cVar;
    }

    public void setRecoverValue(boolean z) {
        this.isOrigValue = z;
        c cVar = this.F;
        if (cVar != null) {
            cVar.a(z);
        }
    }

    public void setResizeMode(int i) {
        Log.i("VideoPlayerMediaView", "setResizeMode " + i);
        if (this.A != i) {
            this.A = i;
            z();
            fixVideoSize(this.g, this.h, this.i, this.j, 0, 0);
            reLayout(true);
        }
    }

    public void setSubtitleEnable(boolean z) {
        this.K.setVisibility(z ? 0 : 8);
    }

    public void setSurfaceListener(d dVar) {
        this.v = dVar;
    }

    public void setVideoPlayerListener(e eVar) {
        this.z = eVar;
    }

    public void setVideoViewSize(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        this.g = i;
        this.h = i2;
    }

    public void showVideoCover(boolean z) {
        ImageView imageView = this.L;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    public final void t() {
        float fCenterX;
        float fCenterY = 0.0f;
        if (this.k.width() < this.m.width()) {
            fCenterX = this.m.centerX() - this.k.centerX();
        } else {
            RectF rectF = this.k;
            float f = rectF.left;
            RectF rectF2 = this.m;
            float f2 = rectF2.left;
            if (f > f2) {
                fCenterX = f2 - f;
            } else {
                float f3 = rectF.right;
                float f4 = rectF2.right;
                fCenterX = f3 < f4 ? f4 - f3 : 0.0f;
            }
        }
        if (this.k.height() < this.m.height()) {
            fCenterY = this.m.centerY() - this.k.centerY();
        } else {
            RectF rectF3 = this.k;
            float f5 = rectF3.top;
            RectF rectF4 = this.m;
            float f6 = rectF4.top;
            if (f5 > f6) {
                fCenterY = f6 - f5;
            } else {
                float f7 = rectF3.bottom;
                float f8 = rectF4.bottom;
                if (f7 < f8) {
                    fCenterY = f8 - f7;
                }
            }
        }
        int i = (int) fCenterX;
        int i2 = (int) fCenterY;
        RectF rectF5 = this.m;
        int i3 = (int) rectF5.left;
        int i4 = (int) rectF5.top;
        if (i == 0 && i2 == 0) {
            return;
        }
        post(new OverScrollRunnable(getContext(), i3, i4, i, i2));
    }

    public final float u(Matrix matrix, int i) {
        matrix.getValues(this.O);
        return this.O[i];
    }

    public void updateDisplaySurfaceViewVisibility(int i) {
        SurfaceView surfaceView = this.J;
        if (surfaceView != null) {
            surfaceView.setVisibility(i);
        }
    }

    public final void v() {
        LayoutInflater.from(getContext()).inflate(R.layout.lan_surface_view, (ViewGroup) this, true);
        this.J = (SurfaceView) findViewById(R.id.lan_display_view);
        ScaleStatusView scaleStatusView = (ScaleStatusView) findViewById(R.id.state_scale_view);
        this.C = scaleStatusView;
        scaleStatusView.setOnScaleSurfaceListener(this);
        this.w = (FrameLayout) findViewById(R.id.fl_player);
        if (pp3.t()) {
            SurfaceView surfaceView = (SurfaceView) findViewById(R.id.lan_subtitle_view);
            this.K = surfaceView;
            surfaceView.setVisibility(0);
            this.K.setZOrderMediaOverlay(true);
            SurfaceHolder holder = this.K.getHolder();
            if (holder != null) {
                holder.setFormat(-3);
            }
        }
        this.J.getHolder().addCallback(this.M);
        this.D = getContext().getResources().getConfiguration().orientation;
        addOnLayoutChangeListener(this.N);
        ImageView imageView = (ImageView) findViewById(R.id.iv_video_cover);
        this.L = imageView;
        imageView.setVisibility(0);
    }

    public final void w(woc wocVar) {
        int i = wocVar.a;
        boolean z = true;
        if (i != 1 && i != 3) {
            z = false;
        }
        setHalfOpenMode(z);
    }

    public final void x(int i) {
        if (this.J.getVisibility() == i) {
            return;
        }
        this.J.setVisibility(i);
    }

    public final void y(Uri uri) {
        if (uri == null) {
            return;
        }
        this.t.d(this);
        this.t.i();
    }

    public final void z() {
        this.isOrigValue = true;
        this.isDragMode = false;
        this.isScaleMode = false;
        this.n.reset();
        fixVideoSize(this.g, this.h, this.i, this.j, 0, 0);
        reLayout(true);
        onScaleStateChange(false);
        setRecoverValue(true);
        ScaleStatusView scaleStatusView = this.C;
        if (scaleStatusView != null) {
            scaleStatusView.post(this.P);
        }
    }

    public VideoPlayerMediaView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public long getFixDuration(long j) {
        if (j > 0) {
            this.x.checkLoadDuration();
        }
        return this.x.getDuration();
    }

    public void reLayout(boolean z, boolean z2) {
        FrameLayout.LayoutParams layoutParams;
        ScaleStatusView scaleStatusView;
        FrameLayout frameLayout = this.w;
        if (frameLayout == null || !z || (layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams()) == null) {
            return;
        }
        layoutParams.width = (int) this.k.width();
        layoutParams.height = (int) this.k.height();
        RectF rectF = this.k;
        layoutParams.topMargin = (int) rectF.top;
        if (this.G) {
            layoutParams.setMarginStart((int) (this.m.right - rectF.right));
        } else {
            layoutParams.leftMargin = (int) rectF.left;
        }
        FrameLayout frameLayout2 = this.w;
        if (frameLayout2 != null) {
            frameLayout2.setLayoutParams(layoutParams);
            if (!z2 || (scaleStatusView = this.C) == null) {
                return;
            }
            scaleStatusView.setRectAndDraw(this.m, this.k, this.l);
        }
    }

    public VideoPlayerMediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = 1.1f;
        this.c = 0.9f;
        this.d = 1.0f;
        this.e = 0.005f;
        this.isScaleMode = false;
        this.isDragMode = false;
        this.isOrigValue = true;
        this.isDragged = false;
        this.f = new int[2];
        this.g = 1080;
        this.h = 1920;
        this.i = 1080;
        this.j = 1920;
        this.k = new RectF(0.0f, 0.0f, 1080.0f, 1920.0f);
        this.l = new RectF(0.0f, 0.0f, 1080.0f, 1920.0f);
        this.m = new RectF(0.0f, 0.0f, 1080.0f, 1920.0f);
        this.n = new Matrix();
        this.o = new Matrix();
        this.p = new Matrix();
        this.s = 0;
        this.x = new VideoDuration();
        this.A = 0;
        this.D = 1;
        this.G = false;
        this.M = new a();
        this.N = new b();
        this.O = new float[9];
        this.P = new Runnable() {
            @Override
            public void run() {
                VideoPlayerMediaView.this.C.setVisibility(8);
            }
        };
        this.R = null;
        v();
    }
}
