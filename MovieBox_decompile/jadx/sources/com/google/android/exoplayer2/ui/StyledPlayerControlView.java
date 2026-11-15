package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n1;
import com.google.android.exoplayer2.o2;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.p2;
import com.google.android.exoplayer2.q3;
import com.google.android.exoplayer2.r2;
import com.google.android.exoplayer2.w1;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

public class StyledPlayerControlView extends FrameLayout {
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    public static final int DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS = 200;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;

    private static final float[] f26200x0;
    private final Drawable A;
    private final Drawable B;
    private final float C;
    private final float D;
    private final String E;
    private final String F;
    private final Drawable G;
    private final Drawable H;
    private final String I;
    private final String J;
    private final Drawable K;
    private final Drawable L;
    private final String M;
    private final String N;
    private p2 O;
    private d P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private int V;
    private int W;

    private final c f26201a;

    private int f26202a0;

    private final CopyOnWriteArrayList f26203b;

    private long[] f26204b0;

    private final View f26205c;

    private boolean[] f26206c0;

    private final View f26207d;

    private long[] f26208d0;

    private final View f26209e;

    private boolean[] f26210e0;

    private final View f26211f;

    private long f26212f0;

    private final View f26213g;

    private i0 f26214g0;

    private final TextView f26215h;

    private Resources f26216h0;

    private final TextView f26217i;

    private RecyclerView f26218i0;

    private final ImageView f26219j;

    private h f26220j0;

    private final ImageView f26221k;

    private e f26222k0;

    private final View f26223l;

    private PopupWindow f26224l0;

    private final TextView f26225m;

    private boolean f26226m0;

    private final TextView f26227n;

    private int f26228n0;

    private final n0 f26229o;

    private j f26230o0;

    private final StringBuilder f26231p;

    private b f26232p0;

    private final Formatter f26233q;

    private o0 f26234q0;

    private final l3.b f26235r;

    private ImageView f26236r0;

    private final l3.d f26237s;

    private ImageView f26238s0;

    private final Runnable f26239t;

    private ImageView f26240t0;

    private final Drawable f26241u;

    private View f26242u0;

    private final Drawable f26243v;

    private View f26244v0;

    private final Drawable f26245w;

    private View f26246w0;

    private final String f26247x;

    private final String f26248y;

    private final String f26249z;

    final class b extends l {
        private b() {
            super();
        }

        private boolean o(na.z zVar) {
            for (int i10 = 0; i10 < this.f26270a.size(); i10++) {
                if (zVar.f67134y.containsKey(((k) this.f26270a.get(i10)).f26267a.b())) {
                    return true;
                }
            }
            return false;
        }

        public void q(View view) {
            if (StyledPlayerControlView.this.O == null) {
                return;
            }
            ((p2) com.google.android.exoplayer2.util.p0.j(StyledPlayerControlView.this.O)).D(StyledPlayerControlView.this.O.m().a().B(1).J(1, false).A());
            StyledPlayerControlView.this.f26220j0.i(1, StyledPlayerControlView.this.getResources().getString(R$string.exo_track_selection_auto));
            StyledPlayerControlView.this.f26224l0.dismiss();
        }

