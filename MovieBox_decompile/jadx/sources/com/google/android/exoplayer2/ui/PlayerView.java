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

@Deprecated
public class PlayerView extends FrameLayout {
    public static final int SHOW_BUFFERING_ALWAYS = 2;
    public static final int SHOW_BUFFERING_NEVER = 0;
    public static final int SHOW_BUFFERING_WHEN_PLAYING = 1;

    private final a f26172a;

    private final AspectRatioFrameLayout f26173b;

    private final View f26174c;

    private final View f26175d;

    private final boolean f26176e;

    private final ImageView f26177f;

    private final SubtitleView f26178g;

    private final View f26179h;

    private final TextView f26180i;

    private final PlayerControlView f26181j;

    private final FrameLayout f26182k;

    private final FrameLayout f26183l;

    private p2 f26184m;

    private boolean f26185n;

    private PlayerControlView.e f26186o;

    private boolean f26187p;

    private Drawable f26188q;

    private int f26189r;

    private boolean f26190s;

    private CharSequence f26191t;

    private int f26192u;

    private boolean f26193v;

    private boolean f26194w;

    private boolean f26195x;

    private int f26196y;

    private final class a implements p2.d, View.OnLayoutChangeListener, View.OnClickListener, PlayerControlView.e {

        private final l3.b f26197a = new l3.b();

        private Object f26198b;

        public a() {
        }

        @Override
        public void l(int i10) {
            PlayerView.this.F();
        }

        @Override
        public void onAvailableCommandsChanged(p2.b bVar) {
            r2.c(this, bVar);
        }

        @Override
        public void onClick(View view) {
            PlayerView.this.C();
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
            PlayerView.o((TextureView) view, PlayerView.this.f26196y);
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
            PlayerView.this.E();
            PlayerView.this.G();
        }

        @Override
        public void onPlaybackParametersChanged(o2 o2Var) {
            r2.q(this, o2Var);
        }

