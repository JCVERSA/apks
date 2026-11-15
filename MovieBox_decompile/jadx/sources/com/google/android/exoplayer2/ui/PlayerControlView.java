package com.google.android.exoplayer2.ui;

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
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n1;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p2;
import com.google.android.exoplayer2.q3;
import com.google.android.exoplayer2.r2;
import com.google.android.exoplayer2.w1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

public class PlayerControlView extends FrameLayout {
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
    private p2 G;
    private boolean H;
    private boolean I;
    private boolean J;
    private boolean K;
    private int L;
    private int M;
    private int N;
    private boolean O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private long T;
    private long[] U;
    private boolean[] V;
    private long[] W;

    private final c f26141a;

    private boolean[] f26142a0;

    private final CopyOnWriteArrayList f26143b;

    private long f26144b0;

    private final View f26145c;

    private long f26146c0;

    private final View f26147d;

    private long f26148d0;

    private final View f26149e;

    private final View f26150f;

    private final View f26151g;

    private final View f26152h;

    private final ImageView f26153i;

    private final ImageView f26154j;

    private final View f26155k;

    private final TextView f26156l;

    private final TextView f26157m;

    private final n0 f26158n;

    private final StringBuilder f26159o;

    private final Formatter f26160p;

    private final l3.b f26161q;

    private final l3.d f26162r;

    private final Runnable f26163s;

    private final Runnable f26164t;

    private final Drawable f26165u;

    private final Drawable f26166v;

    private final Drawable f26167w;

    private final String f26168x;

    private final String f26169y;

    private final String f26170z;

    private static final class b {
        public static boolean a(View view) {
            return view.isAccessibilityFocused();
        }
    }

    private final class c implements p2.d, n0.a, View.OnClickListener {
        private c() {
        }

        @Override
        public void l(n0 n0Var, long j10) {
            if (PlayerControlView.this.f26157m != null) {
                PlayerControlView.this.f26157m.setText(com.google.android.exoplayer2.util.p0.h0(PlayerControlView.this.f26159o, PlayerControlView.this.f26160p, j10));
            }
        }

        @Override
        public void onAvailableCommandsChanged(p2.b bVar) {
            r2.c(this, bVar);
        }

        @Override
        public void onClick(View view) {
            p2 p2Var = PlayerControlView.this.G;
            if (p2Var == null) {
                return;
            }
            if (PlayerControlView.this.f26147d == view) {
                p2Var.n();
                return;
            }
            if (PlayerControlView.this.f26145c == view) {
                p2Var.f();
                return;
            }
            if (PlayerControlView.this.f26151g == view) {
                if (p2Var.getPlaybackState() != 4) {
                    p2Var.w();
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f26152h == view) {
                p2Var.x();
                return;
            }
            if (PlayerControlView.this.f26149e == view) {
                PlayerControlView.this.A(p2Var);
                return;
            }
            if (PlayerControlView.this.f26150f == view) {
                PlayerControlView.this.z(p2Var);
            } else if (PlayerControlView.this.f26153i == view) {
                p2Var.setRepeatMode(com.google.android.exoplayer2.util.f0.a(p2Var.getRepeatMode(), PlayerControlView.this.N));
            } else if (PlayerControlView.this.f26154j == view) {
                p2Var.setShuffleModeEnabled(!p2Var.getShuffleModeEnabled());
            }
        }

        @Override
        public void onCues(da.f fVar) {
            r2.d(this, fVar);
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
            if (cVar.b(4, 5)) {
                PlayerControlView.this.N();
            }
            if (cVar.b(4, 5, 7)) {
                PlayerControlView.this.O();
            }
            if (cVar.a(8)) {
                PlayerControlView.this.P();
            }
            if (cVar.a(9)) {
                PlayerControlView.this.Q();
            }
            if (cVar.b(8, 9, 11, 0, 13)) {
                PlayerControlView.this.M();
            }
            if (cVar.b(11, 0)) {
                PlayerControlView.this.R();
            }
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
            r2.p(this, z10, i10);
        }

        @Override
        public void onPlaybackParametersChanged(o2 o2Var) {
            r2.q(this, o2Var);
        }

        @Override
        public void onPlaybackStateChanged(int i10) {
            r2.r(this, i10);
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
            r2.z(this);
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
            r2.J(this, q3Var);
        }

        @Override
        public void onVideoSizeChanged(com.google.android.exoplayer2.video.y yVar) {
            r2.K(this, yVar);
        }

        @Override
        public void onVolumeChanged(float f10) {
            r2.L(this, f10);
        }

        @Override
        public void p(n0 n0Var, long j10, boolean z10) {
            PlayerControlView.this.K = false;
            if (z10 || PlayerControlView.this.G == null) {
                return;
            }
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.I(playerControlView.G, j10);
        }

        @Override
        public void s(n0 n0Var, long j10) {
            PlayerControlView.this.K = true;
            if (PlayerControlView.this.f26157m != null) {
                PlayerControlView.this.f26157m.setText(com.google.android.exoplayer2.util.p0.h0(PlayerControlView.this.f26159o, PlayerControlView.this.f26160p, j10));
            }
        }

        @Override
        public void onCues(List list) {
            r2.e(this, list);
        }

        @Override
        public void onPositionDiscontinuity(p2.e eVar, p2.e eVar2, int i10) {
            r2.y(this, eVar, eVar2, i10);
        }
    }

