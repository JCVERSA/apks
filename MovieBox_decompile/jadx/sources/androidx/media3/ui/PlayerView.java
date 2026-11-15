package androidx.media3.ui;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.AttachedSurfaceControl;
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
import android.window.SurfaceSyncGroup;
import androidx.annotation.Nullable;
import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.video.VideoDecoderGLSurfaceView;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import com.google.common.collect.ImmutableList;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class PlayerView extends FrameLayout {
    public static final int ARTWORK_DISPLAY_MODE_FILL = 2;
    public static final int ARTWORK_DISPLAY_MODE_FIT = 1;
    public static final int ARTWORK_DISPLAY_MODE_OFF = 0;
    public static final int IMAGE_DISPLAY_MODE_FILL = 1;
    public static final int IMAGE_DISPLAY_MODE_FIT = 0;
    public static final int SHOW_BUFFERING_ALWAYS = 2;
    public static final int SHOW_BUFFERING_NEVER = 0;
    public static final int SHOW_BUFFERING_WHEN_PLAYING = 1;
    private CharSequence A;
    private int B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;

    private final c f13255a;

    private final AspectRatioFrameLayout f13256b;

    private final View f13257c;

    private final View f13258d;

    private final boolean f13259e;

    private final f f13260f;

    private final ImageView f13261g;

    private final ImageView f13262h;

    private final SubtitleView f13263i;

    private final View f13264j;

    private final TextView f13265k;

    private final PlayerControlView f13266l;

    private final FrameLayout f13267m;

    private final FrameLayout f13268n;

    private final Handler f13269o;

    private final Class f13270p;

    private final Method f13271q;

    private final Object f13272r;

    private androidx.media3.common.a0 f13273s;

    private boolean f13274t;

    private PlayerControlView.m f13275u;

    private int f13276v;

    private int f13277w;

    private Drawable f13278x;

    private int f13279y;

    private boolean f13280z;

    private static class b {
        public static void a(SurfaceView surfaceView) {
            surfaceView.setSurfaceLifecycle(2);
        }
    }

    private final class c implements androidx.media3.common.a0.d, View.OnClickListener, PlayerControlView.m, PlayerControlView.d {

        private final androidx.media3.common.e0.b f13281a = new androidx.media3.common.e0.b();

        private Object f13282b;

        public c() {
        }

        @Override
        public void l(int i10) {
            PlayerView.this.X();
            PlayerView.o(PlayerView.this);
        }

        @Override
        public void onAudioSessionIdChanged(int i10) {
            androidx.media3.common.b0.b(this, i10);
        }

        @Override
        public void onAvailableCommandsChanged(androidx.media3.common.a0.b bVar) {
            androidx.media3.common.b0.c(this, bVar);
        }

        @Override
        public void onClick(View view) {
            PlayerView.this.U();
        }

        @Override
        public void onCues(List list) {
            androidx.media3.common.b0.d(this, list);
        }

        @Override
        public void onDeviceInfoChanged(androidx.media3.common.m mVar) {
            androidx.media3.common.b0.f(this, mVar);
        }

        @Override
        public void onDeviceVolumeChanged(int i10, boolean z10) {
            androidx.media3.common.b0.g(this, i10, z10);
        }

        @Override
        public void onEvents(androidx.media3.common.a0 a0Var, androidx.media3.common.a0.c cVar) {
            androidx.media3.common.b0.h(this, a0Var, cVar);
        }

        @Override
        public void onIsLoadingChanged(boolean z10) {
            androidx.media3.common.b0.i(this, z10);
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            androidx.media3.common.b0.j(this, z10);
        }

        @Override
        public void onLoadingChanged(boolean z10) {
            androidx.media3.common.b0.k(this, z10);
        }

        @Override
        public void onMediaItemTransition(androidx.media3.common.t tVar, int i10) {
            androidx.media3.common.b0.m(this, tVar, i10);
        }

        @Override
        public void onMediaMetadataChanged(androidx.media3.common.v vVar) {
            androidx.media3.common.b0.n(this, vVar);
        }

        @Override
        public void onMetadata(androidx.media3.common.x xVar) {
            androidx.media3.common.b0.o(this, xVar);
        }

        @Override
        public void onPlayWhenReadyChanged(boolean z10, int i10) {
            PlayerView.this.W();
            PlayerView.this.Y();
        }

        @Override
        public void onPlaybackParametersChanged(androidx.media3.common.z zVar) {
            androidx.media3.common.b0.q(this, zVar);
        }

        @Override
        public void onPlaybackStateChanged(int i10) {
            PlayerView.this.W();
            PlayerView.this.Z();
            PlayerView.this.Y();
        }

        @Override
        public void onPlaybackSuppressionReasonChanged(int i10) {
            androidx.media3.common.b0.s(this, i10);
        }

        @Override
        public void onPlayerError(PlaybackException playbackException) {
            androidx.media3.common.b0.t(this, playbackException);
        }

        @Override
        public void onPlayerErrorChanged(PlaybackException playbackException) {
            androidx.media3.common.b0.u(this, playbackException);
        }

        @Override
        public void onPlayerStateChanged(boolean z10, int i10) {
            androidx.media3.common.b0.v(this, z10, i10);
        }

        @Override
        public void onPositionDiscontinuity(int i10) {
            androidx.media3.common.b0.x(this, i10);
        }

        @Override
        public void onRenderedFirstFrame() {
            if (PlayerView.this.f13257c != null) {
                PlayerView.this.f13257c.setVisibility(4);
                if (PlayerView.this.B()) {
                    PlayerView.this.F();
                } else {
                    PlayerView.this.D();
                }
            }
        }

        @Override
        public void onRepeatModeChanged(int i10) {
            androidx.media3.common.b0.A(this, i10);
        }

        @Override
        public void onShuffleModeEnabledChanged(boolean z10) {
            androidx.media3.common.b0.D(this, z10);
        }

        @Override
        public void onSkipSilenceEnabledChanged(boolean z10) {
            androidx.media3.common.b0.E(this, z10);
        }

        @Override
        public void onSurfaceSizeChanged(int i10, int i11) {
            if (androidx.media3.common.util.a1.f10038a == 34 && (PlayerView.this.f13258d instanceof SurfaceView) && PlayerView.this.F) {
                f fVar = (f) androidx.media3.common.util.a.e(PlayerView.this.f13260f);
                Handler handler = PlayerView.this.f13269o;
                SurfaceView surfaceView = (SurfaceView) PlayerView.this.f13258d;
                final PlayerView playerView = PlayerView.this;
                fVar.f(handler, surfaceView, new Runnable() {
                    @Override
                    public final void run() {
                        playerView.invalidate();
                    }
                });
            }
        }

        @Override
        public void onTimelineChanged(androidx.media3.common.e0 e0Var, int i10) {
            androidx.media3.common.b0.G(this, e0Var, i10);
        }

        @Override
        public void onTrackSelectionParametersChanged(androidx.media3.common.h0 h0Var) {
            androidx.media3.common.b0.H(this, h0Var);
        }

        @Override
        public void onTracksChanged(androidx.media3.common.i0 i0Var) {
            androidx.media3.common.a0 a0Var = (androidx.media3.common.a0) androidx.media3.common.util.a.e(PlayerView.this.f13273s);
            androidx.media3.common.e0 currentTimeline = a0Var.i(17) ? a0Var.getCurrentTimeline() : androidx.media3.common.e0.f9613a;
            if (currentTimeline.q()) {
                this.f13282b = null;
            } else if (!a0Var.i(30) || a0Var.getCurrentTracks().b()) {
                Object obj = this.f13282b;
                if (obj != null) {
                    int iB = currentTimeline.b(obj);
                    if (iB != -1) {
                        if (a0Var.u() == currentTimeline.f(iB, this.f13281a).f9624c) {
                            return;
                        }
                    }
                    this.f13282b = null;
                }
            } else {
                this.f13282b = currentTimeline.g(a0Var.getCurrentPeriodIndex(), this.f13281a, true).f9623b;
            }
            PlayerView.this.a0(false);
        }

        @Override
        public void onVideoSizeChanged(androidx.media3.common.m0 m0Var) {
            if (m0Var.equals(androidx.media3.common.m0.f9799e) || PlayerView.this.f13273s == null || PlayerView.this.f13273s.getPlaybackState() == 1) {
                return;
            }
            PlayerView.this.V();
        }

        @Override
        public void onVolumeChanged(float f10) {
            androidx.media3.common.b0.K(this, f10);
        }

        @Override
        public void p(boolean z10) {
            PlayerView.p(PlayerView.this);
        }

        @Override
        public void onCues(u1.b bVar) {
            if (PlayerView.this.f13263i != null) {
                PlayerView.this.f13263i.setCues(bVar.f72977a);
            }
        }

        @Override
        public void onPositionDiscontinuity(androidx.media3.common.a0.e eVar, androidx.media3.common.a0.e eVar2, int i10) {
            if (PlayerView.this.I() && PlayerView.this.D) {
                PlayerView.this.hideController();
            }
        }
    }

    public interface d {
    }

    public interface e {
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    private static void A(Context context, Resources resources, ImageView imageView) {
        imageView.setImageDrawable(androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color, null));
    }

    public boolean B() {
        androidx.media3.common.a0 a0Var = this.f13273s;
        return a0Var != null && this.f13272r != null && a0Var.i(30) && a0Var.getCurrentTracks().c(4);
    }

    private boolean C() {
        androidx.media3.common.a0 a0Var = this.f13273s;
        return a0Var != null && a0Var.i(30) && a0Var.getCurrentTracks().c(2);
    }

    public void D() {
        F();
        ImageView imageView = this.f13261g;
        if (imageView != null) {
            imageView.setImageResource(R.color.transparent);
        }
    }

    private void E() {
        ImageView imageView = this.f13262h;
        if (imageView != null) {
            imageView.setImageResource(R.color.transparent);
            this.f13262h.setVisibility(4);
        }
    }

    public void F() {
        ImageView imageView = this.f13261g;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
    }

    private boolean G(int i10) {
        return i10 == 19 || i10 == 270 || i10 == 22 || i10 == 271 || i10 == 20 || i10 == 269 || i10 == 21 || i10 == 268 || i10 == 23;
    }

    private boolean H() {
        Drawable drawable;
        ImageView imageView = this.f13261g;
        return (imageView == null || (drawable = imageView.getDrawable()) == null || drawable.getAlpha() == 0) ? false : true;
    }

    public boolean I() {
        androidx.media3.common.a0 a0Var = this.f13273s;
        return a0Var != null && a0Var.i(16) && this.f13273s.isPlayingAd() && this.f13273s.getPlayWhenReady();
    }

    public Object J(Object obj, Method method, Object[] objArr) {
        if (!method.getName().equals("onImageAvailable")) {
            return null;
        }
        N((Bitmap) objArr[1]);
        return null;
    }

    public void K(Bitmap bitmap) {
        setImage(new BitmapDrawable(getResources(), bitmap));
        if (C()) {
            return;
        }
        T();
        y();
    }

    private void L(boolean z10) {
        if (!(I() && this.D) && d0()) {
            boolean z11 = this.f13266l.isFullyVisible() && this.f13266l.getShowTimeoutMs() <= 0;
            boolean zR = R();
            if (z10 || z11 || zR) {
                S(zR);
            }
        }
    }

    private void N(final Bitmap bitmap) {
        this.f13269o.post(new Runnable() {
            @Override
            public final void run() {
                this.f13380a.K(bitmap);
            }
        });
    }

    private boolean O(androidx.media3.common.a0 a0Var) {
        byte[] bArr;
        if (a0Var == null || !a0Var.i(18) || (bArr = a0Var.y().f10201i) == null) {
            return false;
        }
        return P(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    private boolean P(Drawable drawable) {
        if (this.f13262h != null && drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                float width = intrinsicWidth / intrinsicHeight;
                ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                if (this.f13276v == 2) {
                    width = getWidth() / getHeight();
                    scaleType = ImageView.ScaleType.CENTER_CROP;
                }
                M(this.f13256b, width);
                this.f13262h.setScaleType(scaleType);
                this.f13262h.setImageDrawable(drawable);
                this.f13262h.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private static void Q(AspectRatioFrameLayout aspectRatioFrameLayout, int i10) {
        aspectRatioFrameLayout.setResizeMode(i10);
    }

    private boolean R() {
        androidx.media3.common.a0 a0Var = this.f13273s;
        if (a0Var == null) {
            return true;
        }
        int playbackState = a0Var.getPlaybackState();
        return this.C && !(this.f13273s.i(17) && this.f13273s.getCurrentTimeline().q()) && (playbackState == 1 || playbackState == 4 || !((androidx.media3.common.a0) androidx.media3.common.util.a.e(this.f13273s)).getPlayWhenReady());
    }

    private void S(boolean z10) {
        if (d0()) {
            this.f13266l.setShowTimeoutMs(z10 ? 0 : this.B);
            this.f13266l.show();
        }
    }

    private void T() {
        ImageView imageView = this.f13261g;
        if (imageView != null) {
            imageView.setVisibility(0);
            b0();
        }
    }

    public void U() {
        if (!d0() || this.f13273s == null) {
            return;
        }
        if (!this.f13266l.isFullyVisible()) {
            L(true);
        } else if (this.E) {
            this.f13266l.hide();
        }
    }

    public void V() {
        androidx.media3.common.a0 a0Var = this.f13273s;
        androidx.media3.common.m0 m0VarQ = a0Var != null ? a0Var.q() : androidx.media3.common.m0.f9799e;
        int i10 = m0VarQ.f9803a;
        int i11 = m0VarQ.f9804b;
        M(this.f13256b, this.f13259e ? 0.0f : (i11 == 0 || i10 == 0) ? 0.0f : (i10 * m0VarQ.f9806d) / i11);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0020  */
    public void W() {
        boolean z10;
        if (this.f13264j != null) {
            androidx.media3.common.a0 a0Var = this.f13273s;
            if (a0Var == null || a0Var.getPlaybackState() != 2) {
                z10 = false;
            } else {
                int i10 = this.f13279y;
                z10 = true;
                if (i10 != 2 && (i10 != 1 || !this.f13273s.getPlayWhenReady())) {
                    z10 = false;
                }
            }
            this.f13264j.setVisibility(z10 ? 0 : 8);
        }
    }

    public void X() {
        PlayerControlView playerControlView = this.f13266l;
        if (playerControlView == null || !this.f13274t) {
            setContentDescription(null);
        } else if (playerControlView.isFullyVisible()) {
            setContentDescription(this.E ? getResources().getString(R$string.exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R$string.exo_controls_show));
        }
    }

    public void Y() {
        if (I() && this.D) {
            hideController();
        } else {
            L(false);
        }
    }

    public void Z() {
        TextView textView = this.f13265k;
        if (textView != null) {
            CharSequence charSequence = this.A;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f13265k.setVisibility(0);
            } else {
                androidx.media3.common.a0 a0Var = this.f13273s;
                if (a0Var != null) {
                    a0Var.c();
                }
                this.f13265k.setVisibility(8);
            }
        }
    }

    public void a0(boolean z10) {
        androidx.media3.common.a0 a0Var = this.f13273s;
        boolean z11 = false;
        boolean z12 = (a0Var == null || !a0Var.i(30) || a0Var.getCurrentTracks().b()) ? false : true;
        if (!this.f13280z && (!z12 || z10)) {
            E();
            y();
            D();
        }
        if (z12) {
            boolean zC = C();
            boolean zB = B();
            if (!zC && !zB) {
                y();
                D();
            }
            View view = this.f13257c;
            if (view != null && view.getVisibility() == 4 && H()) {
                z11 = true;
            }
            if (zB && !zC && z11) {
                y();
                T();
            } else if (zC && !zB && z11) {
                D();
            }
            if (zC || zB || !c0() || !(O(a0Var) || P(this.f13278x))) {
                E();
            }
        }
    }

    private void b0() {
        Drawable drawable;
        ImageView imageView = this.f13261g;
        if (imageView == null || (drawable = imageView.getDrawable()) == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return;
        }
        float width = intrinsicWidth / intrinsicHeight;
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        if (this.f13277w == 1) {
            width = getWidth() / getHeight();
            scaleType = ImageView.ScaleType.CENTER_CROP;
        }
        if (this.f13261g.getVisibility() == 0) {
            M(this.f13256b, width);
        }
        this.f13261g.setScaleType(scaleType);
    }

    private boolean c0() {
        if (this.f13276v == 0) {
            return false;
        }
        androidx.media3.common.util.a.i(this.f13262h);
        return true;
    }

    private boolean d0() {
        if (!this.f13274t) {
            return false;
        }
        androidx.media3.common.util.a.i(this.f13266l);
        return true;
    }

    static d o(PlayerView playerView) {
        playerView.getClass();
        return null;
    }

    static e p(PlayerView playerView) {
        playerView.getClass();
        return null;
    }

    private void setImage(Drawable drawable) {
        ImageView imageView = this.f13261g;
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
        b0();
    }

    private void setImageOutput(androidx.media3.common.a0 a0Var) {
        Class cls = this.f13270p;
        if (cls == null || !cls.isAssignableFrom(a0Var.getClass())) {
            return;
        }
        try {
            ((Method) androidx.media3.common.util.a.e(this.f13271q)).invoke(a0Var, androidx.media3.common.util.a.e(this.f13272r));
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void switchTargetView(androidx.media3.common.a0 a0Var, @Nullable PlayerView playerView, @Nullable PlayerView playerView2) {
        if (playerView == playerView2) {
            return;
        }
        if (playerView2 != null) {
            playerView2.setPlayer(a0Var);
        }
        if (playerView != null) {
            playerView.setPlayer(null);
        }
    }

    private void x(androidx.media3.common.a0 a0Var) {
        Class cls = this.f13270p;
        if (cls == null || !cls.isAssignableFrom(a0Var.getClass())) {
            return;
        }
        try {
            ((Method) androidx.media3.common.util.a.e(this.f13271q)).invoke(a0Var, null);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    private void y() {
        View view = this.f13257c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void z(Context context, Resources resources, ImageView imageView) {
        imageView.setImageDrawable(androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R$color.exo_edit_mode_background_color));
    }

    protected void M(AspectRatioFrameLayout aspectRatioFrameLayout, float f10) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f10);
        }
    }

    @Override
    protected void dispatchDraw(Canvas canvas) {
        f fVar;
        super.dispatchDraw(canvas);
        if (androidx.media3.common.util.a1.f10038a == 34 && (fVar = this.f13260f) != null && this.F) {
            fVar.e();
        }
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        androidx.media3.common.a0 a0Var = this.f13273s;
        if (a0Var != null && a0Var.i(16) && this.f13273s.isPlayingAd()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean zG = G(keyEvent.getKeyCode());
        if (zG && d0() && !this.f13266l.isFullyVisible()) {
            L(true);
            return true;
        }
        if (dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            L(true);
            return true;
        }
        if (zG && d0()) {
            L(true);
        }
        return false;
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        return d0() && this.f13266l.dispatchMediaKeyEvent(keyEvent);
    }

    public List<androidx.media3.common.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f13268n;
        if (frameLayout != null) {
            arrayList.add(new androidx.media3.common.a.C0081a(frameLayout, 4).b("Transparent overlay does not impact viewability").a());
        }
        PlayerControlView playerControlView = this.f13266l;
        if (playerControlView != null) {
            arrayList.add(new androidx.media3.common.a.C0081a(playerControlView, 1).a());
        }
        return ImmutableList.copyOf((Collection) arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) androidx.media3.common.util.a.j(this.f13267m, "exo_ad_overlay must be present for ad playback");
    }

    public int getArtworkDisplayMode() {
        return this.f13276v;
    }

    public boolean getControllerAutoShow() {
        return this.C;
    }

    public boolean getControllerHideOnTouch() {
        return this.E;
    }

    public int getControllerShowTimeoutMs() {
        return this.B;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.f13278x;
    }

    public int getImageDisplayMode() {
        return this.f13277w;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.f13268n;
    }

    @Nullable
    public androidx.media3.common.a0 getPlayer() {
        return this.f13273s;
    }

    public int getResizeMode() {
        androidx.media3.common.util.a.i(this.f13256b);
        return this.f13256b.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.f13263i;
    }

    @Deprecated
    public boolean getUseArtwork() {
        return this.f13276v != 0;
    }

    public boolean getUseController() {
        return this.f13274t;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.f13258d;
    }

    public void hideController() {
        PlayerControlView playerControlView = this.f13266l;
        if (playerControlView != null) {
            playerControlView.hide();
        }
    }

    public boolean isControllerFullyVisible() {
        PlayerControlView playerControlView = this.f13266l;
        return playerControlView != null && playerControlView.isFullyVisible();
    }

    public void onPause() {
        View view = this.f13258d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onPause();
        }
    }

    public void onResume() {
        View view = this.f13258d;
        if (view instanceof GLSurfaceView) {
            ((GLSurfaceView) view).onResume();
        }
    }

    @Override
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!d0() || this.f13273s == null) {
            return false;
        }
        L(true);
        return true;
    }

    @Override
    public boolean performClick() {
        U();
        return super.performClick();
    }

    public void setArtworkDisplayMode(int i10) {
        androidx.media3.common.util.a.g(i10 == 0 || this.f13262h != null);
        if (this.f13276v != i10) {
            this.f13276v = i10;
            a0(false);
        }
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.b bVar) {
        androidx.media3.common.util.a.i(this.f13256b);
        this.f13256b.setAspectRatioListener(bVar);
    }

    public void setControllerAnimationEnabled(boolean z10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setAnimationEnabled(z10);
    }

    public void setControllerAutoShow(boolean z10) {
        this.C = z10;
    }

    public void setControllerHideDuringAds(boolean z10) {
        this.D = z10;
    }

    public void setControllerHideOnTouch(boolean z10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.E = z10;
        X();
    }

    @Deprecated
    public void setControllerOnFullScreenModeChangedListener(@Nullable PlayerControlView.d dVar) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setOnFullScreenModeChangedListener(dVar);
    }

    public void setControllerShowTimeoutMs(int i10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.B = i10;
        if (this.f13266l.isFullyVisible()) {
            showController();
        }
    }

    public void setControllerVisibilityListener(@Nullable d dVar) {
        if (dVar != null) {
            setControllerVisibilityListener((PlayerControlView.m) null);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        androidx.media3.common.util.a.g(this.f13265k != null);
        this.A = charSequence;
        Z();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.f13278x != drawable) {
            this.f13278x = drawable;
            a0(false);
        }
    }

    public void setEnableComposeSurfaceSyncWorkaround(boolean z10) {
        this.F = z10;
    }

    public void setErrorMessageProvider(@Nullable androidx.media3.common.n nVar) {
        if (nVar != null) {
            Z();
        }
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setFullscreenButtonClickListener(@Nullable e eVar) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setOnFullScreenModeChangedListener(this.f13255a);
    }

    public void setFullscreenButtonState(boolean z10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.updateIsFullscreen(z10);
    }

    public void setImageDisplayMode(int i10) {
        androidx.media3.common.util.a.g(this.f13261g != null);
        if (this.f13277w != i10) {
            this.f13277w = i10;
            b0();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z10) {
        if (this.f13280z != z10) {
            this.f13280z = z10;
            a0(false);
        }
    }

    public void setPlayer(@Nullable androidx.media3.common.a0 a0Var) {
        androidx.media3.common.util.a.g(Looper.myLooper() == Looper.getMainLooper());
        androidx.media3.common.util.a.a(a0Var == null || a0Var.l() == Looper.getMainLooper());
        androidx.media3.common.a0 a0Var2 = this.f13273s;
        if (a0Var2 == a0Var) {
            return;
        }
        if (a0Var2 != null) {
            a0Var2.L(this.f13255a);
            if (a0Var2.i(27)) {
                View view = this.f13258d;
                if (view instanceof TextureView) {
                    a0Var2.clearVideoTextureView((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    a0Var2.clearVideoSurfaceView((SurfaceView) view);
                }
            }
            x(a0Var2);
        }
        SubtitleView subtitleView = this.f13263i;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f13273s = a0Var;
        if (d0()) {
            this.f13266l.setPlayer(a0Var);
        }
        W();
        Z();
        a0(true);
        if (a0Var == null) {
            hideController();
            return;
        }
        if (a0Var.i(27)) {
            View view2 = this.f13258d;
            if (view2 instanceof TextureView) {
                a0Var.setVideoTextureView((TextureView) view2);
            } else if (view2 instanceof SurfaceView) {
                a0Var.setVideoSurfaceView((SurfaceView) view2);
            }
            if (!a0Var.i(30) || a0Var.getCurrentTracks().d(2)) {
                V();
            }
        }
        if (this.f13263i != null && a0Var.i(28)) {
            this.f13263i.setCues(a0Var.h().f72977a);
        }
        a0Var.M(this.f13255a);
        setImageOutput(a0Var);
        L(false);
    }

    public void setRepeatToggleModes(int i10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setRepeatToggleModes(i10);
    }

    public void setResizeMode(int i10) {
        androidx.media3.common.util.a.i(this.f13256b);
        this.f13256b.setResizeMode(i10);
    }

    public void setShowBuffering(int i10) {
        if (this.f13279y != i10) {
            this.f13279y = i10;
            W();
        }
    }

    public void setShowFastForwardButton(boolean z10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setShowFastForwardButton(z10);
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setShowMultiWindowTimeBar(z10);
    }

    public void setShowNextButton(boolean z10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setShowNextButton(z10);
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setShowPlayButtonIfPlaybackIsSuppressed(z10);
    }

    public void setShowPreviousButton(boolean z10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setShowPreviousButton(z10);
    }

    public void setShowRewindButton(boolean z10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setShowRewindButton(z10);
    }

    public void setShowShuffleButton(boolean z10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setShowShuffleButton(z10);
    }

    public void setShowSubtitleButton(boolean z10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setShowSubtitleButton(z10);
    }

    public void setShowVrButton(boolean z10) {
        androidx.media3.common.util.a.i(this.f13266l);
        this.f13266l.setShowVrButton(z10);
    }

    public void setShutterBackgroundColor(int i10) {
        View view = this.f13257c;
        if (view != null) {
            view.setBackgroundColor(i10);
        }
    }

    @Deprecated
    public void setUseArtwork(boolean z10) {
        setArtworkDisplayMode(!z10 ? 1 : 0);
    }

    public void setUseController(boolean z10) {
        boolean z11 = true;
        androidx.media3.common.util.a.g((z10 && this.f13266l == null) ? false : true);
        if (!z10 && !hasOnClickListeners()) {
            z11 = false;
        }
        setClickable(z11);
        if (this.f13274t == z10) {
            return;
        }
        this.f13274t = z10;
        if (d0()) {
            this.f13266l.setPlayer(this.f13273s);
        } else {
            PlayerControlView playerControlView = this.f13266l;
            if (playerControlView != null) {
                playerControlView.hide();
                this.f13266l.setPlayer(null);
            }
        }
        X();
    }

    @Override
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        View view = this.f13258d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i10);
        }
    }

    public void showController() {
        S(R());
    }

    public PlayerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public void setControllerVisibilityListener(@Nullable PlayerControlView.m mVar) {
        androidx.media3.common.util.a.i(this.f13266l);
        PlayerControlView.m mVar2 = this.f13275u;
        if (mVar2 == mVar) {
            return;
        }
        if (mVar2 != null) {
            this.f13266l.removeVisibilityListener(mVar2);
        }
        this.f13275u = mVar;
        if (mVar != null) {
            this.f13266l.addVisibilityListener(mVar);
            setControllerVisibilityListener((d) null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PlayerView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        int i11;
        int i12;
        boolean z10;
        int i13;
        boolean z11;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z12;
        int i18;
        boolean z13;
        int i19;
        boolean z14;
        boolean z15;
        a aVar;
        boolean z16;
        Class<ExoPlayer> cls;
        Object objNewProxyInstance;
        Method method;
        int i20;
        boolean z17;
        super(context, attributeSet, i10);
        c cVar = new c();
        this.f13255a = cVar;
        this.f13269o = new Handler(Looper.getMainLooper());
        if (isInEditMode()) {
            this.f13256b = null;
            this.f13257c = null;
            this.f13258d = null;
            this.f13259e = false;
            this.f13260f = null;
            this.f13261g = null;
            this.f13262h = null;
            this.f13263i = null;
            this.f13264j = null;
            this.f13265k = null;
            this.f13266l = null;
            this.f13267m = null;
            this.f13268n = null;
            this.f13270p = null;
            this.f13271q = null;
            this.f13272r = null;
            ImageView imageView = new ImageView(context);
            if (androidx.media3.common.util.a1.f10038a >= 23) {
                A(context, getResources(), imageView);
            } else {
                z(context, getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i21 = R$layout.exo_player_view;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.PlayerView, i10, 0);
            try {
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(R$styleable.PlayerView_shutter_background_color);
                int color = typedArrayObtainStyledAttributes.getColor(R$styleable.PlayerView_shutter_background_color, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerView_player_layout_id, i21);
                boolean z18 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_use_artwork, true);
                int i22 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerView_artwork_display_mode, 1);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerView_default_artwork, 0);
                int i23 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerView_image_display_mode, 0);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_use_controller, true);
                int i24 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerView_surface_type, 1);
                int i25 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerView_resize_mode, 0);
                i11 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerView_show_timeout, 5000);
                z11 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_hide_on_touch, true);
                z15 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_auto_show, true);
                int integer = typedArrayObtainStyledAttributes.getInteger(R$styleable.PlayerView_show_buffering, 0);
                this.f13280z = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_keep_content_on_player_reset, this.f13280z);
                boolean z20 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerView_hide_during_ads, true);
                typedArrayObtainStyledAttributes.recycle();
                i15 = integer;
                i13 = i25;
                z10 = z19;
                i14 = i23;
                i19 = i22;
                i18 = color;
                i17 = i24;
                i12 = resourceId;
                z14 = z20;
                z12 = zHasValue;
                i16 = resourceId2;
                z13 = z18;
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            i11 = 5000;
            i12 = i21;
            z10 = true;
            i13 = 0;
            z11 = true;
            i14 = 0;
            i15 = 0;
            i16 = 0;
            i17 = 1;
            z12 = false;
            i18 = 0;
            z13 = true;
            i19 = 1;
            z14 = true;
            z15 = true;
        }
        LayoutInflater.from(context).inflate(i12, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R$id.exo_content_frame);
        this.f13256b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            Q(aspectRatioFrameLayout, i13);
        }
        View viewFindViewById = findViewById(R$id.exo_shutter);
        this.f13257c = viewFindViewById;
        if (viewFindViewById != null && z12) {
            viewFindViewById.setBackgroundColor(i18);
        }
        if (aspectRatioFrameLayout != null && i17 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i17 == 2) {
                this.f13258d = new TextureView(context);
            } else {
                if (i17 == 3) {
                    try {
                        int i26 = SphericalGLSurfaceView.f12909m;
                        this.f13258d = (View) SphericalGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                        z17 = true;
                    } catch (Exception e10) {
                        throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e10);
                    }
                } else if (i17 != 4) {
                    SurfaceView surfaceView = new SurfaceView(context);
                    if (androidx.media3.common.util.a1.f10038a >= 34) {
                        b.a(surfaceView);
                    }
                    this.f13258d = surfaceView;
                } else {
                    try {
                        int i27 = VideoDecoderGLSurfaceView.f12744b;
                        this.f13258d = (View) VideoDecoderGLSurfaceView.class.getConstructor(Context.class).newInstance(context);
                    } catch (Exception e11) {
                        throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e11);
                    }
                }
                this.f13258d.setLayoutParams(layoutParams);
                this.f13258d.setOnClickListener(cVar);
                this.f13258d.setClickable(false);
                aspectRatioFrameLayout.addView(this.f13258d, 0);
                z16 = z17;
                aVar = null;
            }
            z17 = false;
            this.f13258d.setLayoutParams(layoutParams);
            this.f13258d.setOnClickListener(cVar);
            this.f13258d.setClickable(false);
            aspectRatioFrameLayout.addView(this.f13258d, 0);
            z16 = z17;
            aVar = null;
        } else {
            aVar = null;
            this.f13258d = null;
            z16 = false;
        }
        this.f13259e = z16;
        this.f13260f = androidx.media3.common.util.a1.f10038a == 34 ? new f() : null;
        this.f13267m = (FrameLayout) findViewById(R$id.exo_ad_overlay);
        this.f13268n = (FrameLayout) findViewById(R$id.exo_overlay);
        this.f13261g = (ImageView) findViewById(R$id.exo_image);
        this.f13277w = i14;
        try {
            cls = ExoPlayer.class;
            ImageOutput imageOutput = ImageOutput.f11718a;
            method = cls.getMethod("setImageOutput", ImageOutput.class);
            objNewProxyInstance = Proxy.newProxyInstance(ImageOutput.class.getClassLoader(), new Class[]{ImageOutput.class}, new InvocationHandler() {
                @Override
                public final Object invoke(Object obj, Method method2, Object[] objArr) {
                    return this.f13379a.J(obj, method2, objArr);
                }
            });
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            cls = null;
            objNewProxyInstance = null;
            method = null;
        }
        this.f13270p = cls;
        this.f13271q = method;
        this.f13272r = objNewProxyInstance;
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_artwork);
        this.f13262h = imageView2;
        this.f13276v = (!z13 || i19 == 0 || imageView2 == null) ? 0 : i19;
        if (i16 != 0) {
            this.f13278x = androidx.core.content.b.getDrawable(getContext(), i16);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R$id.exo_subtitles);
        this.f13263i = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View viewFindViewById2 = findViewById(R$id.exo_buffering);
        this.f13264j = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.f13279y = i15;
        TextView textView = (TextView) findViewById(R$id.exo_error_message);
        this.f13265k = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        PlayerControlView playerControlView = (PlayerControlView) findViewById(R$id.exo_controller);
        View viewFindViewById3 = findViewById(R$id.exo_controller_placeholder);
        if (playerControlView != null) {
            this.f13266l = playerControlView;
            i20 = 0;
        } else if (viewFindViewById3 != null) {
            i20 = 0;
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.f13266l = playerControlView2;
            playerControlView2.setId(R$id.exo_controller);
            playerControlView2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(playerControlView2, iIndexOfChild);
        } else {
            i20 = 0;
            this.f13266l = null;
        }
        PlayerControlView playerControlView3 = this.f13266l;
        this.B = playerControlView3 != null ? i11 : i20;
        this.E = z11;
        this.C = z15;
        this.D = z14;
        this.f13274t = (!z10 || playerControlView3 == null) ? i20 : 1;
        if (playerControlView3 != null) {
            playerControlView3.hideImmediately();
            this.f13266l.addVisibilityListener(this.f13255a);
        }
        if (z10) {
            setClickable(true);
        }
        X();
    }

    static final class f {

        SurfaceSyncGroup f13284a;

        private f() {
        }

        public void d(SurfaceView surfaceView, Runnable runnable) {
            AttachedSurfaceControl rootSurfaceControl = surfaceView.getRootSurfaceControl();
            if (rootSurfaceControl == null) {
                return;
            }
            SurfaceSyncGroup surfaceSyncGroupA = j0.a("exo-sync-b-334901521");
            this.f13284a = surfaceSyncGroupA;
            androidx.media3.common.util.a.g(surfaceSyncGroupA.add(rootSurfaceControl, new Runnable() {
                @Override
                public final void run() {
                    PlayerView.f.c();
                }
            }));
            runnable.run();
            rootSurfaceControl.applyTransactionOnDraw(k0.a());
        }

        public void e() {
            SurfaceSyncGroup surfaceSyncGroup = this.f13284a;
            if (surfaceSyncGroup != null) {
                surfaceSyncGroup.markSyncReady();
                this.f13284a = null;
            }
        }

        public void f(Handler handler, final SurfaceView surfaceView, final Runnable runnable) {
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    this.f13393a.d(surfaceView, runnable);
                }
            });
        }

        public static void c() {
        }
    }
}
