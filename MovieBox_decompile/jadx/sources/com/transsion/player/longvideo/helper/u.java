package com.transsion.player.longvideo.helper;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLTextView;
import com.transsion.mb.config.manager.ConfigBean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class u {

    public static final a f46137l = new a(null);

    private final mn.j f46138a;

    private final Function0 f46139b;

    private b f46140c;

    private mn.e f46141d;

    private boolean f46142e;

    private boolean f46143f;

    private boolean f46144g;

    private final Handler f46145h;

    private final Handler f46146i;

    private final Handler f46147j;

    private final Lazy f46148k;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public u(mn.j viewBinding, Function0 continuePlaCallback) {
        String value;
        Object objM453constructorimpl;
        Intrinsics.h(viewBinding, "viewBinding");
        Intrinsics.h(continuePlaCallback, "continuePlaCallback");
        this.f46138a = viewBinding;
        this.f46139b = continuePlaCallback;
        this.f46145h = new Handler(Looper.getMainLooper());
        this.f46146i = new Handler(Looper.getMainLooper());
        this.f46147j = new Handler(Looper.getMainLooper());
        this.f46148k = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Long.valueOf(u.A());
            }
        });
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "sa_data_operator_config", false, 2, null);
        if (configBeanD != null && (value = configBeanD.getValue()) != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                this.f46140c = (b) com.blankj.utilcode.util.o.d(value, b.class);
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Result.m452boximpl(objM453constructorimpl);
        }
        b bVar = this.f46140c;
        if (bVar != null) {
            mn.f fVar = this.f46138a.f66585o.f66615s;
            fVar.f66542e.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    u.y(this.f46132a, view);
                }
            });
            fVar.f66540c.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    u.z(this.f46133a, view);
                }
            });
            String strL = bVar.l();
            if (strL != null) {
                fVar.f66544g.setText(strL);
            }
            String strK = bVar.k();
            if (strK != null) {
                fVar.f66543f.setText(strK);
            }
            String strA = bVar.a();
            if (strA != null) {
                fVar.f66541d.setText(strA);
            }
            String strB = bVar.b();
            if (strB != null) {
                ni.f.a aVar = ni.f.f67269a;
                Context context = fVar.f66539b.getContext();
                Intrinsics.g(context, "getContext(...)");
                ni.f.b bVarC = aVar.m(context).g(strB).m(lj.a.b(16)).c(lj.a.b(16));
                AppCompatImageView ivMore = fVar.f66539b;
                Intrinsics.g(ivMore, "ivMore");
                bVarC.d(ivMore);
            }
            mn.f fVar2 = this.f46138a.f66586p.f66635m;
            fVar2.f66542e.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    u.w(this.f46134a, view);
                }
            });
            fVar2.f66540c.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    u.x(this.f46135a, view);
                }
            });
            String strL2 = bVar.l();
            if (strL2 != null) {
                fVar2.f66544g.setText(strL2);
            }
            String strK2 = bVar.k();
            if (strK2 != null) {
                fVar2.f66543f.setText(strK2);
            }
            String strA2 = bVar.a();
            if (strA2 != null) {
                fVar2.f66541d.setText(strA2);
            }
            String strB2 = bVar.b();
            if (strB2 != null) {
                ni.f.a aVar2 = ni.f.f67269a;
                Context context2 = fVar2.f66539b.getContext();
                Intrinsics.g(context2, "getContext(...)");
                ni.f.b bVarC2 = aVar2.m(context2).g(strB2).m(lj.a.b(16)).c(lj.a.b(16));
                AppCompatImageView ivMore2 = fVar2.f66539b;
                Intrinsics.g(ivMore2, "ivMore");
                bVarC2.d(ivMore2);
            }
        }
    }

    public static final long A() {
        String value;
        Long lX;
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "sa_data_switch", false, 2, null);
        if (configBeanD == null || (value = configBeanD.getValue()) == null || (lX = StringsKt.x(value)) == null) {
            return 720L;
        }
        return lX.longValue();
    }

    private final void B() {
        String strH;
        t();
        wf.a.C0922a c0922a = wf.a.f74274a;
        b bVar = this.f46140c;
        wf.a.C0922a.f(c0922a, "LongVodMobileData", "onOperatorClick link:" + (bVar != null ? bVar.h() : null), false, 4, null);
        b bVar2 = this.f46140c;
        if (bVar2 != null && (strH = bVar2.h()) != null) {
            ij.k.h(strH, null, 1, null);
        }
        com.transsion.baselib.report.launch.b.f42221a.b().putLong("key_video_operator_last_open_time", System.currentTimeMillis());
    }

    private final void F(boolean z10) {
        try {
            Result.Companion companion = Result.INSTANCE;
            wf.a.C0922a.f(wf.a.f74274a, "LongVodMobileData", "showOperatorLayout", false, 4, null);
            if (z10) {
                BLLinearLayout root = this.f46138a.f66585o.f66615s.getRoot();
                Intrinsics.g(root, "getRoot(...)");
                uf.c.k(root);
            } else {
                BLLinearLayout root2 = this.f46138a.f66586p.f66635m.getRoot();
                Intrinsics.g(root2, "getRoot(...)");
                uf.c.k(root2);
            }
            b bVar = this.f46140c;
            int iJ = bVar != null ? bVar.j() : 10;
            this.f46147j.removeCallbacksAndMessages(null);
            Result.m453constructorimpl(Boolean.valueOf(this.f46147j.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    u.G(this.f46136a);
                }
            }, ((long) iJ) * 1000)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final void G(u uVar) {
        try {
            Result.Companion companion = Result.INSTANCE;
            uVar.t();
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void k() {
        ConstraintLayout root;
        mn.e eVar = this.f46141d;
        if (eVar != null && (root = eVar.getRoot()) != null && root.getVisibility() == 0) {
            wf.a.C0922a.v(wf.a.f74274a, "LongVodMobileData", "checkFullscreenPageShowOperator, mobile ui show~~", false, 4, null);
            return;
        }
        if (this.f46143f) {
            wf.a.C0922a.v(wf.a.f74274a, "LongVodMobileData", "checkFullscreenPageShowOperator shown return", false, 4, null);
            return;
        }
        if (!u()) {
            wf.a.C0922a.v(wf.a.f74274a, "LongVodMobileData", "checkFullscreenPageShowOperator intercept--", false, 4, null);
            return;
        }
        this.f46143f = true;
        b bVar = this.f46140c;
        int iD = bVar != null ? bVar.d() : 3;
        wf.a.C0922a.v(wf.a.f74274a, "LongVodMobileData", "checkFullscreenPageShowOperator delay show:" + iD + "s", false, 4, null);
        this.f46145h.postDelayed(new Runnable() {
            @Override
            public final void run() {
                u.l(this.f46124a);
            }
        }, ((long) iD) * 1000);
    }

    public static final void l(u uVar) {
        uVar.F(true);
    }

    private final void m() {
        if (this.f46144g) {
            return;
        }
        if (this.f46142e) {
            wf.a.C0922a.v(wf.a.f74274a, "LongVodMobileData", "checkMiddlePageShowOperator shown return", false, 4, null);
            return;
        }
        if (!u()) {
            wf.a.C0922a.v(wf.a.f74274a, "LongVodMobileData", "checkMiddlePageShowOperator config--", false, 4, null);
            return;
        }
        this.f46142e = true;
        b bVar = this.f46140c;
        int i10 = bVar != null ? bVar.i() : 3;
        wf.a.C0922a.v(wf.a.f74274a, "LongVodMobileData", "checkMiddlePageShowOperator delay show:" + i10 + "s", false, 4, null);
        this.f46146i.postDelayed(new Runnable() {
            @Override
            public final void run() {
                u.n(this.f46122a);
            }
        }, ((long) i10) * 1000);
    }

    public static final void n(u uVar) {
        uVar.F(false);
    }

    private final void o() {
        if (this.f46144g) {
            k();
        } else {
            m();
        }
    }

    private final long p() {
        return ((Number) this.f46148k.getValue()).longValue();
    }

    public static final void r(u uVar, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "LongVodMobileData", "click-- play with mobile data", false, 4, null);
        nn.a.f67319a.c(true);
        uVar.f46139b.invoke();
        uVar.o();
    }

    public static final void s(u uVar, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "LongVodMobileData", "click-- page openDeeplink", false, 4, null);
        uVar.B();
    }

    private final void t() {
        wf.a.C0922a.f(wf.a.f74274a, "LongVodMobileData", "hideOperatorLayout", false, 4, null);
        BLLinearLayout root = this.f46138a.f66585o.f66615s.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.g(root);
        BLLinearLayout root2 = this.f46138a.f66586p.f66635m.getRoot();
        Intrinsics.g(root2, "getRoot(...)");
        uf.c.g(root2);
    }

    private final boolean u() {
        b bVar = this.f46140c;
        if (bVar != null) {
            String strH = bVar != null ? bVar.h() : null;
            if (strH != null && strH.length() != 0) {
                long jCurrentTimeMillis = System.currentTimeMillis() - com.transsion.baselib.report.launch.b.f42221a.b().getLong("key_video_operator_last_open_time", 0L);
                b bVar2 = this.f46140c;
                boolean z10 = jCurrentTimeMillis >= ((long) ((bVar2 != null ? bVar2.c() : 0) * TimeConstants.HOUR));
                wf.a.f74274a.c("LongVodMobileData", "isShowDataOperator time :" + z10, true);
                return z10;
            }
        }
        wf.a.C0922a.f(wf.a.f74274a, "LongVodMobileData", "isShowDataOperator config is null", false, 4, null);
        return false;
    }

    public static final void w(u uVar, View view) {
        uVar.t();
    }

    public static final void x(u uVar, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "LongVodMobileData", "click-- float openDeeplink", false, 4, null);
        uVar.B();
    }

    public static final void y(u uVar, View view) {
        uVar.t();
    }

    public static final void z(u uVar, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "LongVodMobileData", "click-- float openDeeplink", false, 4, null);
        uVar.B();
    }

    public final void C(boolean z10) {
        this.f46144g = z10;
        t();
        if (z10) {
            this.f46146i.removeCallbacksAndMessages(null);
            wf.a.C0922a.v(wf.a.f74274a, "LongVodMobileData", "onScreenChange enter full", false, 4, null);
            k();
        } else {
            this.f46145h.removeCallbacksAndMessages(null);
            wf.a.C0922a.v(wf.a.f74274a, "LongVodMobileData", "onScreenChange exit full to middle page", false, 4, null);
            m();
        }
    }

    public final void D() {
        wf.a.C0922a.f(wf.a.f74274a, "LongVodMobileData", "onVideoStart", false, 4, null);
        o();
    }

    public final void E() {
        ConstraintLayout root;
        mn.e eVar = this.f46141d;
        if (eVar == null || (root = eVar.getRoot()) == null) {
            return;
        }
        uf.c.g(root);
    }

    public final void q() {
        BLTextView bLTextView;
        BLTextView bLTextView2;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        mn.e eVar;
        AppCompatTextView appCompatTextView3;
        BLTextView bLTextView3;
        AppCompatTextView appCompatTextView4;
        ConstraintLayout root;
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c("LongVodMobileData", "onPrepare2PlayVideo, is mobile , pause video. show layout", true);
        if (this.f46141d == null) {
            this.f46141d = mn.e.a(this.f46138a.D.inflate());
        }
        com.transsion.baselib.report.launch.b.f42221a.b().putLong("key_mobile_data_switch_time", System.currentTimeMillis());
        mn.e eVar2 = this.f46141d;
        if (eVar2 != null && (root = eVar2.getRoot()) != null) {
            uf.c.k(root);
        }
        mn.e eVar3 = this.f46141d;
        if (eVar3 != null) {
            if (eVar3 != null && (appCompatTextView4 = eVar3.f66536d) != null) {
                uf.c.g(appCompatTextView4);
            }
            mn.e eVar4 = this.f46141d;
            if (eVar4 != null && (bLTextView3 = eVar4.f66534b) != null) {
                uf.c.g(bLTextView3);
            }
            if (u()) {
                wf.a.C0922a.f(c0922a, "LongVodMobileData", "mobile data layout, show operator ui--------", false, 4, null);
                b bVar = this.f46140c;
                if (bVar != null) {
                    String strG = bVar.g();
                    if (strG != null && (eVar = this.f46141d) != null && (appCompatTextView3 = eVar.f66537e) != null) {
                        appCompatTextView3.setText(strG);
                    }
                    String strF = bVar.f();
                    if (strF != null) {
                        mn.e eVar5 = this.f46141d;
                        if (eVar5 != null && (appCompatTextView2 = eVar5.f66536d) != null) {
                            appCompatTextView2.setText(strF);
                        }
                        mn.e eVar6 = this.f46141d;
                        if (eVar6 != null && (appCompatTextView = eVar6.f66536d) != null) {
                            uf.c.k(appCompatTextView);
                        }
                    }
                    String strE = bVar.e();
                    if (strE != null) {
                        mn.e eVar7 = this.f46141d;
                        if (eVar7 != null && (bLTextView2 = eVar7.f66534b) != null) {
                            bLTextView2.setText(strE);
                        }
                        mn.e eVar8 = this.f46141d;
                        if (eVar8 != null && (bLTextView = eVar8.f66534b) != null) {
                            uf.c.k(bLTextView);
                        }
                    }
                }
            }
            eVar3.f66535c.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    u.r(this.f46126a, view);
                }
            });
            BLTextView longVdTvOperator = eVar3.f66534b;
            Intrinsics.g(longVdTvOperator, "longVdTvOperator");
            longVdTvOperator.setVisibility(u() ? 0 : 8);
            eVar3.f66534b.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    u.s(this.f46128a, view);
                }
            });
        }
    }

    public final boolean v() {
        long j10 = 60;
        return System.currentTimeMillis() - com.transsion.baselib.report.launch.b.f42221a.b().getLong("key_mobile_data_switch_time", 0L) >= ((p() * j10) * j10) * ((long) 1000);
    }
}