    public interface d {
    }

    public interface e {
        void l(int i10);
    }

    static {
        n1.a("goog.exo.ui");
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    public void A(p2 p2Var) {
        int playbackState = p2Var.getPlaybackState();
        if (playbackState == 1) {
            p2Var.prepare();
        } else if (playbackState == 4) {
            H(p2Var, p2Var.u(), C.TIME_UNSET);
        }
        p2Var.play();
    }

    private void B(p2 p2Var) {
        int playbackState = p2Var.getPlaybackState();
        if (playbackState == 1 || playbackState == 4 || !p2Var.getPlayWhenReady()) {
            A(p2Var);
        } else {
            z(p2Var);
        }
    }

    private static int C(TypedArray typedArray, int i10) {
        return typedArray.getInt(R$styleable.PlayerControlView_repeat_toggle_modes, i10);
    }

    private void D() {
        removeCallbacks(this.f26164t);
        if (this.L <= 0) {
            this.T = C.TIME_UNSET;
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        int i10 = this.L;
        this.T = jUptimeMillis + ((long) i10);
        if (this.H) {
            postDelayed(this.f26164t, i10);
        }
    }

    private static boolean E(int i10) {
        return i10 == 90 || i10 == 89 || i10 == 85 || i10 == 79 || i10 == 126 || i10 == 127 || i10 == 87 || i10 == 88;
    }

    private void F() {
        View view;
        View view2;
        boolean zJ = J();
        if (!zJ && (view2 = this.f26149e) != null) {
            view2.sendAccessibilityEvent(8);
        } else {
            if (!zJ || (view = this.f26150f) == null) {
                return;
            }
            view.sendAccessibilityEvent(8);
        }
    }

    private void G() {
        View view;
        View view2;
        boolean zJ = J();
        if (!zJ && (view2 = this.f26149e) != null) {
            view2.requestFocus();
        } else {
            if (!zJ || (view = this.f26150f) == null) {
                return;
            }
            view.requestFocus();
        }
    }

    private void H(p2 p2Var, int i10, long j10) {
        p2Var.seekTo(i10, j10);
    }

    public void I(p2 p2Var, long j10) {
        int iU;
        l3 currentTimeline = p2Var.getCurrentTimeline();
        if (this.J && !currentTimeline.u()) {
            int iT = currentTimeline.t();
            iU = 0;
            while (true) {
                long jG = currentTimeline.r(iU, this.f26162r).g();
                if (j10 < jG) {
                    break;
                }
                if (iU == iT - 1) {
                    j10 = jG;
                    break;
                } else {
                    j10 -= jG;
                    iU++;
                }
            }
        } else {
            iU = p2Var.u();
        }
        H(p2Var, iU, j10);
        O();
    }

    private boolean J() {
        p2 p2Var = this.G;
        return (p2Var == null || p2Var.getPlaybackState() == 4 || this.G.getPlaybackState() == 1 || !this.G.getPlayWhenReady()) ? false : true;
    }

    private void K() {
        N();
        M();
        P();
        Q();
        R();
    }

    private void L(boolean z10, boolean z11, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z11);
        view.setAlpha(z11 ? this.C : this.D);
        view.setVisibility(z10 ? 0 : 8);
    }

    public void M() {
        boolean zI;
        boolean zI2;
        boolean zI3;
        boolean zI4;
        boolean zI5;
        if (isVisible() && this.H) {
            p2 p2Var = this.G;
            if (p2Var != null) {
                zI = p2Var.i(5);
                zI3 = p2Var.i(7);
                zI4 = p2Var.i(11);
                zI5 = p2Var.i(12);
                zI2 = p2Var.i(9);
            } else {
                zI = false;
                zI2 = false;
                zI3 = false;
                zI4 = false;
                zI5 = false;
            }
            L(this.Q, zI3, this.f26145c);
            L(this.O, zI4, this.f26152h);
            L(this.P, zI5, this.f26151g);
            L(this.R, zI2, this.f26147d);
            n0 n0Var = this.f26158n;
            if (n0Var != null) {
                n0Var.setEnabled(zI);
            }
        }
    }

    public void N() {
        boolean z10;
        boolean z11;
        if (isVisible() && this.H) {
            boolean zJ = J();
            View view = this.f26149e;
            boolean z12 = true;
            if (view != null) {
                z10 = zJ && view.isFocused();
                if (com.google.android.exoplayer2.util.p0.f26854a < 21) {
                    z11 = z10;
                } else {
                    z11 = zJ && b.a(this.f26149e);
                }
                this.f26149e.setVisibility(zJ ? 8 : 0);
            } else {
                z10 = false;
                z11 = false;
            }
            View view2 = this.f26150f;
            if (view2 != null) {
                z10 |= !zJ && view2.isFocused();
                if (com.google.android.exoplayer2.util.p0.f26854a < 21) {
                    z12 = z10;
                } else if (zJ || !b.a(this.f26150f)) {
                    z12 = false;
                }
                z11 |= z12;
                this.f26150f.setVisibility(zJ ? 0 : 8);
            }
            if (z10) {
                G();
            }
            if (z11) {
                F();
            }
        }
    }

    public void O() {
        long contentPosition;
        long jV;
        if (isVisible() && this.H) {
            p2 p2Var = this.G;
            if (p2Var != null) {
                contentPosition = this.f26144b0 + p2Var.getContentPosition();
                jV = this.f26144b0 + p2Var.v();
            } else {
                contentPosition = 0;
                jV = 0;
            }
            boolean z10 = contentPosition != this.f26146c0;
            this.f26146c0 = contentPosition;
            this.f26148d0 = jV;
            TextView textView = this.f26157m;
            if (textView != null && !this.K && z10) {
                textView.setText(com.google.android.exoplayer2.util.p0.h0(this.f26159o, this.f26160p, contentPosition));
            }
            n0 n0Var = this.f26158n;
            if (n0Var != null) {
                n0Var.setPosition(contentPosition);
                this.f26158n.setBufferedPosition(jV);
            }
            removeCallbacks(this.f26163s);
            int playbackState = p2Var == null ? 1 : p2Var.getPlaybackState();
            if (p2Var == null || !p2Var.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.f26163s, 1000L);
                return;
            }
            n0 n0Var2 = this.f26158n;
            long jMin = Math.min(n0Var2 != null ? n0Var2.getPreferredUpdateDelay() : 1000L, 1000 - (contentPosition % 1000));
            float f10 = p2Var.getPlaybackParameters().f24845a;
            postDelayed(this.f26163s, com.google.android.exoplayer2.util.p0.r(f10 > 0.0f ? (long) (jMin / f10) : 1000L, this.M, 1000L));
        }
    }