        @Override
        public void onPlaybackStateChanged(int i10) {
            PlayerView.this.E();
            PlayerView.this.H();
            PlayerView.this.G();
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
            if (PlayerView.this.f26174c != null) {
                PlayerView.this.f26174c.setVisibility(4);
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
            p2 p2Var = (p2) com.google.android.exoplayer2.util.a.e(PlayerView.this.f26184m);
            l3 currentTimeline = p2Var.getCurrentTimeline();
            if (currentTimeline.u()) {
                this.f26198b = null;
            } else if (p2Var.getCurrentTracks().c()) {
                Object obj = this.f26198b;
                if (obj != null) {
                    int iF = currentTimeline.f(obj);
                    if (iF != -1) {
                        if (p2Var.u() == currentTimeline.j(iF, this.f26197a).f24525c) {
                            return;
                        }
                    }
                    this.f26198b = null;
                }
            } else {
                this.f26198b = currentTimeline.k(p2Var.getCurrentPeriodIndex(), this.f26197a, true).f24524b;
            }
            PlayerView.this.I(false);
        }

        @Override
        public void onVideoSizeChanged(com.google.android.exoplayer2.video.y yVar) {
            PlayerView.this.D();
        }

        @Override
        public void onVolumeChanged(float f10) {
            r2.L(this, f10);
        }

        @Override
        public void onCues(da.f fVar) {
            if (PlayerView.this.f26178g != null) {
                PlayerView.this.f26178g.setCues(fVar.f58960a);
            }
        }

        @Override
        public void onPositionDiscontinuity(p2.e eVar, p2.e eVar2, int i10) {
            if (PlayerView.this.u() && PlayerView.this.f26194w) {
                PlayerView.this.hideController();
            }
        }
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    private boolean A() {
        p2 p2Var = this.f26184m;
        if (p2Var == null) {
            return true;
        }
        int playbackState = p2Var.getPlaybackState();
        return this.f26193v && (playbackState == 1 || playbackState == 4 || !this.f26184m.getPlayWhenReady());
    }

    private void B(boolean z10) {
        if (K()) {
            this.f26181j.setShowTimeoutMs(z10 ? 0 : this.f26192u);
            this.f26181j.show();
        }
    }

    public void C() {
        if (!K() || this.f26184m == null) {
            return;
        }
        if (!this.f26181j.isVisible()) {
            v(true);
        } else if (this.f26195x) {
            this.f26181j.hide();
        }
    }

    public void D() {
        p2 p2Var = this.f26184m;
        com.google.android.exoplayer2.video.y yVarQ = p2Var != null ? p2Var.q() : com.google.android.exoplayer2.video.y.f27138e;
        int i10 = yVarQ.f27140a;
        int i11 = yVarQ.f27141b;
        int i12 = yVarQ.f27142c;
        float f10 = (i11 == 0 || i10 == 0) ? 0.0f : (i10 * yVarQ.f27143d) / i11;
        View view = this.f26175d;
        if (view instanceof TextureView) {
            if (f10 > 0.0f && (i12 == 90 || i12 == 270)) {
                f10 = 1.0f / f10;
            }
            if (this.f26196y != 0) {
                view.removeOnLayoutChangeListener(this.f26172a);
            }
            this.f26196y = i12;
            if (i12 != 0) {
                this.f26175d.addOnLayoutChangeListener(this.f26172a);
            }
            o((TextureView) this.f26175d, this.f26196y);
        }
        w(this.f26173b, this.f26176e ? 0.0f : f10);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0020  */
    public void E() {
        boolean z10;
        if (this.f26179h != null) {
            p2 p2Var = this.f26184m;
            if (p2Var == null || p2Var.getPlaybackState() != 2) {
                z10 = false;
            } else {
                int i10 = this.f26189r;
                z10 = true;
                if (i10 != 2 && (i10 != 1 || !this.f26184m.getPlayWhenReady())) {
                    z10 = false;
                }
            }
            this.f26179h.setVisibility(z10 ? 0 : 8);
        }
    }

    public void F() {
        PlayerControlView playerControlView = this.f26181j;
        if (playerControlView == null || !this.f26185n) {
            setContentDescription(null);
        } else if (playerControlView.getVisibility() == 0) {
            setContentDescription(this.f26195x ? getResources().getString(R$string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R$string.exo_controls_show));
        }
    }

    public void G() {
        if (u() && this.f26194w) {
            hideController();
        } else {
            v(false);
        }
    }

    public void H() {
        TextView textView = this.f26180i;
        if (textView != null) {
            CharSequence charSequence = this.f26191t;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f26180i.setVisibility(0);
            } else {
                p2 p2Var = this.f26184m;
                if (p2Var != null) {
                    p2Var.c();
                }
                this.f26180i.setVisibility(8);
            }
        }
    }

    public void I(boolean z10) {
        p2 p2Var = this.f26184m;
        if (p2Var == null || !p2Var.i(30) || p2Var.getCurrentTracks().c()) {
            if (this.f26190s) {
                return;
            }
            s();
            p();
            return;
        }
        if (z10 && !this.f26190s) {
            p();
        }
        if (p2Var.getCurrentTracks().d(2)) {
            s();
            return;
        }
        p();
        if (J() && (x(p2Var.y()) || y(this.f26188q))) {
            return;
        }
        s();
    }

    private boolean J() {
        if (!this.f26187p) {
            return false;
        }
        com.google.android.exoplayer2.util.a.i(this.f26177f);
        return true;
    }

    private boolean K() {
        if (!this.f26185n) {
            return false;
        }
        com.google.android.exoplayer2.util.a.i(this.f26181j);
        return true;
    }

    public static void o(TextureView textureView, int i10) {
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

    private void p() {
        View view = this.f26174c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void q(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R$drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color));
    }

    private static void r(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R$drawable.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color, null));
    }

    private void s() {
        ImageView imageView = this.f26177f;
        if (imageView != null) {
            imageView.setImageResource(R.color.transparent);
            this.f26177f.setVisibility(4);
        }
    }

    public static void switchTargetView(p2 p2Var, @Nullable PlayerView playerView, @Nullable PlayerView playerView2) {
        if (playerView == playerView2) {
            return;
        }
        if (playerView2 != null) {
            playerView2.setPlayer(p2Var);
        }
        if (playerView != null) {
            playerView.setPlayer(null);
        }
    }

    private boolean t(int i10) {
        return i10 == 19 || i10 == 270 || i10 == 22 || i10 == 271 || i10 == 20 || i10 == 269 || i10 == 21 || i10 == 268 || i10 == 23;
    }

    public boolean u() {
        p2 p2Var = this.f26184m;
        return p2Var != null && p2Var.isPlayingAd() && this.f26184m.getPlayWhenReady();
    }

