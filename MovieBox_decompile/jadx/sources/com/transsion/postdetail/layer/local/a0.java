package com.transsion.postdetail.layer.local;

import android.R;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Html;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.music.MusicFloatManager;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.layer.BaseLayer;
import com.transsion.postdetail.layer.SystemTimeManager;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment;
import com.transsion.postdetail.util.LocalFloatManager;
import com.transsion.postdetail.viewmodel.LocalVideoDetailViewModel;
import com.transsion.subtitle.VideoSubtitleControl;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsnet.downloader.util.LocalVideoNotExistUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.StringCompanionObject;
import org.mvel2.ast.ASTNode;

public abstract class a0 extends BaseLayer implements zn.d, com.transsion.player.orplayer.e, com.transsion.baselib.report.k.a, com.transsion.ad.strategy.b.a {
    private boolean A;
    private View B;
    private View C;
    private float D;
    private long E;
    private final Lazy F;
    private final Lazy G;
    private DownloadBean H;
    private String I;
    private String J;
    private String K;
    private boolean L;
    private zn.c M;
    private boolean N;
    private boolean O;
    private boolean P;
    private int Q;
    private int R;
    private int S;
    private int T;
    private final Lazy U;
    private final Runnable V;
    private String[] W;
    private int X;
    private final Runnable Y;
    private final Runnable Z;

    private long f46934a0;

    private final String f46935j;

    private final Fragment f46936k;

    private long f46937l;

    private final Lazy f46938m;

    private final Lazy f46939n;

    private final Lazy f46940o;

    private int f46941p;

    private int f46942q;

    private boolean f46943r;

    private SystemTimeManager f46944s;

    private zn.b f46945t;

    private VideoSubtitleControl f46946u;

    private jn.n f46947v;

    private h1 f46948w;

    private String f46949x;

    private boolean f46950y;

    private boolean f46951z;

    public class a {

        public static final int[] f46952a;

        static {
            int[] iArr = new int[LocalUiType.values().length];
            try {
                iArr[LocalUiType.MIDDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LocalUiType.LAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LocalUiType.PORTRAIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f46952a = iArr;
        }
    }

    public static final class b implements com.transsion.baseui.widget.f.a {

        private long f46953a;

        private float f46954b;

        private boolean f46955c;

        private boolean f46956d;

        private boolean f46957e;

        private long f46958f;

        private float f46959g;

        final boolean f46961i;

        final int f46962j;

        final int f46963k;

        b(boolean z10, int i10, int i11) {
            this.f46961i = z10;
            this.f46962j = i10;
            this.f46963k = i11;
        }

        @Override
        public void a() {
            Group groupZ2 = a0.this.Z2();
            if (groupZ2 == null || groupZ2.getVisibility() != 8) {
                a0.this.v1(true);
            } else {
                a0.B2(a0.this, false, 1, null);
            }
        }

        @Override
        public void b(float f10, float f11) {
            long j10 = 0;
            if (!this.f46955c) {
                SecondariesSeekBar secondariesSeekBarQ2 = a0.this.q2();
                this.f46958f = secondariesSeekBarQ2 != null ? secondariesSeekBarQ2.getCurrentProgress() : 0L;
                a0.this.A2(false);
            }
            a0.this.f46943r = true;
            this.f46955c = true;
            a0.this.X0().removeCallbacks(a0.this.V);
            float f12 = this.f46961i ? f10 - f11 : f11 - f10;
            float f13 = 10000L;
            long j11 = (long) (this.f46958f + ((f12 * f13) / (this.f46962j * 4)));
            if (j11 >= 0) {
                j10 = j11 > 10000 ? 10000L : j11;
            }
            SecondariesSeekBar secondariesSeekBarQ3 = a0.this.q2();
            if (secondariesSeekBarQ3 != null) {
                secondariesSeekBarQ3.setProgress(j10);
            }
            this.f46954b = (j10 * 1.0f) / f13;
            long jN1 = (long) (a0.this.n1() * this.f46954b);
            this.f46953a = jN1;
            a0.this.E = jN1;
            a0.this.c3(true, this.f46953a);
        }

        @Override
        public void c(float f10, float f11) {
            jn.n nVar = null;
            if (!this.f46957e) {
                jn.n nVar2 = a0.this.f46947v;
                if (nVar2 == null) {
                    Intrinsics.y("volumeControl");
                    nVar2 = null;
                }
                nVar2.f(false);
                jn.n nVar3 = a0.this.f46947v;
                if (nVar3 == null) {
                    Intrinsics.y("volumeControl");
                    nVar3 = null;
                }
                this.f46959g = nVar3.b();
                this.f46957e = true;
            }
            float f12 = ((f10 - f11) * 2) / this.f46963k;
            jn.n nVar4 = a0.this.f46947v;
            if (nVar4 == null) {
                Intrinsics.y("volumeControl");
            } else {
                nVar = nVar4;
            }
            nVar.a(this.f46959g, f12);
        }

        @Override
        public void d(float f10, float f11) {
            jn.n nVar = null;
            if (!this.f46956d) {
                jn.n nVar2 = a0.this.f46947v;
                if (nVar2 == null) {
                    Intrinsics.y("volumeControl");
                    nVar2 = null;
                }
                nVar2.f(false);
                this.f46956d = true;
            }
            jn.n nVar3 = a0.this.f46947v;
            if (nVar3 == null) {
                Intrinsics.y("volumeControl");
            } else {
                nVar = nVar3;
            }
            nVar.d(f10, f11, this.f46963k);
        }

        @Override
        public void e() {
            com.transsion.player.orplayer.f fVarH;
            if (this.f46955c) {
                com.transsion.player.orplayer.f fVarH2 = a0.this.H();
                if (fVarH2 != null) {
                    fVarH2.seekTo(this.f46953a);
                }
                com.transsion.player.orplayer.f fVarH3 = a0.this.H();
                if (fVarH3 != null && !fVarH3.isPlaying() && (fVarH = a0.this.H()) != null) {
                    fVarH.play();
                }
                Fragment fragment = a0.this.f46936k;
                LocalVideoDetailFragment localVideoDetailFragment = fragment instanceof LocalVideoDetailFragment ? (LocalVideoDetailFragment) fragment : null;
                if (localVideoDetailFragment != null) {
                    localVideoDetailFragment.v3(this.f46953a, this.f46954b);
                }
                a0.this.c3(false, 0L);
                a0.this.v1(false);
            }
            a0.this.f46943r = false;
            this.f46955c = false;
            this.f46956d = false;
            this.f46957e = false;
            a0.this.M0();
        }

        @Override
        public void onDoubleTap(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            View viewB1 = a0.this.b1();
            if (viewB1 == null || !viewB1.isSelected()) {
                a0.this.d2(e10, true);
            }
        }

        @Override
        public void onLongPress(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            View viewB1 = a0.this.b1();
            if (viewB1 == null || !viewB1.isSelected()) {
                a0.this.L2();
            }
        }
    }

    public static final class c implements com.tn.lib.view.s {

        final Ref.LongRef f46965b;

        final Ref.FloatRef f46966c;

        c(Ref.LongRef longRef, Ref.FloatRef floatRef) {
            this.f46965b = longRef;
            this.f46966c = floatRef;
        }

        @Override
        public void a(SecondariesSeekBar seekBar) {
            com.transsion.player.orplayer.f fVarH;
            Intrinsics.h(seekBar, "seekBar");
            wf.a.C0922a c0922a = wf.a.f74274a;
            String strM1 = a0.this.m1();
            Intrinsics.g(strM1, "<get-TAG>(...)");
            wf.a.C0922a.f(c0922a, strM1, "onStopTrackingTouch targetProgress:" + this.f46965b.element + " ", false, 4, null);
            a0.this.f46943r = false;
            com.transsion.player.orplayer.f fVarH2 = a0.this.H();
            if (fVarH2 != null) {
                fVarH2.seekTo(this.f46965b.element);
            }
            com.transsion.player.orplayer.f fVarH3 = a0.this.H();
            if (fVarH3 != null && !fVarH3.isPlaying() && (fVarH = a0.this.H()) != null) {
                fVarH.play();
            }
            Fragment fragment = a0.this.f46936k;
            LocalVideoDetailFragment localVideoDetailFragment = fragment instanceof LocalVideoDetailFragment ? (LocalVideoDetailFragment) fragment : null;
            if (localVideoDetailFragment != null) {
                localVideoDetailFragment.v3(this.f46965b.element, this.f46966c.element);
            }
            a0.this.E = seekBar.getCurrentProgress();
            a0.this.c3(false, 0L);
            a0.this.v1(false);
        }

        @Override
        public void b(SecondariesSeekBar seekBar, long j10, boolean z10) {
            View viewG1;
            Intrinsics.h(seekBar, "seekBar");
            if (z10) {
                View viewG2 = a0.this.g1();
                if (viewG2 != null && uf.c.i(viewG2) && (viewG1 = a0.this.g1()) != null) {
                    uf.c.g(viewG1);
                }
                a0.this.f46943r = z10;
                a0.this.X0().removeCallbacks(a0.this.V);
                float f10 = j10 / 10000;
                if (a0.this.n1() > 0) {
                    this.f46965b.element = (long) (a0.this.n1() * f10);
                } else {
                    this.f46966c.element = f10;
                }
                a0.this.E = this.f46965b.element;
                a0.this.c3(true, this.f46965b.element);
            }
        }

        @Override
        public void c(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            wf.a.C0922a c0922a = wf.a.f74274a;
            String strM1 = a0.this.m1();
            Intrinsics.g(strM1, "<get-TAG>(...)");
            wf.a.C0922a.f(c0922a, strM1, "onStartTrackingTouch ", false, 4, null);
        }
    }

    public static final class d implements SystemTimeManager.a {
        d() {
        }

        public static final void c(a0 a0Var) {
            a0Var.d3();
        }

        @Override
        public long a() {
            FragmentActivity activity = a0.this.f46936k.getActivity();
            if (activity == null) {
                return 30000L;
            }
            final a0 a0Var = a0.this;
            activity.runOnUiThread(new Runnable() {
                @Override
                public final void run() {
                    a0.d.c(a0Var);
                }
            });
            return 30000L;
        }
    }

    static final class e implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f46968a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f46968a = function;
        }

