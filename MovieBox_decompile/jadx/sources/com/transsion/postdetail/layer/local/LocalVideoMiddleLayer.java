package com.transsion.postdetail.layer.local;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.widget.ViewPager2;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.hisavana.common.bean.TAdErrorCode;
import com.tn.lib.view.SecondariesSeekBar;
import com.tn.lib.widget.R$mipmap;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$string;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.fragment.LocalVideoMiddleSeriesListFragment;
import com.transsion.postdetail.ui.view.LocalVideoMiddleHeaderView;
import com.transsion.publish.view.PublishStateView;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsnet.downloader.manager.DownloadEsHelper;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class LocalVideoMiddleLayer extends a0 {

    public static final a f46920l0 = new a(null);

    private final Fragment f46921b0;

    private wn.w f46922c0;

    private w0 f46923d0;

    private long f46924e0;

    private LocalVideoMiddleSeriesListFragment f46925f0;

    private zm.e f46926g0;

    private boolean f46927h0;

    private boolean f46928i0;

    private BiddingInterstitialManager f46929j0;

    private final b f46930k0;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends oh.a {
        b() {
        }

        public static final void y(LocalVideoMiddleLayer localVideoMiddleLayer) {
            LocalVideoMiddleLayer.F3(localVideoMiddleLayer, false, 1, null);
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            LocalVideoMiddleLayer.F3(LocalVideoMiddleLayer.this, false, 1, null);
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            BiddingInterstitialManager biddingInterstitialManager;
            super.j(biddingIntermediateMaterialBean);
            FragmentActivity activity = LocalVideoMiddleLayer.this.z3().getActivity();
            if (activity == null || (biddingInterstitialManager = LocalVideoMiddleLayer.this.f46929j0) == null) {
                return;
            }
            AbsAdBidding.O0(biddingInterstitialManager, activity, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            ConstraintLayout root;
            super.m(biddingIntermediateMaterialBean);
            com.transsion.baselib.report.launch.b.f42221a.b().putLong("show_LocalVideoBackInterstitialV2Scene_timestamp", System.currentTimeMillis());
            BiddingInterstitialManager biddingInterstitialManager = LocalVideoMiddleLayer.this.f46929j0;
            if (biddingInterstitialManager != null) {
                biddingInterstitialManager.U();
            }
            wn.w wVar = LocalVideoMiddleLayer.this.f46922c0;
            if (wVar == null || (root = wVar.getRoot()) == null) {
                return;
            }
            final LocalVideoMiddleLayer localVideoMiddleLayer = LocalVideoMiddleLayer.this;
            root.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    LocalVideoMiddleLayer.b.y(localVideoMiddleLayer);
                }
            }, 200L);
        }

        @Override
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            LocalVideoMiddleLayer.F3(LocalVideoMiddleLayer.this, false, 1, null);
        }
    }

    public static final class c implements androidx.p009lifecycle.f {
        c() {
        }

        @Override
        public void onCreate(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.a(this, uVar);
        }

        @Override
        public void onDestroy(androidx.p009lifecycle.u owner) {
            LocalVideoMiddleHeaderView localVideoMiddleHeaderView;
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.b(this, owner);
            BiddingInterstitialManager biddingInterstitialManager = LocalVideoMiddleLayer.this.f46929j0;
            if (biddingInterstitialManager != null) {
                biddingInterstitialManager.U();
            }
            wn.w wVar = LocalVideoMiddleLayer.this.f46922c0;
            if (wVar == null || (localVideoMiddleHeaderView = wVar.f74634u) == null) {
                return;
            }
            localVideoMiddleHeaderView.destroy();
        }

        @Override
        public void onPause(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.c(this, uVar);
        }

        @Override
        public void onResume(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.d(this, uVar);
        }

        @Override
        public void onStart(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.e(this, uVar);
        }

        @Override
        public void onStop(androidx.p009lifecycle.u uVar) {
            androidx.p009lifecycle.e.f(this, uVar);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalVideoMiddleLayer(Fragment fragment) {
        super(fragment);
        Intrinsics.h(fragment, "fragment");
        this.f46921b0 = fragment;
        this.f46930k0 = new b();
    }

    private final w0 A3() {
        wn.w wVar;
        ViewStub viewStub;
        View viewInflate;
        if (this.f46923d0 == null && (wVar = this.f46922c0) != null && (viewStub = wVar.T) != null && (viewInflate = viewStub.inflate()) != null) {
            wn.v vVarA = wn.v.a(viewInflate);
            Intrinsics.g(vVarA, "bind(...)");
            this.f46923d0 = new w0(vVarA);
        }
        return this.f46923d0;
    }

    private final void B3() {
        TextView textView;
        wn.w wVar = this.f46922c0;
        if (wVar == null || (textView = wVar.f74637x) == null) {
            return;
        }
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LocalVideoMiddleLayer.C3(this.f47115a, view);
            }
        });
    }

    public static final void C3(LocalVideoMiddleLayer localVideoMiddleLayer, View view) {
        if (view.isSelected()) {
            view.setSelected(false);
            localVideoMiddleLayer.I3(false);
            DownloadBean downloadBeanS0 = localVideoMiddleLayer.S0();
            if (downloadBeanS0 != null) {
                localVideoMiddleLayer.T0().F(downloadBeanS0);
                return;
            }
            return;
        }
        if (!yg.l.f76264a.e()) {
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.base_network_fail);
            return;
        }
        view.setSelected(true);
        localVideoMiddleLayer.I3(true);
        DownloadBean downloadBeanS1 = localVideoMiddleLayer.S0();
        if (downloadBeanS1 != null) {
            localVideoMiddleLayer.T0().l(downloadBeanS1);
        }
    }

    private final void D3() {
        Fragment fragmentK0 = this.f46921b0.getChildFragmentManager().k0("LocalVideoMiddleSeriesList");
        if (fragmentK0 instanceof LocalVideoMiddleSeriesListFragment) {
            ((LocalVideoMiddleSeriesListFragment) fragmentK0).n0(true);
        }
    }

    private final void E3(boolean z10) {
        LocalVideoMiddleHeaderView localVideoMiddleHeaderView;
        FragmentActivity activity;
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f46921b0.getLifecycle().a(new c());
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (z10) {
            if (e(FloatActionType.BACK) || (activity = this.f46921b0.getActivity()) == null) {
                return;
            }
            activity.finish();
            return;
        }
        wn.w wVar = this.f46922c0;
        if (wVar == null || (localVideoMiddleHeaderView = wVar.f74634u) == null) {
            return;
        }
        localVideoMiddleHeaderView.destroy();
    }

    static void F3(LocalVideoMiddleLayer localVideoMiddleLayer, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        localVideoMiddleLayer.E3(z10);
    }

    private final void G3() {
        BiddingInterstitialManager.Companion companion = BiddingInterstitialManager.f40942t;
        com.transsion.ad.strategy.c cVar = com.transsion.ad.strategy.c.f41178a;
        DownloadBean downloadBeanS0 = S0();
        companion.a("LocalVideoBackInterstitialV2Scene", cVar.a(downloadBeanS0 != null ? downloadBeanS0.getGenre() : null));
    }

    private final void H3(DownloadBean downloadBean) {
        if (downloadBean == null) {
            return;
        }
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
        String resourceId = downloadBean.getResourceId();
        if (resourceId == null) {
            resourceId = downloadBean.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ != null) {
            downloadBean = downloadBeanQ;
        }
        r2(downloadBean, true);
    }

    private final void I3(boolean z10) {
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        if (z10) {
            wn.w wVar = this.f46922c0;
            if (wVar != null && (textView4 = wVar.f74638y) != null) {
                textView4.setText(this.f46921b0.getString(com.transsion.postdetail.R$string.download_playing_downloading_tips));
            }
            wn.w wVar2 = this.f46922c0;
            if (wVar2 == null || (textView3 = wVar2.f74637x) == null) {
                return;
            }
            textView3.setText(this.f46921b0.getString(com.transsion.postdetail.R$string.download_playing_pause));
            return;
        }
        wn.w wVar3 = this.f46922c0;
        if (wVar3 != null && (textView2 = wVar3.f74638y) != null) {
            textView2.setText(this.f46921b0.getString(com.transsion.postdetail.R$string.download_playing_pause_tips));
        }
        wn.w wVar4 = this.f46922c0;
        if (wVar4 == null || (textView = wVar4.f74637x) == null) {
            return;
        }
        textView.setText(this.f46921b0.getString(com.transsion.postdetail.R$string.download_playing_resume));
    }

    private final void J3() {
        wn.w wVar;
        PublishStateView publishStateView;
        DownloadBean downloadBeanS0 = S0();
        if (downloadBeanS0 == null || (wVar = this.f46922c0) == null || (publishStateView = wVar.f74625l) == null) {
            return;
        }
        String groupId = downloadBeanS0.getGroupId();
        String str = groupId == null ? "" : groupId;
        String cover = downloadBeanS0.getCover();
        String str2 = cover == null ? "" : cover;
        String name = downloadBeanS0.getName();
        publishStateView.publishSource(4, (30 & 2) != 0 ? "" : null, (30 & 4) != 0 ? "" : null, (30 & 8) != 0 ? "" : null, (30 & 16) != 0 ? "" : null, (30 & 32) != 0 ? "" : str, (30 & 64) != 0 ? "" : name == null ? "" : name, (30 & 128) == 0 ? str2 : "", (30 & 256) != 0 ? false : true);
    }

    private final void K3(String str) {
        ConstraintLayout root;
        if (System.currentTimeMillis() - com.transsion.baselib.report.launch.b.f42221a.b().getLong("show_LocalVideoBackInterstitialV2Scene_timestamp", 0L) >= com.transsion.ad.scene.a.f41152a.j("LocalVideoBackInterstitialV2Scene") * 60000) {
            N3();
            return;
        }
        wn.w wVar = this.f46922c0;
        if (wVar == null || (root = wVar.getRoot()) == null) {
            return;
        }
        root.postDelayed(new Runnable() {
            @Override
            public final void run() {
                LocalVideoMiddleLayer.L3(this.f46969a);
            }
        }, 200L);
    }

    public static final void L3(LocalVideoMiddleLayer localVideoMiddleLayer) {
        F3(localVideoMiddleLayer, false, 1, null);
    }

    private final void M3(boolean z10) {
        FrameLayout frameLayout;
        wn.w wVar = this.f46922c0;
        if (wVar == null || (frameLayout = wVar.f74617d) == null) {
            return;
        }
        frameLayout.setVisibility(z10 ? 0 : 8);
    }

    private final void N3() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f46921b0), null, null, new LocalVideoMiddleLayer$showInterstitialAd$1(this, null), 3, null);
    }

    private final void O3() {
        LocalVideoMiddleSeriesListFragment localVideoMiddleSeriesListFragmentA = LocalVideoMiddleSeriesListFragment.INSTANCE.a();
        localVideoMiddleSeriesListFragmentA.r0(S0(), e1());
        localVideoMiddleSeriesListFragmentA.s0(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return LocalVideoMiddleLayer.P3(this.f46971a, (DownloadBean) obj, ((Integer) obj2).intValue());
            }
        });
        localVideoMiddleSeriesListFragmentA.t0(this.f46921b0, R$id.fl_series_list_container);
        this.f46925f0 = localVideoMiddleSeriesListFragmentA;
    }

    public static final Unit P3(LocalVideoMiddleLayer localVideoMiddleLayer, DownloadBean bean, int i10) {
        Intrinsics.h(bean, "bean");
        localVideoMiddleLayer.H3(bean);
        return Unit.f64096a;
    }

    public static final Unit Q3(LocalVideoMiddleLayer localVideoMiddleLayer, DownloadBean downloadBean) {
        localVideoMiddleLayer.H3(downloadBean);
        return Unit.f64096a;
    }

    public static final Unit R3(LocalVideoMiddleLayer localVideoMiddleLayer) {
        localVideoMiddleLayer.O3();
        return Unit.f64096a;
    }

    private final void x3(boolean z10, boolean z11) {
        w0 w0VarA3;
        if (z11 && (w0VarA3 = A3()) != null) {
            w0VarA3.d(z10);
        }
        long jI = z10 ? RangesKt.i(this.f46924e0 + ((long) 10000), n1()) : RangesKt.f(this.f46924e0 - ((long) 10000), 0L);
        this.f46924e0 = jI;
        com.transsion.player.orplayer.f fVarH = H();
        if (fVarH != null) {
            fVarH.seekTo(jI);
        }
    }

    static void y3(LocalVideoMiddleLayer localVideoMiddleLayer, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        localVideoMiddleLayer.x3(z10, z11);
    }

    @Override
    public View A0() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.K;
        }
        return null;
    }

    @Override
    protected void B0(Subject subject) {
        super.B0(subject);
        if (this.f46927h0) {
            return;
        }
        this.f46927h0 = true;
        if (subject != null) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new LocalVideoMiddleLayer$bindMovieDetail$1(this, subject, null), 3, null);
            String ops = subject.getOps();
            if (ops == null || ops.length() == 0) {
                DownloadBean downloadBeanS0 = S0();
                subject.setOps(downloadBeanS0 != null ? downloadBeanS0.getOps() : null);
            }
        }
        if (subject == null) {
            subject = dn.a.a(S0());
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String strM1 = m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        DownloadBean downloadBeanS1 = S0();
        wf.a.C0922a.f(c0922a, strM1, "bindMovieDetail, isInnerVideo:" + (downloadBeanS1 != null ? Boolean.valueOf(downloadBeanS1.isInnerSubjectRes()) : null), false, 4, null);
        Fragment fragment = this.f46921b0;
        wn.w wVar = this.f46922c0;
        MagicIndicator magicIndicator = wVar != null ? wVar.f74630q : null;
        ViewPager2 viewPager2 = wVar != null ? wVar.f74633t : null;
        DownloadBean downloadBeanS2 = S0();
        this.f46926g0 = new zm.e(fragment, subject, magicIndicator, viewPager2, "local_video_detail", true, !(downloadBeanS2 != null ? downloadBeanS2.isInnerSubjectRes() : true), null, 128, null);
        Fragment fragment2 = this.f46921b0;
        int i10 = R$id.subjectDetailLayout;
        DownloadBean downloadBeanS3 = S0();
        new zm.g(fragment2, i10, subject, "local_video_detail", "download_subject", true, !(downloadBeanS3 != null ? downloadBeanS3.isInnerSubjectRes() : true));
        M3(false);
    }

    @Override
    public boolean C0() {
        return false;
    }

    @Override
    public void D(DownloadBean bean) {
        wn.w wVar;
        TextView textView;
        TextView textView2;
        wn.w wVar2;
        FrameLayout frameLayout;
        Intrinsics.h(bean, "bean");
        super.D(bean);
        int status = bean.getStatus();
        if (status != 1 && status != 2 && status != 3) {
            if (status != 5) {
                return;
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            String strM1 = m1();
            Intrinsics.g(strM1, "<get-TAG>(...)");
            String resourceId = bean.getResourceId();
            DownloadBean downloadBeanS0 = S0();
            wf.a.C0922a.v(c0922a, strM1, "onDownloadCallback, success  resourceId = " + resourceId + ", cur resourceId = " + (downloadBeanS0 != null ? downloadBeanS0.getResourceId() : null), false, 4, null);
            String resourceId2 = bean.getResourceId();
            DownloadBean downloadBeanS1 = S0();
            if (!Intrinsics.c(resourceId2, downloadBeanS1 != null ? downloadBeanS1.getResourceId() : null) || (wVar2 = this.f46922c0) == null || (frameLayout = wVar2.f74618e) == null) {
                return;
            }
            uf.c.g(frameLayout);
            return;
        }
        if (!this.f46928i0) {
            DownloadBean downloadBeanS2 = S0();
            if (Intrinsics.c(downloadBeanS2 != null ? downloadBeanS2.getSubjectId() : null, bean.getSubjectId())) {
                wf.a.C0922a c0922a2 = wf.a.f74274a;
                String strM2 = m1();
                Intrinsics.g(strM2, "<get-TAG>(...)");
                wf.a.C0922a.v(c0922a2, strM2, "onDownloadCallback, refresh  epse = " + bean.getEpse(), false, 4, null);
                this.f46928i0 = true;
                o1().h(S0());
            }
        }
        String resourceId3 = bean.getResourceId();
        DownloadBean downloadBeanS3 = S0();
        if (!Intrinsics.c(resourceId3, downloadBeanS3 != null ? downloadBeanS3.getResourceId() : null) || (wVar = this.f46922c0) == null || (textView = wVar.f74637x) == null || textView.isSelected()) {
            return;
        }
        wn.w wVar3 = this.f46922c0;
        if (wVar3 != null && (textView2 = wVar3.f74637x) != null) {
            textView2.setSelected(true);
        }
        I3(true);
    }

    @Override
    public ViewGroup D0() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.I;
        }
        return null;
    }

    @Override
    public ViewGroup E0() {
        return null;
    }

    @Override
    public View F0() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.P;
        }
        return null;
    }

    @Override
    public TextView G0() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.C;
        }
        return null;
    }

    @Override
    public TextView H0() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.A;
        }
        return null;
    }

    @Override
    public TextView I0() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.J;
        }
        return null;
    }

    @Override
    public ViewGroup N2() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.f74619f;
        }
        return null;
    }

    @Override
    public ImageView O0() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.f74623j;
        }
        return null;
    }

    @Override
    public ImageView O2() {
        return null;
    }

    @Override
    public View P1() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.f74624k;
        }
        return null;
    }

    @Override
    public ProgressBar P2() {
        return null;
    }

    @Override
    public View Q0() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.F;
        }
        return null;
    }

    @Override
    public TextView Q2() {
        return null;
    }

    @Override
    public TextView R2() {
        return null;
    }

    @Override
    public SimpleSubtitleView S2() {
        return null;
    }

    @Override
    public SimpleSubtitleView T2() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.G;
        }
        return null;
    }

    @Override
    public ViewGroup U2() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.f74621h;
        }
        return null;
    }

    @Override
    public void V1() {
        K3("onBackClick");
    }

    @Override
    public SimpleSubtitleView V2() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.H;
        }
        return null;
    }

    @Override
    public TextView W2() {
        return null;
    }

    @Override
    public TextView X2() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.D;
        }
        return null;
    }

    @Override
    public TextView Y2() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.E;
        }
        return null;
    }

    @Override
    public Group Z2() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.L;
        }
        return null;
    }

    @Override
    public void a(LocalUiType uiType) {
        Window window;
        Intrinsics.h(uiType, "uiType");
        j(false);
        zm.e eVar = this.f46926g0;
        if (eVar != null) {
            eVar.x(uiType != LocalUiType.MIDDLE);
        }
        LocalUiType localUiType = LocalUiType.MIDDLE;
        if (uiType == localUiType) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String strM1 = m1();
            Intrinsics.g(strM1, "<get-TAG>(...)");
            wf.a.C0922a.f(c0922a, strM1, "onLocalUiChanged 2 middle", false, 4, null);
            com.transsion.player.orplayer.f fVarH = H();
            if (fVarH != null) {
                fVarH.setScaleMode(ScaleMode.SCALE_ASPECT_FIT);
            }
            FragmentActivity activity = this.f46921b0.getActivity();
            if (activity != null && (window = activity.getWindow()) != null) {
                WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(window, window.getDecorView());
                Intrinsics.g(insetsController, "getInsetsController(...)");
                insetsController.show(WindowInsetsCompat.Type.navigationBars());
            }
            z0();
        }
        wf.a.f74274a.c("long_video_play", "middle, onLocalUiChanged uiType = " + uiType, true);
        T1(uiType == localUiType);
        super.a(uiType);
    }

    @Override
    public LocalUiType a3() {
        return LocalUiType.MIDDLE;
    }

    @Override
    public void c() {
        super.c();
        E3(false);
        this.f46922c0 = null;
    }

    @Override
    public void f(boolean z10, String requestKey) {
        Intrinsics.h(requestKey, "requestKey");
    }

    @Override
    public ImageView f2() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.M;
        }
        return null;
    }

    @Override
    public ViewGroup g2() {
        return null;
    }

    @Override
    public void h(String subjectId, String resourceId) {
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(resourceId, "resourceId");
        super.h(subjectId, resourceId);
        wf.a.C0922a c0922a = wf.a.f74274a;
        String strM1 = m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        wf.a.C0922a.v(c0922a, strM1, "initSeries", false, 4, null);
        o1().h(S0());
    }

    @Override
    public TextView h2() {
        return null;
    }

    @Override
    public TextView h3() {
        return null;
    }

    @Override
    public View i2() {
        return null;
    }

    @Override
    public boolean isVisible() {
        ConstraintLayout constraintLayout;
        wn.w wVar = this.f46922c0;
        return (wVar == null || (constraintLayout = wVar.f74631r) == null || constraintLayout.getVisibility() != 0) ? false : true;
    }

    @Override
    public void j(boolean z10) {
        View view;
        wn.w wVar = this.f46922c0;
        if (wVar == null || (view = wVar.S) == null) {
            return;
        }
        view.setVisibility(z10 ? 0 : 8);
    }

    @Override
    public View j1() {
        return null;
    }

    @Override
    public FrameLayout j3() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.R;
        }
        return null;
    }

    @Override
    public void k(DownloadBean downloadBean, String pageFrom, boolean z10) {
        TextView textView;
        FrameLayout frameLayout;
        wn.w wVar;
        LocalVideoMiddleHeaderView localVideoMiddleHeaderView;
        LocalVideoMiddleHeaderView localVideoMiddleHeaderView2;
        String path;
        FrameLayout frameLayout2;
        Intrinsics.h(pageFrom, "pageFrom");
        super.k(downloadBean, pageFrom, z10);
        if ((downloadBean == null || downloadBean.getStatus() != 5) && downloadBean != null && downloadBean.isInnerRes()) {
            wn.w wVar2 = this.f46922c0;
            if (wVar2 != null && (frameLayout = wVar2.f74618e) != null) {
                uf.c.k(frameLayout);
            }
            boolean z11 = T0().z(downloadBean);
            wn.w wVar3 = this.f46922c0;
            if (wVar3 != null && (textView = wVar3.f74637x) != null) {
                textView.setSelected(z11);
            }
            I3(z11);
        } else {
            wn.w wVar4 = this.f46922c0;
            if (wVar4 != null && (frameLayout2 = wVar4.f74618e) != null) {
                uf.c.g(frameLayout2);
            }
        }
        if (downloadBean != null && downloadBean.getType() == 6 && (path = downloadBean.getPath()) != null && StringsKt.c0(path, ".mp3", false, 2, null)) {
            s2(downloadBean.getCover());
        }
        J3();
        wn.w wVar5 = this.f46922c0;
        if (wVar5 != null && (localVideoMiddleHeaderView2 = wVar5.f74634u) != null) {
            localVideoMiddleHeaderView2.updateDownloadBean(downloadBean);
        }
        o1().d(downloadBean != null ? downloadBean.getSubjectId() : null);
        if (!z10 || (wVar = this.f46922c0) == null || (localVideoMiddleHeaderView = wVar.f74634u) == null) {
            return;
        }
        localVideoMiddleHeaderView.init(downloadBean, wVar != null ? wVar.f74632s : null, androidx.p009lifecycle.v.a(this.f46921b0));
        localVideoMiddleHeaderView.setItemClickCallback(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocalVideoMiddleLayer.Q3(this.f47116a, (DownloadBean) obj);
            }
        });
        localVideoMiddleHeaderView.setAllListClickCallback(new Function0() {
            @Override
            public final Object invoke() {
                return LocalVideoMiddleLayer.R3(this.f47117a);
            }
        });
    }

    @Override
    public View k2() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.B;
        }
        return null;
    }

    @Override
    public TextView k3() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.Q;
        }
        return null;
    }

    @Override
    public void m(LocalUiType newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.m(newConfig);
        if (newConfig == LocalUiType.LAND) {
            Y1();
        }
    }

    @Override
    public ViewStub m3() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.U;
        }
        return null;
    }

    @Override
    public ConstraintLayout n2() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.f74631r;
        }
        return null;
    }

    @Override
    public ViewStub n3() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.V;
        }
        return null;
    }

    @Override
    public void onBackPressed() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String strM1 = m1();
        Intrinsics.g(strM1, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, strM1, "middle onBackPressed", false, 4, null);
        LocalVideoMiddleSeriesListFragment localVideoMiddleSeriesListFragment = this.f46925f0;
        if (localVideoMiddleSeriesListFragment == null || localVideoMiddleSeriesListFragment.getIsRemoved()) {
            K3("onBackPressed");
            return;
        }
        LocalVideoMiddleSeriesListFragment localVideoMiddleSeriesListFragment2 = this.f46925f0;
        if (localVideoMiddleSeriesListFragment2 != null) {
            LocalVideoMiddleSeriesListFragment.o0(localVideoMiddleSeriesListFragment2, false, 1, null);
        }
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        super.onProgress(j10, eVar);
        if (isVisible()) {
            this.f46924e0 = j10;
            i0.f47026v.a().t(j10, n1());
        }
    }

    @Override
    public View p2() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.N;
        }
        return null;
    }

    @Override
    public View q1() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.f74627n;
        }
        return null;
    }

    @Override
    public SecondariesSeekBar q2() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.O;
        }
        return null;
    }

    @Override
    public View r1() {
        wn.w wVar = this.f46922c0;
        if (wVar != null) {
            return wVar.f74626m;
        }
        return null;
    }

    @Override
    public void s(View rootView, LocalUiType uiType) {
        PublishStateView publishStateView;
        View view;
        Intrinsics.h(rootView, "rootView");
        Intrinsics.h(uiType, "uiType");
        if (uiType != LocalUiType.MIDDLE) {
            return;
        }
        this.f46922c0 = wn.w.a(rootView);
        super.s(rootView, uiType);
        wn.w wVar = this.f46922c0;
        ViewGroup.LayoutParams layoutParams = (wVar == null || (view = wVar.f74622i) == null) ? null : view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams)).topMargin = com.blankj.utilcode.util.d.c();
        M3(true);
        B3();
        D3();
        G3();
        wn.w wVar2 = this.f46922c0;
        if (wVar2 != null && (publishStateView = wVar2.f74625l) != null) {
            publishStateView.setImageResource(R$mipmap.libui_ic_base_whit_publish);
        }
        b3(false);
    }

    @Override
    public void s1(MotionEvent motionEvent, boolean z10) {
        View view;
        wn.w wVar = this.f46922c0;
        if (wVar != null && (view = wVar.S) != null) {
            uf.c.g(view);
        }
        if (!z10 || motionEvent == null) {
            super.s1(motionEvent, false);
            return;
        }
        int iE = com.blankj.utilcode.util.y.e() / 3;
        int rawX = (int) motionEvent.getRawX();
        if (rawX >= 0 && rawX <= iE) {
            y3(this, false, false, 2, null);
        } else if (rawX > iE * 2) {
            y3(this, true, false, 2, null);
        } else {
            super.s1(motionEvent, false);
        }
    }

    @Override
    public void v(String subjectId, String resourceId) {
        LocalVideoMiddleHeaderView localVideoMiddleHeaderView;
        DownloadBean downloadBean;
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(resourceId, "resourceId");
        wn.w wVar = this.f46922c0;
        if (wVar == null || (localVideoMiddleHeaderView = wVar.f74634u) == null || (downloadBean = localVideoMiddleHeaderView.getDownloadBean(resourceId)) == null) {
            return;
        }
        r2(downloadBean, true);
    }

    @Override
    public void w(boolean z10) {
        super.w(z10);
    }

    public final Fragment z3() {
        return this.f46921b0;
    }
}