    public void P() {
        ImageView imageView;
        if (isVisible() && this.H && (imageView = this.f26153i) != null) {
            if (this.N == 0) {
                L(false, false, imageView);
                return;
            }
            p2 p2Var = this.G;
            if (p2Var == null) {
                L(true, false, imageView);
                this.f26153i.setImageDrawable(this.f26165u);
                this.f26153i.setContentDescription(this.f26168x);
                return;
            }
            L(true, true, imageView);
            int repeatMode = p2Var.getRepeatMode();
            if (repeatMode == 0) {
                this.f26153i.setImageDrawable(this.f26165u);
                this.f26153i.setContentDescription(this.f26168x);
            } else if (repeatMode == 1) {
                this.f26153i.setImageDrawable(this.f26166v);
                this.f26153i.setContentDescription(this.f26169y);
            } else if (repeatMode == 2) {
                this.f26153i.setImageDrawable(this.f26167w);
                this.f26153i.setContentDescription(this.f26170z);
            }
            this.f26153i.setVisibility(0);
        }
    }

    public void Q() {
        ImageView imageView;
        if (isVisible() && this.H && (imageView = this.f26154j) != null) {
            p2 p2Var = this.G;
            if (!this.S) {
                L(false, false, imageView);
                return;
            }
            if (p2Var == null) {
                L(true, false, imageView);
                this.f26154j.setImageDrawable(this.B);
                this.f26154j.setContentDescription(this.F);
            } else {
                L(true, true, imageView);
                this.f26154j.setImageDrawable(p2Var.getShuffleModeEnabled() ? this.A : this.B);
                this.f26154j.setContentDescription(p2Var.getShuffleModeEnabled() ? this.E : this.F);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d4 A[SYNTHETIC] */
    public void R() {
        int i10;
        l3.d dVar;
        long jQ;
        long[] jArr;
        int length;
        p2 p2Var = this.G;
        if (p2Var == null) {
            return;
        }
        boolean z10 = true;
        this.J = this.I && y(p2Var.getCurrentTimeline(), this.f26162r);
        long j10 = 0;
        this.f26144b0 = 0L;
        l3 currentTimeline = p2Var.getCurrentTimeline();
        if (currentTimeline.u()) {
            i10 = 0;
        } else {
            int iU = p2Var.u();
            boolean z11 = this.J;
            int i11 = z11 ? 0 : iU;
            int iT = z11 ? currentTimeline.t() - 1 : iU;
            long j11 = 0;
            i10 = 0;
            while (i11 <= iT) {
                if (i11 == iU) {
                    this.f26144b0 = com.google.android.exoplayer2.util.p0.e1(j11);
                }
                currentTimeline.r(i11, this.f26162r);
                l3.d dVar2 = this.f26162r;
                if (dVar2.f24551n == C.TIME_UNSET) {
                    com.google.android.exoplayer2.util.a.g(this.J ^ z10);
                    break;
                }
                int i12 = dVar2.f24552o;
                while (true) {
                    dVar = this.f26162r;
                    if (i12 <= dVar.f24553p) {
                        currentTimeline.j(i12, this.f26161q);
                        int iF = this.f26161q.f();
                        for (int iR = this.f26161q.r(); iR < iF; iR++) {
                            long jI = this.f26161q.i(iR);
                            if (jI == Long.MIN_VALUE) {
                                long j12 = this.f26161q.f24526d;
                                if (j12 != C.TIME_UNSET) {
                                    jI = j12;
                                    jQ = jI + this.f26161q.q();
                                    if (jQ >= 0) {
                                        jArr = this.U;
                                        if (i10 == jArr.length) {
                                            if (jArr.length == 0) {
                                                length = 1;
                                            } else {
                                                length = jArr.length * 2;
                                            }
                                            this.U = Arrays.copyOf(jArr, length);
                                            this.V = Arrays.copyOf(this.V, length);
                                        }
                                        this.U[i10] = com.google.android.exoplayer2.util.p0.e1(j11 + jQ);
                                        this.V[i10] = this.f26161q.s(iR);
                                        i10++;
                                    }
                                }
                            } else {
                                jQ = jI + this.f26161q.q();
                                if (jQ >= 0) {
                                    jArr = this.U;
                                    if (i10 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.U = Arrays.copyOf(jArr, length);
                                        this.V = Arrays.copyOf(this.V, length);
                                    }
                                    this.U[i10] = com.google.android.exoplayer2.util.p0.e1(j11 + jQ);
                                    this.V[i10] = this.f26161q.s(iR);
                                    i10++;
                                }
                            }
                        }
                        i12++;
                    }
                }
                j11 += dVar.f24551n;
                i11++;
                z10 = true;
            }
            j10 = j11;
        }
        long jE1 = com.google.android.exoplayer2.util.p0.e1(j10);
        TextView textView = this.f26156l;
        if (textView != null) {
            textView.setText(com.google.android.exoplayer2.util.p0.h0(this.f26159o, this.f26160p, jE1));
        }
        n0 n0Var = this.f26158n;
        if (n0Var != null) {
            n0Var.setDuration(jE1);
            int length2 = this.W.length;
            int i13 = i10 + length2;
            long[] jArr2 = this.U;
            if (i13 > jArr2.length) {
                this.U = Arrays.copyOf(jArr2, i13);
                this.V = Arrays.copyOf(this.V, i13);
            }
            System.arraycopy(this.W, 0, this.U, i10, length2);
            System.arraycopy(this.f26142a0, 0, this.V, i10, length2);
            this.f26158n.setAdGroupTimesMs(this.U, this.V, i13);
        }
        O();
    }

    private static boolean y(l3 l3Var, l3.d dVar) {
        if (l3Var.t() > 100) {
            return false;
        }
        int iT = l3Var.t();
        for (int i10 = 0; i10 < iT; i10++) {
            if (l3Var.r(i10, dVar).f24551n == C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    public void z(p2 p2Var) {
        p2Var.pause();
    }

    public void addVisibilityListener(e eVar) {
        com.google.android.exoplayer2.util.a.e(eVar);
        this.f26143b.add(eVar);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        p2 p2Var = this.G;
        if (p2Var == null || !E(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (p2Var.getPlaybackState() == 4) {
                return true;
            }
            p2Var.w();
            return true;
        }
        if (keyCode == 89) {
            p2Var.x();
            return true;
        }
        if (keyEvent.getRepeatCount() != 0) {
            return true;
        }
        if (keyCode == 79 || keyCode == 85) {
            B(p2Var);
            return true;
        }
        if (keyCode == 87) {
            p2Var.n();
            return true;
        }
        if (keyCode == 88) {
            p2Var.f();
            return true;
        }
        if (keyCode == 126) {
            A(p2Var);
            return true;
        }
        if (keyCode != 127) {
            return true;
        }
        z(p2Var);
        return true;
    }

    @Override
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.f26164t);
        } else if (motionEvent.getAction() == 1) {
            D();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public p2 getPlayer() {
        return this.G;
    }

    public int getRepeatToggleModes() {
        return this.N;
    }

    public boolean getShowShuffleButton() {
        return this.S;
    }

    public int getShowTimeoutMs() {
        return this.L;
    }

    public boolean getShowVrButton() {
        View view = this.f26155k;
        return view != null && view.getVisibility() == 0;
    }

    public void hide() {
        if (isVisible()) {
            setVisibility(8);
            Iterator it = this.f26143b.iterator();
            while (it.hasNext()) {
                ((e) it.next()).l(getVisibility());
            }
            removeCallbacks(this.f26163s);
            removeCallbacks(this.f26164t);
            this.T = C.TIME_UNSET;
        }
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.H = true;
        long j10 = this.T;
        if (j10 != C.TIME_UNSET) {
            long jUptimeMillis = j10 - SystemClock.uptimeMillis();
            if (jUptimeMillis <= 0) {
                hide();
            } else {
                postDelayed(this.f26164t, jUptimeMillis);
            }
        } else if (isVisible()) {
            D();
        }
        K();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.H = false;
        removeCallbacks(this.f26163s);
        removeCallbacks(this.f26164t);
    }

    public void removeVisibilityListener(e eVar) {
        this.f26143b.remove(eVar);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        if (jArr == null) {
            this.W = new long[0];
            this.f26142a0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) com.google.android.exoplayer2.util.a.e(zArr);
            com.google.android.exoplayer2.util.a.a(jArr.length == zArr2.length);
            this.W = jArr;
            this.f26142a0 = zArr2;
        }
        R();
    }

    public void setPlayer(@Nullable p2 p2Var) {
        com.google.android.exoplayer2.util.a.g(Looper.myLooper() == Looper.getMainLooper());
        com.google.android.exoplayer2.util.a.a(p2Var == null || p2Var.l() == Looper.getMainLooper());
        p2 p2Var2 = this.G;
        if (p2Var2 == p2Var) {
            return;
        }
        if (p2Var2 != null) {
            p2Var2.B(this.f26141a);
        }
        this.G = p2Var;
        if (p2Var != null) {
            p2Var.E(this.f26141a);
        }
        K();
    }

    public void setRepeatToggleModes(int i10) {
        this.N = i10;
        p2 p2Var = this.G;
        if (p2Var != null) {
            int repeatMode = p2Var.getRepeatMode();
            if (i10 == 0 && repeatMode != 0) {
                this.G.setRepeatMode(0);
            } else if (i10 == 1 && repeatMode == 2) {
                this.G.setRepeatMode(1);
            } else if (i10 == 2 && repeatMode == 1) {
                this.G.setRepeatMode(2);
            }
        }
        P();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.P = z10;
        M();
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        this.I = z10;
        R();
    }

    public void setShowNextButton(boolean z10) {
        this.R = z10;
        M();
    }

    public void setShowPreviousButton(boolean z10) {
        this.Q = z10;
        M();
    }

    public void setShowRewindButton(boolean z10) {
        this.O = z10;
        M();
    }

    public void setShowShuffleButton(boolean z10) {
        this.S = z10;
        Q();
    }

    public void setShowTimeoutMs(int i10) {
        this.L = i10;
        if (isVisible()) {
            D();
        }
    }

    public void setShowVrButton(boolean z10) {
        View view = this.f26155k;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i10) {
        this.M = com.google.android.exoplayer2.util.p0.q(i10, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f26155k;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            L(getShowVrButton(), onClickListener != null, this.f26155k);
        }
    }

    public void show() {
        if (!isVisible()) {
            setVisibility(0);
            Iterator it = this.f26143b.iterator();
            while (it.hasNext()) {
                ((e) it.next()).l(getVisibility());
            }
            K();
            G();
            F();
        }
        D();
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i10);
        int resourceId = R$layout.exo_player_control_view;
        this.L = 5000;
        this.N = 0;
        this.M = 200;
        this.T = C.TIME_UNSET;
        this.O = true;
        this.P = true;
        this.Q = true;
        this.R = true;
        this.S = false;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.PlayerControlView, i10, 0);
            try {
                this.L = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_show_timeout, this.L);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_controller_layout_id, resourceId);
                this.N = C(typedArrayObtainStyledAttributes, this.N);
                this.O = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_rewind_button, this.O);
                this.P = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_fastforward_button, this.P);
                this.Q = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_previous_button, this.Q);
                this.R = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_next_button, this.R);
                this.S = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_shuffle_button, this.S);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_time_bar_min_update_interval, this.M));
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        }
        this.f26143b = new CopyOnWriteArrayList();
        this.f26161q = new l3.b();
        this.f26162r = new l3.d();
        StringBuilder sb2 = new StringBuilder();
        this.f26159o = sb2;
        this.f26160p = new Formatter(sb2, Locale.getDefault());
        this.U = new long[0];
        this.V = new boolean[0];
        this.W = new long[0];
        this.f26142a0 = new boolean[0];
        c cVar = new c();
        this.f26141a = cVar;
        this.f26163s = new Runnable() {
            @Override
            public final void run() {
                this.f26353a.O();
            }
        };
        this.f26164t = new Runnable() {
            @Override
            public final void run() {
                this.f26392a.hide();
            }
        };
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        n0 n0Var = (n0) findViewById(R$id.exo_progress);
        View viewFindViewById = findViewById(R$id.exo_progress_placeholder);
        if (n0Var != null) {
            this.f26158n = n0Var;
        } else if (viewFindViewById != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2);
            defaultTimeBar.setId(R$id.exo_progress);
            defaultTimeBar.setLayoutParams(viewFindViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById);
            viewGroup.removeView(viewFindViewById);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            this.f26158n = defaultTimeBar;
        } else {
            this.f26158n = null;
        }
        this.f26156l = (TextView) findViewById(R$id.exo_duration);
        this.f26157m = (TextView) findViewById(R$id.exo_position);
        n0 n0Var2 = this.f26158n;
        if (n0Var2 != null) {
            n0Var2.addListener(cVar);
        }
        View viewFindViewById2 = findViewById(R$id.exo_play);
        this.f26149e = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(cVar);
        }
        View viewFindViewById3 = findViewById(R$id.exo_pause);
        this.f26150f = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(cVar);
        }
        View viewFindViewById4 = findViewById(R$id.exo_prev);
        this.f26145c = viewFindViewById4;
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(cVar);
        }
        View viewFindViewById5 = findViewById(R$id.exo_next);
        this.f26147d = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(cVar);
        }
        View viewFindViewById6 = findViewById(R$id.exo_rew);
        this.f26152h = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(cVar);
        }
        View viewFindViewById7 = findViewById(R$id.exo_ffwd);
        this.f26151g = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(cVar);
        }
        ImageView imageView = (ImageView) findViewById(R$id.exo_repeat_toggle);
        this.f26153i = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(cVar);
        }
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_shuffle);
        this.f26154j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(cVar);
        }
        View viewFindViewById8 = findViewById(R$id.exo_vr);
        this.f26155k = viewFindViewById8;
        setShowVrButton(false);
        L(false, false, viewFindViewById8);
        Resources resources = context.getResources();
        this.C = resources.getInteger(R$integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.D = resources.getInteger(R$integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.f26165u = resources.getDrawable(R$drawable.exo_controls_repeat_off);
        this.f26166v = resources.getDrawable(R$drawable.exo_controls_repeat_one);
        this.f26167w = resources.getDrawable(R$drawable.exo_controls_repeat_all);
        this.A = resources.getDrawable(R$drawable.exo_controls_shuffle_on);
        this.B = resources.getDrawable(R$drawable.exo_controls_shuffle_off);
        this.f26168x = resources.getString(R$string.exo_controls_repeat_off_description);
        this.f26169y = resources.getString(R$string.exo_controls_repeat_one_description);
        this.f26170z = resources.getString(R$string.exo_controls_repeat_all_description);
        this.E = resources.getString(R$string.exo_controls_shuffle_on_description);
        this.F = resources.getString(R$string.exo_controls_shuffle_off_description);
        this.f26146c0 = C.TIME_UNSET;
        this.f26148d0 = C.TIME_UNSET;
    }

    public void setProgressUpdateListener(@Nullable d dVar) {
    }
}