        @Override
        public final Function a() {
            return this.f46968a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f46968a.invoke(obj);
        }
    }

    public static final class f implements gw.a {
        f() {
        }

        @Override
        public boolean a(dw.a aVar) {
            return LocalFloatManager.f48051b.l(aVar);
        }

        @Override
        public void b(dw.a aVar) {
            LocalFloatManager localFloatManager = LocalFloatManager.f48051b;
            localFloatManager.i();
            localFloatManager.m(aVar);
        }

        @Override
        public void c(dw.a aVar) {
            LocalFloatManager.f48051b.j(aVar);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(final Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f46935j = getClass().getSimpleName();
        this.f46936k = fragment;
        this.f46938m = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return a0.t1();
            }
        });
        this.f46939n = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return a0.R1();
            }
        });
        this.f46940o = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return a0.N0();
            }
        });
        this.f46949x = "";
        this.F = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return a0.l3(fragment);
            }
        });
        this.G = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return a0.L0();
            }
        });
        this.I = "";
        this.J = "";
        this.K = "";
        this.Q = 1;
        this.R = 8;
        this.S = 1;
        this.T = 1;
        this.U = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return a0.P0(fragment, this);
            }
        });
        this.V = new Runnable() {
            @Override
            public final void run() {
                a0.o2(this.f47011a);
            }
        };
        this.W = new String[]{".", "..", "..."};
        this.Y = new Runnable() {
            @Override
            public final void run() {
                a0.S1(this.f47013a);
            }
        };
        this.Z = new Runnable() {
            @Override
            public final void run() {
                a0.F2(this.f47015a);
            }
        };
    }

    private final void A1() {
        View viewA0 = A0();
        if (viewA0 != null) {
            viewA0.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    a0.F1(this.f46933a, view);
                }
            });
        }
        ImageView imageViewF2 = f2();
        if (imageViewF2 != null) {
            imageViewF2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    a0.G1(this.f47057a, view);
                }
            });
        }
        View viewP2 = p2();
        if (viewP2 != null) {
            viewP2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    a0.H1(this.f47080a, view);
                }
            });
        }
        ImageView imageViewO0 = O0();
        if (imageViewO0 != null) {
            imageViewO0.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    a0.B1(this.f47082a, view);
                }
            });
        }
        View viewI2 = i2();
        if (viewI2 != null) {
            viewI2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    a0.C1(this.f47083a, view);
                }
            });
        }
        View viewP1 = P1();
        if (viewP1 != null) {
            viewP1.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    a0.D1(this.f47109a, view);
                }
            });
        }
        View viewJ1 = j1();
        if (viewJ1 != null) {
            viewJ1.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    a0.E1(this.f47110a, view);
                }
            });
        }
    }

    public static final void B1(a0 a0Var, View view) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_PLAY").K("subject_id", a0Var.K);
        DownloadBean downloadBean = a0Var.H;
        if (downloadBean != null && downloadBean.getType() == 3) {
            navigatorK.I("TV_DATA", new FbTvData(a0Var.K, downloadBean.getSe(), downloadBean.getEp()));
        }
        Navigator.x(navigatorK, a0Var.f46936k.getContext(), null, 2, null);
    }

    public static void B2(a0 a0Var, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showBottomController");
        }
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        a0Var.A2(z10);
    }

    public static final void C1(a0 a0Var, View view) {
        qi.h.f69682a.o("local_video_detail", a0Var.h1());
        a0Var.j2();
    }

    private final void C2(int i10) {
        com.transsion.player.orplayer.f fVarH;
        if (this.B == null) {
            ViewStub viewStubM3 = m3();
            this.B = viewStubM3 != null ? viewStubM3.inflate() : null;
        }
        View view = this.C;
        if (view != null) {
            uf.c.g(view);
        }
        if (a3() == LocalUiType.MIDDLE) {
            u2(false);
        }
        if (isVisible() && (fVarH = H()) != null) {
            fVarH.pause();
        }
        View view2 = this.B;
        if (view2 != null) {
            uf.c.k(view2);
        }
        View view3 = this.B;
        if (view3 != null) {
            view3.setTag(Integer.valueOf(i10));
        }
        View view4 = this.B;
        if (view4 != null) {
            ((TextView) view4.findViewById(R$id.tv_fail_left_btn)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view5) {
                    a0.D2(this.f47049a, view5);
                }
            });
            ((TextView) view4.findViewById(R$id.tv_fail_right_btn)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view5) {
                    a0.E2(this.f47051a, view5);
                }
            });
        }
    }

    public static final void D1(a0 a0Var, View view) {
        a0Var.e(FloatActionType.ICON);
    }

    public static final void D2(a0 a0Var, View view) {
        a0Var.c2();
    }

    public static final void E1(a0 a0Var, View view) {
        a0Var.Y1();
    }

    public static final void E2(a0 a0Var, View view) {
        wf.a.f74274a.x("long_video_play", "video error，reload~~ from errorLayout click", true);
        Fragment fragment = a0Var.f46936k;
        LocalVideoDetailFragment localVideoDetailFragment = fragment instanceof LocalVideoDetailFragment ? (LocalVideoDetailFragment) fragment : null;
        if (localVideoDetailFragment != null) {
            localVideoDetailFragment.n3(true);
        }
    }

    public static final void F1(a0 a0Var, View view) {
        a0Var.V1();
    }

    public static final void F2(a0 a0Var) {
        a0Var.f46949x = "";
        a0Var.C2(0);
        a0Var.f46950y = true;
        a0Var.v1(true);
        Group groupZ2 = a0Var.Z2();
        if (groupZ2 != null) {
            groupZ2.setVisibility(0);
        }
        a0Var.w1(true);
    }

    public static final void G1(a0 a0Var, View view) {
        Fragment fragment = a0Var.f46936k;
        Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment");
        hn.c cVar = hn.c.f61413a;
        qi.b logViewConfig = ((LocalVideoDetailFragment) fragment).getLogViewConfig();
        String strF = logViewConfig != null ? logViewConfig.f() : null;
        String str = a0Var.K;
        DownloadBean downloadBean = a0Var.H;
        cVar.a(strF, str, downloadBean != null ? downloadBean.getOps() : null, false);
        e2(a0Var, null, false, 3, null);
    }

    public static final Unit G2(a0 a0Var, boolean z10) {
        if (z10) {
            zn.b bVar = a0Var.f46945t;
            if (bVar != null) {
                bVar.c(a0Var.H);
            }
            FragmentActivity activity = a0Var.f46936k.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
        return Unit.f64096a;
    }

    public static final void H1(a0 a0Var, View view) {
        a0Var.Y1();
    }

    private final void H2() {
        zn.b bVar;
        View view = this.B;
        if (view == null || view.getVisibility() != 0) {
            if (a3() == LocalUiType.MIDDLE) {
                v1(true);
            } else {
                A2(false);
            }
            u2(false);
            h1 h1Var = this.f46948w;
            if (h1Var != null) {
                h1Var.d();
            }
            if (isVisible() && (bVar = this.f46945t) != null) {
                bVar.d(this.H);
            }
            if (this.C == null) {
                ViewStub viewStubN3 = n3();
                this.C = viewStubN3 != null ? viewStubN3.inflate() : null;
            }
            View view2 = this.C;
            if (view2 != null) {
                uf.c.k(view2);
            }
            View view3 = this.C;
            if (view3 != null) {
                Z1();
                ((TextView) view3.findViewById(R$id.tv_replay)).setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view4) {
                        a0.I2(this.f47077a, view4);
                    }
                });
            }
        }
    }

    private final void I1() {
        this.f46948w = new h1(X2(), Y2());
    }

    public static final void I2(a0 a0Var, View view) {
        a0Var.i3();
    }

    private final void J0() {
        ViewGroup viewGroupD0;
        boolean zU1 = u1();
        View viewI2 = i2();
        if (viewI2 != null) {
            viewI2.setVisibility(zU1 ? 0 : 8);
        }
        if (zU1 && (viewGroupD0 = D0()) != null && viewGroupD0.getVisibility() == 0) {
            qi.h.f69682a.z("local_video_detail", h1());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("vis = ");
        sb2.append(zU1);
    }

    private final void J1() {
        Ref.LongRef longRef = new Ref.LongRef();
        Ref.FloatRef floatRef = new Ref.FloatRef();
        SecondariesSeekBar secondariesSeekBarQ2 = q2();
        if (secondariesSeekBarQ2 != null) {
            secondariesSeekBarQ2.setMax(10000L);
        }
        SecondariesSeekBar secondariesSeekBarQ3 = q2();
        if (secondariesSeekBarQ3 != null) {
            secondariesSeekBarQ3.setOnSeekBarChangeListener(new c(longRef, floatRef));
        }
    }

    public static final Unit K1(a0 a0Var, List list) {
        if (list == null || list.isEmpty()) {
            return Unit.f64096a;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = a0Var.f46935j;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "2--fragment, on get series from local, size = " + list.size() + ", uiType = " + a0Var.a3(), false, 4, null);
        a0Var.J0();
        return Unit.f64096a;
    }

    private final void K2() {
        M2();
        a1().post(this.Y);
    }

    public static final com.transsnet.downloader.manager.g L0() {
        return com.transsnet.downloader.manager.p.f57282a.a(Utils.a());
    }

    private final void L1() {
        this.f46944s = new SystemTimeManager(new d());
    }

    private final void M2() {
        a1().removeCallbacks(this.Y);
    }

    public static final Handler N0() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        return new Handler(looperMyLooper);
    }

    private final boolean N1() {
        Fragment fragment = this.f46936k;
        Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment");
        return ((LocalVideoDetailFragment) fragment).getIsAdShowing();
    }

    public static final com.transsion.baseui.widget.f P0(Fragment fragment, a0 a0Var) {
        return new com.transsion.baseui.widget.f(fragment.requireContext(), a0Var.Q0());
    }

    private final void Q1() {
        a1().postDelayed(this.Y, 1000L);
    }

    private final Intent R0() {
        Intent intent = new Intent();
        intent.putExtra("path", "/video/detail");
        intent.putExtra("id", this.K);
        return intent;
    }

    public static final Handler R1() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        return new Handler(looperMyLooper);
    }

    public static final void S1(a0 a0Var) {
        int i10 = a0Var.X;
        boolean z10 = false;
        if (i10 >= 2) {
            a0Var.X = 0;
        } else {
            a0Var.X = i10 + 1;
        }
        TextView textViewH0 = a0Var.H0();
        if (textViewH0 != null) {
            textViewH0.setText(Utils.a().getString(R$string.play_loading) + a0Var.W[a0Var.X]);
        }
        if (a0Var.H != null) {
            com.transsnet.downloader.manager.g gVarT0 = a0Var.T0();
            DownloadBean downloadBean = a0Var.H;
            Intrinsics.e(downloadBean);
            z10 = gVarT0.z(downloadBean);
        }
        if (a0Var.f46949x.length() > 0 && !z10) {
            a0Var.f46949x = "";
        }
        TextView textViewG0 = a0Var.G0();
        if (textViewG0 != null) {
            String str = a0Var.f46949x;
            textViewG0.setText(str.length() != 0 ? str : "");
        }
        a0Var.Q1();
    }

    private final Handler U0() {
        return (Handler) this.f46940o.getValue();
    }

    public static final void U1(a0 a0Var) {
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.player.orplayer.f fVarH = a0Var.H();
            if (fVarH != null && fVarH.isPlaying()) {
                wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", "onAdClick resume auto pip", false, 4, null);
                a0Var.b3(true);
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final dw.a V0() {
        DownloadBean downloadBean = this.H;
        dw.a aVar = null;
        if (downloadBean == null) {
            return null;
        }
        if (I() != null && H() != null) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            c0922a.c("VideoFloat", "local--showFloat, name:" + downloadBean.getTotalTitleName(), true);
            ArrayList arrayList = new ArrayList();
            if (downloadBean.isSeries()) {
                List arrayList2 = (List) o1().i().f();
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                Iterator it = arrayList2.iterator();
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i11 = -1;
                        break;
                    }
                    if (Intrinsics.c(((DownloadBean) it.next()).getResourceId(), downloadBean.getResourceId())) {
                        break;
                    }
                    i11++;
                }
                wf.a.f74274a.c("VideoFloat", "local--showFloat, 电视剧:" + i11, true);
                if (i11 >= 0) {
                    arrayList.addAll(arrayList2);
                } else {
                    List list = arrayList2;
                    int size = list.size();
                    int i12 = 0;
                    while (i10 < size && ((DownloadBean) arrayList2.get(i10)).getEp() < downloadBean.getEp()) {
                        i12 = i10 + 1;
                        i10 = i12;
                    }
                    arrayList.addAll(list);
                    if (arrayList2.size() <= i12) {
                        arrayList.add(downloadBean);
                    } else {
                        arrayList.add(i12, downloadBean);
                    }
                }
            } else {
                c0922a.c("VideoFloat", "local--showFloat, 电影", true);
                arrayList.add(downloadBean);
            }
            LocalFloatManager.f48051b.p(arrayList);
            ORPlayerView oRPlayerViewI = I();
            Intrinsics.e(oRPlayerViewI);
            com.transsion.player.orplayer.f fVarH = H();
            Intrinsics.e(fVarH);
            ViewGroup viewGroupU2 = U2();
            Intrinsics.e(viewGroupU2);
            FloatPlayType floatPlayType = FloatPlayType.LOCAL;
            String subjectId = downloadBean.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            aVar = new dw.a(oRPlayerViewI, fVarH, viewGroupU2, floatPlayType, subjectId, downloadBean.getSe(), downloadBean.getEp(), "", "local_video_detail");
            aVar.G(downloadBean.getResourceId());
            aVar.J(Integer.valueOf(downloadBean.getSubjectType()));
            aVar.C(com.transsion.postdetail.util.t.b(aVar.b()));
            aVar.A(downloadBean.getOps());
            aVar.E(downloadBean.getPostId());
            aVar.B(downloadBean.getPageFrom());
        }
        return aVar;
    }

    public final Handler X0() {
        return (Handler) this.f46938m.getValue();
    }

    private final void X1(long j10) {
        List list;
        long j11 = this.f46937l;
        if (j11 <= 0 || j11 - j10 >= 5000) {
            return;
        }
        List list2 = (List) o1().i().f();
        if (!this.L || (list = list2) == null || list.isEmpty() || this.N) {
            return;
        }
        this.N = true;
        int size = list.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            DownloadBean downloadBean = (DownloadBean) list2.get(i10);
            String resourceId = downloadBean.getResourceId();
            DownloadBean downloadBean2 = this.H;
            if (Intrinsics.c(resourceId, downloadBean2 != null ? downloadBean2.getResourceId() : null)) {
                z10 = true;
            } else if (z10) {
                l2(downloadBean);
                return;
            }
        }
    }

    private final Intent Z0() {
        to.a aVar = (to.a) TheRouter.d(to.a.class, new Object[0]);
        DownloadBean downloadBean = this.H;
        boolean zIsCompleted = downloadBean != null ? downloadBean.isCompleted() : false;
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=");
        sb2.append("/video/detail");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_resource_id");
        sb2.append(UrlUtils.EQUAL_MARK);
        DownloadBean downloadBean2 = this.H;
        sb2.append(downloadBean2 != null ? downloadBean2.getResourceId() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_local_path");
        sb2.append(UrlUtils.EQUAL_MARK);
        DownloadBean downloadBean3 = this.H;
        sb2.append(downloadBean3 != null ? downloadBean3.getPath() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_url");
        sb2.append(UrlUtils.EQUAL_MARK);
        DownloadBean downloadBean4 = this.H;
        sb2.append(downloadBean4 != null ? downloadBean4.getUrl() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_page_from");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append("media_notification");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_completed");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(zIsCompleted);
        if (aVar == null) {
            return null;
        }
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = aVar.a(applicationA);
        if (intentA == null) {
            return null;
        }
        intentA.addFlags(603979776);
        intentA.setData(Uri.parse(sb2.toString()));
        return intentA;
    }

    private final Handler a1() {
        return (Handler) this.f46939n.getValue();
    }

    private final MediaItem c1() {
        DownloadBean downloadBean = this.H;
        String totalTitleName = downloadBean != null ? downloadBean.getTotalTitleName() : null;
        DownloadBean downloadBean2 = this.H;
        String subjectId = downloadBean2 != null ? downloadBean2.getSubjectId() : null;
        DownloadBean downloadBean3 = this.H;
        String cover = downloadBean3 != null ? downloadBean3.getCover() : null;
        DownloadBean downloadBean4 = this.H;
        String resourceId = downloadBean4 != null ? downloadBean4.getResourceId() : null;
        PendingIntent pendingIntentD1 = d1();
        Intent intentR0 = R0();
        DownloadBean downloadBean5 = this.H;
        boolean z10 = false;
        if (downloadBean5 != null && downloadBean5.getType() == 6) {
            z10 = true;
        }
        return new MediaItem(totalTitleName, "", cover, null, null, null, pendingIntentD1, intentR0, subjectId, resourceId, Boolean.valueOf(z10), null, null, null, 14392, null);
    }

    private final void c2() {
        Utils.a().startActivity(new Intent("android.settings.WIFI_SETTINGS").setFlags(ASTNode.DEOP));
    }

    public final void c3(boolean z10, long j10) {
        this.A = z10;
        View view = this.B;
        if (view == null || view.getVisibility() != 0) {
            if (!z10) {
                VideoSubtitleControl videoSubtitleControl = this.f46946u;
                if (videoSubtitleControl != null) {
                    videoSubtitleControl.T();
                }
                TextView textViewI0 = I0();
                if (textViewI0 != null) {
                    textViewI0.setVisibility(8);
                }
                View viewF0 = F0();
                if (viewF0 != null) {
                    viewF0.setVisibility(this.f46951z ? 0 : 8);
                    return;
                }
                return;
            }
            TextView textViewI1 = I0();
            if (textViewI1 != null) {
                textViewI1.setVisibility(0);
            }
            TextView textViewI2 = I0();
            if (textViewI2 != null) {
                FragmentActivity activity = this.f46936k.getActivity();
                textViewI2.setText(Html.fromHtml(activity != null ? activity.getString(R$string.post_progress_tx_style, com.transsion.postdetail.util.m.d(j10), com.transsion.postdetail.util.m.d(this.f46937l)) : null));
            }
            VideoSubtitleControl videoSubtitleControl2 = this.f46946u;
            if (videoSubtitleControl2 != null) {
                videoSubtitleControl2.q0(j10);
            }
            View viewF1 = F0();
            if (viewF1 != null) {
                viewF1.setVisibility(8);
            }
        }
    }

    private final PendingIntent d1() {
        return PendingIntent.getActivity(Utils.a(), 0, Z0(), f1());
    }

    public final void d3() {
        TextView textViewH2 = h2();
        if (textViewH2 != null) {
            textViewH2.setText(com.transsion.postdetail.util.t.d());
        }
    }

    public static void e2(a0 a0Var, MotionEvent motionEvent, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: pause");
        }
        if ((i10 & 1) != 0) {
            motionEvent = null;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        a0Var.d2(motionEvent, z10);
    }

    private final void e3(long j10) {
        SecondariesSeekBar secondariesSeekBarQ2;
        VideoSubtitleControl videoSubtitleControl = this.f46946u;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.q0(j10);
        }
        if (this.f46937l <= 0) {
            com.transsion.player.orplayer.f fVarH = H();
            if (fVarH == null) {
                return;
            } else {
                this.f46937l = fVarH.getDuration();
            }
        }
        if (!this.f46943r) {
            long j11 = this.f46937l;
            if (j11 > 0) {
                long j12 = (int) ((j10 / j11) * 10000);
                if (j12 >= this.E && (secondariesSeekBarQ2 = q2()) != null) {
                    secondariesSeekBarQ2.setProgress(j12);
                }
            }
        }
        f3(j10, this.f46937l);
    }

    private final int f1() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    private final void f3(long j10, long j11) {
        TextView textViewH3 = h3();
        if (textViewH3 != null) {
            textViewH3.setText(com.transsion.postdetail.util.m.d(this.f46937l));
            TextView textViewK3 = k3();
            if (textViewK3 != null) {
                textViewK3.setText(com.transsion.postdetail.util.m.d(j10));
                return;
            }
            return;
        }
        String str = com.transsion.postdetail.util.m.d(j10) + "/" + com.transsion.postdetail.util.m.d(j11);
        TextView textViewK4 = k3();
        if (textViewK4 != null) {
            textViewK4.setText(str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0093  */
    /* JADX WARN: Code duplicated, block: B:48:0x009d  */
    private final void g3() {
        DownloadBean downloadBean;
        String name;
        String subjectName;
        DownloadBean downloadBean2;
        String subjectName2;
        DownloadBean downloadBean3 = this.H;
        boolean z10 = false;
        if (downloadBean3 == null || !downloadBean3.isSeries() || (downloadBean2 = this.H) == null || (subjectName2 = downloadBean2.getSubjectName()) == null || subjectName2.length() <= 0) {
            DownloadBean downloadBean4 = this.H;
            if ((downloadBean4 != null ? downloadBean4.getResolution() : 0) <= 0) {
                downloadBean = this.H;
                if (downloadBean != null || (name = downloadBean.getName()) == null) {
                    name = "";
                }
            } else {
                DownloadBean downloadBean5 = this.H;
                if (downloadBean5 != null && (subjectName = downloadBean5.getSubjectName()) != null) {
                    if (subjectName.length() > 0) {
                        z10 = true;
                    }
                }
                if (z10) {
                    DownloadBean downloadBean6 = this.H;
                    Integer numValueOf = downloadBean6 != null ? Integer.valueOf(downloadBean6.getResolution()) : null;
                    DownloadBean downloadBean7 = this.H;
                    name = numValueOf + "P " + (downloadBean7 != null ? downloadBean7.getSubjectName() : null);
                } else {
                    downloadBean = this.H;
                    if (downloadBean != null) {
                        name = "";
                    } else {
                        name = "";
                    }
                }
            }
        } else {
            DownloadBean downloadBean8 = this.H;
            String subjectName3 = downloadBean8 != null ? downloadBean8.getSubjectName() : null;
            DownloadBean downloadBean9 = this.H;
            name = subjectName3 + " " + (downloadBean9 != null ? DownloadBean.getEpTitleName$default(downloadBean9, false, 1, null) : null);
        }
        updateTitle(name);
    }

    private final Map h1() {
        Pair pair = new Pair("module_name", "play_next");
        Pair pair2 = new Pair("subject_id", this.K);
        DownloadBean downloadBean = this.H;
        return MapsKt.l(pair, pair2, new Pair("ops", downloadBean != null ? downloadBean.getOps() : null), new Pair("resource_id", this.J));
    }

    private final boolean j2() {
        if (this.O) {
            return true;
        }
        List list = (List) o1().i().f();
        if (list != null && this.L) {
            List list2 = list;
            if (!list2.isEmpty()) {
                int size = list2.size();
                boolean z10 = false;
                for (int i10 = 0; i10 < size; i10++) {
                    DownloadBean downloadBean = (DownloadBean) list.get(i10);
                    String resourceId = downloadBean.getResourceId();
                    DownloadBean downloadBean2 = this.H;
                    if (Intrinsics.c(resourceId, downloadBean2 != null ? downloadBean2.getResourceId() : null)) {
                        z10 = true;
                    } else if (z10 && downloadBean.getCanPlay()) {
                        if (downloadBean.isCompleted() && !downloadBean.isFileExist()) {
                            return false;
                        }
                        r2(downloadBean, false);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private final void l2(DownloadBean downloadBean) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f46935j;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "onPlayProgress next tips name = " + downloadBean.getName() + ", epse = " + downloadBean.getEpse() + ", status = " + downloadBean.getStatus() + " ", false, 4, null);
        if (downloadBean.getCanPlay()) {
            DownloadBean downloadBean2 = this.H;
            if (downloadBean2 != null && downloadBean2.getStatus() == 5 && downloadBean.getStatus() != 5) {
                T0().l(downloadBean);
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String string = Utils.a().getString(R$string.series_next_play_tips);
            Intrinsics.g(string, "getString(...)");
            String subjectName = downloadBean.getSubjectName();
            if (subjectName == null) {
                subjectName = "";
            }
            String str = String.format(string, Arrays.copyOf(new Object[]{subjectName, downloadBean.getEp() > 0 ? com.transsion.baseui.util.n.b(downloadBean.getEp(), downloadBean.getSe(), true) : com.transsion.baseui.util.n.c(downloadBean.getEpse(), true)}, 2));
            Intrinsics.g(str, "format(...)");
            i(str, 3000L);
        }
    }

    public static final LocalVideoDetailViewModel l3(Fragment fragment) {
        FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        return (LocalVideoDetailViewModel) new androidx.p009lifecycle.v0(fragmentActivityRequireActivity, new androidx.lifecycle.v0.d()).a(LocalVideoDetailViewModel.class);
    }

    private final void m2(ORPlayerView oRPlayerView) {
        ViewParent parent = oRPlayerView.getParent();
        if (parent instanceof FrameLayout) {
            ((FrameLayout) parent).removeView(oRPlayerView);
        }
    }

    public static final void o2(a0 a0Var) {
        a0Var.x1();
    }

    public static final Handler t1() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        return new Handler(looperMyLooper);
    }

    private final boolean u1() {
        List list = (List) o1().i().f();
        if (list != null && this.L) {
            List list2 = list;
            if (!list2.isEmpty()) {
                int size = list2.size();
                boolean z10 = false;
                for (int i10 = 0; i10 < size; i10++) {
                    DownloadBean downloadBean = (DownloadBean) list.get(i10);
                    String resourceId = downloadBean.getResourceId();
                    DownloadBean downloadBean2 = this.H;
                    if (Intrinsics.c(resourceId, downloadBean2 != null ? downloadBean2.getResourceId() : null)) {
                        z10 = true;
                    } else if (z10 && downloadBean.getCanPlay()) {
                        return !downloadBean.isCompleted() || downloadBean.isFileExist();
                    }
                }
            }
        }
        return false;
    }

    private final void w1(boolean z10) {
        if (!z10) {
            FrameLayout frameLayoutJ3 = j3();
            if (frameLayoutJ3 != null) {
                uf.c.k(frameLayoutJ3);
                return;
            }
            return;
        }
        SimpleSubtitleView simpleSubtitleViewS2 = S2();
        if (simpleSubtitleViewS2 != null) {
            uf.c.h(simpleSubtitleViewS2);
        }
        FrameLayout frameLayoutJ4 = j3();
        if (frameLayoutJ4 != null) {
            uf.c.g(frameLayoutJ4);
        }
        J2(false);
    }

    public static final Unit w2(a0 a0Var, boolean z10) {
        ProgressBar progressBarP2 = a0Var.P2();
        if (progressBarP2 != null) {
            progressBarP2.setVisibility(z10 ? 0 : 8);
        }
        ImageView imageViewO2 = a0Var.O2();
        if (imageViewO2 != null) {
            imageViewO2.setVisibility(z10 ? 8 : 0);
        }
        TextView textViewQ2 = a0Var.Q2();
        if (textViewQ2 != null) {
            textViewQ2.setText(Utils.a().getString(z10 ? R$string.play_loading : R$string.turn_on_short));
        }
        return Unit.f64096a;
    }

    private final void x1() {
        Group groupZ2;
        ViewGroup viewGroupD0;
        if (!C0() && (viewGroupD0 = D0()) != null) {
            viewGroupD0.setVisibility(8);
        }
        if (!this.f46950y && (groupZ2 = Z2()) != null) {
            groupZ2.setVisibility(8);
        }
        View viewA0 = A0();
        if (viewA0 != null) {
            viewA0.setVisibility(8);
        }
        ViewGroup viewGroupE0 = E0();
        if (viewGroupE0 != null) {
            viewGroupE0.setVisibility(8);
        }
        ViewGroup viewGroupG2 = g2();
        if (viewGroupG2 != null) {
            viewGroupG2.setVisibility(8);
        }
        View viewR1 = r1();
        if (viewR1 != null) {
            viewR1.setVisibility(8);
        }
        View viewQ1 = q1();
        if (viewQ1 != null) {
            viewQ1.setVisibility(8);
        }
        View viewB1 = b1();
        if (viewB1 != null) {
            viewB1.setVisibility(8);
        }
    }

    public static final Unit x2(a0 a0Var, View switchView, boolean z10) {
        Intrinsics.h(switchView, "switchView");
        a0Var.b2(switchView, z10);
        return Unit.f64096a;
    }

    public static final Unit y1(a0 a0Var, Subject subject) {
        a0Var.B0(subject);
        return Unit.f64096a;
    }

    public static final Unit y2(a0 a0Var, View settingView) {
        Intrinsics.h(settingView, "settingView");
        a0Var.a2(settingView);
        return Unit.f64096a;
    }

    private final void z1() {
        jn.n.a aVar = jn.n.f63232a;
        Context contextRequireContext = this.f46936k.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        jn.n nVarA = aVar.a(contextRequireContext, n2());
        this.f46947v = nVarA;
        if (nVarA == null) {
            Intrinsics.y("volumeControl");
            nVarA = null;
        }
        nVarA.g();
        boolean zF = uf.c.f();
        int iC = com.blankj.utilcode.util.y.c();
        int iE = com.blankj.utilcode.util.y.e();
        int i10 = a.f46952a[a3().ordinal()];
        if (i10 != 1) {
            if (i10 == 3) {
            }
            W0().s(new b(zF, iC, iE));
        }
        iC = (iE * 9) / 16;
        iE = iC;
        iC = iE;
        W0().s(new b(zF, iC, iE));
    }

    @Override
    public void A() {
        String playingUrl;
        zn.d.a.e(this);
        if (cw.c.f58664a.c(H())) {
            return;
        }
        if (com.transsion.videofloat.manager.a0.f55763a.c(H())) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = this.f46935j;
            Intrinsics.g(TAG, "TAG");
            c0922a.c(TAG, "local 播放器在缓存中，这里不能release", true);
            return;
        }
        com.transsion.player.orplayer.f fVarH = H();
        if (fVarH != null) {
            DownloadBean downloadBean = this.H;
            fVarH.release((downloadBean == null || (playingUrl = downloadBean.getPlayingUrl()) == null) ? null : Integer.valueOf(playingUrl.hashCode()).toString());
        }
    }

    public abstract View A0();

    public void A2(boolean z10) {
        View viewFindViewById;
        if (this.f46950y || this.P || !com.blankj.utilcode.util.c.j()) {
            return;
        }
        View viewB1 = b1();
        if (viewB1 != null) {
            if (viewB1.isSelected()) {
                viewB1.setVisibility(viewB1.getVisibility() == 0 ? 8 : 0);
                return;
            }
            viewB1.setVisibility(0);
        }
        X0().removeCallbacks(this.V);
        if (z10) {
            v1(false);
        }
        ViewGroup viewGroupD0 = D0();
        if (viewGroupD0 != null) {
            viewGroupD0.setVisibility(0);
        }
        Group groupZ2 = Z2();
        if (groupZ2 != null) {
            groupZ2.setVisibility(0);
        }
        ViewGroup viewGroupG2 = g2();
        if (viewGroupG2 != null) {
            viewGroupG2.setVisibility(0);
        }
        View viewR1 = r1();
        if (viewR1 != null) {
            viewR1.setVisibility(0);
        }
        View viewA0 = A0();
        if (viewA0 != null) {
            viewA0.setVisibility(0);
        }
        View viewQ1 = q1();
        if (viewQ1 != null) {
            viewQ1.setVisibility(0);
        }
        ViewGroup viewGroupE0 = E0();
        if (viewGroupE0 != null) {
            viewGroupE0.setVisibility(0);
        }
        ConstraintLayout constraintLayoutN2 = n2();
        if (constraintLayoutN2 == null || (viewFindViewById = constraintLayoutN2.findViewById(R.id.message)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    @Override
    public void B(VideoSubtitleControl control) {
        Intrinsics.h(control, "control");
        this.f46946u = control;
        control.Z(com.transsion.postdetail.util.t.c(a3()), R2(), V2(), T2(), N2(), true);
        control.i0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return a0.w2(this.f47065a, ((Boolean) obj).booleanValue());
            }
        });
        control.E(com.transsion.postdetail.util.t.c(a3()), new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return a0.x2(this.f47068a, (View) obj, ((Boolean) obj2).booleanValue());
            }
        }, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return a0.y2(this.f47073a, (View) obj);
            }
        });
    }

    protected void B0(Subject subject) {
    }

    @Override
    public void C(int i10) {
        zn.d.a.n(this, i10);
    }

    public abstract boolean C0();

    public void D(DownloadBean downloadBean) {
        zn.d.a.c(this, downloadBean);
    }

    public abstract ViewGroup D0();

    @Override
    public void E(zn.c event) {
        Intrinsics.h(event, "event");
        this.M = event;
    }

    public abstract ViewGroup E0();

    public abstract View F0();

    public abstract TextView G0();

    public abstract TextView H0();

    public abstract TextView I0();

    protected void J2(boolean z10) {
        View viewF0;
        if (this.f46951z == z10) {
            return;
        }
        this.f46951z = z10;
        if (z10) {
            if (!this.A && (viewF0 = F0()) != null) {
                viewF0.setVisibility(0);
            }
            K2();
            return;
        }
        M2();
        View viewF1 = F0();
        if (viewF1 != null) {
            viewF1.setVisibility(8);
        }
    }

    protected final void K0() {
        if (j2()) {
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f46935j;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "onCompletion, showReplay", false, 4, null);
        H2();
    }

    public final void L2() {
        com.transsion.player.orplayer.f fVarH = H();
        if (fVarH == null || fVarH.isPlaying()) {
            this.f46934a0 = SystemClock.elapsedRealtime();
            this.D = com.transsion.baselib.helper.d.f42124a.d();
            com.transsion.player.orplayer.f fVarH2 = H();
            if (fVarH2 != null) {
                fVarH2.setSpeed(this.D * 2.0f);
            }
            x1();
            v1(true);
            View viewK2 = k2();
            if (viewK2 != null) {
                uf.c.k(viewK2);
            }
            String str = this.K;
            DownloadBean downloadBean = this.H;
            ij.p.a("local_video_detail", str, downloadBean != null ? downloadBean.getOps() : null, Float.valueOf(this.D));
        }
    }

    @Override
    public void M(com.transsion.player.orplayer.f orPlayer, ORPlayerView orPlayerView) {
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(orPlayerView, "orPlayerView");
        super.M(orPlayer, orPlayerView);
        jn.n nVar = this.f46947v;
        if (nVar == null) {
            Intrinsics.y("volumeControl");
            nVar = null;
        }
        nVar.e(orPlayer);
    }

    public final void M0() {
        if (this.D > 0.0f) {
            com.transsion.player.orplayer.f fVarH = H();
            if (fVarH != null) {
                fVarH.setSpeed(this.D);
            }
            View viewK2 = k2();
            if (viewK2 != null) {
                uf.c.g(viewK2);
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f46934a0;
            String str = this.K;
            DownloadBean downloadBean = this.H;
            ij.p.b("local_video_detail", jElapsedRealtime, str, downloadBean != null ? downloadBean.getOps() : null, Float.valueOf(this.D));
            this.D = 0.0f;
        }
    }

    public boolean M1() {
        return false;
    }

    public abstract ViewGroup N2();

    public abstract ImageView O0();

    protected final boolean O1() {
        Function0 function0J;
        DownloadBean downloadBean = this.H;
        return (downloadBean == null || !downloadBean.isMusic()) && (function0J = on.e0.f67859a.j()) != null && ((Boolean) function0J.invoke()).booleanValue();
    }

    public abstract ImageView O2();

    public abstract View P1();

    public abstract ProgressBar P2();

    public abstract View Q0();

    public abstract TextView Q2();

    public abstract TextView R2();

    protected final DownloadBean S0() {
        return this.H;
    }

    public abstract SimpleSubtitleView S2();

    protected final com.transsnet.downloader.manager.g T0() {
        return (com.transsnet.downloader.manager.g) this.G.getValue();
    }

    protected final void T1(boolean z10) {
        ConstraintLayout constraintLayoutN2;
        ConstraintLayout constraintLayoutN3 = n2();
        if (constraintLayoutN3 != null) {
            constraintLayoutN3.setVisibility(z10 ? 0 : 8);
        }
        if (!z10 || (constraintLayoutN2 = n2()) == null) {
            return;
        }
        constraintLayoutN2.setFocusableInTouchMode(true);
        constraintLayoutN2.requestFocus();
    }

    public abstract SimpleSubtitleView T2();

    public abstract ViewGroup U2();

    public abstract void V1();

    public abstract SimpleSubtitleView V2();

    protected final com.transsion.baseui.widget.f W0() {
        return (com.transsion.baseui.widget.f) this.U.getValue();
    }

    public void W1(boolean z10) {
    }

    public abstract TextView W2();

    public abstract TextView X2();

    protected final int Y0() {
        return this.f46942q;
    }

    public void Y1() {
        FragmentActivity activity;
        int i10;
        com.transsion.player.orplayer.f fVarH;
        View view;
        com.transsion.player.orplayer.f fVarH2 = H();
        if (fVarH2 != null && !fVarH2.isPlaying() && (fVarH = H()) != null && !fVarH.isComplete() && !N1()) {
            com.transsion.player.orplayer.f fVarH3 = H();
            if (fVarH3 != null) {
                fVarH3.play();
            }
            View view2 = this.C;
            if (view2 != null && uf.c.i(view2) && (view = this.C) != null) {
                uf.c.g(view);
            }
        }
        com.transsion.player.orplayer.f fVarH4 = H();
        if (fVarH4 != null) {
            fVarH4.setScaleMode(com.transsion.baselib.helper.d.f42124a.c());
        }
        int i11 = this.f46941p;
        LocalUiType localUiType = (i11 <= 0 || (i10 = this.f46942q) <= 0 || i10 <= i11) ? LocalUiType.LAND : LocalUiType.PORTRAIT;
        if (localUiType == LocalUiType.LAND && (activity = this.f46936k.getActivity()) != null) {
            activity.setRequestedOrientation(6);
        }
        cw.c.f58664a.a();
        F(LayerFlag.LOCAL_UI_CHANGED, localUiType);
    }

    public abstract TextView Y2();

    public void Z1() {
    }

    public abstract Group Z2();

    public void a(LocalUiType uiType) {
        zn.b bVar;
        Intrinsics.h(uiType, "uiType");
        if (!isVisible() || (bVar = this.f46945t) == null) {
            return;
        }
        bVar.a(uiType);
    }

    public void a2(View view) {
        Intrinsics.h(view, "view");
    }

    public abstract LocalUiType a3();

    @Override
    public void b(boolean z10, boolean z11) {
        if (z10) {
            A2(z11);
        } else {
            v1(z11);
        }
    }

    public View b1() {
        return zn.d.a.a(this);
    }

    public void b2(View view, boolean z10) {
        Intrinsics.h(view, "view");
        A2(true);
        String string = Utils.a().getString(z10 ? com.transsion.subtitle.R$string.subtitle_turn_on_toast : com.transsion.subtitle.R$string.subtitle_turn_off_toast);
        Intrinsics.g(string, "getString(...)");
        zn.d.a.l(this, string, 0L, 2, null);
    }

    public void b3(boolean z10) {
        try {
            Result.Companion companion = Result.INSTANCE;
            FragmentActivity activity = this.f46936k.getActivity();
            if (activity == null || activity.isDestroyed() || activity.isFinishing() || !com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_pip_enable", true)) {
                return;
            }
            cw.e eVarB = cw.e.f58665a.b();
            ORPlayerView oRPlayerViewI = I();
            ViewParent parent = oRPlayerViewI != null ? oRPlayerViewI.getParent() : null;
            Result.m453constructorimpl(eVarB.a(activity, false, z10, parent instanceof ViewGroup ? (ViewGroup) parent : null));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public void c() {
        DownloadBean downloadBean = this.H;
        if (downloadBean != null) {
            downloadBean.setPlaying(false);
        }
        SystemTimeManager systemTimeManager = this.f46944s;
        if (systemTimeManager != null) {
            systemTimeManager.c();
        }
        X0().removeCallbacksAndMessages(null);
        a1().removeCallbacksAndMessages(null);
        U0().removeCallbacksAndMessages(null);
        com.transsion.ad.strategy.b.f41175a.m(this);
        com.transsion.baselib.report.k.f42210a.t(this);
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    @Override
    public void d() {
        zn.d.a.i(this);
    }

    protected final void d2(MotionEvent motionEvent, boolean z10) {
        com.transsion.baseui.util.c cVar = com.transsion.baseui.util.c.f42332a;
        ImageView imageViewF2 = f2();
        if (cVar.a(imageViewF2 != null ? imageViewF2.getId() : 9527, 500L)) {
            return;
        }
        View view = this.B;
        if (view != null && view.getVisibility() == 0) {
            View view2 = this.B;
            if (!(view2 != null ? Intrinsics.c(view2.getTag(), 1) : false)) {
                if (yg.l.f76264a.e()) {
                    return;
                }
                com.tn.lib.widget.toast.core.h.f40484a.k(com.transsion.baseui.R$string.base_network_fail);
                return;
            } else {
                wf.a.f74274a.x("long_video_play", "video error，reload~~ from errorLayout", true);
                Fragment fragment = this.f46936k;
                LocalVideoDetailFragment localVideoDetailFragment = fragment instanceof LocalVideoDetailFragment ? (LocalVideoDetailFragment) fragment : null;
                if (localVideoDetailFragment != null) {
                    LocalVideoDetailFragment.o3(localVideoDetailFragment, false, 1, null);
                    return;
                }
                return;
            }
        }
        com.transsion.player.orplayer.f fVarH = H();
        if (fVarH != null && fVarH.isComplete()) {
            if (M1()) {
                return;
            }
            i3();
            return;
        }
        com.transsion.player.orplayer.f fVarH2 = H();
        if (fVarH2 != null && fVarH2.isPlaying()) {
            s1(motionEvent, z10);
            return;
        }
        P(false);
        u2(true);
        cw.c.f58664a.a();
        com.transsion.player.orplayer.f fVarH3 = H();
        if (fVarH3 != null) {
            fVarH3.play();
        }
    }

    @Override
    public boolean e(FloatActionType actionType) {
        FragmentActivity activity;
        Intrinsics.h(actionType, "actionType");
        DownloadBean downloadBean = this.H;
        if ((downloadBean == null || !downloadBean.isMusic()) && (activity = this.f46936k.getActivity()) != null && !activity.isDestroyed() && !activity.isFinishing()) {
            FloatActionType floatActionType = FloatActionType.ICON;
            if (actionType != floatActionType && !com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_pip_enable", true)) {
                wf.a.f74274a.c("VideoFloat", "local 设置页pip开关被关闭了", true);
                return false;
            }
            dw.a aVarV0 = V0();
            if (aVarV0 != null) {
                if (actionType != floatActionType && !aVarV0.f().isPlaying()) {
                    wf.a.f74274a.c("VideoFloat-pip", "local 视频暂停，无需触发画中画", true);
                    return false;
                }
                cw.e.a aVar = cw.e.f58665a;
                if (aVar.b().c()) {
                    v1(true);
                    wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", "local 当前可用画中画，使用画中画播放", false, 4, null);
                    aVar.b().d(activity, aVarV0, actionType, a3() == LocalUiType.LAND);
                    return true;
                }
                cw.b.f58659a.c().e(activity, aVarV0, actionType == floatActionType, a3() == LocalUiType.LAND, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return a0.G2(this.f47025a, ((Boolean) obj).booleanValue());
                    }
                }, new f());
            }
        }
        return false;
    }

    protected final String e1() {
        return this.I;
    }

    public void f(boolean z10, String str) {
        zn.d.a.h(this, z10, str);
    }

    public abstract ImageView f2();

    @Override
    public void g() {
        J2(false);
        C2(1);
        this.f46949x = "";
        this.f46950y = true;
        v1(true);
        Group groupZ2 = Z2();
        if (groupZ2 != null) {
            groupZ2.setVisibility(0);
        }
        w1(true);
    }

    protected final View g1() {
        return this.C;
    }

    public abstract ViewGroup g2();

    public void h(String subjectId, String resourceId) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(resourceId, "resourceId");
        this.K = subjectId;
        this.L = true;
        FragmentActivity activity = this.f46936k.getActivity();
        if (activity != null) {
            o1().i().j(activity, new e(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return a0.K1(this.f47062a, (List) obj);
                }
            }));
        }
    }

    public abstract TextView h2();

    public abstract TextView h3();

    @Override
    public void i(String content, long j10) {
        Intrinsics.h(content, "content");
        h1 h1Var = this.f46948w;
        if (h1Var != null) {
            h1Var.h(content, j10);
        }
    }

    protected final String i1() {
        return this.J;
    }

    public abstract View i2();

    public void i3() {
        zn.b bVar = this.f46945t;
        if (bVar != null) {
            bVar.b(this.H);
        }
        View view = this.C;
        if (view != null) {
            uf.c.g(view);
        }
        this.E = 0L;
        com.transsion.player.orplayer.f fVarH = H();
        if (fVarH != null) {
            fVarH.seekTo(0L);
        }
        com.transsion.player.orplayer.f fVarH2 = H();
        if (fVarH2 != null) {
            fVarH2.play();
        }
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.f fVarH;
        com.transsion.player.orplayer.e.a.b(this);
        View view = this.C;
        if (view != null) {
            uf.c.g(view);
        }
        if (this.f46937l > 0 || (fVarH = H()) == null) {
            return;
        }
        long duration = fVarH.getDuration();
        this.f46937l = duration;
        if (duration > 0) {
            f3(0L, duration);
        }
    }

    public boolean isVisible() {
        ConstraintLayout constraintLayoutN2 = n2();
        return constraintLayoutN2 != null && constraintLayoutN2.getVisibility() == 0;
    }

    public void j(boolean z10) {
        zn.d.a.k(this, z10);
    }

    public abstract View j1();

    public abstract FrameLayout j3();

    public void k(DownloadBean downloadBean, String pageFrom, boolean z10) {
        Long duration;
        Long duration2;
        Intrinsics.h(pageFrom, "pageFrom");
        this.H = downloadBean;
        o1().e().q(downloadBean);
        this.I = pageFrom;
        if (((downloadBean == null || (duration2 = downloadBean.getDuration()) == null) ? 0L : duration2.longValue()) > 30000) {
            f3(0L, (downloadBean == null || (duration = downloadBean.getDuration()) == null) ? 0L : duration.longValue());
        }
        View viewP1 = P1();
        if (viewP1 != null) {
            viewP1.setVisibility(O1() ? 0 : 8);
        }
        if (downloadBean != null) {
            downloadBean.setPlaying(true);
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f46935j;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "updateInfo,name = " + (downloadBean != null ? downloadBean.getName() : null) + ", epse = " + (downloadBean != null ? Integer.valueOf(downloadBean.getEpse()) : null), false, 4, null);
        g3();
    }

    protected final String k1() {
        return this.K;
    }

    public abstract View k2();

    public abstract TextView k3();

    @Override
    public void l(Map progress) {
        Intrinsics.h(progress, "progress");
        SecondariesSeekBar secondariesSeekBarQ2 = q2();
        if (secondariesSeekBarQ2 != null) {
            secondariesSeekBarQ2.setSecondariesProgress(progress);
        }
    }

    protected final SystemTimeManager l1() {
        return this.f46944s;
    }

    public void m(LocalUiType localUiType) {
        zn.d.a.f(this, localUiType);
    }

    protected final String m1() {
        return this.f46935j;
    }

    public abstract ViewStub m3();

    @Override
    public void n(zn.b event) {
        Intrinsics.h(event, "event");
        this.f46945t = event;
    }

    protected final long n1() {
        return this.f46937l;
    }

    public abstract ConstraintLayout n2();

    public abstract ViewStub n3();

    @Override
    public void o() {
        com.transsion.player.orplayer.f fVarH;
        if (cw.c.f58664a.c(H()) || (fVarH = H()) == null) {
            return;
        }
        fVarH.pause();
    }

    protected final LocalVideoDetailViewModel o1() {
        return (LocalVideoDetailViewModel) this.F.getValue();
    }

    @Override
    public void onAdClick(AdPlans adPlans) {
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", "onAdClick stop auto pip", false, 4, null);
        b3(false);
        ConstraintLayout constraintLayoutN2 = n2();
        if (constraintLayoutN2 != null) {
            constraintLayoutN2.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    a0.U1(this.f47075a);
                }
            }, 3000L);
        }
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.player.orplayer.e.a.c(this, eVar);
    }

    @Override
    public void onBackgroundStatusChange(boolean z10) {
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onCompletion(gn.e eVar) {
        com.transsion.player.orplayer.e.a.e(this, eVar);
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f46935j;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "onCompletion, uiType = " + a3(), false, 4, null);
        if (M1()) {
            u2(false);
        } else {
            K0();
        }
    }

    @Override
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.e.a.g(this, z10);
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.e.a.h(this, z10);
    }

    @Override
    public void onLoadingBegin(gn.e eVar) {
        this.f46950y = false;
        J2(true);
        View view = this.B;
        if (view != null) {
            uf.c.g(view);
        }
        w1(false);
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        J2(false);
        U0().removeCallbacksAndMessages(null);
        this.f46950y = false;
        View view = this.B;
        if (view != null) {
            uf.c.g(view);
        }
        w1(false);
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLoopingStart() {
        com.transsion.player.orplayer.e.a.o(this);
    }

    @Override
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.e.a.p(this, str);
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.E = 0L;
        Integer errorCode = errorInfo.getErrorCode();
        if (errorCode != null && errorCode.intValue() == 537067524) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String TAG = this.f46935j;
            Intrinsics.g(TAG, "TAG");
            wf.a.C0922a.f(c0922a, TAG, "--onPlayError，net time out ,", false, 4, null);
            if (yg.l.f76264a.e()) {
                g();
            } else {
                U0().postDelayed(this.Z, 500L);
            }
        }
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        com.transsion.player.orplayer.e.a.t(this, eVar);
    }

    @Override
    public void onPlayerReset() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f46935j;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "onPlayerReset", false, 4, null);
        this.f46950y = false;
        this.f46937l = 0L;
        this.E = 0L;
    }

    @Override
    public void onPrepare(gn.e eVar) {
        com.transsion.player.orplayer.e.a.w(this, eVar);
        this.E = 0L;
    }

    public void onProgress(long j10, gn.e eVar) {
        e3(j10);
        if (a3() == LocalUiType.MIDDLE) {
            ImageView imageViewF2 = f2();
            if (imageViewF2 != null ? Intrinsics.c(imageViewF2.getTag(), Boolean.FALSE) : false) {
                u2(true);
            }
        }
        if (this.f46951z) {
            J2(false);
        }
        X1(j10);
        VideoSubtitleControl videoSubtitleControl = this.f46946u;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.R(j10);
        }
    }

    @Override
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.e.a.A(this);
        if (a3() == LocalUiType.MIDDLE) {
            ImageView imageViewF2 = f2();
            if (imageViewF2 != null ? Intrinsics.c(imageViewF2.getTag(), Boolean.FALSE) : false) {
                u2(true);
            }
        }
    }

    @Override
    public void onSetDataSource() {
        com.transsion.player.orplayer.e.a.B(this);
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.C(this, i10);
    }

    @Override
    public void onTracksChange(qn.c cVar) {
        com.transsion.player.orplayer.e.a.D(this, cVar);
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.E(this, i10);
    }

    @Override
    public void onVideoPause(gn.e eVar) {
        b3(false);
        u2(false);
        if (!N1()) {
            B2(this, false, 1, null);
        }
        VideoSubtitleControl videoSubtitleControl = this.f46946u;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.Q();
        }
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        com.transsion.player.orplayer.e.a.H(this, i10, i11);
        if ((i10 <= 0 || this.f46941p == i10) && (i11 <= 0 || this.f46942q == i11)) {
            return;
        }
        this.f46942q = i11;
        this.f46941p = i10;
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        b3(true);
        u2(true);
        v1(false);
        VideoSubtitleControl videoSubtitleControl = this.f46946u;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.S();
        }
        J2(false);
        this.O = false;
        View view = this.C;
        if (view != null) {
            uf.c.g(view);
        }
        J0();
    }

    @Override
    public void onViewPause() {
        zn.d.a.g(this);
    }

    @Override
    public void onViewResume() {
        com.transsion.player.orplayer.f fVarH;
        if (J() || !yg.l.f76264a.e() || cw.c.f58664a.d() || N1() || (fVarH = H()) == null) {
            return;
        }
        fVarH.play();
    }

    @Override
    public void p(float f10) {
        zn.d.a.o(this, f10);
        VideoSubtitleControl videoSubtitleControl = this.f46946u;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.r0(f10);
        }
    }

    protected final int p1() {
        return this.f46941p;
    }

    public abstract View p2();

    @Override
    public void q(String resourceId, String subjectId, String postId, boolean z10, boolean z11) {
        Intrinsics.h(resourceId, "resourceId");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(postId, "postId");
        this.J = resourceId;
        this.K = subjectId;
        O(postId);
        FragmentActivity activity = this.f46936k.getActivity();
        if (activity != null) {
            o1().g().j(activity, new e(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return a0.y1(this.f47114a, (Subject) obj);
                }
            }));
        }
    }

    public abstract View q1();

    public abstract SecondariesSeekBar q2();

    @Override
    public void r(int i10, int i11) {
        this.f46942q = i11;
        this.f46941p = i10;
    }

    public abstract View r1();

    protected final void r2(DownloadBean nextVideoBean, boolean z10) {
        Intrinsics.h(nextVideoBean, "nextVideoBean");
        if (z10 && nextVideoBean.isCompleted() && !nextVideoBean.isFileExist()) {
            FragmentActivity activity = this.f46936k.getActivity();
            if (activity != null) {
                LocalVideoNotExistUtil.f57684a.v(activity, nextVideoBean, -1);
                return;
            }
            return;
        }
        View view = this.C;
        if (view != null) {
            uf.c.g(view);
        }
        DownloadBean downloadBean = this.H;
        if (downloadBean != null) {
            downloadBean.setPlaying(false);
        }
        o1().f().q(this.H);
        this.O = true;
        SecondariesSeekBar secondariesSeekBarQ2 = q2();
        if (secondariesSeekBarQ2 != null) {
            secondariesSeekBarQ2.setProgress(0L);
        }
        e3(0L);
        if (isVisible()) {
            zn.c cVar = this.M;
            if (cVar != null) {
                cVar.a(nextVideoBean, !z10);
            }
            com.transsion.player.orplayer.f fVarH = H();
            if (fVarH != null) {
                fVarH.clearScreen();
            }
            com.transsion.player.orplayer.f fVarH2 = H();
            if (fVarH2 != null) {
                fVarH2.stop();
            }
            com.transsion.player.orplayer.f fVarH3 = H();
            if (fVarH3 != null) {
                fVarH3.reset();
            }
        }
        this.N = false;
        t();
        String postId = nextVideoBean.getPostId();
        if (postId == null) {
            postId = "";
        }
        O(postId);
        String subjectId = nextVideoBean.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        this.K = subjectId;
        this.H = nextVideoBean;
        nextVideoBean.setPlaying(true);
        l(new LinkedHashMap());
        boolean z11 = nextVideoBean.getStatus() != 5;
        com.transsion.player.orplayer.e.a.j(this, null, 1, null);
        if (isVisible()) {
            com.transsnet.downloader.util.h.f57716a.d("1");
            if (z11) {
                zn.c cVar2 = this.M;
                if (cVar2 != null) {
                    cVar2.b(nextVideoBean);
                    return;
                }
                return;
            }
            wf.a.f74274a.c("long_video_play", "series playerSetDataSource, subjectId = " + nextVideoBean.getSubjectId() + ",resourceId = " + nextVideoBean.getResourceId() + ", path = " + nextVideoBean.getPath(), true);
            com.transsion.player.orplayer.f fVarH4 = H();
            if (fVarH4 != null) {
                fVarH4.clearScreen();
            }
            com.transsion.player.orplayer.f fVarH5 = H();
            if (fVarH5 != null) {
                DownloadBean downloadBean2 = this.H;
                String resourceId = downloadBean2 != null ? downloadBean2.getResourceId() : null;
                String path = nextVideoBean.getPath();
                gn.e eVar = new gn.e(resourceId, path == null ? "" : path, 0, null, c1(), 12, null);
                MusicFloatManager.a aVar = MusicFloatManager.f42282h;
                aVar.b().C(eVar.e());
                aVar.b().B(eVar.h());
                fVarH5.setDataSource(eVar);
            }
            com.transsion.player.orplayer.f fVarH6 = H();
            if (fVarH6 != null) {
                fVarH6.prepare();
            }
        }
    }

    public void s(View rootView, LocalUiType uiType) {
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(uiType, "uiType");
        this.L = false;
        this.N = false;
        T1(false);
        com.transsion.baselib.report.k.f42210a.g(this);
        View viewF0 = F0();
        if (viewF0 != null) {
            viewF0.setVisibility(8);
        }
        A1();
        J1();
        L1();
        I1();
        z1();
        com.transsion.ad.strategy.b.f41175a.c(this);
    }

    public void s1(MotionEvent motionEvent, boolean z10) {
        this.P = false;
        P(true);
        u2(false);
        com.transsion.player.orplayer.f fVarH = H();
        if (fVarH != null) {
            fVarH.pause();
        }
        Fragment fragment = this.f46936k;
        LocalVideoDetailFragment localVideoDetailFragment = fragment instanceof LocalVideoDetailFragment ? (LocalVideoDetailFragment) fragment : null;
        if (localVideoDetailFragment != null) {
            localVideoDetailFragment.Z2();
        }
        J2(false);
    }

    public final void s2(String str) {
        ImageView imageView;
        FrameLayout frameLayoutJ3 = j3();
        if (frameLayoutJ3 == null || (imageView = (ImageView) frameLayoutJ3.findViewById(R$id.id_local_video_cover)) == null) {
            imageView = new ImageView(this.f46936k.requireContext());
            FrameLayout frameLayoutJ4 = j3();
            if (frameLayoutJ4 != null) {
                frameLayoutJ4.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
            }
        }
        K(imageView);
        ImageView imageViewG = G();
        if (imageViewG != null) {
            int iF = com.transsion.core.utils.e.f();
            ni.f.a aVar = ni.f.f67269a;
            if (str == null) {
                str = "";
            }
            ni.a.a(imageViewG).load(ni.f.a.e(aVar, str, iF, false, false, 12, null)).into(imageViewG);
        }
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
    }

    @Override
    public void t() {
        h1 h1Var = this.f46948w;
        if (h1Var != null) {
            h1Var.d();
        }
    }

    protected final void t2(int i10) {
        this.f46942q = i10;
    }

    @Override
    public void u(boolean z10) {
        FragmentActivity activity;
        dw.a aVarV0;
        zn.d.a.d(this, z10);
        if (!z10 || (activity = this.f46936k.getActivity()) == null || activity.isDestroyed() || activity.isFinishing() || (aVarV0 = V0()) == null || Build.VERSION.SDK_INT < 31) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", "onPictureInPictureModeChanged local--- updateData", false, 4, null);
        cw.e.f58665a.b().h(activity, aVarV0);
    }

    public void u2(boolean z10) {
        W1(z10);
        ImageView imageViewF2 = f2();
        if (imageViewF2 != null) {
            imageViewF2.setTag(Boolean.valueOf(z10));
        }
        if (z10) {
            ImageView imageViewF3 = f2();
            if (imageViewF3 != null) {
                imageViewF3.setImageResource(R$mipmap.icon_player_pause);
                return;
            }
            return;
        }
        ImageView imageViewF4 = f2();
        if (imageViewF4 != null) {
            imageViewF4.setImageResource(R$mipmap.icon_player_play);
        }
    }

    @Override
    public void updateTitle(String title) {
        Intrinsics.h(title, "title");
        TextView textViewW2 = W2();
        if (textViewW2 != null) {
            textViewW2.setText(title);
        }
    }

    public void v(String str, String str2) {
        zn.d.a.j(this, str, str2);
    }

    protected final void v1(boolean z10) {
        if (com.blankj.utilcode.util.c.j()) {
            if (z10) {
                x1();
                return;
            }
            com.transsion.player.orplayer.f fVarH = H();
            if (fVarH == null || !fVarH.isPlaying()) {
                return;
            }
            X0().removeCallbacks(this.V);
            X0().postDelayed(this.V, 3000L);
        }
    }

    protected final void v2(String str) {
        Intrinsics.h(str, "<set-?>");
        this.K = str;
    }

    public void w(boolean z10) {
        com.transsion.player.orplayer.f fVarH;
        if (!z10) {
            U0().postDelayed(this.Z, 1000L);
            return;
        }
        w1(false);
        this.f46950y = false;
        View view = this.B;
        if (view != null && view.getVisibility() == 0 && !J() && (fVarH = H()) != null) {
            fVarH.play();
        }
        View view2 = this.B;
        if (view2 != null) {
            uf.c.g(view2);
        }
    }

    @Override
    public void x(PostSubjectItem postSubjectItem) {
        zn.d.a.m(this, postSubjectItem);
    }

    @Override
    public void y(String speed) {
        Intrinsics.h(speed, "speed");
        this.f46949x = speed;
    }

    @Override
    public void z(View view, boolean z10) {
        zn.d.a.b(this, view, z10);
    }

    protected final void z0() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String TAG = this.f46935j;
        Intrinsics.g(TAG, "TAG");
        wf.a.C0922a.f(c0922a, TAG, "addLandSurface 宽:" + this.f46941p + ",高:" + this.f46942q, false, 4, null);
        ORPlayerView oRPlayerViewI = I();
        if (oRPlayerViewI != null) {
            m2(oRPlayerViewI);
        }
        FrameLayout frameLayoutJ3 = j3();
        if (frameLayoutJ3 != null) {
            frameLayoutJ3.addView(I(), 0, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    protected final void z2(int i10) {
        this.f46941p = i10;
    }
}
