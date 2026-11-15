package androidx.media3.ui;

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
import androidx.media3.common.PlaybackException;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
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

public class PlayerControlView extends FrameLayout {
    private static final float[] A0;
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    public static final int DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS = 200;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;
    private final View A;
    private final View B;
    private final TextView C;
    private final TextView D;
    private final y0 E;
    private final StringBuilder F;
    private final Formatter G;
    private final androidx.media3.common.e0.b H;
    private final androidx.media3.common.e0.c I;
    private final Runnable J;
    private final Drawable K;
    private final Drawable L;
    private final Drawable M;
    private final Drawable N;
    private final Drawable O;
    private final String P;
    private final String Q;
    private final String R;
    private final Drawable S;
    private final Drawable T;
    private final float U;
    private final float V;
    private final String W;

    private final e0 f13181a;

    private final String f13182a0;

    private final Resources f13183b;

    private final Drawable f13184b0;

    private final c f13185c;

    private final Drawable f13186c0;

    private final CopyOnWriteArrayList f13187d;

    private final String f13188d0;

    private final RecyclerView f13189e;

    private final String f13190e0;

    private final h f13191f;

    private final Drawable f13192f0;

    private final e f13193g;

    private final Drawable f13194g0;

    private final j f13195h;

    private final String f13196h0;

    private final b f13197i;

    private final String f13198i0;

    private final z0 f13199j;

    private androidx.media3.common.a0 f13200j0;

    private final PopupWindow f13201k;

    private d f13202k0;

    private final int f13203l;

    private boolean f13204l0;

    private final ImageView f13205m;

    private boolean f13206m0;

    private final ImageView f13207n;

    private boolean f13208n0;

    private final ImageView f13209o;

    private boolean f13210o0;

    private final View f13211p;

    private boolean f13212p0;

    private final View f13213q;

    private boolean f13214q0;

    private final TextView f13215r;

    private int f13216r0;

    private final TextView f13217s;

    private int f13218s0;

    private final ImageView f13219t;

    private int f13220t0;

    private final ImageView f13221u;

    private long[] f13222u0;

    private final ImageView f13223v;

    private boolean[] f13224v0;

    private final ImageView f13225w;

    private long[] f13226w0;

    private final ImageView f13227x;

    private boolean[] f13228x0;

    private final ImageView f13229y;

    private long f13230y0;

    private final View f13231z;

    private boolean f13232z0;

    final class b extends l {
        private b() {
            super();
        }

        private boolean o(androidx.media3.common.h0 h0Var) {
            for (int i10 = 0; i10 < this.f13253a.size(); i10++) {
                if (h0Var.D.containsKey(((k) this.f13253a.get(i10)).f13250a.a())) {
                    return true;
                }
            }
            return false;
        }

        public void q(View view) {
            if (PlayerControlView.this.f13200j0 == null || !PlayerControlView.this.f13200j0.i(29)) {
                return;
            }
            ((androidx.media3.common.a0) androidx.media3.common.util.a1.i(PlayerControlView.this.f13200j0)).V(PlayerControlView.this.f13200j0.m().a().G(1).P(1, false).F());
            PlayerControlView.this.f13191f.j(1, PlayerControlView.this.getResources().getString(R$string.exo_track_selection_auto));
            PlayerControlView.this.f13201k.dismiss();
        }