        @Override
        public void k(i iVar) {
            iVar.f26264a.setText(R$string.exo_track_selection_auto);
            iVar.f26265b.setVisibility(o(((p2) com.google.android.exoplayer2.util.a.e(StyledPlayerControlView.this.O)).m()) ? 4 : 0);
            iVar.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f26434a.q(view);
                }
            });
        }

        @Override
        public void m(String str) {
            StyledPlayerControlView.this.f26220j0.i(1, str);
        }

        public void p(List list) {
            this.f26270a = list;
            na.z zVarM = ((p2) com.google.android.exoplayer2.util.a.e(StyledPlayerControlView.this.O)).m();
            if (list.isEmpty()) {
                StyledPlayerControlView.this.f26220j0.i(1, StyledPlayerControlView.this.getResources().getString(R$string.exo_track_selection_none));
                return;
            }
            if (!o(zVarM)) {
                StyledPlayerControlView.this.f26220j0.i(1, StyledPlayerControlView.this.getResources().getString(R$string.exo_track_selection_auto));
                return;
            }
            for (int i10 = 0; i10 < list.size(); i10++) {
                k kVar = (k) list.get(i10);
                if (kVar.a()) {
                    StyledPlayerControlView.this.f26220j0.i(1, kVar.f26269c);
                    return;
                }
            }
        }
    }

    private final class c implements p2.d, n0.a, View.OnClickListener, PopupWindow.OnDismissListener {
        private c() {
        }

        @Override
        public void l(n0 n0Var, long j10) {
            if (StyledPlayerControlView.this.f26227n != null) {
                StyledPlayerControlView.this.f26227n.setText(com.google.android.exoplayer2.util.p0.h0(StyledPlayerControlView.this.f26231p, StyledPlayerControlView.this.f26233q, j10));
            }
        }

        @Override
        public void onAvailableCommandsChanged(p2.b bVar) {
            r2.c(this, bVar);
        }

        @Override
        public void onClick(View view) {
            p2 p2Var = StyledPlayerControlView.this.O;
            if (p2Var == null) {
                return;
            }
            StyledPlayerControlView.this.f26214g0.X();
            if (StyledPlayerControlView.this.f26207d == view) {
                p2Var.n();
                return;
            }
            if (StyledPlayerControlView.this.f26205c == view) {
                p2Var.f();
                return;
            }
            if (StyledPlayerControlView.this.f26211f == view) {
                if (p2Var.getPlaybackState() != 4) {
                    p2Var.w();
                    return;
                }
                return;
            }
            if (StyledPlayerControlView.this.f26213g == view) {
                p2Var.x();
                return;
            }
            if (StyledPlayerControlView.this.f26209e == view) {
                StyledPlayerControlView.this.V(p2Var);
                return;
            }
            if (StyledPlayerControlView.this.f26219j == view) {
                p2Var.setRepeatMode(com.google.android.exoplayer2.util.f0.a(p2Var.getRepeatMode(), StyledPlayerControlView.this.f26202a0));
                return;
            }
            if (StyledPlayerControlView.this.f26221k == view) {
                p2Var.setShuffleModeEnabled(!p2Var.getShuffleModeEnabled());
                return;
            }
            if (StyledPlayerControlView.this.f26242u0 == view) {
                StyledPlayerControlView.this.f26214g0.W();
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.W(styledPlayerControlView.f26220j0);
                return;
            }
            if (StyledPlayerControlView.this.f26244v0 == view) {
                StyledPlayerControlView.this.f26214g0.W();
                StyledPlayerControlView styledPlayerControlView2 = StyledPlayerControlView.this;
                styledPlayerControlView2.W(styledPlayerControlView2.f26222k0);
            } else if (StyledPlayerControlView.this.f26246w0 == view) {
                StyledPlayerControlView.this.f26214g0.W();
                StyledPlayerControlView styledPlayerControlView3 = StyledPlayerControlView.this;
                styledPlayerControlView3.W(styledPlayerControlView3.f26232p0);
            } else if (StyledPlayerControlView.this.f26236r0 == view) {
                StyledPlayerControlView.this.f26214g0.W();
                StyledPlayerControlView styledPlayerControlView4 = StyledPlayerControlView.this;
                styledPlayerControlView4.W(styledPlayerControlView4.f26230o0);
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
        public void onDismiss() {
            if (StyledPlayerControlView.this.f26226m0) {
                StyledPlayerControlView.this.f26214g0.X();
            }
        }

        @Override
        public void onEvents(p2 p2Var, p2.c cVar) {
            if (cVar.b(4, 5)) {
                StyledPlayerControlView.this.q0();
            }
            if (cVar.b(4, 5, 7)) {
                StyledPlayerControlView.this.s0();
            }
            if (cVar.a(8)) {
                StyledPlayerControlView.this.t0();
            }
            if (cVar.a(9)) {
                StyledPlayerControlView.this.w0();
            }
            if (cVar.b(8, 9, 11, 0, 16, 17, 13)) {
                StyledPlayerControlView.this.p0();
            }
            if (cVar.b(11, 0)) {
                StyledPlayerControlView.this.x0();
            }
            if (cVar.a(12)) {
                StyledPlayerControlView.this.r0();
            }
            if (cVar.a(2)) {
                StyledPlayerControlView.this.y0();
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
            StyledPlayerControlView.this.U = false;
            if (!z10 && StyledPlayerControlView.this.O != null) {
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                styledPlayerControlView.i0(styledPlayerControlView.O, j10);
            }
            StyledPlayerControlView.this.f26214g0.X();
        }

        @Override
        public void s(n0 n0Var, long j10) {
            StyledPlayerControlView.this.U = true;
            if (StyledPlayerControlView.this.f26227n != null) {
                StyledPlayerControlView.this.f26227n.setText(com.google.android.exoplayer2.util.p0.h0(StyledPlayerControlView.this.f26231p, StyledPlayerControlView.this.f26233q, j10));
            }
            StyledPlayerControlView.this.f26214g0.W();
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
        void p(boolean z10);
    }

    final class e extends RecyclerView.Adapter {

        private final String[] f26252a;

        private final float[] f26253b;

        private int f26254c;

        public e(String[] strArr, float[] fArr) {
            this.f26252a = strArr;
            this.f26253b = fArr;
        }

        public void i(int i10, View view) {
            if (i10 != this.f26254c) {
                StyledPlayerControlView.this.setPlaybackSpeed(this.f26253b[i10]);
            }
            StyledPlayerControlView.this.f26224l0.dismiss();
        }

        @Override
        public int getItemCount() {
            return this.f26252a.length;
        }

        public String h() {
            return this.f26252a[this.f26254c];
        }

        @Override
        public void onBindViewHolder(i iVar, final int i10) {
            String[] strArr = this.f26252a;
            if (i10 < strArr.length) {
                iVar.f26264a.setText(strArr[i10]);
            }
            if (i10 == this.f26254c) {
                iVar.itemView.setSelected(true);
                iVar.f26265b.setVisibility(0);
            } else {
                iVar.itemView.setSelected(false);
                iVar.f26265b.setVisibility(4);
            }
            iVar.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f26443a.i(i10, view);
                }
            });
        }

        @Override
        public i onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new i(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R$layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        public void l(float f10) {
            int i10 = 0;
            float f11 = Float.MAX_VALUE;
            int i11 = 0;
            while (true) {
                float[] fArr = this.f26253b;
                if (i10 >= fArr.length) {
                    this.f26254c = i11;
                    return;
                }
                float fAbs = Math.abs(f10 - fArr[i10]);
                if (fAbs < f11) {
                    i11 = i10;
                    f11 = fAbs;
                }
                i10++;
            }
        }
    }

    public interface f {
    }

    final class g extends RecyclerView.a0 {

        private final TextView f26256a;

        private final TextView f26257b;

        private final ImageView f26258c;

        public g(View view) {
            super(view);
            if (com.google.android.exoplayer2.util.p0.f26854a < 26) {
                view.setFocusable(true);
            }
            this.f26256a = (TextView) view.findViewById(R$id.exo_main_text);
            this.f26257b = (TextView) view.findViewById(R$id.exo_sub_text);
            this.f26258c = (ImageView) view.findViewById(R$id.exo_icon);
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.f26445a.j(view2);
                }
            });
        }

        public void j(View view) {
            StyledPlayerControlView.this.f0(getAdapterPosition());
        }
    }

    private class h extends RecyclerView.Adapter {

        private final String[] f26260a;

        private final String[] f26261b;

        private final Drawable[] f26262c;

        public h(String[] strArr, Drawable[] drawableArr) {
            this.f26260a = strArr;
            this.f26261b = new String[strArr.length];
            this.f26262c = drawableArr;
        }

        @Override
        public void onBindViewHolder(g gVar, int i10) {
            gVar.f26256a.setText(this.f26260a[i10]);
            if (this.f26261b[i10] == null) {
                gVar.f26257b.setVisibility(8);
            } else {
                gVar.f26257b.setText(this.f26261b[i10]);
            }
            if (this.f26262c[i10] == null) {
                gVar.f26258c.setVisibility(8);
            } else {
                gVar.f26258c.setImageDrawable(this.f26262c[i10]);
            }
        }

        @Override
        public int getItemCount() {
            return this.f26260a.length;
        }

        @Override
        public long getItemId(int i10) {
            return i10;
        }

        @Override
        public g onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return StyledPlayerControlView.this.new g(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R$layout.exo_styled_settings_list_item, viewGroup, false));
        }

        public void i(int i10, String str) {
            this.f26261b[i10] = str;
        }
    }

    private static class i extends RecyclerView.a0 {

        public final TextView f26264a;

        public final View f26265b;

        public i(View view) {
            super(view);
            if (com.google.android.exoplayer2.util.p0.f26854a < 26) {
                view.setFocusable(true);
            }
            this.f26264a = (TextView) view.findViewById(R$id.exo_text);
            this.f26265b = view.findViewById(R$id.exo_check);
        }
    }

    static final class k {

        public final q3.a f26267a;

        public final int f26268b;

        public final String f26269c;

        /* JADX WARN: Multi-variable type inference failed */
        public k(q3 q3Var, int i10, int i11, String str) {
            this.f26267a = (q3.a) q3Var.b().get(i10);
            this.f26268b = i11;
            this.f26269c = str;
        }

        public boolean a() {
            return this.f26267a.g(this.f26268b);
        }
    }

    abstract class l extends RecyclerView.Adapter {

        protected List f26270a = new ArrayList();

        protected l() {
        }

        public void i(p2 p2Var, v9.w wVar, k kVar, View view) {
            p2Var.D(p2Var.m().a().G(new na.x(wVar, ImmutableList.of(Integer.valueOf(kVar.f26268b)))).J(kVar.f26267a.d(), false).A());
            m(kVar.f26269c);
            StyledPlayerControlView.this.f26224l0.dismiss();
        }

        @Override
        public int getItemCount() {
            if (this.f26270a.isEmpty()) {
                return 0;
            }
            return this.f26270a.size() + 1;
        }

        protected void h() {
            this.f26270a = Collections.emptyList();
        }

        @Override
        public void onBindViewHolder(i iVar, int i10) {
            final p2 p2Var = StyledPlayerControlView.this.O;
            if (p2Var == null) {
                return;
            }
            if (i10 == 0) {
                k(iVar);
                return;
            }
            final k kVar = (k) this.f26270a.get(i10 - 1);
            final v9.w wVarB = kVar.f26267a.b();
            boolean z10 = p2Var.m().f67134y.get(wVarB) != null && kVar.a();
            iVar.f26264a.setText(kVar.f26269c);
            iVar.f26265b.setVisibility(z10 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f26447a.i(p2Var, wVarB, kVar, view);
                }
            });
        }

        protected abstract void k(i iVar);

        @Override
        public i onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new i(LayoutInflater.from(StyledPlayerControlView.this.getContext()).inflate(R$layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        protected abstract void m(String str);
    }

    public interface m {
        void l(int i10);
    }

    static {
        n1.a("goog.exo.ui");
        f26200x0 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    public StyledPlayerControlView(Context context) {
        this(context, null);
    }

    private static boolean S(l3 l3Var, l3.d dVar) {
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

    private void T(p2 p2Var) {
        p2Var.pause();
    }

    private void U(p2 p2Var) {
        int playbackState = p2Var.getPlaybackState();
        if (playbackState == 1) {
            p2Var.prepare();
        } else if (playbackState == 4) {
            h0(p2Var, p2Var.u(), C.TIME_UNSET);
        }
        p2Var.play();
    }

    public void V(p2 p2Var) {
        int playbackState = p2Var.getPlaybackState();
        if (playbackState == 1 || playbackState == 4 || !p2Var.getPlayWhenReady()) {
            U(p2Var);
        } else {
            T(p2Var);
        }
    }

    public void W(RecyclerView.Adapter adapter) {
        this.f26218i0.setAdapter(adapter);
        v0();
        this.f26226m0 = false;
        this.f26224l0.dismiss();
        this.f26226m0 = true;
        this.f26224l0.showAsDropDown(this, (getWidth() - this.f26224l0.getWidth()) - this.f26228n0, (-this.f26224l0.getHeight()) - this.f26228n0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableList X(q3 q3Var, int i10) {
        ImmutableList.a aVar = new ImmutableList.a();
        ImmutableList immutableListB = q3Var.b();
        for (int i11 = 0; i11 < immutableListB.size(); i11++) {
            q3.a aVar2 = (q3.a) immutableListB.get(i11);
            if (aVar2.d() == i10) {
                for (int i12 = 0; i12 < aVar2.f24967a; i12++) {
                    if (aVar2.h(i12)) {
                        p1 p1VarC = aVar2.c(i12);
                        if ((p1VarC.f24893d & 2) == 0) {
                            aVar.a(new k(q3Var, i11, i12, this.f26234q0.a(p1VarC)));
                        }
                    }
                }
            }
        }
        return aVar.e();
    }

    private static int Y(TypedArray typedArray, int i10) {
        return typedArray.getInt(R$styleable.StyledPlayerControlView_repeat_toggle_modes, i10);
    }

    private void Z() {
        this.f26230o0.h();
        this.f26232p0.h();
        p2 p2Var = this.O;
        if (p2Var != null && p2Var.i(30) && this.O.i(29)) {
            q3 currentTracks = this.O.getCurrentTracks();
            this.f26232p0.p(X(currentTracks, 1));
            if (this.f26214g0.A(this.f26236r0)) {
                this.f26230o0.o(X(currentTracks, 3));
            } else {
                this.f26230o0.o(ImmutableList.of());
            }
        }
    }

    private static void a0(View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        view.setOnClickListener(onClickListener);
    }

    private static boolean b0(int i10) {
        return i10 == 90 || i10 == 89 || i10 == 85 || i10 == 79 || i10 == 126 || i10 == 127 || i10 == 87 || i10 == 88;
    }

    public void d0(View view) {
        if (this.P == null) {
            return;
        }
        boolean z10 = !this.Q;
        this.Q = z10;
        n0(this.f26238s0, z10);
        n0(this.f26240t0, this.Q);
        d dVar = this.P;
        if (dVar != null) {
            dVar.p(this.Q);
        }
    }

    public void e0(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        int i18 = i13 - i11;
        int i19 = i17 - i15;
        if (!(i12 - i10 == i16 - i14 && i18 == i19) && this.f26224l0.isShowing()) {
            v0();
            this.f26224l0.update(view, (getWidth() - this.f26224l0.getWidth()) - this.f26228n0, (-this.f26224l0.getHeight()) - this.f26228n0, -1, -1);
        }
    }

    public void f0(int i10) {
        if (i10 == 0) {
            W(this.f26222k0);
        } else if (i10 == 1) {
            W(this.f26232p0);
        } else {
            this.f26224l0.dismiss();
        }
    }

    private void h0(p2 p2Var, int i10, long j10) {
        p2Var.seekTo(i10, j10);
    }

    public void i0(p2 p2Var, long j10) {
        int iU;
        l3 currentTimeline = p2Var.getCurrentTimeline();
        if (this.T && !currentTimeline.u()) {
            int iT = currentTimeline.t();
            iU = 0;
            while (true) {
                long jG = currentTimeline.r(iU, this.f26237s).g();
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
        h0(p2Var, iU, j10);
        s0();
    }

    private boolean j0() {
        p2 p2Var = this.O;
        return (p2Var == null || p2Var.getPlaybackState() == 4 || this.O.getPlaybackState() == 1 || !this.O.getPlayWhenReady()) ? false : true;
    }

    private void l0(boolean z10, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z10);
        view.setAlpha(z10 ? this.C : this.D);
    }

    private void m0() {
        p2 p2Var = this.O;
        int iS = (int) ((p2Var != null ? p2Var.s() : MBInterstitialActivity.WEB_LOAD_TIME) / 1000);
        TextView textView = this.f26215h;
        if (textView != null) {
            textView.setText(String.valueOf(iS));
        }
        View view = this.f26211f;
        if (view != null) {
            view.setContentDescription(this.f26216h0.getQuantityString(R$plurals.exo_controls_fastforward_by_amount_description, iS, Integer.valueOf(iS)));
        }
    }

    private void n0(ImageView imageView, boolean z10) {
        if (imageView == null) {
            return;
        }
        if (z10) {
            imageView.setImageDrawable(this.K);
            imageView.setContentDescription(this.M);
        } else {
            imageView.setImageDrawable(this.L);
            imageView.setContentDescription(this.N);
        }
    }

    private static void o0(View view, boolean z10) {
        if (view == null) {
            return;
        }
        if (z10) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    public void p0() {
        boolean zI;
        boolean zI2;
        boolean zI3;
        boolean zI4;
        boolean zI5;
        if (isVisible() && this.R) {
            p2 p2Var = this.O;
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
            if (zI4) {
                u0();
            }
            if (zI5) {
                m0();
            }
            l0(zI3, this.f26205c);
            l0(zI4, this.f26213g);
            l0(zI5, this.f26211f);
            l0(zI2, this.f26207d);
            n0 n0Var = this.f26229o;
            if (n0Var != null) {
                n0Var.setEnabled(zI);
            }
        }
    }

    public void q0() {
        if (isVisible() && this.R && this.f26209e != null) {
            if (j0()) {
                ((ImageView) this.f26209e).setImageDrawable(this.f26216h0.getDrawable(R$drawable.exo_styled_controls_pause));
                this.f26209e.setContentDescription(this.f26216h0.getString(R$string.exo_controls_pause_description));
            } else {
                ((ImageView) this.f26209e).setImageDrawable(this.f26216h0.getDrawable(R$drawable.exo_styled_controls_play));
                this.f26209e.setContentDescription(this.f26216h0.getString(R$string.exo_controls_play_description));
            }
        }
    }

    public void r0() {
        p2 p2Var = this.O;
        if (p2Var == null) {
            return;
        }
        this.f26222k0.l(p2Var.getPlaybackParameters().f24845a);
        this.f26220j0.i(0, this.f26222k0.h());
    }

    public void s0() {
        long contentPosition;
        long jV;
        if (isVisible() && this.R) {
            p2 p2Var = this.O;
            if (p2Var != null) {
                contentPosition = this.f26212f0 + p2Var.getContentPosition();
                jV = this.f26212f0 + p2Var.v();
            } else {
                contentPosition = 0;
                jV = 0;
            }
            TextView textView = this.f26227n;
            if (textView != null && !this.U) {
                textView.setText(com.google.android.exoplayer2.util.p0.h0(this.f26231p, this.f26233q, contentPosition));
            }
            n0 n0Var = this.f26229o;
            if (n0Var != null) {
                n0Var.setPosition(contentPosition);
                this.f26229o.setBufferedPosition(jV);
            }
            removeCallbacks(this.f26239t);
            int playbackState = p2Var == null ? 1 : p2Var.getPlaybackState();
            if (p2Var == null || !p2Var.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.f26239t, 1000L);
                return;
            }
            n0 n0Var2 = this.f26229o;
            long jMin = Math.min(n0Var2 != null ? n0Var2.getPreferredUpdateDelay() : 1000L, 1000 - (contentPosition % 1000));
            float f10 = p2Var.getPlaybackParameters().f24845a;
            postDelayed(this.f26239t, com.google.android.exoplayer2.util.p0.r(f10 > 0.0f ? (long) (jMin / f10) : 1000L, this.W, 1000L));
        }
    }

    public void setPlaybackSpeed(float f10) {
        p2 p2Var = this.O;
        if (p2Var == null) {
            return;
        }
        p2Var.b(p2Var.getPlaybackParameters().e(f10));
    }

    public void t0() {
        ImageView imageView;
        if (isVisible() && this.R && (imageView = this.f26219j) != null) {
            if (this.f26202a0 == 0) {
                l0(false, imageView);
                return;
            }
            p2 p2Var = this.O;
            if (p2Var == null) {
                l0(false, imageView);
                this.f26219j.setImageDrawable(this.f26241u);
                this.f26219j.setContentDescription(this.f26247x);
                return;
            }
            l0(true, imageView);
            int repeatMode = p2Var.getRepeatMode();
            if (repeatMode == 0) {
                this.f26219j.setImageDrawable(this.f26241u);
                this.f26219j.setContentDescription(this.f26247x);
            } else if (repeatMode == 1) {
                this.f26219j.setImageDrawable(this.f26243v);
                this.f26219j.setContentDescription(this.f26248y);
            } else {
                if (repeatMode != 2) {
                    return;
                }
                this.f26219j.setImageDrawable(this.f26245w);
                this.f26219j.setContentDescription(this.f26249z);
            }
        }
    }

    private void u0() {
        p2 p2Var = this.O;
        int iZ = (int) ((p2Var != null ? p2Var.z() : 5000L) / 1000);
        TextView textView = this.f26217i;
        if (textView != null) {
            textView.setText(String.valueOf(iZ));
        }
        View view = this.f26213g;
        if (view != null) {
            view.setContentDescription(this.f26216h0.getQuantityString(R$plurals.exo_controls_rewind_by_amount_description, iZ, Integer.valueOf(iZ)));
        }
    }

    private void v0() {
        this.f26218i0.measure(0, 0);
        this.f26224l0.setWidth(Math.min(this.f26218i0.getMeasuredWidth(), getWidth() - (this.f26228n0 * 2)));
        this.f26224l0.setHeight(Math.min(getHeight() - (this.f26228n0 * 2), this.f26218i0.getMeasuredHeight()));
    }

    public void w0() {
        ImageView imageView;
        if (isVisible() && this.R && (imageView = this.f26221k) != null) {
            p2 p2Var = this.O;
            if (!this.f26214g0.A(imageView)) {
                l0(false, this.f26221k);
                return;
            }
            if (p2Var == null) {
                l0(false, this.f26221k);
                this.f26221k.setImageDrawable(this.B);
                this.f26221k.setContentDescription(this.F);
            } else {
                l0(true, this.f26221k);
                this.f26221k.setImageDrawable(p2Var.getShuffleModeEnabled() ? this.A : this.B);
                this.f26221k.setContentDescription(p2Var.getShuffleModeEnabled() ? this.E : this.F);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d4 A[SYNTHETIC] */
    public void x0() {
        int i10;
        l3.d dVar;
        long jQ;
        long[] jArr;
        int length;
        p2 p2Var = this.O;
        if (p2Var == null) {
            return;
        }
        boolean z10 = true;
        this.T = this.S && S(p2Var.getCurrentTimeline(), this.f26237s);
        long j10 = 0;
        this.f26212f0 = 0L;
        l3 currentTimeline = p2Var.getCurrentTimeline();
        if (currentTimeline.u()) {
            i10 = 0;
        } else {
            int iU = p2Var.u();
            boolean z11 = this.T;
            int i11 = z11 ? 0 : iU;
            int iT = z11 ? currentTimeline.t() - 1 : iU;
            long j11 = 0;
            i10 = 0;
            while (i11 <= iT) {
                if (i11 == iU) {
                    this.f26212f0 = com.google.android.exoplayer2.util.p0.e1(j11);
                }
                currentTimeline.r(i11, this.f26237s);
                l3.d dVar2 = this.f26237s;
                if (dVar2.f24551n == C.TIME_UNSET) {
                    com.google.android.exoplayer2.util.a.g(this.T ^ z10);
                    break;
                }
                int i12 = dVar2.f24552o;
                while (true) {
                    dVar = this.f26237s;
                    if (i12 <= dVar.f24553p) {
                        currentTimeline.j(i12, this.f26235r);
                        int iF = this.f26235r.f();
                        for (int iR = this.f26235r.r(); iR < iF; iR++) {
                            long jI = this.f26235r.i(iR);
                            if (jI == Long.MIN_VALUE) {
                                long j12 = this.f26235r.f24526d;
                                if (j12 != C.TIME_UNSET) {
                                    jI = j12;
                                    jQ = jI + this.f26235r.q();
                                    if (jQ >= 0) {
                                        jArr = this.f26204b0;
                                        if (i10 == jArr.length) {
                                            if (jArr.length == 0) {
                                                length = 1;
                                            } else {
                                                length = jArr.length * 2;
                                            }
                                            this.f26204b0 = Arrays.copyOf(jArr, length);
                                            this.f26206c0 = Arrays.copyOf(this.f26206c0, length);
                                        }
                                        this.f26204b0[i10] = com.google.android.exoplayer2.util.p0.e1(j11 + jQ);
                                        this.f26206c0[i10] = this.f26235r.s(iR);
                                        i10++;
                                    }
                                }
                            } else {
                                jQ = jI + this.f26235r.q();
                                if (jQ >= 0) {
                                    jArr = this.f26204b0;
                                    if (i10 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.f26204b0 = Arrays.copyOf(jArr, length);
                                        this.f26206c0 = Arrays.copyOf(this.f26206c0, length);
                                    }
                                    this.f26204b0[i10] = com.google.android.exoplayer2.util.p0.e1(j11 + jQ);
                                    this.f26206c0[i10] = this.f26235r.s(iR);
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
        TextView textView = this.f26225m;
        if (textView != null) {
            textView.setText(com.google.android.exoplayer2.util.p0.h0(this.f26231p, this.f26233q, jE1));
        }
        n0 n0Var = this.f26229o;
        if (n0Var != null) {
            n0Var.setDuration(jE1);
            int length2 = this.f26208d0.length;
            int i13 = i10 + length2;
            long[] jArr2 = this.f26204b0;
            if (i13 > jArr2.length) {
                this.f26204b0 = Arrays.copyOf(jArr2, i13);
                this.f26206c0 = Arrays.copyOf(this.f26206c0, i13);
            }
            System.arraycopy(this.f26208d0, 0, this.f26204b0, i10, length2);
            System.arraycopy(this.f26210e0, 0, this.f26206c0, i10, length2);
            this.f26229o.setAdGroupTimesMs(this.f26204b0, this.f26206c0, i13);
        }
        s0();
    }

    public void y0() {
        Z();
        l0(this.f26230o0.getItemCount() > 0, this.f26236r0);
    }

    @Deprecated
    public void addVisibilityListener(m mVar) {
        com.google.android.exoplayer2.util.a.e(mVar);
        this.f26203b.add(mVar);
    }

    void c0() {
        Iterator it = this.f26203b.iterator();
        while (it.hasNext()) {
            ((m) it.next()).l(getVisibility());
        }
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        p2 p2Var = this.O;
        if (p2Var == null || !b0(keyCode)) {
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
            V(p2Var);
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
            U(p2Var);
            return true;
        }
        if (keyCode != 127) {
            return true;
        }
        T(p2Var);
        return true;
    }

    void g0() {
        View view = this.f26209e;
        if (view != null) {
            view.requestFocus();
        }
    }

    @Nullable
    public p2 getPlayer() {
        return this.O;
    }

    public int getRepeatToggleModes() {
        return this.f26202a0;
    }

    public boolean getShowShuffleButton() {
        return this.f26214g0.A(this.f26221k);
    }

    public boolean getShowSubtitleButton() {
        return this.f26214g0.A(this.f26236r0);
    }

    public int getShowTimeoutMs() {
        return this.V;
    }

    public boolean getShowVrButton() {
        return this.f26214g0.A(this.f26223l);
    }

    public void hide() {
        this.f26214g0.C();
    }

    public void hideImmediately() {
        this.f26214g0.F();
    }

    public boolean isAnimationEnabled() {
        return this.f26214g0.I();
    }

    public boolean isFullyVisible() {
        return this.f26214g0.J();
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    void k0() {
        q0();
        p0();
        t0();
        w0();
        y0();
        r0();
        x0();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f26214g0.P();
        this.R = true;
        if (isFullyVisible()) {
            this.f26214g0.X();
        }
        k0();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f26214g0.Q();
        this.R = false;
        removeCallbacks(this.f26239t);
        this.f26214g0.W();
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f26214g0.R(z10, i10, i11, i12, i13);
    }

    @Deprecated
    public void removeVisibilityListener(m mVar) {
        this.f26203b.remove(mVar);
    }

    public void setAnimationEnabled(boolean z10) {
        this.f26214g0.Y(z10);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        if (jArr == null) {
            this.f26208d0 = new long[0];
            this.f26210e0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) com.google.android.exoplayer2.util.a.e(zArr);
            com.google.android.exoplayer2.util.a.a(jArr.length == zArr2.length);
            this.f26208d0 = jArr;
            this.f26210e0 = zArr2;
        }
        x0();
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(@Nullable d dVar) {
        this.P = dVar;
        o0(this.f26238s0, dVar != null);
        o0(this.f26240t0, dVar != null);
    }

    public void setPlayer(@Nullable p2 p2Var) {
        com.google.android.exoplayer2.util.a.g(Looper.myLooper() == Looper.getMainLooper());
        com.google.android.exoplayer2.util.a.a(p2Var == null || p2Var.l() == Looper.getMainLooper());
        p2 p2Var2 = this.O;
        if (p2Var2 == p2Var) {
            return;
        }
        if (p2Var2 != null) {
            p2Var2.B(this.f26201a);
        }
        this.O = p2Var;
        if (p2Var != null) {
            p2Var.E(this.f26201a);
        }
        k0();
    }

    public void setRepeatToggleModes(int i10) {
        this.f26202a0 = i10;
        p2 p2Var = this.O;
        if (p2Var != null) {
            int repeatMode = p2Var.getRepeatMode();
            if (i10 == 0 && repeatMode != 0) {
                this.O.setRepeatMode(0);
            } else if (i10 == 1 && repeatMode == 2) {
                this.O.setRepeatMode(1);
            } else if (i10 == 2 && repeatMode == 1) {
                this.O.setRepeatMode(2);
            }
        }
        this.f26214g0.Z(this.f26219j, i10 != 0);
        t0();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.f26214g0.Z(this.f26211f, z10);
        p0();
    }

    public void setShowMultiWindowTimeBar(boolean z10) {
        this.S = z10;
        x0();
    }

    public void setShowNextButton(boolean z10) {
        this.f26214g0.Z(this.f26207d, z10);
        p0();
    }

    public void setShowPreviousButton(boolean z10) {
        this.f26214g0.Z(this.f26205c, z10);
        p0();
    }

    public void setShowRewindButton(boolean z10) {
        this.f26214g0.Z(this.f26213g, z10);
        p0();
    }

    public void setShowShuffleButton(boolean z10) {
        this.f26214g0.Z(this.f26221k, z10);
        w0();
    }

    public void setShowSubtitleButton(boolean z10) {
        this.f26214g0.Z(this.f26236r0, z10);
    }

    public void setShowTimeoutMs(int i10) {
        this.V = i10;
        if (isFullyVisible()) {
            this.f26214g0.X();
        }
    }

    public void setShowVrButton(boolean z10) {
        this.f26214g0.Z(this.f26223l, z10);
    }

    public void setTimeBarMinUpdateInterval(int i10) {
        this.W = com.google.android.exoplayer2.util.p0.q(i10, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.f26223l;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            l0(onClickListener != null, this.f26223l);
        }
    }

    public void show() {
        this.f26214g0.c0();
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    public StyledPlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        TextView textView;
        boolean z18;
        super(context, attributeSet, i10);
        int resourceId = R$layout.exo_styled_player_control_view;
        this.V = 5000;
        this.f26202a0 = 0;
        this.W = 200;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.StyledPlayerControlView, i10, 0);
            try {
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.StyledPlayerControlView_controller_layout_id, resourceId);
                this.V = typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerControlView_show_timeout, this.V);
                this.f26202a0 = Y(typedArrayObtainStyledAttributes, this.f26202a0);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_rewind_button, true);
                boolean z20 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_fastforward_button, true);
                boolean z21 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_previous_button, true);
                boolean z22 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_next_button, true);
                boolean z23 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_shuffle_button, false);
                boolean z24 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_subtitle_button, false);
                boolean z25 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_show_vr_button, false);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R$styleable.StyledPlayerControlView_time_bar_min_update_interval, this.W));
                boolean z26 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.StyledPlayerControlView_animation_enabled, true);
                typedArrayObtainStyledAttributes.recycle();
                z11 = z23;
                z12 = z24;
                z14 = z19;
                z15 = z20;
                z16 = z21;
                z13 = z26;
                z17 = z22;
                z10 = z25;
            } catch (Throwable th2) {
                typedArrayObtainStyledAttributes.recycle();
                throw th2;
            }
        } else {
            z10 = false;
            z11 = false;
            z12 = false;
            z13 = true;
            z14 = true;
            z15 = true;
            z16 = true;
            z17 = true;
        }
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        c cVar = new c();
        this.f26201a = cVar;
        this.f26203b = new CopyOnWriteArrayList();
        this.f26235r = new l3.b();
        this.f26237s = new l3.d();
        StringBuilder sb2 = new StringBuilder();
        this.f26231p = sb2;
        this.f26233q = new Formatter(sb2, Locale.getDefault());
        this.f26204b0 = new long[0];
        this.f26206c0 = new boolean[0];
        this.f26208d0 = new long[0];
        this.f26210e0 = new boolean[0];
        this.f26239t = new Runnable() {
            @Override
            public final void run() {
                this.f26430a.s0();
            }
        };
        this.f26225m = (TextView) findViewById(R$id.exo_duration);
        this.f26227n = (TextView) findViewById(R$id.exo_position);
        ImageView imageView = (ImageView) findViewById(R$id.exo_subtitle);
        this.f26236r0 = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(cVar);
        }
        ImageView imageView2 = (ImageView) findViewById(R$id.exo_fullscreen);
        this.f26238s0 = imageView2;
        a0(imageView2, new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f26431a.d0(view);
            }
        });
        ImageView imageView3 = (ImageView) findViewById(R$id.exo_minimal_fullscreen);
        this.f26240t0 = imageView3;
        a0(imageView3, new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f26431a.d0(view);
            }
        });
        View viewFindViewById = findViewById(R$id.exo_settings);
        this.f26242u0 = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(cVar);
        }
        View viewFindViewById2 = findViewById(R$id.exo_playback_speed);
        this.f26244v0 = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(cVar);
        }
        View viewFindViewById3 = findViewById(R$id.exo_audio_track);
        this.f26246w0 = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(cVar);
        }
        n0 n0Var = (n0) findViewById(R$id.exo_progress);
        View viewFindViewById4 = findViewById(R$id.exo_progress_placeholder);
        if (n0Var != null) {
            this.f26229o = n0Var;
            textView = null;
        } else if (viewFindViewById4 != null) {
            textView = null;
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, R$style.ExoStyledControls_TimeBar);
            defaultTimeBar.setId(R$id.exo_progress);
            defaultTimeBar.setLayoutParams(viewFindViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById4.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById4);
            viewGroup.removeView(viewFindViewById4);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            this.f26229o = defaultTimeBar;
        } else {
            textView = null;
            this.f26229o = null;
        }
        n0 n0Var2 = this.f26229o;
        if (n0Var2 != null) {
            n0Var2.addListener(cVar);
        }
        View viewFindViewById5 = findViewById(R$id.exo_play_pause);
        this.f26209e = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(cVar);
        }
        View viewFindViewById6 = findViewById(R$id.exo_prev);
        this.f26205c = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(cVar);
        }
        View viewFindViewById7 = findViewById(R$id.exo_next);
        this.f26207d = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(cVar);
        }
        Typeface typefaceG = y0.h.g(context, R$font.roboto_medium_numbers);
        View viewFindViewById8 = findViewById(R$id.exo_rew);
        TextView textView2 = viewFindViewById8 == null ? (TextView) findViewById(R$id.exo_rew_with_amount) : textView;
        this.f26217i = textView2;
        if (textView2 != null) {
            textView2.setTypeface(typefaceG);
        }
        viewFindViewById8 = viewFindViewById8 == null ? textView2 : viewFindViewById8;
        this.f26213g = viewFindViewById8;
        if (viewFindViewById8 != null) {
            viewFindViewById8.setOnClickListener(cVar);
        }
        View viewFindViewById9 = findViewById(R$id.exo_ffwd);
        TextView textView3 = viewFindViewById9 == null ? (TextView) findViewById(R$id.exo_ffwd_with_amount) : null;
        this.f26215h = textView3;
        if (textView3 != null) {
            textView3.setTypeface(typefaceG);
        }
        viewFindViewById9 = viewFindViewById9 == null ? textView3 : viewFindViewById9;
        this.f26211f = viewFindViewById9;
        if (viewFindViewById9 != null) {
            viewFindViewById9.setOnClickListener(cVar);
        }
        ImageView imageView4 = (ImageView) findViewById(R$id.exo_repeat_toggle);
        this.f26219j = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(cVar);
        }
        ImageView imageView5 = (ImageView) findViewById(R$id.exo_shuffle);
        this.f26221k = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(cVar);
        }
        Resources resources = context.getResources();
        this.f26216h0 = resources;
        this.C = resources.getInteger(R$integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.D = this.f26216h0.getInteger(R$integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        View viewFindViewById10 = findViewById(R$id.exo_vr);
        this.f26223l = viewFindViewById10;
        if (viewFindViewById10 != null) {
            l0(false, viewFindViewById10);
        }
        i0 i0Var = new i0(this);
        this.f26214g0 = i0Var;
        boolean z27 = z10;
        i0Var.Y(z13);
        boolean z28 = z12;
        this.f26220j0 = new h(new String[]{this.f26216h0.getString(R$string.exo_controls_playback_speed), this.f26216h0.getString(R$string.exo_track_selection_title_audio)}, new Drawable[]{this.f26216h0.getDrawable(R$drawable.exo_styled_controls_speed), this.f26216h0.getDrawable(R$drawable.exo_styled_controls_audiotrack)});
        this.f26228n0 = this.f26216h0.getDimensionPixelSize(R$dimen.exo_settings_offset);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(R$layout.exo_styled_settings_list, (ViewGroup) null);
        this.f26218i0 = recyclerView;
        recyclerView.setAdapter(this.f26220j0);
        this.f26218i0.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) this.f26218i0, -2, -2, true);
        this.f26224l0 = popupWindow;
        if (com.google.android.exoplayer2.util.p0.f26854a < 23) {
            z18 = false;
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        } else {
            z18 = false;
        }
        this.f26224l0.setOnDismissListener(cVar);
        this.f26226m0 = true;
        this.f26234q0 = new com.google.android.exoplayer2.ui.g(getResources());
        this.G = this.f26216h0.getDrawable(R$drawable.exo_styled_controls_subtitle_on);
        this.H = this.f26216h0.getDrawable(R$drawable.exo_styled_controls_subtitle_off);
        this.I = this.f26216h0.getString(R$string.exo_controls_cc_enabled_description);
        this.J = this.f26216h0.getString(R$string.exo_controls_cc_disabled_description);
        this.f26230o0 = new j();
        this.f26232p0 = new b();
        this.f26222k0 = new e(this.f26216h0.getStringArray(R$array.exo_controls_playback_speeds), f26200x0);
        this.K = this.f26216h0.getDrawable(R$drawable.exo_styled_controls_fullscreen_exit);
        this.L = this.f26216h0.getDrawable(R$drawable.exo_styled_controls_fullscreen_enter);
        this.f26241u = this.f26216h0.getDrawable(R$drawable.exo_styled_controls_repeat_off);
        this.f26243v = this.f26216h0.getDrawable(R$drawable.exo_styled_controls_repeat_one);
        this.f26245w = this.f26216h0.getDrawable(R$drawable.exo_styled_controls_repeat_all);
        this.A = this.f26216h0.getDrawable(R$drawable.exo_styled_controls_shuffle_on);
        this.B = this.f26216h0.getDrawable(R$drawable.exo_styled_controls_shuffle_off);
        this.M = this.f26216h0.getString(R$string.exo_controls_fullscreen_exit_description);
        this.N = this.f26216h0.getString(R$string.exo_controls_fullscreen_enter_description);
        this.f26247x = this.f26216h0.getString(R$string.exo_controls_repeat_off_description);
        this.f26248y = this.f26216h0.getString(R$string.exo_controls_repeat_one_description);
        this.f26249z = this.f26216h0.getString(R$string.exo_controls_repeat_all_description);
        this.E = this.f26216h0.getString(R$string.exo_controls_shuffle_on_description);
        this.F = this.f26216h0.getString(R$string.exo_controls_shuffle_off_description);
        this.f26214g0.Z((ViewGroup) findViewById(R$id.exo_bottom_bar), true);
        this.f26214g0.Z(viewFindViewById9, z15);
        this.f26214g0.Z(viewFindViewById8, z14);
        this.f26214g0.Z(viewFindViewById6, z16);
        this.f26214g0.Z(viewFindViewById7, z17);
        this.f26214g0.Z(imageView5, z11);
        this.f26214g0.Z(this.f26236r0, z28);
        this.f26214g0.Z(viewFindViewById10, z27);
        this.f26214g0.Z(imageView4, this.f26202a0 != 0 ? true : z18);
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
                this.f26432a.e0(view, i11, i12, i13, i14, i15, i16, i17, i18);
            }
        });
    }

    final class j extends l {
        private j() {
            super();
        }

        public void p(View view) {
            if (StyledPlayerControlView.this.O != null) {
                StyledPlayerControlView.this.O.D(StyledPlayerControlView.this.O.m().a().B(3).F(-3).A());
                StyledPlayerControlView.this.f26224l0.dismiss();
            }
        }

        @Override
        public void onBindViewHolder(i iVar, int i10) {
            super.onBindViewHolder(iVar, i10);
            if (i10 > 0) {
                iVar.f26265b.setVisibility(((k) this.f26270a.get(i10 + (-1))).a() ? 0 : 4);
            }
        }

        @Override
        public void k(i iVar) {
            boolean z10;
            iVar.f26264a.setText(R$string.exo_track_selection_none);
            int i10 = 0;
            while (true) {
                if (i10 >= this.f26270a.size()) {
                    z10 = true;
                    break;
                } else {
                    if (((k) this.f26270a.get(i10)).a()) {
                        z10 = false;
                        break;
                    }
                    i10++;
                }
            }
            iVar.f26265b.setVisibility(z10 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f26446a.p(view);
                }
            });
        }

        public void o(List list) {
            boolean z10 = false;
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (((k) list.get(i10)).a()) {
                    z10 = true;
                    break;
                }
            }
            if (StyledPlayerControlView.this.f26236r0 != null) {
                ImageView imageView = StyledPlayerControlView.this.f26236r0;
                StyledPlayerControlView styledPlayerControlView = StyledPlayerControlView.this;
                imageView.setImageDrawable(z10 ? styledPlayerControlView.G : styledPlayerControlView.H);
                StyledPlayerControlView.this.f26236r0.setContentDescription(z10 ? StyledPlayerControlView.this.I : StyledPlayerControlView.this.J);
            }
            this.f26270a = list;
        }

        @Override
        public void m(String str) {
        }
    }

    public void setProgressUpdateListener(@Nullable f fVar) {
    }
}