    private void v(boolean z10) {
        if (!(u() && this.f26194w) && K()) {
            boolean z11 = this.f26181j.isVisible() && this.f26181j.getShowTimeoutMs() <= 0;
            boolean zA = A();
            if (z10 || z11 || zA) {
                B(zA);
            }
        }
    }

    private boolean x(b2 b2Var) {
        byte[] bArr = b2Var.f24120j;
        if (bArr == null) {
            return false;
        }
        return y(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    private boolean y(Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                w(this.f26173b, intrinsicWidth / intrinsicHeight);
                this.f26177f.setImageDrawable(drawable);
                this.f26177f.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private static void z(AspectRatioFrameLayout aspectRatioFrameLayout, int i10) {
        aspectRatioFrameLayout.setResizeMode(i10);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        p2 p2Var = this.f26184m;
        if (p2Var != null && p2Var.isPlayingAd()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean zT = t(keyEvent.getKeyCode());
        if (zT && K() && !this.f26181j.isVisible()) {
            v(true);
            return true;
        }
        if (dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            v(true);
            return true;
        }
        if (zT && K()) {
            v(true);
        }
        return false;
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        return K() && this.f26181j.dispatchMediaKeyEvent(keyEvent);
    }

    public List<com.google.android.exoplayer2.ui.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f26183l;
        if (frameLayout != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(frameLayout, 4, "Transparent overlay does not impact viewability"));
        }
        PlayerControlView playerControlView = this.f26181j;
        if (playerControlView != null) {
            arrayList.add(new com.google.android.exoplayer2.ui.a(playerControlView, 1));
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) com.google.android.exoplayer2.util.a.j(this.f26182k, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f26193v;
    }

    public boolean getControllerHideOnTouch() {
        return this.f26195x;
    }

    public int getControllerShowTimeoutMs() {
        return this.f26192u;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f26188q;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f26183l;
    }

    @Nullable
    public p2 getPlayer() {
        return this.f26184m;
    }

    public int getResizeMode() {
        com.google.android.exoplayer2.util.a.i(this.f26173b);
        return this.f26173b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f26178g;
    }

    public boolean getUseArtwork() {
        return this.f26187p;
    }

    public boolean getUseController() {
        return this.f26185n;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f26175d;
    }

    public void hideController() {
        PlayerControlView playerControlView = this.f26181j;
        if (playerControlView != null) {
            playerControlView.hide();
        }
    }

    public boolean isControllerVisible() {
        PlayerControlView playerControlView = this.f26181j;
        return playerControlView != null && playerControlView.isVisible();
    }

    public void onPause() {
        View view = this.f26175d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onPause();
        }
    }

    public void onResume() {
        View view = this.f26175d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onResume();
        }
    }

    @Override
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!K() || this.f26184m == null) {
            return false;
        }
        v(true);
        return true;
    }

    @Override
    public boolean performClick() {
        C();
        return super.performClick();
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.b bVar) {
        com.google.android.exoplayer2.util.a.i(this.f26173b);
        this.f26173b.setAspectRatioListener(bVar);
    }

    public void setControllerAutoShow(boolean z10) {
        this.f26193v = z10;
    }

    public void setControllerHideDuringAds(boolean z10) {
        this.f26194w = z10;
    }

    public void setControllerHideOnTouch(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26181j);
        this.f26195x = z10;
        F();
    }

    public void setControllerShowTimeoutMs(int i10) {
        com.google.android.exoplayer2.util.a.i(this.f26181j);
        this.f26192u = i10;
        if (this.f26181j.isVisible()) {
            showController();
        }
    }

    public void setControllerVisibilityListener(@Nullable PlayerControlView.e eVar) {
        com.google.android.exoplayer2.util.a.i(this.f26181j);
        PlayerControlView.e eVar2 = this.f26186o;
        if (eVar2 == eVar) {
            return;
        }
        if (eVar2 != null) {
            this.f26181j.removeVisibilityListener(eVar2);
        }
        this.f26186o = eVar;
        if (eVar != null) {
            this.f26181j.addVisibilityListener(eVar);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        com.google.android.exoplayer2.util.a.g(this.f26180i != null);
        this.f26191t = charSequence;
        H();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f26188q != drawable) {
            this.f26188q = drawable;
            I(false);
        }
    }

    public void setErrorMessageProvider(@Nullable com.google.android.exoplayer2.util.k kVar) {
        if (kVar != null) {
            H();
        }
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        com.google.android.exoplayer2.util.a.i(this.f26181j);
        this.f26181j.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setKeepContentOnPlayerReset(boolean z10) {
        if (this.f26190s != z10) {
            this.f26190s = z10;
            I(false);
        }
    }

    public void setPlayer(@Nullable p2 p2Var) {
        com.google.android.exoplayer2.util.a.g(Looper.myLooper() == Looper.getMainLooper());
        com.google.android.exoplayer2.util.a.a(p2Var == null || p2Var.l() == Looper.getMainLooper());
        p2 p2Var2 = this.f26184m;
        if (p2Var2 == p2Var) {
            return;
        }
        if (p2Var2 != null) {
            p2Var2.B(this.f26172a);
            if (p2Var2.i(27)) {
                View view = this.f26175d;
                if (view instanceof TextureView) {
                    p2Var2.clearVideoTextureView((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    p2Var2.clearVideoSurfaceView((SurfaceView) view);
                }
            }
        }
        SubtitleView subtitleView = this.f26178g;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f26184m = p2Var;
        if (K()) {
            this.f26181j.setPlayer(p2Var);
        }
        E();
        H();
        I(true);
        if (p2Var == null) {
            hideController();
            return;
        }
        if (p2Var.i(27)) {
            View view2 = this.f26175d;
            if (view2 instanceof TextureView) {
                p2Var.setVideoTextureView((TextureView) view2);
            } else if (view2 instanceof SurfaceView) {
                p2Var.setVideoSurfaceView((SurfaceView) view2);
            }
            D();
        }
        if (this.f26178g != null && p2Var.i(28)) {
            this.f26178g.setCues(p2Var.h().f58960a);
        }
        p2Var.E(this.f26172a);
        v(false);
    }

    public void setRepeatToggleModes(int i10) {
        com.google.android.exoplayer2.util.a.i(this.f26181j);
        this.f26181j.setRepeatToggleModes(i10);
    }

    public void setResizeMode(int i10) {
        com.google.android.exoplayer2.util.a.i(this.f26173b);
        this.f26173b.setResizeMode(i10);
    }

    public void setShowBuffering(int i10) {
        if (this.f26189r != i10) {
            this.f26189r = i10;
            E();
        }
    }

    public void setShowFastForwardButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26181j);
        this.f26181j.setShowFastForwardButton(z10);
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26181j);
        this.f26181j.setShowMultiWindowTimeBar(z10);
    }

    public void setShowNextButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26181j);
        this.f26181j.setShowNextButton(z10);
    }

    public void setShowPreviousButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26181j);
        this.f26181j.setShowPreviousButton(z10);
    }

    public void setShowRewindButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26181j);
        this.f26181j.setShowRewindButton(z10);
    }

    public void setShowShuffleButton(boolean z10) {
        com.google.android.exoplayer2.util.a.i(this.f26181j);
        this.f26181j.setShowShuffleButton(z10);
    }

    public void setShutterBackgroundColor(int i10) {
        View view = this.f26174c;
        if (view != null) {
            view.setBackgroundColor(i10);
        }
    }

    public void setUseArtwork(boolean z10) {
        com.google.android.exoplayer2.util.a.g((z10 && this.f26177f == null) ? false : true);
        if (this.f26187p != z10) {
            this.f26187p = z10;
            I(false);
        }
    }

    public void setUseController(boolean z10) {
        boolean z11 = true;
        com.google.android.exoplayer2.util.a.g((z10 && this.f26181j == null) ? false : true);
        if (!z10 && !hasOnClickListeners()) {
            z11 = false;
        }
        setClickable(z11);
        if (this.f26185n == z10) {
            return;
        }
        this.f26185n = z10;
        if (K()) {
            this.f26181j.setPlayer(this.f26184m);
        } else {
            PlayerControlView playerControlView = this.f26181j;
            if (playerControlView != null) {
                playerControlView.hide();
                this.f26181j.setPlayer(null);
            }
        }
        F();
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        View view = this.f26175d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i10);
        }
    }

    public void showController() {
        B(A());
    }

    protected void w(AspectRatioFrameLayout aspectRatioFrameLayout, float f10) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f10);
        }
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlayerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
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
        this.f26172a = aVar;
        if (isInEditMode()) {
            this.f26173b = null;
            this.f26174c = null;
            this.f26175d = null;
            this.f26176e = false;
            this.f26177f = null;
            this.f26178g = null;
            this.f26179h = null;
            this.f26180i = null;
            this.f26181j = null;
            this.f26182k = null;
            this.f26183l = null;
            ImageView imageView = new ImageView(context);
            if (com.google.android.exoplayer2.util.p0.f26854a >= 23) {
                r(getResources(), imageView);
            } else {
                q(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i18 = R$layout.exo_player_view;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.PlayerView, i10, 0);
            try {
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.PlayerView_shutter_background_color);
                int color = typedArrayObtainStyledAttributes.getColor(R$styleable.PlayerView_shutter_background_color, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerView_player_layout_id, i18);
                boolean z18 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_use_artwork, true);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerView_default_artwork, 0);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_use_controller, true);
                int i19 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerView_surface_type, 1);
                int i20 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerView_resize_mode, 0);
                int i21 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerView_show_timeout, 5000);
                boolean z20 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_hide_on_touch, true);
                boolean z21 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_auto_show, true);
                int integer = typedArrayObtainStyledAttributes.getInteger(R$styleable.PlayerView_show_buffering, 0);
                this.f26190s = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_keep_content_on_player_reset, this.f26190s);
                boolean z22 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_hide_during_ads, true);
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
        this.f26173b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            z(aspectRatioFrameLayout, i13);
        }
        View viewFindViewById = findViewById(R$id.exo_shutter);
        this.f26174c = viewFindViewById;
        if (viewFindViewById != null && z13) {
            viewFindViewById.setBackgroundColor(i15);
        }
        if (aspectRatioFrameLayout != null && i14 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i14 == 2) {
                this.f26175d = new TextureView(context);
            } else {
                if (i14 == 3) {
                    try {
                        int i22 = SphericalGLSurfaceView.f27046m;
                        this.f26175d = (View) SphericalGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                        z17 = true;
                    } catch (Exception e10) {
                        throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e10);
                    }
                } else if (i14 != 4) {
                    this.f26175d = new SurfaceView(context);
                } else {
                    try {
                        int i23 = VideoDecoderGLSurfaceView.f26934b;
                        this.f26175d = (View) VideoDecoderGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                    } catch (Exception e11) {
                        throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e11);
                    }
                }
                this.f26175d.setLayoutParams(layoutParams);
                this.f26175d.setOnClickListener(aVar);
                this.f26175d.setClickable(false);
                aspectRatioFrameLayout.addView(this.f26175d, 0);
                z16 = z17;
            }
            z17 = false;
            this.f26175d.setLayoutParams(layoutParams);
            this.f26175d.setOnClickListener(aVar);
            this.f26175d.setClickable(false);
            aspectRatioFrameLayout.addView(this.f26175d, 0);
            z16 = z17;
        } else {
            this.f26175d = null;
            z16 = false;
        }
        this.f26176e = z16;
        this.f26182k = (FrameLayout) findViewById(R$id.exo_ad_overlay);
        this.f26183l = (FrameLayout) findViewById(R$id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_artwork);
        this.f26177f = imageView2;
        this.f26187p = z14 && imageView2 != null;
        if (i16 != 0) {
            this.f26188q = androidx.core.content.b.getDrawable(getContext(), i16);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R$id.exo_subtitles);
        this.f26178g = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View viewFindViewById2 = findViewById(R$id.exo_buffering);
        this.f26179h = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.f26189r = i12;
        TextView textView = (TextView) findViewById(R$id.exo_error_message);
        this.f26180i = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        PlayerControlView playerControlView = (PlayerControlView) findViewById(R$id.exo_controller);
        View viewFindViewById3 = findViewById(R$id.exo_controller_placeholder);
        if (playerControlView != null) {
            this.f26181j = playerControlView;
            i17 = 0;
        } else if (viewFindViewById3 != null) {
            i17 = 0;
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.f26181j = playerControlView2;
            playerControlView2.setId(R$id.exo_controller);
            playerControlView2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(playerControlView2, iIndexOfChild);
        } else {
            i17 = 0;
            this.f26181j = null;
        }
        PlayerControlView playerControlView3 = this.f26181j;
        this.f26192u = playerControlView3 != null ? i11 : i17;
        this.f26195x = z12;
        this.f26193v = z10;
        this.f26194w = z11;
        this.f26185n = (!z15 || playerControlView3 == null) ? i17 : 1;
        if (playerControlView3 != null) {
            playerControlView3.hide();
            this.f26181j.addVisibilityListener(aVar);
        }
        if (z15) {
            setClickable(true);
        }
        F();
    }
}