        @Override
        public void k(i iVar) {
            iVar.f13247a.setText(R$string.exo_track_selection_auto);
            iVar.f13248b.setVisibility(o(((androidx.media3.common.a0) androidx.media3.common.util.a.e(PlayerControlView.this.f13200j0)).m()) ? 4 : 0);
            iVar.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f13388a.q(view);
                }
            });
        }

        @Override
        public void m(String str) {
            PlayerControlView.this.f13191f.j(1, str);
        }

        public void p(List list) {
            this.f13253a = list;
            androidx.media3.common.h0 h0VarM = ((androidx.media3.common.a0) androidx.media3.common.util.a.e(PlayerControlView.this.f13200j0)).m();
            if (list.isEmpty()) {
                PlayerControlView.this.f13191f.j(1, PlayerControlView.this.getResources().getString(R$string.exo_track_selection_none));
                return;
            }
            if (!o(h0VarM)) {
                PlayerControlView.this.f13191f.j(1, PlayerControlView.this.getResources().getString(R$string.exo_track_selection_auto));
                return;
            }
            for (int i10 = 0; i10 < list.size(); i10++) {
                k kVar = (k) list.get(i10);
                if (kVar.a()) {
                    PlayerControlView.this.f13191f.j(1, kVar.f13252c);
                    return;
                }
            }
        }
    }

    private final class c implements androidx.media3.common.a0.d, y0.a, View.OnClickListener, PopupWindow.OnDismissListener {
        private c() {
        }

        @Override
        public void l(y0 y0Var, long j10) {
            PlayerControlView.this.f13214q0 = true;
            if (PlayerControlView.this.D != null) {
                PlayerControlView.this.D.setText(androidx.media3.common.util.a1.o0(PlayerControlView.this.F, PlayerControlView.this.G, j10));
            }
            PlayerControlView.this.f13181a.W();
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
            androidx.media3.common.a0 a0Var = PlayerControlView.this.f13200j0;
            if (a0Var == null) {
                return;
            }
            PlayerControlView.this.f13181a.X();
            if (PlayerControlView.this.f13207n == view) {
                if (a0Var.i(9)) {
                    a0Var.n();
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f13205m == view) {
                if (a0Var.i(7)) {
                    a0Var.f();
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f13211p == view) {
                if (a0Var.getPlaybackState() == 4 || !a0Var.i(12)) {
                    return;
                }
                a0Var.w();
                return;
            }
            if (PlayerControlView.this.f13213q == view) {
                if (a0Var.i(11)) {
                    a0Var.x();
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f13209o == view) {
                androidx.media3.common.util.a1.x0(a0Var, PlayerControlView.this.f13210o0);
                return;
            }
            if (PlayerControlView.this.f13219t == view) {
                if (a0Var.i(15)) {
                    a0Var.setRepeatMode(androidx.media3.common.util.k0.a(a0Var.getRepeatMode(), PlayerControlView.this.f13220t0));
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f13221u == view) {
                if (a0Var.i(14)) {
                    a0Var.setShuffleModeEnabled(!a0Var.getShuffleModeEnabled());
                    return;
                }
                return;
            }
            if (PlayerControlView.this.f13231z == view) {
                PlayerControlView.this.f13181a.W();
                PlayerControlView playerControlView = PlayerControlView.this;
                playerControlView.T(playerControlView.f13191f, PlayerControlView.this.f13231z);
                return;
            }
            if (PlayerControlView.this.A == view) {
                PlayerControlView.this.f13181a.W();
                PlayerControlView playerControlView2 = PlayerControlView.this;
                playerControlView2.T(playerControlView2.f13193g, PlayerControlView.this.A);
            } else if (PlayerControlView.this.B == view) {
                PlayerControlView.this.f13181a.W();
                PlayerControlView playerControlView3 = PlayerControlView.this;
                playerControlView3.T(playerControlView3.f13197i, PlayerControlView.this.B);
            } else if (PlayerControlView.this.f13225w == view) {
                PlayerControlView.this.f13181a.W();
                PlayerControlView playerControlView4 = PlayerControlView.this;
                playerControlView4.T(playerControlView4.f13195h, PlayerControlView.this.f13225w);
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
        public void onDismiss() {
            if (PlayerControlView.this.f13232z0) {
                PlayerControlView.this.f13181a.X();
            }
        }

        @Override
        public void onEvents(androidx.media3.common.a0 a0Var, androidx.media3.common.a0.c cVar) {
            if (cVar.b(4, 5, 13)) {
                PlayerControlView.this.l0();
            }
            if (cVar.b(4, 5, 7, 13)) {
                PlayerControlView.this.n0();
            }
            if (cVar.b(8, 13)) {
                PlayerControlView.this.o0();
            }
            if (cVar.b(9, 13)) {
                PlayerControlView.this.s0();
            }
            if (cVar.b(8, 9, 11, 0, 16, 17, 13)) {
                PlayerControlView.this.k0();
            }
            if (cVar.b(11, 0, 13)) {
                PlayerControlView.this.t0();
            }
            if (cVar.b(12, 13)) {
                PlayerControlView.this.m0();
            }
            if (cVar.b(2, 13)) {
                PlayerControlView.this.u0();
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
            if (PlayerControlView.this.D != null) {
                PlayerControlView.this.D.setText(androidx.media3.common.util.a1.o0(PlayerControlView.this.F, PlayerControlView.this.G, j10));
            }
        }

        @Override
        public void r(y0 y0Var, long j10, boolean z10) {
            PlayerControlView.this.f13214q0 = false;
            if (!z10 && PlayerControlView.this.f13200j0 != null) {
                PlayerControlView playerControlView = PlayerControlView.this;
                playerControlView.e0(playerControlView.f13200j0, j10);
            }
            PlayerControlView.this.f13181a.X();
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

    public interface d {
        void p(boolean z10);
    }

    final class e extends RecyclerView.Adapter {

        private final String[] f13235a;

        private final float[] f13236b;

        private int f13237c;

        public e(String[] strArr, float[] fArr) {
            this.f13235a = strArr;
            this.f13236b = fArr;
        }

        public void i(int i10, View view) {
            if (i10 != this.f13237c) {
                PlayerControlView.this.setPlaybackSpeed(this.f13236b[i10]);
            }
            PlayerControlView.this.f13201k.dismiss();
        }

        @Override
        public int getItemCount() {
            return this.f13235a.length;
        }

        public String h() {
            return this.f13235a[this.f13237c];
        }

        @Override
        public void onBindViewHolder(i iVar, final int i10) {
            String[] strArr = this.f13235a;
            if (i10 < strArr.length) {
                iVar.f13247a.setText(strArr[i10]);
            }
            if (i10 == this.f13237c) {
                iVar.itemView.setSelected(true);
                iVar.f13248b.setVisibility(0);
            } else {
                iVar.itemView.setSelected(false);
                iVar.f13248b.setVisibility(4);
            }
            iVar.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f13389a.i(i10, view);
                }
            });
        }

        @Override
        public i onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new i(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R$layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        public void l(float f10) {
            int i10 = 0;
            float f11 = Float.MAX_VALUE;
            int i11 = 0;
            while (true) {
                float[] fArr = this.f13236b;
                if (i10 >= fArr.length) {
                    this.f13237c = i11;
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

        private final TextView f13239a;

        private final TextView f13240b;

        private final ImageView f13241c;

        public g(View view) {
            super(view);
            if (androidx.media3.common.util.a1.f10038a < 26) {
                view.setFocusable(true);
            }
            this.f13239a = (TextView) view.findViewById(R$id.exo_main_text);
            this.f13240b = (TextView) view.findViewById(R$id.exo_sub_text);
            this.f13241c = (ImageView) view.findViewById(R$id.exo_icon);
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.f13391a.j(view2);
                }
            });
        }

        public void j(View view) {
            PlayerControlView.this.c0(getBindingAdapterPosition());
        }
    }

    private class h extends RecyclerView.Adapter {

        private final String[] f13243a;

        private final String[] f13244b;

        private final Drawable[] f13245c;

        public h(String[] strArr, Drawable[] drawableArr) {
            this.f13243a = strArr;
            this.f13244b = new String[strArr.length];
            this.f13245c = drawableArr;
        }

        private boolean k(int i10) {
            if (PlayerControlView.this.f13200j0 == null) {
                return false;
            }
            if (i10 == 0) {
                return PlayerControlView.this.f13200j0.i(13);
            }
            if (i10 != 1) {
                return true;
            }
            return PlayerControlView.this.f13200j0.i(30) && PlayerControlView.this.f13200j0.i(29);
        }

        public boolean g() {
            return k(1) || k(0);
        }

        @Override
        public int getItemCount() {
            return this.f13243a.length;
        }

        @Override
        public long getItemId(int i10) {
            return i10;
        }

        @Override
        public void onBindViewHolder(g gVar, int i10) {
            if (k(i10)) {
                gVar.itemView.setLayoutParams(new RecyclerView.n(-1, -2));
            } else {
                gVar.itemView.setLayoutParams(new RecyclerView.n(0, 0));
            }
            gVar.f13239a.setText(this.f13243a[i10]);
            if (this.f13244b[i10] == null) {
                gVar.f13240b.setVisibility(8);
            } else {
                gVar.f13240b.setText(this.f13244b[i10]);
            }
            if (this.f13245c[i10] == null) {
                gVar.f13241c.setVisibility(8);
            } else {
                gVar.f13241c.setImageDrawable(this.f13245c[i10]);
            }
        }

        @Override
        public g onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return PlayerControlView.this.new g(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R$layout.exo_styled_settings_list_item, viewGroup, false));
        }

        public void j(int i10, String str) {
            this.f13244b[i10] = str;
        }
    }

    private static class i extends RecyclerView.a0 {

        public final TextView f13247a;

        public final View f13248b;

        public i(View view) {
            super(view);
            if (androidx.media3.common.util.a1.f10038a < 26) {
                view.setFocusable(true);
            }
            this.f13247a = (TextView) view.findViewById(R$id.exo_text);
            this.f13248b = view.findViewById(R$id.exo_check);
        }
    }

    static final class k {

        public final androidx.media3.common.i0.a f13250a;

        public final int f13251b;

        public final String f13252c;

        /* JADX WARN: Multi-variable type inference failed */
        public k(androidx.media3.common.i0 i0Var, int i10, int i11, String str) {
            this.f13250a = (androidx.media3.common.i0.a) i0Var.a().get(i10);
            this.f13251b = i11;
            this.f13252c = str;
        }

        public boolean a() {
            return this.f13250a.h(this.f13251b);
        }
    }

    abstract class l extends RecyclerView.Adapter {

        protected List f13253a = new ArrayList();

        protected l() {
        }

        public void i(androidx.media3.common.a0 a0Var, androidx.media3.common.f0 f0Var, k kVar, View view) {
            if (a0Var.i(29)) {
                a0Var.V(a0Var.m().a().L(new androidx.media3.common.g0(f0Var, ImmutableList.of(Integer.valueOf(kVar.f13251b)))).P(kVar.f13250a.d(), false).F());
                m(kVar.f13252c);
                PlayerControlView.this.f13201k.dismiss();
            }
        }

        @Override
        public int getItemCount() {
            if (this.f13253a.isEmpty()) {
                return 0;
            }
            return this.f13253a.size() + 1;
        }

        protected void h() {
            this.f13253a = Collections.emptyList();
        }

        @Override
        public void onBindViewHolder(i iVar, int i10) {
            final androidx.media3.common.a0 a0Var = PlayerControlView.this.f13200j0;
            if (a0Var == null) {
                return;
            }
            if (i10 == 0) {
                k(iVar);
                return;
            }
            final k kVar = (k) this.f13253a.get(i10 - 1);
            final androidx.media3.common.f0 f0VarA = kVar.f13250a.a();
            boolean z10 = a0Var.m().D.get(f0VarA) != null && kVar.a();
            iVar.f13247a.setText(kVar.f13252c);
            iVar.f13248b.setVisibility(z10 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f13396a.i(a0Var, f0VarA, kVar, view);
                }
            });
        }

        protected abstract void k(i iVar);

        @Override
        public i onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new i(LayoutInflater.from(PlayerControlView.this.getContext()).inflate(R$layout.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        protected abstract void m(String str);
    }

    public interface m {
        void l(int i10);
    }

    static {
        androidx.media3.common.u.a("media3.ui");
        A0 = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    public PlayerControlView(Context context) {
        this(context, null);
    }

    private static boolean S(androidx.media3.common.a0 a0Var, androidx.media3.common.e0.c cVar) {
        androidx.media3.common.e0 currentTimeline;
        int iP;
        if (!a0Var.i(17) || (iP = (currentTimeline = a0Var.getCurrentTimeline()).p()) <= 1 || iP > 100) {
            return false;
        }
        for (int i10 = 0; i10 < iP; i10++) {
            if (currentTimeline.n(i10, cVar).f9651m == C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    public void T(RecyclerView.Adapter adapter, View view) {
        this.f13189e.setAdapter(adapter);
        r0();
        this.f13232z0 = false;
        this.f13201k.dismiss();
        this.f13232z0 = true;
        this.f13201k.showAsDropDown(view, (getWidth() - this.f13201k.getWidth()) - this.f13203l, (-this.f13201k.getHeight()) - this.f13203l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableList U(androidx.media3.common.i0 i0Var, int i10) {
        ImmutableList.a aVar = new ImmutableList.a();
        ImmutableList immutableListA = i0Var.a();
        for (int i11 = 0; i11 < immutableListA.size(); i11++) {
            androidx.media3.common.i0.a aVar2 = (androidx.media3.common.i0.a) immutableListA.get(i11);
            if (aVar2.d() == i10) {
                for (int i12 = 0; i12 < aVar2.f9779a; i12++) {
                    if (aVar2.i(i12)) {
                        androidx.media3.common.r rVarB = aVar2.b(i12);
                        if ((rVarB.f9839e & 2) == 0) {
                            aVar.a(new k(i0Var, i11, i12, this.f13199j.a(rVarB)));
                        }
                    }
                }
            }
        }
        return aVar.e();
    }

    private static int V(TypedArray typedArray, int i10) {
        return typedArray.getInt(R$styleable.PlayerControlView_repeat_toggle_modes, i10);
    }

    private void W() {
        this.f13195h.h();
        this.f13197i.h();
        androidx.media3.common.a0 a0Var = this.f13200j0;
        if (a0Var != null && a0Var.i(30) && this.f13200j0.i(29)) {
            androidx.media3.common.i0 currentTracks = this.f13200j0.getCurrentTracks();
            this.f13197i.p(U(currentTracks, 1));
            if (this.f13181a.A(this.f13225w)) {
                this.f13195h.o(U(currentTracks, 3));
            } else {
                this.f13195h.o(ImmutableList.of());
            }
        }
    }

    private static void X(View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        view.setOnClickListener(onClickListener);
    }

    private static boolean Y(int i10) {
        return i10 == 90 || i10 == 89 || i10 == 85 || i10 == 79 || i10 == 126 || i10 == 127 || i10 == 87 || i10 == 88;
    }

    public void a0(View view) {
        updateIsFullscreen(!this.f13204l0);
    }

    public void b0(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        int i18 = i13 - i11;
        int i19 = i17 - i15;
        if (!(i12 - i10 == i16 - i14 && i18 == i19) && this.f13201k.isShowing()) {
            r0();
            this.f13201k.update(view, (getWidth() - this.f13201k.getWidth()) - this.f13203l, (-this.f13201k.getHeight()) - this.f13203l, -1, -1);
        }
    }

    public void c0(int i10) {
        if (i10 == 0) {
            T(this.f13193g, (View) androidx.media3.common.util.a.e(this.f13231z));
        } else if (i10 == 1) {
            T(this.f13197i, (View) androidx.media3.common.util.a.e(this.f13231z));
        } else {
            this.f13201k.dismiss();
        }
    }

    public void e0(androidx.media3.common.a0 a0Var, long j10) {
        if (this.f13212p0) {
            if (a0Var.i(17) && a0Var.i(10)) {
                androidx.media3.common.e0 currentTimeline = a0Var.getCurrentTimeline();
                int iP = currentTimeline.p();
                int i10 = 0;
                while (true) {
                    long jD = currentTimeline.n(i10, this.I).d();
                    if (j10 < jD) {
                        break;
                    }
                    if (i10 == iP - 1) {
                        j10 = jD;
                        break;
                    } else {
                        j10 -= jD;
                        i10++;
                    }
                }
                a0Var.seekTo(i10, j10);
            }
        } else if (a0Var.i(5)) {
            a0Var.seekTo(j10);
        }
        n0();
    }

    private void g0(boolean z10, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z10);
        view.setAlpha(z10 ? this.U : this.V);
    }

    private void h0() {
        androidx.media3.common.a0 a0Var = this.f13200j0;
        int iS = (int) ((a0Var != null ? a0Var.s() : MBInterstitialActivity.WEB_LOAD_TIME) / 1000);
        TextView textView = this.f13215r;
        if (textView != null) {
            textView.setText(String.valueOf(iS));
        }
        View view = this.f13211p;
        if (view != null) {
            view.setContentDescription(this.f13183b.getQuantityString(R$plurals.exo_controls_fastforward_by_amount_description, iS, Integer.valueOf(iS)));
        }
    }

    private void i0(ImageView imageView, boolean z10) {
        if (imageView == null) {
            return;
        }
        if (z10) {
            imageView.setImageDrawable(this.f13192f0);
            imageView.setContentDescription(this.f13196h0);
        } else {
            imageView.setImageDrawable(this.f13194g0);
            imageView.setContentDescription(this.f13198i0);
        }
    }

    private static void j0(View view, boolean z10) {
        if (view == null) {
            return;
        }
        if (z10) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    public void k0() {
        boolean zI;
        boolean zI2;
        boolean zI3;
        boolean zI4;
        boolean zI5;
        if (isVisible() && this.f13206m0) {
            androidx.media3.common.a0 a0Var = this.f13200j0;
            if (a0Var != null) {
                zI = (this.f13208n0 && S(a0Var, this.I)) ? a0Var.i(10) : a0Var.i(5);
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
            if (zI4) {
                p0();
            }
            if (zI5) {
                h0();
            }
            g0(zI3, this.f13205m);
            g0(zI4, this.f13213q);
            g0(zI5, this.f13211p);
            g0(zI2, this.f13207n);
            y0 y0Var = this.E;
            if (y0Var != null) {
                y0Var.setEnabled(zI);
            }
        }
    }

    public void l0() {
        if (isVisible() && this.f13206m0 && this.f13209o != null) {
            boolean zL1 = androidx.media3.common.util.a1.l1(this.f13200j0, this.f13210o0);
            Drawable drawable = zL1 ? this.K : this.L;
            int i10 = zL1 ? R$string.exo_controls_play_description : R$string.exo_controls_pause_description;
            this.f13209o.setImageDrawable(drawable);
            this.f13209o.setContentDescription(this.f13183b.getString(i10));
            g0(androidx.media3.common.util.a1.k1(this.f13200j0), this.f13209o);
        }
    }

    public void m0() {
        androidx.media3.common.a0 a0Var = this.f13200j0;
        if (a0Var == null) {
            return;
        }
        this.f13193g.l(a0Var.getPlaybackParameters().f10254a);
        this.f13191f.j(0, this.f13193g.h());
        q0();
    }

    public void n0() {
        long contentPosition;
        long jV;
        if (isVisible() && this.f13206m0) {
            androidx.media3.common.a0 a0Var = this.f13200j0;
            if (a0Var == null || !a0Var.i(16)) {
                contentPosition = 0;
                jV = 0;
            } else {
                contentPosition = this.f13230y0 + a0Var.getContentPosition();
                jV = this.f13230y0 + a0Var.v();
            }
            TextView textView = this.D;
            if (textView != null && !this.f13214q0) {
                textView.setText(androidx.media3.common.util.a1.o0(this.F, this.G, contentPosition));
            }
            y0 y0Var = this.E;
            if (y0Var != null) {
                y0Var.setPosition(contentPosition);
                this.E.setBufferedPosition(jV);
            }
            removeCallbacks(this.J);
            int playbackState = a0Var == null ? 1 : a0Var.getPlaybackState();
            if (a0Var == null || !a0Var.isPlaying()) {
                if (playbackState == 4 || playbackState == 1) {
                    return;
                }
                postDelayed(this.J, 1000L);
                return;
            }
            y0 y0Var2 = this.E;
            long jMin = Math.min(y0Var2 != null ? y0Var2.getPreferredUpdateDelay() : 1000L, 1000 - (contentPosition % 1000));
            float f10 = a0Var.getPlaybackParameters().f10254a;
            postDelayed(this.J, androidx.media3.common.util.a1.q(f10 > 0.0f ? (long) (jMin / f10) : 1000L, this.f13218s0, 1000L));
        }
    }

    public void o0() {
        ImageView imageView;
        if (isVisible() && this.f13206m0 && (imageView = this.f13219t) != null) {
            if (this.f13220t0 == 0) {
                g0(false, imageView);
                return;
            }
            androidx.media3.common.a0 a0Var = this.f13200j0;
            if (a0Var == null || !a0Var.i(15)) {
                g0(false, this.f13219t);
                this.f13219t.setImageDrawable(this.M);
                this.f13219t.setContentDescription(this.P);
                return;
            }
            g0(true, this.f13219t);
            int repeatMode = a0Var.getRepeatMode();
            if (repeatMode == 0) {
                this.f13219t.setImageDrawable(this.M);
                this.f13219t.setContentDescription(this.P);
            } else if (repeatMode == 1) {
                this.f13219t.setImageDrawable(this.N);
                this.f13219t.setContentDescription(this.Q);
            } else {
                if (repeatMode != 2) {
                    return;
                }
                this.f13219t.setImageDrawable(this.O);
                this.f13219t.setContentDescription(this.R);
            }
        }
    }

    private void p0() {
        androidx.media3.common.a0 a0Var = this.f13200j0;
        int iZ = (int) ((a0Var != null ? a0Var.z() : 5000L) / 1000);
        TextView textView = this.f13217s;
        if (textView != null) {
            textView.setText(String.valueOf(iZ));
        }
        View view = this.f13213q;
        if (view != null) {
            view.setContentDescription(this.f13183b.getQuantityString(R$plurals.exo_controls_rewind_by_amount_description, iZ, Integer.valueOf(iZ)));
        }
    }

    private void q0() {
        g0(this.f13191f.g(), this.f13231z);
    }

    private void r0() {
        this.f13189e.measure(0, 0);
        this.f13201k.setWidth(Math.min(this.f13189e.getMeasuredWidth(), getWidth() - (this.f13203l * 2)));
        this.f13201k.setHeight(Math.min(getHeight() - (this.f13203l * 2), this.f13189e.getMeasuredHeight()));
    }

    public void s0() {
        ImageView imageView;
        if (isVisible() && this.f13206m0 && (imageView = this.f13221u) != null) {
            androidx.media3.common.a0 a0Var = this.f13200j0;
            if (!this.f13181a.A(imageView)) {
                g0(false, this.f13221u);
                return;
            }
            if (a0Var == null || !a0Var.i(14)) {
                g0(false, this.f13221u);
                this.f13221u.setImageDrawable(this.T);
                this.f13221u.setContentDescription(this.f13182a0);
            } else {
                g0(true, this.f13221u);
                this.f13221u.setImageDrawable(a0Var.getShuffleModeEnabled() ? this.S : this.T);
                this.f13221u.setContentDescription(a0Var.getShuffleModeEnabled() ? this.W : this.f13182a0);
            }
        }
    }

    public void setPlaybackSpeed(float f10) {
        androidx.media3.common.a0 a0Var = this.f13200j0;
        if (a0Var == null || !a0Var.i(13)) {
            return;
        }
        androidx.media3.common.a0 a0Var2 = this.f13200j0;
        a0Var2.b(a0Var2.getPlaybackParameters().b(f10));
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:62:0x0107  */
    /* JADX WARN: Code duplicated, block: B:79:0x00dd A[SYNTHETIC] */
    public void t0() {
        long jR0;
        int i10;
        androidx.media3.common.e0.c cVar;
        long jO;
        long[] jArr;
        int length;
        androidx.media3.common.a0 a0Var = this.f13200j0;
        if (a0Var == null) {
            return;
        }
        boolean z10 = true;
        this.f13212p0 = this.f13208n0 && S(a0Var, this.I);
        this.f13230y0 = 0L;
        androidx.media3.common.e0 currentTimeline = a0Var.i(17) ? a0Var.getCurrentTimeline() : androidx.media3.common.e0.f9613a;
        if (currentTimeline.q()) {
            if (a0Var.i(16)) {
                long jQ = a0Var.Q();
                if (jQ != C.TIME_UNSET) {
                    jR0 = androidx.media3.common.util.a1.R0(jQ);
                } else {
                    jR0 = 0;
                }
            } else {
                jR0 = 0;
            }
            i10 = 0;
        } else {
            int iU = a0Var.u();
            boolean z11 = this.f13212p0;
            int i11 = z11 ? 0 : iU;
            int iP = z11 ? currentTimeline.p() - 1 : iU;
            long j10 = 0;
            i10 = 0;
            while (i11 <= iP) {
                if (i11 == iU) {
                    this.f13230y0 = androidx.media3.common.util.a1.y1(j10);
                }
                currentTimeline.n(i11, this.I);
                androidx.media3.common.e0.c cVar2 = this.I;
                if (cVar2.f9651m == C.TIME_UNSET) {
                    androidx.media3.common.util.a.g(this.f13212p0 ^ z10);
                    break;
                }
                int i12 = cVar2.f9652n;
                while (true) {
                    cVar = this.I;
                    if (i12 <= cVar.f9653o) {
                        currentTimeline.f(i12, this.H);
                        int iC = this.H.c();
                        for (int iP2 = this.H.p(); iP2 < iC; iP2++) {
                            long jF = this.H.f(iP2);
                            if (jF == Long.MIN_VALUE) {
                                long j11 = this.H.f9625d;
                                if (j11 != C.TIME_UNSET) {
                                    jF = j11;
                                    jO = jF + this.H.o();
                                    if (jO >= 0) {
                                        jArr = this.f13222u0;
                                        if (i10 == jArr.length) {
                                            if (jArr.length == 0) {
                                                length = 1;
                                            } else {
                                                length = jArr.length * 2;
                                            }
                                            this.f13222u0 = Arrays.copyOf(jArr, length);
                                            this.f13224v0 = Arrays.copyOf(this.f13224v0, length);
                                        }
                                        this.f13222u0[i10] = androidx.media3.common.util.a1.y1(j10 + jO);
                                        this.f13224v0[i10] = this.H.q(iP2);
                                        i10++;
                                    }
                                }
                            } else {
                                jO = jF + this.H.o();
                                if (jO >= 0) {
                                    jArr = this.f13222u0;
                                    if (i10 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.f13222u0 = Arrays.copyOf(jArr, length);
                                        this.f13224v0 = Arrays.copyOf(this.f13224v0, length);
                                    }
                                    this.f13222u0[i10] = androidx.media3.common.util.a1.y1(j10 + jO);
                                    this.f13224v0[i10] = this.H.q(iP2);
                                    i10++;
                                }
                            }
                        }
                        i12++;
                    }
                }
                j10 += cVar.f9651m;
                i11++;
                z10 = true;
            }
            jR0 = j10;
        }
        long jY1 = androidx.media3.common.util.a1.y1(jR0);
        TextView textView = this.C;
        if (textView != null) {
            textView.setText(androidx.media3.common.util.a1.o0(this.F, this.G, jY1));
        }
        y0 y0Var = this.E;
        if (y0Var != null) {
            y0Var.setDuration(jY1);
            int length2 = this.f13226w0.length;
            int i13 = i10 + length2;
            long[] jArr2 = this.f13222u0;
            if (i13 > jArr2.length) {
                this.f13222u0 = Arrays.copyOf(jArr2, i13);
                this.f13224v0 = Arrays.copyOf(this.f13224v0, i13);
            }
            System.arraycopy(this.f13226w0, 0, this.f13222u0, i10, length2);
            System.arraycopy(this.f13228x0, 0, this.f13224v0, i10, length2);
            this.E.setAdGroupTimesMs(this.f13222u0, this.f13224v0, i13);
        }
        n0();
    }

    public void u0() {
        W();
        g0(this.f13195h.getItemCount() > 0, this.f13225w);
        q0();
    }

    void Z() {
        Iterator it = this.f13187d.iterator();
        while (it.hasNext()) {
            ((m) it.next()).l(getVisibility());
        }
    }

    @Deprecated
    public void addVisibilityListener(m mVar) {
        androidx.media3.common.util.a.e(mVar);
        this.f13187d.add(mVar);
    }

    void d0() {
        ImageView imageView = this.f13209o;
        if (imageView != null) {
            imageView.requestFocus();
        }
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        androidx.media3.common.a0 a0Var = this.f13200j0;
        if (a0Var == null || !Y(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (a0Var.getPlaybackState() == 4 || !a0Var.i(12)) {
                return true;
            }
            a0Var.w();
            return true;
        }
        if (keyCode == 89 && a0Var.i(11)) {
            a0Var.x();
            return true;
        }
        if (keyEvent.getRepeatCount() != 0) {
            return true;
        }
        if (keyCode == 79 || keyCode == 85) {
            androidx.media3.common.util.a1.x0(a0Var, this.f13210o0);
            return true;
        }
        if (keyCode == 87) {
            if (!a0Var.i(9)) {
                return true;
            }
            a0Var.n();
            return true;
        }
        if (keyCode == 88) {
            if (!a0Var.i(7)) {
                return true;
            }
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

    void f0() {
        l0();
        k0();
        o0();
        s0();
        u0();
        m0();
        t0();
    }

    @Nullable
    public androidx.media3.common.a0 getPlayer() {
        return this.f13200j0;
    }

    public int getRepeatToggleModes() {
        return this.f13220t0;
    }

    public boolean getShowShuffleButton() {
        return this.f13181a.A(this.f13221u);
    }

    public boolean getShowSubtitleButton() {
        return this.f13181a.A(this.f13225w);
    }

    public int getShowTimeoutMs() {
        return this.f13216r0;
    }

    public boolean getShowVrButton() {
        return this.f13181a.A(this.f13223v);
    }

    public void hide() {
        this.f13181a.C();
    }

    public void hideImmediately() {
        this.f13181a.F();
    }

    public boolean isAnimationEnabled() {
        return this.f13181a.I();
    }

    public boolean isFullyVisible() {
        return this.f13181a.J();
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f13181a.P();
        this.f13206m0 = true;
        if (isFullyVisible()) {
            this.f13181a.X();
        }
        f0();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f13181a.Q();
        this.f13206m0 = false;
        removeCallbacks(this.J);
        this.f13181a.W();
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        this.f13181a.R(z10, i10, i11, i12, i13);
    }

    @Deprecated
    public void removeVisibilityListener(m mVar) {
        this.f13187d.remove(mVar);
    }

    public void setAnimationEnabled(boolean z10) {
        this.f13181a.Y(z10);
    }

    public void setExtraAdGroupMarkers(@Nullable long[] jArr, @Nullable boolean[] zArr) {
        if (jArr == null) {
            this.f13226w0 = new long[0];
            this.f13228x0 = new boolean[0];
        } else {
            boolean[] zArr2 = (boolean[]) androidx.media3.common.util.a.e(zArr);
            androidx.media3.common.util.a.a(jArr.length == zArr2.length);
            this.f13226w0 = jArr;
            this.f13228x0 = zArr2;
        }
        t0();
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(@Nullable d dVar) {
        this.f13202k0 = dVar;
        j0(this.f13227x, dVar != null);
        j0(this.f13229y, dVar != null);
    }

    public void setPlayer(@Nullable androidx.media3.common.a0 a0Var) {
        androidx.media3.common.util.a.g(Looper.myLooper() == Looper.getMainLooper());
        androidx.media3.common.util.a.a(a0Var == null || a0Var.l() == Looper.getMainLooper());
        androidx.media3.common.a0 a0Var2 = this.f13200j0;
        if (a0Var2 == a0Var) {
            return;
        }
        if (a0Var2 != null) {
            a0Var2.L(this.f13185c);
        }
        this.f13200j0 = a0Var;
        if (a0Var != null) {
            a0Var.M(this.f13185c);
        }
        f0();
    }

    public void setRepeatToggleModes(int i10) {
        this.f13220t0 = i10;
        androidx.media3.common.a0 a0Var = this.f13200j0;
        if (a0Var != null && a0Var.i(15)) {
            int repeatMode = this.f13200j0.getRepeatMode();
            if (i10 == 0 && repeatMode != 0) {
                this.f13200j0.setRepeatMode(0);
            } else if (i10 == 1 && repeatMode == 2) {
                this.f13200j0.setRepeatMode(1);
            } else if (i10 == 2 && repeatMode == 1) {
                this.f13200j0.setRepeatMode(2);
            }
        }
        this.f13181a.Z(this.f13219t, i10 != 0);
        o0();
    }

    public void setShowFastForwardButton(boolean z10) {
        this.f13181a.Z(this.f13211p, z10);
        k0();
    }

    @Deprecated
    public void setShowMultiWindowTimeBar(boolean z10) {
        this.f13208n0 = z10;
        t0();
    }

    public void setShowNextButton(boolean z10) {
        this.f13181a.Z(this.f13207n, z10);
        k0();
    }

    public void setShowPlayButtonIfPlaybackIsSuppressed(boolean z10) {
        this.f13210o0 = z10;
        l0();
    }

    public void setShowPreviousButton(boolean z10) {
        this.f13181a.Z(this.f13205m, z10);
        k0();
    }

    public void setShowRewindButton(boolean z10) {
        this.f13181a.Z(this.f13213q, z10);
        k0();
    }

    public void setShowShuffleButton(boolean z10) {
        this.f13181a.Z(this.f13221u, z10);
        s0();
    }

    public void setShowSubtitleButton(boolean z10) {
        this.f13181a.Z(this.f13225w, z10);
    }

    public void setShowTimeoutMs(int i10) {
        this.f13216r0 = i10;
        if (isFullyVisible()) {
            this.f13181a.X();
        }
    }

    public void setShowVrButton(boolean z10) {
        this.f13181a.Z(this.f13223v, z10);
    }

    public void setTimeBarMinUpdateInterval(int i10) {
        this.f13218s0 = androidx.media3.common.util.a1.p(i10, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        ImageView imageView = this.f13223v;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
            g0(onClickListener != null, this.f13223v);
        }
    }

    public void show() {
        this.f13181a.c0();
    }

    public void updateIsFullscreen(boolean z10) {
        if (this.f13204l0 == z10) {
            return;
        }
        this.f13204l0 = z10;
        i0(this.f13227x, z10);
        i0(this.f13229y, z10);
        d dVar = this.f13202k0;
        if (dVar != null) {
            dVar.p(z10);
        }
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    public PlayerControlView(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) throws Throwable {
        int i11;
        int i12;
        final PlayerControlView playerControlView;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        final PlayerControlView playerControlView2;
        ImageView imageView;
        boolean z18;
        super(context, attributeSet, i10);
        int i27 = R$layout.exo_player_control_view;
        int i28 = R$drawable.exo_styled_controls_play;
        int i29 = R$drawable.exo_styled_controls_pause;
        int i30 = R$drawable.exo_styled_controls_next;
        int resourceId = R$drawable.exo_styled_controls_simple_fastforward;
        int i31 = R$drawable.exo_styled_controls_previous;
        int i32 = R$drawable.exo_styled_controls_simple_rewind;
        int i33 = R$drawable.exo_styled_controls_fullscreen_exit;
        int i34 = R$drawable.exo_styled_controls_fullscreen_enter;
        int i35 = R$drawable.exo_styled_controls_repeat_off;
        int i36 = R$drawable.exo_styled_controls_repeat_one;
        int i37 = R$drawable.exo_styled_controls_repeat_all;
        int i38 = R$drawable.exo_styled_controls_shuffle_on;
        int i39 = R$drawable.exo_styled_controls_shuffle_off;
        int i40 = R$drawable.exo_styled_controls_subtitle_on;
        int i41 = R$drawable.exo_styled_controls_subtitle_off;
        int i42 = R$drawable.exo_styled_controls_vr;
        this.f13210o0 = true;
        this.f13216r0 = 5000;
        this.f13220t0 = 0;
        this.f13218s0 = 200;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R$styleable.PlayerControlView, i10, 0);
            try {
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_controller_layout_id, i27);
                int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_play_icon, i28);
                int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_pause_icon, i29);
                int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_next_icon, i30);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_fastforward_icon, resourceId);
                int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_previous_icon, i31);
                int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_rewind_icon, i32);
                int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_fullscreen_exit_icon, i33);
                int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_fullscreen_enter_icon, i34);
                int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_repeat_off_icon, i35);
                int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_repeat_one_icon, i36);
                int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_repeat_all_icon, i37);
                int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_shuffle_on_icon, i38);
                int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_shuffle_off_icon, i39);
                int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_subtitle_on_icon, i40);
                int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_subtitle_off_icon, i41);
                int resourceId17 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.PlayerControlView_vr_icon, i42);
                playerControlView = this;
                try {
                    playerControlView.f13216r0 = typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_show_timeout, playerControlView.f13216r0);
                    playerControlView.f13220t0 = V(typedArrayObtainStyledAttributes, playerControlView.f13220t0);
                    boolean z19 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_rewind_button, true);
                    boolean z20 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_fastforward_button, true);
                    boolean z21 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_previous_button, true);
                    boolean z22 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_next_button, true);
                    boolean z23 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_shuffle_button, false);
                    boolean z24 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_subtitle_button, false);
                    boolean z25 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_show_vr_button, false);
                    playerControlView.setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R$styleable.PlayerControlView_time_bar_min_update_interval, playerControlView.f13218s0));
                    boolean z26 = typedArrayObtainStyledAttributes.getBoolean(R$styleable.PlayerControlView_animation_enabled, true);
                    typedArrayObtainStyledAttributes.recycle();
                    i26 = resourceId14;
                    i25 = resourceId2;
                    z17 = z26;
                    i13 = resourceId7;
                    i14 = resourceId8;
                    i15 = resourceId9;
                    i16 = resourceId10;
                    i17 = resourceId11;
                    i18 = resourceId12;
                    i19 = resourceId13;
                    i20 = resourceId16;
                    i11 = resourceId17;
                    z10 = z19;
                    z11 = z20;
                    z12 = z21;
                    z13 = z22;
                    z14 = z23;
                    z15 = z24;
                    z16 = z25;
                    i21 = resourceId3;
                    i22 = resourceId4;
                    i23 = resourceId6;
                    i24 = resourceId15;
                    i12 = resourceId5;
                } catch (Throwable th2) {
                    th = th2;
                    typedArrayObtainStyledAttributes.recycle();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            i11 = i42;
            i12 = i30;
            playerControlView = this;
            i13 = i32;
            i14 = i33;
            i15 = i34;
            i16 = i35;
            i17 = i36;
            i18 = i37;
            i19 = i38;
            i20 = i41;
            z10 = true;
            z11 = true;
            z12 = true;
            z13 = true;
            z14 = false;
            z15 = false;
            z16 = false;
            z17 = true;
            i21 = i28;
            i22 = i29;
            i23 = i31;
            i24 = i40;
            i25 = i27;
            i26 = i39;
        }
        LayoutInflater.from(context).inflate(i25, playerControlView);
        playerControlView.setDescendantFocusability(262144);
        c cVar = new c();
        playerControlView.f13185c = cVar;
        playerControlView.f13187d = new CopyOnWriteArrayList();
        playerControlView.H = new androidx.media3.common.e0.b();
        playerControlView.I = new androidx.media3.common.e0.c();
        StringBuilder sb2 = new StringBuilder();
        playerControlView.F = sb2;
        int i43 = i23;
        playerControlView.G = new Formatter(sb2, Locale.getDefault());
        playerControlView.f13222u0 = new long[0];
        playerControlView.f13224v0 = new boolean[0];
        playerControlView.f13226w0 = new long[0];
        playerControlView.f13228x0 = new boolean[0];
        playerControlView.J = new Runnable() {
            @Override
            public final void run() {
                this.f13385a.n0();
            }
        };
        playerControlView.C = (TextView) playerControlView.findViewById(R$id.exo_duration);
        playerControlView.D = (TextView) playerControlView.findViewById(R$id.exo_position);
        ImageView imageView2 = (ImageView) playerControlView.findViewById(R$id.exo_subtitle);
        playerControlView.f13225w = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(cVar);
        }
        ImageView imageView3 = (ImageView) playerControlView.findViewById(R$id.exo_fullscreen);
        playerControlView.f13227x = imageView3;
        X(imageView3, new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f13386a.a0(view);
            }
        });
        ImageView imageView4 = (ImageView) playerControlView.findViewById(R$id.exo_minimal_fullscreen);
        playerControlView.f13229y = imageView4;
        X(imageView4, new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f13386a.a0(view);
            }
        });
        View viewFindViewById = playerControlView.findViewById(R$id.exo_settings);
        playerControlView.f13231z = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(cVar);
        }
        View viewFindViewById2 = playerControlView.findViewById(R$id.exo_playback_speed);
        playerControlView.A = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(cVar);
        }
        View viewFindViewById3 = playerControlView.findViewById(R$id.exo_audio_track);
        playerControlView.B = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(cVar);
        }
        y0 y0Var = (y0) playerControlView.findViewById(R$id.exo_progress);
        View viewFindViewById4 = playerControlView.findViewById(R$id.exo_progress_placeholder);
        if (y0Var != null) {
            playerControlView.E = y0Var;
            playerControlView2 = playerControlView;
        } else if (viewFindViewById4 != null) {
            DefaultTimeBar defaultTimeBar = new DefaultTimeBar(context, null, 0, attributeSet2, R$style.ExoStyledControls_TimeBar);
            defaultTimeBar.setId(R$id.exo_progress);
            defaultTimeBar.setLayoutParams(viewFindViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById4.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById4);
            viewGroup.removeView(viewFindViewById4);
            viewGroup.addView(defaultTimeBar, iIndexOfChild);
            playerControlView2 = this;
            playerControlView2.E = defaultTimeBar;
        } else {
            playerControlView2 = playerControlView;
            playerControlView2.E = null;
        }
        y0 y0Var2 = playerControlView2.E;
        if (y0Var2 != null) {
            y0Var2.addListener(cVar);
        }
        Resources resources = context.getResources();
        playerControlView2.f13183b = resources;
        ImageView imageView5 = (ImageView) playerControlView2.findViewById(R$id.exo_play_pause);
        playerControlView2.f13209o = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(cVar);
        }
        ImageView imageView6 = (ImageView) playerControlView2.findViewById(R$id.exo_prev);
        playerControlView2.f13205m = imageView6;
        if (imageView6 != null) {
            imageView6.setImageDrawable(androidx.media3.common.util.a1.a0(context, resources, i43));
            imageView6.setOnClickListener(cVar);
        }
        ImageView imageView7 = (ImageView) playerControlView2.findViewById(R$id.exo_next);
        playerControlView2.f13207n = imageView7;
        if (imageView7 != null) {
            imageView7.setImageDrawable(androidx.media3.common.util.a1.a0(context, resources, i12));
            imageView7.setOnClickListener(cVar);
        }
        Typeface typefaceG = y0.h.g(context, R$font.roboto_medium_numbers);
        ImageView imageView8 = (ImageView) playerControlView2.findViewById(R$id.exo_rew);
        TextView textView = (TextView) playerControlView2.findViewById(R$id.exo_rew_with_amount);
        if (imageView8 != null) {
            imageView = imageView6;
            imageView8.setImageDrawable(androidx.media3.common.util.a1.a0(context, resources, i13));
            playerControlView2.f13213q = imageView8;
            playerControlView2.f13217s = null;
        } else {
            imageView = imageView6;
            if (textView != null) {
                textView.setTypeface(typefaceG);
                playerControlView2.f13217s = textView;
                playerControlView2.f13213q = textView;
            } else {
                playerControlView2.f13217s = null;
                playerControlView2.f13213q = null;
            }
        }
        View view = playerControlView2.f13213q;
        if (view != null) {
            view.setOnClickListener(cVar);
        }
        ImageView imageView9 = (ImageView) playerControlView2.findViewById(R$id.exo_ffwd);
        TextView textView2 = (TextView) playerControlView2.findViewById(R$id.exo_ffwd_with_amount);
        if (imageView9 != null) {
            imageView9.setImageDrawable(androidx.media3.common.util.a1.a0(context, resources, resourceId));
            playerControlView2.f13211p = imageView9;
            playerControlView2.f13215r = null;
        } else if (textView2 != null) {
            textView2.setTypeface(typefaceG);
            playerControlView2.f13215r = textView2;
            playerControlView2.f13211p = textView2;
        } else {
            playerControlView2.f13215r = null;
            playerControlView2.f13211p = null;
        }
        View view2 = playerControlView2.f13211p;
        if (view2 != null) {
            view2.setOnClickListener(cVar);
        }
        ImageView imageView10 = (ImageView) playerControlView2.findViewById(R$id.exo_repeat_toggle);
        playerControlView2.f13219t = imageView10;
        if (imageView10 != null) {
            imageView10.setOnClickListener(cVar);
        }
        ImageView imageView11 = (ImageView) playerControlView2.findViewById(R$id.exo_shuffle);
        playerControlView2.f13221u = imageView11;
        if (imageView11 != null) {
            imageView11.setOnClickListener(cVar);
        }
        playerControlView2.U = resources.getInteger(R$integer.exo_media_button_opacity_percentage_enabled) / 100.0f;
        playerControlView2.V = resources.getInteger(R$integer.exo_media_button_opacity_percentage_disabled) / 100.0f;
        ImageView imageView12 = (ImageView) playerControlView2.findViewById(R$id.exo_vr);
        playerControlView2.f13223v = imageView12;
        if (imageView12 != null) {
            imageView12.setImageDrawable(androidx.media3.common.util.a1.a0(context, resources, i11));
            playerControlView2.g0(false, imageView12);
        }
        e0 e0Var = new e0(playerControlView2);
        playerControlView2.f13181a = e0Var;
        e0Var.Y(z17);
        h hVar = playerControlView2.new h(new String[]{resources.getString(R$string.exo_controls_playback_speed), resources.getString(R$string.exo_track_selection_title_audio)}, new Drawable[]{androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_styled_controls_speed), androidx.media3.common.util.a1.a0(context, resources, R$drawable.exo_styled_controls_audiotrack)});
        playerControlView2.f13191f = hVar;
        playerControlView2.f13203l = resources.getDimensionPixelSize(R$dimen.exo_settings_offset);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(R$layout.exo_styled_settings_list, (ViewGroup) null);
        playerControlView2.f13189e = recyclerView;
        recyclerView.setAdapter(hVar);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) recyclerView, -2, -2, true);
        playerControlView2.f13201k = popupWindow;
        if (androidx.media3.common.util.a1.f10038a < 23) {
            z18 = false;
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        } else {
            z18 = false;
        }
        popupWindow.setOnDismissListener(cVar);
        playerControlView2.f13232z0 = true;
        playerControlView2.f13199j = new androidx.media3.ui.f(getResources());
        playerControlView2.f13184b0 = androidx.media3.common.util.a1.a0(context, resources, i24);
        playerControlView2.f13186c0 = androidx.media3.common.util.a1.a0(context, resources, i20);
        playerControlView2.f13188d0 = resources.getString(R$string.exo_controls_cc_enabled_description);
        playerControlView2.f13190e0 = resources.getString(R$string.exo_controls_cc_disabled_description);
        playerControlView2.f13195h = new j();
        playerControlView2.f13197i = new b();
        playerControlView2.f13193g = playerControlView2.new e(resources.getStringArray(R$array.exo_controls_playback_speeds), A0);
        playerControlView2.K = androidx.media3.common.util.a1.a0(context, resources, i21);
        playerControlView2.L = androidx.media3.common.util.a1.a0(context, resources, i22);
        playerControlView2.f13192f0 = androidx.media3.common.util.a1.a0(context, resources, i14);
        playerControlView2.f13194g0 = androidx.media3.common.util.a1.a0(context, resources, i15);
        playerControlView2.M = androidx.media3.common.util.a1.a0(context, resources, i16);
        playerControlView2.N = androidx.media3.common.util.a1.a0(context, resources, i17);
        playerControlView2.O = androidx.media3.common.util.a1.a0(context, resources, i18);
        playerControlView2.S = androidx.media3.common.util.a1.a0(context, resources, i19);
        playerControlView2.T = androidx.media3.common.util.a1.a0(context, resources, i26);
        playerControlView2.f13196h0 = resources.getString(R$string.exo_controls_fullscreen_exit_description);
        playerControlView2.f13198i0 = resources.getString(R$string.exo_controls_fullscreen_enter_description);
        playerControlView2.P = resources.getString(R$string.exo_controls_repeat_off_description);
        playerControlView2.Q = resources.getString(R$string.exo_controls_repeat_one_description);
        playerControlView2.R = resources.getString(R$string.exo_controls_repeat_all_description);
        playerControlView2.W = resources.getString(R$string.exo_controls_shuffle_on_description);
        playerControlView2.f13182a0 = resources.getString(R$string.exo_controls_shuffle_off_description);
        e0Var.Z((ViewGroup) playerControlView2.findViewById(R$id.exo_bottom_bar), true);
        e0Var.Z(playerControlView2.f13211p, z11);
        e0Var.Z(playerControlView2.f13213q, z10);
        e0Var.Z(imageView, z12);
        e0Var.Z(imageView7, z13);
        e0Var.Z(imageView11, z14);
        e0Var.Z(imageView2, z15);
        e0Var.Z(imageView12, z16);
        e0Var.Z(imageView10, playerControlView2.f13220t0 != 0 ? true : z18);
        playerControlView2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public final void onLayoutChange(View view3, int i44, int i45, int i46, int i47, int i48, int i49, int i50, int i51) {
                this.f13387a.b0(view3, i44, i45, i46, i47, i48, i49, i50, i51);
            }
        });
    }

    final class j extends l {
        private j() {
            super();
        }

        public void p(View view) {
            if (PlayerControlView.this.f13200j0 == null || !PlayerControlView.this.f13200j0.i(29)) {
                return;
            }
            PlayerControlView.this.f13200j0.V(PlayerControlView.this.f13200j0.m().a().G(3).K(-3).M(null).O(0).F());
            PlayerControlView.this.f13201k.dismiss();
        }

        @Override
        public void onBindViewHolder(i iVar, int i10) {
            super.onBindViewHolder(iVar, i10);
            if (i10 > 0) {
                iVar.f13248b.setVisibility(((k) this.f13253a.get(i10 + (-1))).a() ? 0 : 4);
            }
        }

        @Override
        public void k(i iVar) {
            boolean z10;
            iVar.f13247a.setText(R$string.exo_track_selection_none);
            int i10 = 0;
            while (true) {
                if (i10 >= this.f13253a.size()) {
                    z10 = true;
                    break;
                } else {
                    if (((k) this.f13253a.get(i10)).a()) {
                        z10 = false;
                        break;
                    }
                    i10++;
                }
            }
            iVar.f13248b.setVisibility(z10 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.f13392a.p(view);
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
            if (PlayerControlView.this.f13225w != null) {
                ImageView imageView = PlayerControlView.this.f13225w;
                PlayerControlView playerControlView = PlayerControlView.this;
                imageView.setImageDrawable(z10 ? playerControlView.f13184b0 : playerControlView.f13186c0);
                PlayerControlView.this.f13225w.setContentDescription(z10 ? PlayerControlView.this.f13188d0 : PlayerControlView.this.f13190e0);
            }
            this.f13253a = list;
        }

        @Override
        public void m(String str) {
        }
    }

    public void setProgressUpdateListener(@Nullable f fVar) {
    }
}
