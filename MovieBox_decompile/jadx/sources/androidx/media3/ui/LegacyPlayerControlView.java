package androidx.media3.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.media3.common.PlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

public class LegacyPlayerControlView extends FrameLayout {
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    public static final int DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS = 200;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;
    private final Drawable A;
    private final Drawable B;
    private final float C;
    private final float D;
    private final String E;
    private final String F;
    private androidx.media3.common.a0 G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private int M;
    private int N;
    private int O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private long U;
    private long[] V;
    private boolean[] W;

    private final b f13149a;

    private long[] f13150a0;

    private final CopyOnWriteArrayList f13151b;

    private boolean[] f13152b0;

    private final View f13153c;

    private long f13154c0;

    private final View f13155d;

    private long f13156d0;

    private final View f13157e;

    private long f13158e0;

    private final View f13159f;

    private final View f13160g;

    private final View f13161h;

    private final ImageView f13162i;

    private final ImageView f13163j;

    private final View f13164k;

    private final TextView f13165l;

    private final TextView f13166m;

    private final y0 f13167n;

    private final StringBuilder f13168o;

    private final Formatter f13169p;

    private final androidx.media3.common.e0.b f13170q;

    private final androidx.media3.common.e0.c f13171r;

    private final Runnable f13172s;

    private final Runnable f13173t;

    private final Drawable f13174u;

    private final Drawable f13175v;

    private final Drawable f13176w;

    private final String f13177x;

    private final String f13178y;

    private final String f13179z;

    private final class b implements androidx.media3.common.a0.d, y0.a, View.OnClickListener {
        private b() {
        }

        @Override
        public void l(y0 y0Var, long j10) {
            LegacyPlayerControlView.this.L = true;
            if (LegacyPlayerControlView.this.f13166m != null) {
                LegacyPlayerControlView.this.f13166m.setText(androidx.media3.common.util.a1.o0(LegacyPlayerControlView.this.f13168o, LegacyPlayerControlView.this.f13169p, j10));
            }
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
            androidx.media3.common.a0 a0Var = LegacyPlayerControlView.this.G;
            if (a0Var == null) {
                return;
            }
            if (LegacyPlayerControlView.this.f13155d == view) {
                a0Var.n();
                return;
            }
            if (LegacyPlayerControlView.this.f13153c == view) {
                a0Var.f();
                return;
            }
            if (LegacyPlayerControlView.this.f13160g == view) {
                if (a0Var.getPlaybackState() != 4) {
                    a0Var.w();
                    return;
                }
                return;
            }
            if (LegacyPlayerControlView.this.f13161h == view) {
                a0Var.x();
                return;
            }
            if (LegacyPlayerControlView.this.f13157e == view) {
                androidx.media3.common.util.a1.w0(a0Var);
                return;
            }
            if (LegacyPlayerControlView.this.f13159f == view) {
                androidx.media3.common.util.a1.v0(a0Var);
            } else if (LegacyPlayerControlView.this.f13162i == view) {
                a0Var.setRepeatMode(androidx.media3.common.util.k0.a(a0Var.getRepeatMode(), LegacyPlayerControlView.this.O));
            } else if (LegacyPlayerControlView.this.f13163j == view) {
                a0Var.setShuffleModeEnabled(!a0Var.getShuffleModeEnabled());
            }
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
            if (cVar.b(4, 5)) {
                LegacyPlayerControlView.this.H();
            }
            if (cVar.b(4, 5, 7)) {
                LegacyPlayerControlView.this.I();
            }
            if (cVar.a(8)) {
                LegacyPlayerControlView.this.J();
            }
            if (cVar.a(9)) {
                LegacyPlayerControlView.this.K();
            }
            if (cVar.b(8, 9, 11, 0, 13)) {
                LegacyPlayerControlView.this.G();
            }
            if (cVar.b(11, 0)) {
                LegacyPlayerControlView.this.L();
            }
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
            androidx.media3.common.b0.p(this, z10, i10);
        }

