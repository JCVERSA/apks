package com.google.android.exoplayer2.ui;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.opengl.GLSurfaceView;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p2;
import com.google.android.exoplayer2.q3;
import com.google.android.exoplayer2.r2;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.w1;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class StyledPlayerView extends FrameLayout {
    public static final int SHOW_BUFFERING_ALWAYS = 2;
    public static final int SHOW_BUFFERING_NEVER = 0;
    public static final int SHOW_BUFFERING_WHEN_PLAYING = 1;

    private final a f26272a;

    private final AspectRatioFrameLayout f26273b;

    private final View f26274c;

    private final View f26275d;

    private final boolean f26276e;

    private final ImageView f26277f;

    private final SubtitleView f26278g;

    private final View f26279h;

    private final TextView f26280i;

    private final StyledPlayerControlView f26281j;

    private final FrameLayout f26282k;

    private final FrameLayout f26283l;

    private p2 f26284m;

    private boolean f26285n;

    private StyledPlayerControlView.m f26286o;

    private boolean f26287p;

    private Drawable f26288q;

    private int f26289r;

    private boolean f26290s;

    private CharSequence f26291t;

    private int f26292u;

    private boolean f26293v;

    private boolean f26294w;

    private boolean f26295x;

    private int f26296y;

    private final class a implements p2.d, View.OnLayoutChangeListener, View.OnClickListener, StyledPlayerControlView.m, StyledPlayerControlView.d {

        private final l3.b f26297a = new l3.b();

        private Object f26298b;

        public a() {
        }

        @Override
        public void l(int i10) {
            StyledPlayerView.this.H();
            StyledPlayerView.g(StyledPlayerView.this);
        }

        @Override
        public void onAvailableCommandsChanged(p2.b bVar) {
            r2.c(this, bVar);
        }

        @Override
        public void onClick(View view) {
            StyledPlayerView.this.E();
        }

        @Override
        public void onCues(List list) {
            r2.e(this, list);
        }

        @Override
        public void onDeviceInfoChanged(com.google.android.exoplayer2.r rVar) {
            r2.f(this, rVar);
        }

        @Override
        public void onDeviceVolumeChanged(int i10, boolean z10) {
            r2.g(this, i10, z10);
        }

        @Override
        public void onEvents(p2 p2Var, p2.c cVar) {
            r2.h(this, p2Var, cVar);
        }

        @Override
        public void onIsLoadingChanged(boolean z10) {
            r2.i(this, z10);
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            r2.j(this, z10);
        }

        @Override
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            StyledPlayerView.q((TextureView) view, StyledPlayerView.this.f26296y);
        }

        @Override
        public void onLoadingChanged(boolean z10) {
            r2.k(this, z10);
        }

        @Override
        public void onMediaItemTransition(w1 w1Var, int i10) {
            r2.m(this, w1Var, i10);
        }

        @Override
        public void onMediaMetadataChanged(b2 b2Var) {
            r2.n(this, b2Var);
        }

        @Override
        public void onMetadata(Metadata metadata) {
            r2.o(this, metadata);
        }

        @Override
        public void onPlayWhenReadyChanged(boolean z10, int i10) {
            StyledPlayerView.this.G();
            StyledPlayerView.this.I();
        }

        @Override
        public void onPlaybackParametersChanged(o2 o2Var) {
            r2.q(this, o2Var);
        }

        @Override
        public void onPlaybackStateChanged(int i10) {
            StyledPlayerView.this.G();
            StyledPlayerView.this.J();
            StyledPlayerView.this.I();
        }

        @Override
        public void onPlaybackSuppressionReasonChanged(int i10) {
            r2.s(this, i10);
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            r2.t(this, playbackException);
        }

        @Override
        public void onPlayerErrorChanged(PlaybackException playbackException) {
            r2.u(this, playbackException);
        }

        @Override
        public void onPlayerStateChanged(boolean z10, int i10) {
            r2.v(this, z10, i10);
        }

        @Override
        public void onPositionDiscontinuity(int i10) {
            r2.x(this, i10);
        }

        @Override
        public void onRenderedFirstFrame() {
            if (StyledPlayerView.this.f26274c != null) {
                StyledPlayerView.this.f26274c.setVisibility(4);
            }
        }

        @Override
        public void onRepeatModeChanged(int i10) {
            r2.A(this, i10);
        }

        @Override
        public void onSeekProcessed() {
            r2.D(this);
        }

        @Override
        public void onShuffleModeEnabledChanged(boolean z10) {
            r2.E(this, z10);
        }

        @Override
        public void onSkipSilenceEnabledChanged(boolean z10) {
            r2.F(this, z10);
        }

        @Override
        public void onSurfaceSizeChanged(int i10, int i11) {
            r2.G(this, i10, i11);
        }

        @Override
        public void onTimelineChanged(l3 l3Var, int i10) {
            r2.H(this, l3Var, i10);
        }

        @Override
        public void onTrackSelectionParametersChanged(na.z zVar) {
            r2.I(this, zVar);
        }

        @Override
        public void onTracksChanged(q3 q3Var) {
            p2 p2Var = (p2) com.google.android.exoplayer2.util.a.e(StyledPlayerView.this.f26284m);
            l3 currentTimeline = p2Var.getCurrentTimeline();
            if (currentTimeline.u()) {
                this.f26298b = null;
            } else if (p2Var.getCurrentTracks().c()) {
                Object obj = this.f26298b;
                if (obj != null) {
                    int iF = currentTimeline.f(obj);
                    if (iF != -1) {
                        if (p2Var.u() == currentTimeline.j(iF, this.f26297a).f24525c) {
                            return;
                        }
                    }
                    this.f26298b = null;
                }
            } else {
                this.f26298b = currentTimeline.k(p2Var.getCurrentPeriodIndex(), this.f26297a, true).f24524b;
            }
            StyledPlayerView.this.K(false);
        }

        @Override
        public void onVideoSizeChanged(com.google.android.exoplayer2.video.y yVar) {
            StyledPlayerView.this.F();
        }

        @Override
        public void onVolumeChanged(float f10) {
            r2.L(this, f10);
        }

        @Override
        public void p(boolean z10) {
            StyledPlayerView.h(StyledPlayerView.this);
        }

        @Override
        public void onCues(da.f fVar) {
            if (StyledPlayerView.this.f26278g != null) {
                StyledPlayerView.this.f26278g.setCues(fVar.f58960a);
            }
        }

        @Override
        public void onPositionDiscontinuity(p2.e eVar, p2.e eVar2, int i10) {
            if (StyledPlayerView.this.w() && StyledPlayerView.this.f26294w) {
                StyledPlayerView.this.hideController();
            }
        }
    }

    public interface b {
    }

    public interface c {
    }

    public StyledPlayerView(Context context) {
        this(context, null);
    }

    private boolean A(Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                y(this.f26273b, intrinsicWidth / intrinsicHeight);
                this.f26277f.setImageDrawable(drawable);
                this.f26277f.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private static void B(AspectRatioFrameLayout aspectRatioFrameLayout, int i10) {
        aspectRatioFrameLayout.setResizeMode(i10);
    }

    private boolean C() {
        p2 p2Var = this.f26284m;
        if (p2Var == null) {
            return true;
        }
        int playbackState = p2Var.getPlaybackState();
        return this.f26293v && !this.f26284m.getCurrentTimeline().u() && (playbackState == 1 || playbackState == 4 || !((p2) com.google.android.exoplayer2.util.a.e(this.f26284m)).getPlayWhenReady());
    }

    private void D(boolean z10) {
        if (M()) {
            this.f26281j.setShowTimeoutMs(z10 ? 0 : this.f26292u);
            this.f26281j.show();
        }
    }

    public void E() {
        if (!M() || this.f26284m == null) {
            return;
        }
        if (!this.f26281j.isFullyVisible()) {
            x(true);
        } else if (this.f26295x) {
            this.f26281j.hide();
        }
    }

    public void F() {
        p2 p2Var = this.f26284m;
        com.google.android.exoplayer2.video.y yVarQ = p2Var != null ? p2Var.q() : com.google.android.exoplayer2.video.y.f27138e;
        int i10 = yVarQ.f27140a;
        int i11 = yVarQ.f27141b;
        int i12 = yVarQ.f27142c;
        float f10 = (i11 == 0 || i10 == 0) ? 0.0f : (i10 * yVarQ.f27143d) / i11;
        View view = this.f26275d;
        if (view instanceof TextureView) {
            if (f10 > 0.0f && (i12 == 90 || i12 == 270)) {
                f10 = 1.0f / f10;
            }
            if (this.f26296y != 0) {
                view.removeOnLayoutChangeListener(this.f26272a);
            }
            this.f26296y = i12;
            if (i12 != 0) {
                this.f26275d.addOnLayoutChangeListener(this.f26272a);
            }
            q((TextureView) this.f26275d, this.f26296y);
        }
        y(this.f26273b, this.f26276e ? 0.0f : f10);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0020  */
    public void G() {
        boolean z10;
        if (this.f26279h != null) {
            p2 p2Var = this.f26284m;
            if (p2Var == null || p2Var.getPlaybackState() != 2) {
                z10 = false;
            } else {
                int i10 = this.f26289r;
                z10 = true;
                if (i10 != 2 && (i10 != 1 || !this.f26284m.getPlayWhenReady())) {
                    z10 = false;
                }
            }
            this.f26279h.setVisibility(z10 ? 0 : 8);
        }
    }

    public void H() {
        StyledPlayerControlView styledPlayerControlView = this.f26281j;
        if (styledPlayerControlView == null || !this.f26285n) {
            setContentDescription(null);
        } else if (styledPlayerControlView.isFullyVisible()) {
            setContentDescription(this.f26295x ? getResources().getString(R$string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R$string.exo_controls_show));
        }
    }

    public void I() {
        if (w() && this.f26294w) {
            hideController();
        } else {
            x(false);
        }
    }

    public void J() {
        TextView textView = this.f26280i;
        if (textView != null) {
            CharSequence charSequence = this.f26291t;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f26280i.setVisibility(0);
            } else {
                p2 p2Var = this.f26284m;
                if (p2Var != null) {
                    p2Var.c();
                }
                this.f26280i.setVisibility(8);
            }
        }
    }

    public void K(boolean z10) {
        p2 p2Var = this.f26284m;
        if (p2Var == null || p2Var.getCurrentTracks().c()) {
            if (this.f26290s) {
                return;
            }
            u();
            r();
            return;
        }
        if (z10 && !this.f26290s) {
            r();
        }
        if (p2Var.getCurrentTracks().d(2)) {
            u();
            return;
        }
        r();
        if (L() && (z(p2Var.y()) || A(this.f26288q))) {
            return;
        }
        u();
    }

    private boolean L() {
        if (!this.f26287p) {
            return false;
        }
        com.google.android.exoplayer2.util.a.i(this.f26277f);
        return true;
    }

    private boolean M() {
        if (!this.f26285n) {
            return false;
        }
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        return true;
    }

    static b g(StyledPlayerView styledPlayerView) {
        styledPlayerView.getClass();
        return null;
    }

    static c h(StyledPlayerView styledPlayerView) {
        styledPlayerView.getClass();
        return null;
    }

    public static void q(TextureView textureView, int i10) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != 0.0f && height != 0.0f && i10 != 0) {
            float f10 = width / 2.0f;
            float f11 = height / 2.0f;
            matrix.postRotate(i10, f10, f11);
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f10, f11);
        }
        textureView.setTransform(matrix);
    }

    private void r() {
        View view = this.f26274c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void s(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R$drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color));
    }

    public static void switchTargetView(p2 p2Var, @Nullable StyledPlayerView styledPlayerView, @Nullable StyledPlayerView styledPlayerView2) {
        if (styledPlayerView == styledPlayerView2) {
            return;
        }
        if (styledPlayerView2 != null) {
            styledPlayerView2.setPlayer(p2Var);
        }
        if (styledPlayerView != null) {
            styledPlayerView.setPlayer(null);
        }
    }

    private static void t(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R$drawable.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color, null));
    }

    private void u() {
        ImageView imageView = this.f26277f;
        if (imageView != null) {
            imageView.setImageResource(R.color.transparent);
            this.f26277f.setVisibility(4);
        }
    }

    private boolean v(int i10) {
        return i10 == 19 || i10 == 270 || i10 == 22 || i10 == 271 || i10 == 20 || i10 == 269 || i10 == 21 || i10 == 268 || i10 == 23;
    }

    public boolean w() {
        p2 p2Var = this.f26284m;
        return p2Var != null && p2Var.isPlayingAd() && this.f26284m.getPlayWhenReady();
    }

    private void x(boolean z10) {
        if (!(w() && this.f26294w) && M()) {
            boolean z11 = this.f26281j.isFullyVisible() && this.f26281j.getShowTimeoutMs() <= 0;
            boolean zC = C();
            if (z10 || z11 || zC) {
                D(zC);
            }
        }
    }

    private boolean z(b2 b2Var) {
        byte[] bArr = b2Var.f24120j;
        if (bArr == null) {
            return false;
        }
        return A(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        p2 p2Var = this.f26284m;
        if (p2Var != null && p2Var.isPlayingAd()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean zV = v(keyEvent.getKeyCode());
        if (zV && M() && !this.f26281j.isFullyVisible()) {
            x(true);
            return true;
        }
        if (dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            x(true);
            return true;
        }
        if (zV && M()) {
            x(true);
        }
        return false;
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        return M() && this.f26281j.dispatchMediaKeyEvent(keyEvent);
    }

    public List<com.google.android.exoplayer2.ui.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f26283l;
        if (frameLayout != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        StyledPlayerControlView styledPlayerControlView = this.f26281j;
        if (styledPlayerControlView != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(styledPlayerControlView, 1));
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) com.google.android.exoplayer2.util.a.j(this.f26282k, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f26293v;
    }

    public boolean getControllerHideOnTouch() {
        return this.f26295x;
    }

    public int getControllerShowTimeoutMs() {
        return this.f26292u;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f26288q;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f26283l;
    }

    @Nullable
    public p2 getPlayer() {
        return this.f26284m;
    }

    public int getResizeMode() {
        com.google.android.exoplayer2.util.a.i(this.f26273b);
        return this.f26273b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f26278g;
    }

    public boolean getUseArtwork() {
        return this.f26287p;
    }

    public boolean getUseController() {
        return this.f26285n;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f26275d;
    }

    public void hideController() {
        StyledPlayerControlView styledPlayerControlView = this.f26281j;
        if (styledPlayerControlView != null) {
            styledPlayerControlView.hide();
        }
    }

    public boolean isControllerFullyVisible() {
        StyledPlayerControlView styledPlayerControlView = this.f26281j;
        return styledPlayerControlView != null && styledPlayerControlView.isFullyVisible();
    }

    public void onPause() {
        View view = this.f26275d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onPause();
        }
    }

    public void onResume() {
        View view = this.f26275d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onResume();
        }
    }

    @Override
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!M() || this.f26284m == null) {
            return false;
        }
        x(true);
        return true;
    }

    @Override
    public boolean performClick() {
        E();
        return super.performClick();
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.b bVar) {
        com.google.android.exoplayer2.util.a.i(this.f26273b);
        this.f26273b.setAspectRatioListener(bVar);
    }

    public void setControllerAutoShow(boolean z10) {
        this.f26293v = z10;
    }

    public void setControllerHideDuringAds(boolean z10) {
        this.f26294w = z10;
    }

    public void setControllerHideOnTouch(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26295x = z10;
        H();
    }

    @Deprecated
    public void setControllerOnFullScreenModeChangedListener(@Nullable StyledPlayerControlView.d dVar) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26281j.setOnFullScreenModeChangedListener(dVar);
    }

    public void setControllerShowTimeoutMs(int i10) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26292u = i10;
        if (this.f26281j.isFullyVisible()) {
            showController();
        }
    }

    public void setControllerVisibilityListener(@Nullable b bVar) {
        setControllerVisibilityListener((StyledPlayerControlView.m) null);
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        com.google.android.exoplayer2.util.a.g(this.f26280i != null);
        this.f26291t = charSequence;
        J();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f26288q != drawable) {
            this.f26288q = drawable;
            K(false);
        }
    }

    public void setErrorMessageProvider(@Nullable com.google.android.exoplayer2.util.k kVar) {
        if (kVar != null) {
            J();
        }
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26281j.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setFullscreenButtonClickListener(@Nullable c cVar) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26281j.setOnFullScreenModeChangedListener(this.f26272a);
    }

    public void setKeepContentOnPlayerReset(boolean z10) {
        if (this.f26290s != z10) {
            this.f26290s = z10;
            K(false);
        }
    }

    public void setPlayer(@Nullable p2 p2Var) {
        com.google.android.exoplayer2.util.a.g(Looper.myLooper() == Looper.getMainLooper());
        com.google.android.exoplayer2.util.a.a(p2Var == null || p2Var.l() == Looper.getMainLooper());
        p2 p2Var2 = this.f26284m;
        if (p2Var2 == p2Var) {
            return;
        }
        if (p2Var2 != null) {
            p2Var2.B(this.f26272a);
            View view = this.f26275d;
            if (view instanceof TextureView) {
                p2Var2.clearVideoTextureView((TextureView) view);
            } else if (view instanceof SurfaceView) {
                p2Var2.clearVideoSurfaceView((SurfaceView) view);
            }
        }
        SubtitleView subtitleView = this.f26278g;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f26284m = p2Var;
        if (M()) {
            this.f26281j.setPlayer(p2Var);
        }
        G();
        J();
        K(true);
        if (p2Var == null) {
            hideController();
            return;
        }
        if (p2Var.i(27)) {
            View view2 = this.f26275d;
            if (view2 instanceof TextureView) {
                p2Var.setVideoTextureView((TextureView) view2);
            } else if (view2 instanceof SurfaceView) {
                p2Var.setVideoSurfaceView((SurfaceView) view2);
            }
            F();
        }
        if (this.f26278g != null && p2Var.i(28)) {
            this.f26278g.setCues(p2Var.h().f58960a);
        }
        p2Var.E(this.f26272a);
        x(false);
    }

    public void setRepeatToggleModes(int i10) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26281j.setRepeatToggleModes(i10);
    }

    public void setResizeMode(int i10) {
        com.google.android.exoplayer2.util.a.i(this.f26273b);
        this.f26273b.setResizeMode(i10);
    }

    public void setShowBuffering(int i10) {
        if (this.f26289r != i10) {
            this.f26289r = i10;
            G();
        }
    }

    public void setShowFastForwardButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26281j.setShowFastForwardButton(z10);
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26281j.setShowMultiWindowTimeBar(z10);
    }

    public void setShowNextButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26281j.setShowNextButton(z10);
    }

    public void setShowPreviousButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26281j.setShowPreviousButton(z10);
    }

    public void setShowRewindButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26281j.setShowRewindButton(z10);
    }

    public void setShowShuffleButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26281j.setShowShuffleButton(z10);
    }

    public void setShowSubtitleButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26281j.setShowSubtitleButton(z10);
    }

    public void setShowVrButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        this.f26281j.setShowVrButton(z10);
    }

    public void setShutterBackgroundColor(int i10) {
        View view = this.f26274c;
        if (view != null) {
            view.setBackgroundColor(i10);
        }
    }

    public void setUseArtwork(boolean z10) {
        com.google.android.exoplayer2.util.a.g((z10 && this.f26277f == null) ? false : true);
        if (this.f26287p != z10) {
            this.f26287p = z10;
            K(false);
        }
    }

    public void setUseController(boolean z10) {
        boolean z11 = true;
        com.google.android.exoplayer2.util.a.g((z10 && this.f26281j == null) ? false : true);
        if (!z10 && !hasOnClickListeners()) {
            z11 = false;
        }
        setClickable(z11);
        if (this.f26285n == z10) {
            return;
        }
        this.f26285n = z10;
        if (M()) {
            this.f26281j.setPlayer(this.f26284m);
        } else {
            StyledPlayerControlView styledPlayerControlView = this.f26281j;
            if (styledPlayerControlView != null) {
                styledPlayerControlView.hide();
                this.f26281j.setPlayer(null);
            }
        }
        H();
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        View view = this.f26275d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i10);
        }
    }

    public void showController() {
        D(C());
    }

    protected void y(AspectRatioFrameLayout aspectRatioFrameLayout, float f10) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f10);
        }
    }

    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public void setControllerVisibilityListener(@Nullable StyledPlayerControlView.m mVar) {
        com.google.android.exoplayer2.util.a.i(this.f26281j);
        StyledPlayerControlView.m mVar2 = this.f26286o;
        if (mVar2 == mVar) {
            return;
        }
        if (mVar2 != null) {
            this.f26281j.removeVisibilityListener(mVar2);
        }
        this.f26286o = mVar;
        if (mVar != null) {
            this.f26281j.addVisibilityListener(mVar);
        }
        setControllerVisibilityListener((b) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StyledPlayerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11;
        int i12;
        boolean z10;
        boolean z11;
        int i13;
        boolean z12;
        int i14;
        boolean z13;
        int i15;
        boolean z14;
        int i16;
        boolean z15;
        boolean z16;
        int i17;
        boolean z17;
        super(context, attributeSet, i10);
        a aVar = new a();
        this.f26272a = aVar;
        if (isInEditMode()) {
            this.f26273b = null;
            this.f26274c = null;
            this.f26275d = null;
            this.f26276e = false;
            this.f26277f = null;
            this.f26278g = null;
            this.f26279h = null;
            this.f26280i = null;
            this.f26281j = null;
            this.f26282k = null;
            this.f26283l = null;
            ImageView imageView = new ImageView(context);
            if (com.google.android.exoplayer2.util.p0.f26854a >= 23) {
                t(getResources(), imageView);
            } else {
                s(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i18 = R$layout.exo_styled_player_view;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.StyledPlayerView, i10, 0);
            try {
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.StyledPlayerView_shutter_background_color);
                int color = typedArrayObtainStyledAttributes.getColor(R$styleable.StyledPlayerView_shutter_background_color, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.StyledPlayerView_player_layout_id, i18);
                boolean z18 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_use_artwork, true);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.StyledPlayerView_default_artwork, 0);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_use_controller, true);
                int i19 = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerView_surface_type, 1);
                int i20 = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerView_resize_mode, 0);
                int i21 = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerView_show_timeout, 5000);
                boolean z20 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_hide_on_touch, true);
                boolean z21 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_auto_show, true);
                int integer = typedArrayObtainStyledAttributes.getInteger(R$styleable.StyledPlayerView_show_buffering, 0);
                this.f26290s = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_keep_content_on_player_reset, this.f26290s);
                boolean z22 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerView_hide_during_ads, true);
                typedArrayObtainStyledAttributes.recycle();
                i18 = resourceId;
                z12 = z20;
                i11 = i21;
                z11 = z22;
                i13 = i20;
                z10 = z21;
                i12 = integer;
                z15 = z19;
                i16 = resourceId2;
                z14 = z18;
                i15 = color;
                z13 = zHasValue;
                i14 = i19;
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            i11 = 5000;
            i12 = 0;
            z10 = true;
            z11 = true;
            i13 = 0;
            z12 = true;
            i14 = 1;
            z13 = false;
            i15 = 0;
            z14 = true;
            i16 = 0;
            z15 = true;
        }
        LayoutInflater.from(context).inflate(i18, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R$id.exo_content_frame);
        this.f26273b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            B(aspectRatioFrameLayout, i13);
        }
        View viewFindViewById = findViewById(R$id.exo_shutter);
        this.f26274c = viewFindViewById;
        if (viewFindViewById != null && z13) {
            viewFindViewById.setBackgroundColor(i15);
        }
        if (aspectRatioFrameLayout != null && i14 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i14 == 2) {
                this.f26275d = new TextureView(context);
            } else {
                if (i14 == 3) {
                    try {
                        int i22 = SphericalGLSurfaceView.f27046m;
                        this.f26275d = (View) SphericalGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                        z17 = true;
                    } catch (Exception e10) {
                        throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e10);
                    }
                } else if (i14 != 4) {
                    this.f26275d = new SurfaceView(context);
                } else {
                    try {
                        int i23 = VideoDecoderGLSurfaceView.f26934b;
                        this.f26275d = (View) VideoDecoderGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                    } catch (Exception e11) {
                        throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e11);
                    }
                }
                this.f26275d.setLayoutParams(layoutParams);
                this.f26275d.setOnClickListener(aVar);
                this.f26275d.setClickable(false);
                aspectRatioFrameLayout.addView(this.f26275d, 0);
                z16 = z17;
            }
            z17 = false;
            this.f26275d.setLayoutParams(layoutParams);
            this.f26275d.setOnClickListener(aVar);
            this.f26275d.setClickable(false);
            aspectRatioFrameLayout.addView(this.f26275d, 0);
            z16 = z17;
        } else {
            this.f26275d = null;
            z16 = false;
        }
        this.f26276e = z16;
        this.f26282k = (FrameLayout) findViewById(R$id.exo_ad_overlay);
        this.f26283l = (FrameLayout) findViewById(R$id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_artwork);
        this.f26277f = imageView2;
        this.f26287p = z14 && imageView2 != null;
        if (i16 != 0) {
            this.f26288q = androidx.core.content.b.getDrawable(getContext(), i16);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R$id.exo_subtitles);
        this.f26278g = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View viewFindViewById2 = findViewById(R$id.exo_buffering);
        this.f26279h = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.f26289r = i12;
        TextView textView = (TextView) findViewById(R$id.exo_error_message);
        this.f26280i = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        StyledPlayerControlView styledPlayerControlView = (StyledPlayerControlView) findViewById(R$id.exo_controller);
        View viewFindViewById3 = findViewById(R$id.exo_controller_placeholder);
        if (styledPlayerControlView != null) {
            this.f26281j = styledPlayerControlView;
            i17 = 0;
        } else if (viewFindViewById3 != null) {
            i17 = 0;
            StyledPlayerControlView styledPlayerControlView2 = new StyledPlayerControlView(context, null, 0, attributeSet);
            this.f26281j = styledPlayerControlView2;
            styledPlayerControlView2.setId(R$id.exo_controller);
            styledPlayerControlView2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(styledPlayerControlView2, iIndexOfChild);
        } else {
            i17 = 0;
            this.f26281j = null;
        }
        StyledPlayerControlView styledPlayerControlView3 = this.f26281j;
        this.f26292u = styledPlayerControlView3 != null ? i11 : i17;
        this.f26295x = z12;
        this.f26293v = z10;
        this.f26294w = z11;
        this.f26285n = (!z15 || styledPlayerControlView3 == null) ? i17 : 1;
        if (styledPlayerControlView3 != null) {
            styledPlayerControlView3.hideImmediately();
            this.f26281j.addVisibilityListener(aVar);
        }
        if (z15) {
            setClickable(true);
        }
        H();
    }
}
