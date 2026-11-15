package com.transsnet.downloader.fragment;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.ad.view.ScrollDetectFrameLayout;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.wrapperad.view.BiddingFloatingIrregularAnimationView;
import com.transsion.wrapperad.view.DownloadTopIrregularView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.activity.DownloadPanelActivity;
import com.transsnet.downloader.api.DownloadPageType;
import com.transsnet.downloader.lottery.LotteryTipView;
import com.transsnet.downloader.ugc.fragment.UGCDownloadManagerFragment;
import com.transsnet.downloader.viewmodel.LocalFileViewModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u0000 ;2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J!\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0019\u0010\u0017J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u0017\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082D¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010*\u001a\u00020%8\u0002X\u0082D¢\u0006\u0006\n\u0004\b)\u0010'R\u001b\u00100\u001a\u00020+8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R.\u00106\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020% 3*\n\u0012\u0004\u0012\u00020%\u0018\u00010202018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109¨\u0006<"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadMainFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lbx/w;", "<init>", "()V", "", "r0", "g0", "j0", "k0", "q0", "t0", "Landroid/view/LayoutInflater;", "inflater", "m0", "(Landroid/view/LayoutInflater;)Lbx/w;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "initData", "onResume", "", "hidden", "onHiddenChanged", "(Z)V", "logResume", "logPause", "Landroidx/fragment/app/Fragment;", "a", "Landroidx/fragment/app/Fragment;", "contentFragment", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "TAG", "c", "FRAGMENT_TAG", "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "l0", "()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", "mLocalFileViewModel", "Landroidx/activity/result/b;", "", "kotlin.jvm.PlatformType", "e", "Landroidx/activity/result/b;", "requestMultiplePermission", "", "f", "J", "resumeTimeStamp", "g", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadMainFragment extends BaseFragment<bx.w> {

    public static final Companion INSTANCE = new Companion(null);

    private Fragment contentFragment;

    private final String TAG = "DownloadMain";

    private final String FRAGMENT_TAG = "DownloadPanel";

    private final Lazy mLocalFileViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(LocalFileViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
        {
            super(0);
        }

        @Override
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() {
        {
            super(0);
        }

        @Override
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    private final androidx.activity.result.b requestMultiplePermission;

    private long resumeTimeStamp;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadMainFragment a(int i10) {
            DownloadMainFragment downloadMainFragment = new DownloadMainFragment();
            downloadMainFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_page_index", Integer.valueOf(i10))));
            return downloadMainFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements ScrollDetectFrameLayout.a {
        b() {
        }

        @Override
        public void a() {
            BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView;
            bx.w mViewBinding = DownloadMainFragment.this.getMViewBinding();
            if (mViewBinding == null || (biddingFloatingIrregularAnimationView = mViewBinding.f16275b) == null) {
                return;
            }
            biddingFloatingIrregularAnimationView.changeState(false);
        }

        @Override
        public void b() {
            BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView;
            bx.w mViewBinding = DownloadMainFragment.this.getMViewBinding();
            if (mViewBinding == null || (biddingFloatingIrregularAnimationView = mViewBinding.f16275b) == null) {
                return;
            }
            biddingFloatingIrregularAnimationView.changeState(true);
        }

        @Override
        public void c(float f10, float f11, ScrollDetectFrameLayout.ScrollDirection direction) {
            DownloadTopIrregularView downloadTopIrregularView;
            Intrinsics.h(direction, "direction");
            bx.w mViewBinding = DownloadMainFragment.this.getMViewBinding();
            if (mViewBinding == null || (downloadTopIrregularView = mViewBinding.f16281h) == null) {
                return;
            }
            downloadTopIrregularView.onScroll(f10, f11, direction);
        }
    }

    public DownloadMainFragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.h(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                DownloadMainFragment.s0(this.f56970a, (Map) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestMultiplePermission = bVarRegisterForActivityResult;
    }

    private final void g0() {
        ScrollDetectFrameLayout scrollDetectFrameLayoutB;
        bx.w mViewBinding = getMViewBinding();
        if (mViewBinding == null || (scrollDetectFrameLayoutB = mViewBinding.getRoot()) == null) {
            return;
        }
        scrollDetectFrameLayoutB.post(new Runnable() {
            @Override
            public final void run() {
                DownloadMainFragment.h0(this.f56959a);
            }
        });
    }

    public static final void h0(final DownloadMainFragment downloadMainFragment) {
        FragmentActivity activity = downloadMainFragment.getActivity();
        if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
            return;
        }
        com.transsnet.downloader.util.d.f57712a.e(activity, DownloadPageType.DOWNLOAD.getPageName(), new Function0() {
            @Override
            public final Object invoke() {
                return DownloadMainFragment.i0(this.f57008a);
            }
        });
    }

    public static final Unit i0(DownloadMainFragment downloadMainFragment) {
        downloadMainFragment.j0();
        return Unit.f64096a;
    }

    private final void j0() {
        if (com.transsnet.downloader.viewmodel.a0.f57862a.a()) {
            Context context = getContext();
            if (context != null) {
                ff.c.f60168a.c(context);
            }
            k0();
            return;
        }
        if (com.transsnet.downloader.util.j.f57724a.a()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                this.requestMultiplePermission.a(com.transsion.baselib.helper.e.f42126a.a());
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    private final void k0() {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "getOutsidePlayHistoricalList", false, 4, null);
        if (isAdded()) {
            LocalFileViewModel.k(l0(), false, 1, null);
        }
    }

    private final LocalFileViewModel l0() {
        return (LocalFileViewModel) this.mLocalFileViewModel.getValue();
    }

    public static final Unit n0(DownloadMainFragment downloadMainFragment, ij.n value) {
        GradientTextView gradientTextView;
        LotteryTipView lotteryTipView;
        DownloadTopIrregularView downloadTopIrregularView;
        BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView;
        Intrinsics.h(value, "value");
        String strA = value.a();
        if (strA == null || strA.length() == 0) {
            downloadMainFragment.q0();
        } else {
            bx.w mViewBinding = downloadMainFragment.getMViewBinding();
            if (mViewBinding != null && (biddingFloatingIrregularAnimationView = mViewBinding.f16275b) != null) {
                uf.c.g(biddingFloatingIrregularAnimationView);
            }
            bx.w mViewBinding2 = downloadMainFragment.getMViewBinding();
            if (mViewBinding2 != null && (downloadTopIrregularView = mViewBinding2.f16281h) != null) {
                uf.c.g(downloadTopIrregularView);
            }
            bx.w mViewBinding3 = downloadMainFragment.getMViewBinding();
            if (mViewBinding3 != null && (lotteryTipView = mViewBinding3.f16280g) != null) {
                uf.c.g(lotteryTipView);
            }
        }
        downloadMainFragment.r0();
        bx.w mViewBinding4 = downloadMainFragment.getMViewBinding();
        if (mViewBinding4 != null && (gradientTextView = mViewBinding4.f16283j) != null) {
            gradientTextView.setVisibility(ij.o.f62115a.i() ? 8 : 0);
        }
        return Unit.f64096a;
    }

    public static final void o0(DownloadMainFragment downloadMainFragment, View view) {
        Navigator.x(TheRouter.c("/download/transfer"), downloadMainFragment.getContext(), null, 2, null);
    }

    public static final void p0(DownloadMainFragment downloadMainFragment, View view) {
        FragmentActivity activity = downloadMainFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void q0() {
        LotteryTipView lotteryTipView;
        DownloadTopIrregularView downloadTopIrregularView;
        BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView;
        if (ij.o.f62115a.g()) {
            return;
        }
        bx.w mViewBinding = getMViewBinding();
        if (mViewBinding != null && (biddingFloatingIrregularAnimationView = mViewBinding.f16275b) != null) {
            biddingFloatingIrregularAnimationView.loadAd();
        }
        bx.w mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (downloadTopIrregularView = mViewBinding2.f16281h) != null) {
            downloadTopIrregularView.loadAd();
        }
        bx.w mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (lotteryTipView = mViewBinding3.f16280g) == null) {
            return;
        }
        lotteryTipView.onFragmentResume();
    }

    private final void r0() {
        boolean z10 = ij.g.f62108a.b() || ij.o.f62115a.i();
        if (z10 && (this.contentFragment instanceof UGCDownloadManagerFragment)) {
            return;
        }
        if (z10 || !(this.contentFragment instanceof FileManagerFragment)) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            androidx.fragment.app.w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            Bundle arguments = getArguments();
            Fragment uGCDownloadManagerFragment = z10 ? new UGCDownloadManagerFragment() : FileManagerFragment.INSTANCE.a(arguments != null ? arguments.getInt("extra_page_index", 0) : 0);
            this.contentFragment = uGCDownloadManagerFragment;
            if (uGCDownloadManagerFragment != null) {
                wVarP.s(R$id.fl_container, uGCDownloadManagerFragment);
            }
            wVarP.j();
        }
    }

    public static final void s0(DownloadMainFragment downloadMainFragment, Map result) {
        Intrinsics.h(result, "result");
        if (com.transsion.baselib.helper.e.f42126a.c(downloadMainFragment.requireContext())) {
            downloadMainFragment.k0();
        }
        Context context = downloadMainFragment.getContext();
        if (context != null) {
            ff.c.f60168a.c(context);
        }
    }

    private final void t0() {
        DownloadTopIrregularView downloadTopIrregularView;
        ScrollDetectFrameLayout scrollDetectFrameLayout;
        bx.w mViewBinding = getMViewBinding();
        if (mViewBinding != null && (scrollDetectFrameLayout = mViewBinding.f16277d) != null) {
            scrollDetectFrameLayout.setOnScrollListener(new b());
        }
        bx.w mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (downloadTopIrregularView = mViewBinding2.f16281h) == null) {
            return;
        }
        bx.w mViewBinding3 = getMViewBinding();
        downloadTopIrregularView.setViewGroup(mViewBinding3 != null ? mViewBinding3.f16276c : null, androidx.p009lifecycle.v.a(this));
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadMainFragment.n0(this.f56980a, (ij.n) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = ij.n.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        bx.w mViewBinding;
        AppCompatImageView appCompatImageView;
        GradientTextView gradientTextView;
        GradientTextView gradientTextView2;
        Intrinsics.h(view, "view");
        bx.w mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (gradientTextView2 = mViewBinding2.f16283j) != null) {
            gradientTextView2.setVisibility(!ij.o.f62115a.i() ? 0 : 8);
        }
        bx.w mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (gradientTextView = mViewBinding3.f16283j) != null) {
            gradientTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    DownloadMainFragment.o0(this.f56990a, view2);
                }
            });
        }
        if ((getActivity() instanceof DownloadPanelActivity) && (mViewBinding = getMViewBinding()) != null && (appCompatImageView = mViewBinding.f16279f) != null) {
            uf.c.k(appCompatImageView);
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    DownloadMainFragment.p0(this.f56999a, view2);
                }
            });
        }
        t0();
    }

    @Override
    public void lazyLoadData() {
        g0();
    }

    @Override
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.resumeTimeStamp;
            wf.a.C0922a.r(wf.a.f74274a, "Report", new String[]{"Subscription fb log duration:" + jElapsedRealtime}, false, 4, null);
            com.transsion.baselib.report.e.f42196a.n("Subscription", Long.valueOf(jElapsedRealtime), getContext());
        }
    }

    @Override
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override
    public bx.w getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bx.w wVarC = bx.w.c(inflater);
        Intrinsics.g(wVarC, "inflate(...)");
        return wVarC;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ImmersionBar.with(this).statusBarDarkFont(!ij.y.f62128a.a()).init();
        r0();
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        q0();
    }

    @Override
    public void onResume() {
        super.onResume();
        q0();
    }
}