        @Override
        public void onPlaybackParametersChanged(androidx.media3.common.z zVar) {
            androidx.media3.common.b0.q(this, zVar);
        }

        @Override
        public void onPlaybackStateChanged(int i10) {
            androidx.media3.common.b0.r(this, i10);
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
            androidx.media3.common.b0.z(this);
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
            androidx.media3.common.b0.F(this, i10, i11);
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
            androidx.media3.common.b0.I(this, i0Var);
        }

        @Override
        public void onVideoSizeChanged(androidx.media3.common.m0 m0Var) {
            androidx.media3.common.b0.J(this, m0Var);
        }

        @Override
        public void onVolumeChanged(float f10) {
            androidx.media3.common.b0.K(this, f10);
        }

        @Override
        public void p(y0 y0Var, long j10) {
            if (LegacyPlayerControlView.this.f13166m != null) {
                LegacyPlayerControlView.this.f13166m.setText(androidx.media3.common.util.a1.o0(LegacyPlayerControlView.this.f13168o, LegacyPlayerControlView.this.f13169p, j10));
            }
        }

        @Override
        public void r(y0 y0Var, long j10, boolean z10) {
            LegacyPlayerControlView.this.L = false;
            if (z10 || LegacyPlayerControlView.this.G == null) {
                return;
            }
            LegacyPlayerControlView legacyPlayerControlView = LegacyPlayerControlView.this;
            legacyPlayerControlView.D(legacyPlayerControlView.G, j10);
        }

        @Override
        public void onCues(u1.b bVar) {
            androidx.media3.common.b0.e(this, bVar);
        }

        @Override
        public void onPositionDiscontinuity(androidx.media3.common.a0.e eVar, androidx.media3.common.a0.e eVar2, int i10) {
            androidx.media3.common.b0.y(this, eVar, eVar2, i10);
        }
    }

    public interface c {
    }

    public interface d {
    }

    static {
        androidx.media3.common.u.a("media3.ui");
    }

    public LegacyPlayerControlView(Context context) {
        this(context, null);
    }

    private void A() {
        View view;
        View view2;
        boolean zL1 = androidx.media3.common.util.a1.l1(this.G, this.J);
        if (zL1 && (view2 = this.f13157e) != null) {
            view2.sendAccessibilityEvent(8);
        } else {
            if (zL1 || (view = this.f13159f) == null) {
                return;
            }
            view.sendAccessibilityEvent(8);
        }
    }

    private void B() {
        View view;
        View view2;
        boolean zL1 = androidx.media3.common.util.a1.l1(this.G, this.J);
        if (zL1 && (view2 = this.f13157e) != null) {
            view2.requestFocus();
        } else {
            if (zL1 || (view = this.f13159f) == null) {
                return;
            }
            view.requestFocus();
        }
    }

    private void C(androidx.media3.common.a0 a0Var, int i10, long j10) {
        a0Var.seekTo(i10, j10);
    }

    public void D(androidx.media3.common.a0 a0Var, long j10) {
        int iU;
        androidx.media3.common.e0 currentTimeline = a0Var.getCurrentTimeline();
        if (this.K && !currentTimeline.q()) {
            int iP = currentTimeline.p();
            iU = 0;
            while (true) {
                long jD = currentTimeline.n(iU, this.f13171r).d();
                if (j10 < jD) {
                    break;
                }
                if (iU == iP - 1) {
                    j10 = jD;
                    break;
                } else {
                    j10 -= jD;
                    iU++;
                }
            }
        } else {
            iU = a0Var.u();
        }
        C(a0Var, iU, j10);
        I();
    }

    private void E() {
        H();
        G();
        J();
        K();
        L();
    }

    private void F(boolean z10, boolean z11, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z11);
        view.setAlpha(z11 ? this.C : this.D);
        view.setVisibility(z10 ? 0 : 8);
    }

    public void G() {
        boolean zI;
        boolean zI2;
        boolean zI3;
        boolean zI4;
        boolean zI5;
        if (isVisible() && this.H) {
            androidx.media3.common.a0 a0Var = this.G;
            if (a0Var != null) {
                zI = a0Var.i(5);
                zI3 = a0Var.i(7);
                zI4 = a0Var.i(11);
                zI5 = a0Var.i(12);
                zI2 = a0Var.i(9);
            } else {
                zI = false;
                zI2 = false;
                zI3 = false;
                zI4 = false;
                zI5 = false;
            }
            F(this.R, zI3, this.f13153c);
            F(this.P, zI4, this.f13161h);
            F(this.Q, zI5, this.f13160g);
            F(this.S, zI2, this.f13155d);
            y0 y0Var = this.f13167n;
            if (y0Var != null) {
                y0Var.setEnabled(zI);
            }
        }
    }

    public void H() {
        boolean z10;
        boolean z11;
        if (isVisible() && this.H) {
            boolean zL1 = androidx.media3.common.util.a1.l1(this.G, this.J);
            View view = this.f13157e;
            if (view != null) {
                z10 = !zL1 && view.isFocused();
                z11 = !zL1 && this.f13157e.isAccessibilityFocused();
                this.f13157e.setVisibility(zL1 ? 0 : 8);
            } else {
                z10 = false;
                z11 = false;
            }
            View view2 = this.f13159f;
            if (view2 != null) {
                z10 |= zL1 && view2.isFocused();
                z11 |= zL1 && this.f13159f.isAccessibilityFocused();
                this.f13159f.setVisibility(zL1 ? 8 : 0);
            }
            if (z10) {
                B();
            }
            if (z11) {
                A();
            }
        }
    }

    public void I() {
        long contentPosition;
        long jV;
        if (isVisible() && this.H) {
            androidx.media3.common.a0 a0Var = this.G;
            if (a0Var != null) {
                contentPosition = this.f13154c0 + a0Var.getContentPosition();
                jV = this.f13154c0 + a0Var.v();
            } else {
                contentPosition = 0;
                jV = 0;
            }
            boolean z10 = contentPosition != this.f13156d0;
            this.f13156d0 = contentPosition;
            this.f13158e0 = jV;
            TextView textView = this.f13166m;
            if (textView != null && !this.L && z10) {
                textView.setText(androidx.media3.common.util.a1.o0(this.f13168o, this.f13169p, contentPosition));
            }
            y0 y0Var = this.f13167n;
            if (y0Var != null) {
                y0Var.setPosition(contentPosition);
                this.f13167n.setBufferedPosition(jV);
            }
            removeCallbacks(this.f13172s);
            int playbackState = a0Var == null ? 1 : a0Var.getPlaybackState();
            if (a0Var == null || !a0Var.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.f13172s, 1000L);
                return;
            }
            y0 y0Var2 = this.f13167n;
            long jMin = Math.min(y0Var2 != null ? y0Var2.getPreferredUpdateDelay() : 1000L, 1000 - (contentPosition % 1000));
            float f10 = a0Var.getPlaybackParameters().f10254a;
            postDelayed(this.f13172s, androidx.media3.common.util.a1.q(f10 > 0.0f ? (long) (jMin / f10) : 1000L, this.N, 1000L));
        }
    }

    public void J() {
        ImageView imageView;
        if (isVisible() && this.H && (imageView = this.f13162i) != null) {
            if (this.O == 0) {
                F(false, false, imageView);
                return;
            }
            androidx.media3.common.a0 a0Var = this.G;
            if (a0Var == null) {
                F(true, false, imageView);
                this.f13162i.setImageDrawable(this.f13174u);
                this.f13162i.setContentDescription(this.f13177x);
                return;
            }
            F(true, true, imageView);
            int repeatMode = a0Var.getRepeatMode();
            if (repeatMode == 0) {
                this.f13162i.setImageDrawable(this.f13174u);
                this.f13162i.setContentDescription(this.f13177x);
            } else if (repeatMode == 1) {
                this.f13162i.setImageDrawable(this.f13175v);
                this.f13162i.setContentDescription(this.f13178y);
            } else if (repeatMode == 2) {
                this.f13162i.setImageDrawable(this.f13176w);
                this.f13162i.setContentDescription(this.f13179z);
            }
            this.f13162i.setVisibility(0);
        }
    }

    public void K() {
        ImageView imageView;
        if (isVisible() && this.H && (imageView = this.f13163j) != null) {
            androidx.media3.common.a0 a0Var = this.G;
            if (!this.T) {
                F(false, false, imageView);
                return;
            }
            if (a0Var == null) {
                F(true, false, imageView);
                this.f13163j.setImageDrawable(this.B);
                this.f13163j.setContentDescription(this.F);
            } else {
                F(true, true, imageView);
                this.f13163j.setImageDrawable(a0Var.getShuffleModeEnabled() ? this.A : this.B);
                this.f13163j.setContentDescription(a0Var.getShuffleModeEnabled() ? this.E : this.F);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d4 A[SYNTHETIC] */
    public void L() {
        int i10;
        androidx.media3.common.e0.c cVar;
        long jO;
        long[] jArr;
        int length;
        androidx.media3.common.a0 a0Var = this.G;
        if (a0Var == null) {
            return;
        }
        boolean z10 = true;
        this.K = this.I && w(a0Var.getCurrentTimeline(), this.f13171r);
        long j10 = 0;
        this.f13154c0 = 0L;
        androidx.media3.common.e0 currentTimeline = a0Var.getCurrentTimeline();
        if (currentTimeline.q()) {
            i10 = 0;
        } else {
            int iU = a0Var.u();
            boolean z11 = this.K;
            int i11 = z11 ? 0 : iU;
            int iP = z11 ? currentTimeline.p() - 1 : iU;
            long j11 = 0;
            i10 = 0;
            while (i11 <= iP) {
                if (i11 == iU) {
                    this.f13154c0 = androidx.media3.common.util.a1.y1(j11);
                }
                currentTimeline.n(i11, this.f13171r);
                androidx.media3.common.e0.c cVar2 = this.f13171r;
                if (cVar2.f9651m == C.TIME_UNSET) {
                    androidx.media3.common.util.a.g(this.K ^ z10);
                    break;
                }
                int i12 = cVar2.f9652n;
                while (true) {
                    cVar = this.f13171r;
                    if (i12 <= cVar.f9653o) {
                        currentTimeline.f(i12, this.f13170q);
                        int iC = this.f13170q.c();
                        for (int iP2 = this.f13170q.p(); iP2 < iC; iP2++) {
                            long jF = this.f13170q.f(iP2);
                            if (jF == Long.MIN_VALUE) {
                                long j12 = this.f13170q.f9625d;
                                if (j12 != C.TIME_UNSET) {
                                    jF = j12;
                                    jO = jF + this.f13170q.o();
                                    if (jO >= 0) {
                                        jArr = this.V;
                                        if (i10 == jArr.length) {
                                            if (jArr.length == 0) {
                                                length = 1;
                                            } else {
                                                length = jArr.length * 2;
                                            }
                                            this.V = Arrays.copyOf(jArr, length);
                                            this.W = Arrays.copyOf(this.W, length);
                                        }
                                        this.V[i10] = androidx.media3.common.util.a1.y1(j11 + jO);
                                        this.W[i10] = this.f13170q.q(iP2);
                                        i10++;
                                    }
                                }
                            } else {
                                jO = jF + this.f13170q.o();
                                if (jO >= 0) {
                                    jArr = this.V;
                                    if (i10 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.V = Arrays.copyOf(jArr, length);
                                        this.W = Arrays.copyOf(this.W, length);
                                    }
                                    this.V[i10] = androidx.media3.common.util.a1.y1(j11 + jO);
                                    this.W[i10] = this.f13170q.q(iP2);
                                    i10++;
                                }
                            }
                        }
                        i12++;
                    }
                }
                j11 += cVar.f9651m;
                i11++;
                z10 = true;
            }
            j10 = j11;
        }
        long jY1 = androidx.media3.common.util.a1.y1(j10);
        TextView textView = this.f13165l;
        if (textView != null) {
            textView.setText(androidx.media3.common.util.a1.o0(this.f13168o, this.f13169p, jY1));
        }
        y0 y0Var = this.f13167n;
        if (y0Var != null) {
            y0Var.setDuration(jY1);
            int length2 = this.f13150a0.length;
            int i13 = i10 + length2;
            long[] jArr2 = this.V;
            if (i13 > jArr2.length) {
                this.V = Arrays.copyOf(jArr2, i13);
                this.W = Arrays.copyOf(this.W, i13);
            }
            System.arraycopy(this.f13150a0, 0, this.V, i10, length2);
            System.arraycopy(this.f13152b0, 0, this.W, i10, length2);
            this.f13167n.setAdGroupTimesMs(this.V, this.W, i13);
        }
        I();
    }

    private static boolean w(androidx.media3.common.e0 e0Var, androidx.media3.common.e0.c cVar) {
        if (e0Var.p() > 100) {
            return false;
        }
        int iP = e0Var.p();
        for (int i10 = 0; i10 < iP; i10++) {
            if (e0Var.n(i10, cVar).f9651m == C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    private static int x(TypedArray typedArray, int i10) {
        return typedArray.getInt(R$styleable.LegacyPlayerControlView_repeat_toggle_modes, i10);
    }

    private void y() {
        removeCallbacks(this.f13173t);
        if (this.M <= 0) {
            this.U = C.TIME_UNSET;
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        int i10 = this.M;
        this.U = jUptimeMillis + ((long) i10);
        if (this.H) {
            postDelayed(this.f13173t, i10);
        }
    }

    private static boolean z(int i10) {
        return i10 == 90 || i10 == 89 || i10 == 85 || i10 == 79 || i10 == 126 || i10 == 127 || i10 == 87 || i10 == 88;
    }

    public void addVisibilityListener(d dVar) {
        androidx.media3.common.util.a.e(dVar);
        this.f13151b.add(dVar);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        androidx.media3.common.a0 a0Var = this.G;
        if (a0Var == null || !z(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (a0Var.getPlaybackState() == 4) {
                return true;
            }
            a0Var.w();
            return true;
        }
        if (keyCode == 89) {
            a0Var.x();
            return true;
        }
        if (keyEvent.getRepeatCount() != 0) {
            return true;
        }
        if (keyCode == 79 || keyCode == 85) {
            androidx.media3.common.util.a1.x0(a0Var, this.J);
            return true;
        }
        if (keyCode == 87) {
            a0Var.n();
            return true;
        }
        if (keyCode == 88) {
            a0Var.f();
            return true;
        }
        if (keyCode == 126) {
            androidx.media3.common.util.a1.w0(a0Var);
            return true;
        }
        if (keyCode != 127) {
            return true;
        }
        androidx.media3.common.util.a1.v0(a0Var);
        return true;
    }

    @Override
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f13173t);
        } else if (motionEvent.getAction() == 1) {
            y();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public androidx.media3.common.a0 getPlayer() {
        return this.G;
    }

    public int getRepeatToggleModes() {
        return this.O;
    }

    public boolean getShowShuffleButton() {
        return this.T;
    }

    public int getShowTimeoutMs() {
        return this.M;
    }

    public boolean getShowVrButton() {
        View view = this.f13164k;
        return view != null && view.getVisibility() == 0;
    }

    public void hide() {
        if (isVisible()) {
            setVisibility(8);
            Iterator it = this.f13151b.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                getVisibility();
                throw null;
            }
            removeCallbacks(this.f13172s);
            removeCallbacks(this.f13173t);
            this.U = C.TIME_UNSET;
        }
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.H = true;
        long j10 = this.U;
        if (j10 != C.TIME_UNSET) {
            long jUptimeMillis = j10 - SystemClock.uptimeMillis();
            if (jUptimeMillis <= 0) {
                hide();
            } else {
                postDelayed(this.f13173t, jUptimeMillis);
            }
        } else if (isVisible()) {
            y();
        }
        E();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.H = false;
        removeCallbacks(this.f13172s);
        removeCallbacks(this.f13173t);
    }

    public void removeVisibilityListener(d dVar) {
        this.f13151b.remove(dVar);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        if (jArr == null) {
            this.f13150a0 = new long[0];
            this.f13152b0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) androidx.media3.common.util.a.e(zArr);
            androidx.media3.common.util.a.a(jArr.length == zArr2.length);
            this.f13150a0 = jArr;
            this.f13152b0 = zArr2;
        }
        L();
    }

    public void setPlayer(@Nullable androidx.media3.common.a0 a0Var) {
        androidx.media3.common.util.a.g(Looper.myLooper() == Looper.getMainLooper());
        androidx.media3.common.util.a.a(a0Var == null || a0Var.l() == Looper.getMainLooper());
        androidx.media3.common.a0 a0Var2 = this.G;
        if (a0Var2 == a0Var) {
            return;
        }
        if (a0Var2 != null) {
            a0Var2.L(this.f13149a);
        }
        this.G = a0Var;
        if (a0Var != null) {
            a0Var.M(this.f13149a);
        }
        E();
    }

    public void setRepeatToggleModes(int i10) {
        this.O = i10;
        androidx.media3.common.a0 a0Var = this.G;
        if (a0Var != null) {
            int repeatMode = a0Var.getRepeatMode();
            if (i10 == 0 && repeatMode != 0) {
                this.G.setRepeatMode(0);
            } else if (i10 == 1 && repeatMode == 2) {
                this.G.setRepeatMode(1);
            } else if (i10 == 2 && repeatMode == 1) {
                this.G.setRepeatMode(2);
            }
        }
        J();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.Q = z10;
        G();
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z10) {
        this.I = z10;
        L();
    }

    public void setShowNextButton(boolean z10) {
        this.S = z10;
        G();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z10) {
        this.J = z10;
        H();
    }

    public void setShowPreviousButton(boolean z10) {
        this.R = z10;
        G();
    }

    public void setShowRewindButton(boolean z10) {
        this.P = z10;
        G();
    }

    public void setShowShuffleButton(boolean z10) {
        this.T = z10;
        K();
    }

    public void setShowTimeoutMs(int i10) {
        this.M = i10;
        if (isVisible()) {
            y();
        }
    }

    public void setShowVrButton(boolean z10) {
        View view = this.f13164k;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i10) {
        this.N = androidx.media3.common.util.a1.p(i10, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f13164k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            F(getShowVrButton(), onClickListener != null, this.f13164k);
        }
    }

    public void show() {
        if (!isVisible()) {
            setVisibility(0);
            Iterator it = this.f13151b.iterator();
            if (it.hasNext()) {
                android.support.v4.media.session.c.a(it.next());
                getVisibility();
                throw null;
            }
            E();
            B();
            A();
        }
        y();
    }

    public LegacyPlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LegacyPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    public LegacyPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i10);
        int resourceId = R$layout.exo_legacy_player_control_view;
        this.J = true;
        this.M = 5000;
        this.O = 0;
        this.N = 200;
        this.U = C.TIME_UNSET;
        this.P = true;
        this.Q = true;
        this.R = true;
        this.S = true;
        this.T = false;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.LegacyPlayerControlView, i10, 0);
            try {
                this.M = typedArrayObtainStyledAttributes.getInt(R$styleable.LegacyPlayerControlView_show_timeout, this.M);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.LegacyPlayerControlView_controller_layout_id, resourceId);
                this.O = x(typedArrayObtainStyledAttributes, this.O);
                this.P = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LegacyPlayerControlView_show_rewind_button, this.P);
                this.Q = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LegacyPlayerControlView_show_fastforward_button, this.Q);
                this.R = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LegacyPlayerControlView_show_previous_button, this.R);
                this.S = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LegacyPlayerControlView_show_next_button, this.S);
                this.T = typedArrayObtainStyledAttributes.getBoolean(R$styleable.LegacyPlayerControlView_show_shuffle_button, this.T);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R$styleable.LegacyPlayerControlView_time_bar_min_update_interval, this.N));
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        }
        this.f13151b = new CopyOnWriteArrayList();
        this.f13170q = new androidx.media3.common.e0.b();
        this.f13171r = new androidx.media3.common.e0.c();
        StringBuilder sb2 = new StringBuilder();
        this.f13168o = sb2;
        this.f13169p = new Formatter(sb2, Locale.getDefault());
        this.V = new long[0];
        this.W = new boolean[0];
        this.f13150a0 = new long[0];
        this.f13152b0 = new boolean[0];
        b bVar = new b();
        this.f13149a = bVar;
        this.f13172s = new Runnable() {
            @Override
            public final void run() {
                this.f13382a.I();
            }
        };
        this.f13173t = new Runnable() {
            @Override
            public final void run() {
                this.f13383a.hide();
            }
        };
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        y0 y0Var = (y0) findViewById(R$id.exo_progress);
        View viewFindViewById = findViewById(R$id.exo_progress_placeholder);
        if (y0Var != null) {
            this.f13167n = y0Var;
        } else if (viewFindViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(R$id.exo_progress);
            defaultTimeBar.setLayoutParams(viewFindViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById);
            viewGroup.removeView(viewFindViewById);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            this.f13167n = defaultTimeBar;
        } else {
            this.f13167n = null;
        }
        this.f13165l = (TextView) findViewById(R$id.exo_duration);
        this.f13166m = (TextView) findViewById(R$id.exo_position);
        y0 y0Var2 = this.f13167n;
        if (y0Var2 != null) {
            y0Var2.addListener(bVar);
        }
        View viewFindViewById2 = findViewById(R$id.exo_play);
        this.f13157e = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(bVar);
        }
        View viewFindViewById3 = findViewById(R$id.exo_pause);
        this.f13159f = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(bVar);
        }
        View viewFindViewById4 = findViewById(R$id.exo_prev);
        this.f13153c = viewFindViewById4;
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(bVar);
        }
        View viewFindViewById5 = findViewById(R$id.exo_next);
        this.f13155d = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(bVar);
        }
        View viewFindViewById6 = findViewById(R$id.exo_rew);
        this.f13161h = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(bVar);
        }
        View viewFindViewById7 = findViewById(R$id.exo_ffwd);
        this.f13160g = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(bVar);
        }
        ImageView imageView = (ImageView) findViewById(R$id.exo_repeat_toggle);
        this.f13162i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(bVar);
        }
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_shuffle);
        this.f13163j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(bVar);
        }
        View viewFindViewById8 = findViewById(R$id.exo_vr);
        this.f13164k = viewFindViewById8;
        setShowVrButton(false);
        F(false, false, viewFindViewById8);
        Resources resources = context.getResources();
        this.C = resources.getInteger(R$integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.D = resources.getInteger(R$integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.f13174u = androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_legacy_controls_repeat_off);
        this.f13175v = androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_legacy_controls_repeat_one);
        this.f13176w = androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_legacy_controls_repeat_all);
        this.A = androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_legacy_controls_shuffle_on);
        this.B = androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_legacy_controls_shuffle_off);
        this.f13177x = resources.getString(R$string.exo_controls_repeat_off_description);
        this.f13178y = resources.getString(R$string.exo_controls_repeat_one_description);
        this.f13179z = resources.getString(R$string.exo_controls_repeat_all_description);
        this.E = resources.getString(R$string.exo_controls_shuffle_on_description);
        this.F = resources.getString(R$string.exo_controls_shuffle_off_description);
        this.f13156d0 = C.TIME_UNSET;
        this.f13158e0 = C.TIME_UNSET;
    }

    public void setProgressUpdateListener(@Nullable c cVar) {
    }
}
