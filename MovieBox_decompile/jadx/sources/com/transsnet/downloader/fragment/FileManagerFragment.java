package com.transsnet.downloader.fragment;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.fragment.ad.AppDownloadAdFragment;
import com.transsnet.downloader.fragment.ad.TopCardAdFragment;
import com.transsnet.downloader.util.DownloadSDCardUtil;
import com.transsnet.downloader.viewmodel.LocalFileViewModel;
import com.transsnet.downloader.viewmodel.TransferReceivedViewModel;
import com.transsnet.downloader.widget.FileManagerTabTitleView;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.transsnet.flow.event.sync.event.DownloadRefreshEvent;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lucode.hackware.magicindicator.MagicIndicator;

@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\n\u0018\u0000 h2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001iB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0005J\u000f\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0005J\u0019\u0010\u0014\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\bH\u0016¢\u0006\u0004\b#\u0010!J\u0017\u0010%\u001a\u00020$2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010)\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010'H\u0016¢\u0006\u0004\b)\u0010*J\u001f\u0010,\u001a\u00020\u00062\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010'H\u0016¢\u0006\u0004\b,\u0010-J!\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b0\u00101J!\u00102\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b2\u00101J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\u0005J\r\u00104\u001a\u00020\u0006¢\u0006\u0004\b4\u0010\u0005J\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\u0005J\u000f\u00107\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u0010\u0005J\u0017\u0010:\u001a\u00020\u00062\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0006H\u0016¢\u0006\u0004\b<\u0010\u0005J\u000f\u0010=\u001a\u00020\u0006H\u0016¢\u0006\u0004\b=\u0010\u0005J\u000f\u0010>\u001a\u00020\u0006H\u0016¢\u0006\u0004\b>\u0010\u0005J\u000f\u0010?\u001a\u00020\u0006H\u0016¢\u0006\u0004\b?\u0010\u0005R\u0016\u0010B\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u001b\u0010H\u001a\u00020C8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010E\u001a\u0004\bF\u0010GR\u001b\u0010M\u001a\u00020I8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010E\u001a\u0004\bK\u0010LR\u0018\u0010P\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010R\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010OR\u001b\u0010W\u001a\u00020S8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bT\u0010E\u001a\u0004\bU\u0010VR\u0018\u0010[\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR \u0010_\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020X0\\8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b]\u0010^R\"\u0010g\u001a\u00020`8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\ba\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010f¨\u0006j"}, d2 = {"Lcom/transsnet/downloader/fragment/FileManagerFragment;", "Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;", "Lbx/h0;", "Lim/f;", "<init>", "()V", "", "initViewModel", "", RequestParameters.POSITION, "count", "c1", "(II)V", "N0", "L0", "O0", "S0", "initAd", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "R0", "(Landroid/view/LayoutInflater;)Lbx/h0;", "Landroidx/viewpager2/widget/ViewPager2;", "z0", "()Landroidx/viewpager2/widget/ViewPager2;", "Lnet/lucode/hackware/magicindicator/MagicIndicator;", "r0", "()Lnet/lucode/hackware/magicindicator/MagicIndicator;", "t0", "(I)V", "state", "s0", "Landroidx/fragment/app/Fragment;", "d0", "(I)Landroidx/fragment/app/Fragment;", "", "", "f0", "()Ljava/util/List;", "list", "u0", "(Ljava/util/List;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "b1", "onDestroy", TmcConstants.NAVIGATION_ON_START, "onResume", "", "hidden", "onHiddenChanged", "(Z)V", "onPause", "logPause", "logResume", "onMemberStateChange", CampaignEx.JSON_KEY_AD_K, "Z", "isFirstStart", "Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;", "l", "Lkotlin/Lazy;", "Q0", "()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;", "mTransferViewModel", "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", "m", "P0", "()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", "mLocalFileViewModel", "n", "Landroidx/fragment/app/Fragment;", "topCardAdFragment", "o", "appDownloadAdFragment", "Lcom/transsnet/downloader/manager/g;", TtmlNode.TAG_P, "M0", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;", "currentFragment", "", CampaignEx.JSON_KEY_AD_R, "Ljava/util/Map;", "fragmentMap", "", "s", "J", "getResumeTimeStamp", "()J", "setResumeTimeStamp", "(J)V", "resumeTimeStamp", "t", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FileManagerFragment extends DownloadTabBaseFragment<bx.h0> implements im.f {

    public static final Companion INSTANCE = new Companion(null);

    private Fragment topCardAdFragment;

    private Fragment appDownloadAdFragment;

    private DownloadListBaseFragment currentFragment;

    private long resumeTimeStamp;

    private boolean isFirstStart = true;

    private final Lazy mTransferViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(TransferReceivedViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final Lazy downloadManager = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return FileManagerFragment.K0();
        }
    });

    private final Map fragmentMap = new LinkedHashMap();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FileManagerFragment a(int i10) {
            FileManagerFragment fileManagerFragment = new FileManagerFragment();
            fileManagerFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_page_index", Integer.valueOf(i10))));
            return fileManagerFragment;
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56850a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56850a = function;
        }

        @Override
        public final Function a() {
            return this.f56850a;
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
            this.f56850a.invoke(obj);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.fragment.FileManagerFragment$initData$1", f = "FileManagerFragment.kt", l = {182}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FileManagerFragment.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                com.transsnet.downloader.manager.g gVarM0 = FileManagerFragment.this.M0();
                this.label = 1;
                if (gVarM0.B(this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public static final com.transsnet.downloader.manager.g K0() {
        return com.transsnet.downloader.manager.p.f57282a.a(Utils.a());
    }

    private final void L0() {
        j0().H();
        TransferReceivedViewModel.i(Q0(), false, 1, null);
    }

    public final com.transsnet.downloader.manager.g M0() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    private final void N0() {
        j0().P();
    }

    private final void O0() {
        LocalFileViewModel.k(P0(), false, 1, null);
    }

    private final LocalFileViewModel P0() {
        return (LocalFileViewModel) this.mLocalFileViewModel.getValue();
    }

    private final TransferReceivedViewModel Q0() {
        return (TransferReceivedViewModel) this.mTransferViewModel.getValue();
    }

    private final void S0() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return FileManagerFragment.T0(this.f56929a, (DownloadRefreshEvent) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = DownloadRefreshEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(this, name, state, kotlinx.coroutines.y0.c().r(), false, function1);
        Function1 function2 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return FileManagerFragment.U0(this.f56942a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = AddToDownloadEvent.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent(this, name2, state, kotlinx.coroutines.y0.c().r(), false, function2);
        Function1 function3 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return FileManagerFragment.V0(this.f56952a, (au.e) obj);
            }
        };
        FlowEventBus flowEventBus3 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name3 = au.e.class.getName();
        Intrinsics.g(name3, "getName(...)");
        flowEventBus3.observeEvent(this, name3, state, kotlinx.coroutines.y0.c().r(), false, function3);
    }

    public static final Unit T0(FileManagerFragment fileManagerFragment, DownloadRefreshEvent value) {
        Intrinsics.h(value, "value");
        String resourceId = value.getResourceId();
        if (resourceId == null || resourceId.length() == 0) {
            fileManagerFragment.j0().H();
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit U0(FileManagerFragment fileManagerFragment, AddToDownloadEvent value) {
        FrameLayout frameLayout;
        Intrinsics.h(value, "value");
        bx.h0 h0Var = (bx.h0) fileManagerFragment.getMViewBinding();
        if (h0Var != null && (frameLayout = h0Var.f16072d) != null && frameLayout.getVisibility() != 0 && fileManagerFragment.isVisible() && value.getAdd()) {
            fileManagerFragment.N0();
        }
        return Unit.f64096a;
    }

    public static final Unit V0(final FileManagerFragment fileManagerFragment, au.e value) {
        Intrinsics.h(value, "value");
        wf.a.f74274a.c(TransferBottomToolsView.TAG, "TransferFinishEvent， 有传输完成，刷新页面", true);
        fileManagerFragment.j0().r0(value.a(), new Function0() {
            @Override
            public final Object invoke() {
                return FileManagerFragment.W0(this.f56965a);
            }
        });
        return Unit.f64096a;
    }

    public static final Unit W0(FileManagerFragment fileManagerFragment) {
        TransferReceivedViewModel.i(fileManagerFragment.Q0(), false, 1, null);
        fileManagerFragment.j0().d0().q(Boolean.TRUE);
        return Unit.f64096a;
    }

    public static final Unit X0(FileManagerFragment fileManagerFragment, List list) {
        fileManagerFragment.c1(0, list != null ? list.size() : 0);
        return Unit.f64096a;
    }

    public static final Unit Y0(FileManagerFragment fileManagerFragment, List list) {
        fileManagerFragment.c1(1, list != null ? list.size() : 0);
        return Unit.f64096a;
    }

    public static final Unit Z0(FileManagerFragment fileManagerFragment, List list) {
        fileManagerFragment.c1(2, list != null ? list.size() : 0);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit a1(FileManagerFragment fileManagerFragment, List list) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        FrameLayout frameLayout3;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            wf.a.C0922a.z(wf.a.f74274a, fileManagerFragment.getTAG(), "downloading null- hide fragment", false, 4, null);
            bx.h0 h0Var = (bx.h0) fileManagerFragment.getMViewBinding();
            if (h0Var != null && (frameLayout = h0Var.f16072d) != null) {
                uf.c.g(frameLayout);
            }
        } else {
            bx.h0 h0Var2 = (bx.h0) fileManagerFragment.getMViewBinding();
            if (h0Var2 == null || (frameLayout3 = h0Var2.f16072d) == null || frameLayout3.getVisibility() != 0) {
                bx.h0 h0Var3 = (bx.h0) fileManagerFragment.getMViewBinding();
                if (h0Var3 != null && (frameLayout2 = h0Var3.f16072d) != null) {
                    uf.c.k(frameLayout2);
                }
                wf.a.C0922a c0922a = wf.a.f74274a;
                wf.a.C0922a.f(c0922a, fileManagerFragment.getTAG(), "downloading have data, show fragment", false, 4, null);
                Fragment fragmentK0 = fileManagerFragment.getChildFragmentManager().k0("DownloadingListFragment");
                if (fragmentK0 == null) {
                    fragmentK0 = new DownloadingListFragment();
                }
                Fragment fragment = fragmentK0;
                if (fragment.isAdded()) {
                    wf.a.C0922a.f(c0922a, fileManagerFragment.getTAG(), "downloading have data, isAdded, show", false, 4, null);
                    fileManagerFragment.getChildFragmentManager().p().y(fragment).l();
                } else {
                    wf.a.C0922a.f(c0922a, fileManagerFragment.getTAG(), "downloading have data, add", false, 4, null);
                    fileManagerFragment.getChildFragmentManager().p().c(R$id.flDownloadingContainer, fragment, "DownloadingListFragment").l();
                }
            } else {
                wf.a.C0922a.f(wf.a.f74274a, fileManagerFragment.getTAG(), "downloading have data, fragment is shown", false, 4, null);
            }
        }
        return Unit.f64096a;
    }

    private final void c1(int position, int count) {
        String str;
        wf.a.C0922a.z(wf.a.f74274a, getTAG(), "updateTabTitle - position:" + position + ",count:" + count, false, 4, null);
        if (position >= i0().size()) {
            return;
        }
        Object obj = i0().get(position);
        if (count > 0) {
            str = " " + count;
        } else {
            str = "";
        }
        String str2 = obj + str;
        ORCommonNavigator commonNavigator = getCommonNavigator();
        xy.d pagerTitleView = commonNavigator != null ? commonNavigator.getPagerTitleView(position) : null;
        FileManagerTabTitleView fileManagerTabTitleView = pagerTitleView instanceof FileManagerTabTitleView ? (FileManagerTabTitleView) pagerTitleView : null;
        if (fileManagerTabTitleView != null) {
            fileManagerTabTitleView.setTitle(str2, count, position);
        }
    }

    private final void initAd() {
        Fragment fragmentK0 = getChildFragmentManager().k0("TopCardAdFragment");
        this.topCardAdFragment = fragmentK0;
        if (fragmentK0 == null) {
            this.topCardAdFragment = new TopCardAdFragment();
        }
        Fragment fragment = this.topCardAdFragment;
        if (fragment != null) {
            ij.m mVar = ij.m.f62113a;
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            ij.m.b(mVar, childFragmentManager, R$id.flTopCardAd, fragment, false, null, 24, null);
        }
        Fragment fragmentK1 = getChildFragmentManager().k0("AppDownloadAdFragment");
        this.appDownloadAdFragment = fragmentK1;
        if (fragmentK1 == null) {
            this.appDownloadAdFragment = new AppDownloadAdFragment();
        }
        Fragment fragment2 = this.appDownloadAdFragment;
        if (fragment2 != null) {
            ij.m mVar2 = ij.m.f62113a;
            FragmentManager childFragmentManager2 = getChildFragmentManager();
            Intrinsics.g(childFragmentManager2, "getChildFragmentManager(...)");
            ij.m.b(mVar2, childFragmentManager2, R$id.flAppDownloadAd, fragment2, false, null, 24, null);
        }
    }

    private final void initViewModel() {
        j0().O().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return FileManagerFragment.X0(this.f57138a, (List) obj);
            }
        }));
        P0().i().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return FileManagerFragment.Y0(this.f57149a, (List) obj);
            }
        }));
        Q0().j().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return FileManagerFragment.Z0(this.f57160a, (List) obj);
            }
        }));
        j0().Q().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return FileManagerFragment.a1(this.f56915a, (List) obj);
            }
        }));
        L0();
        O0();
    }

    @Override
    public bx.h0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bx.h0 h0VarC = bx.h0.c(inflater);
        Intrinsics.g(h0VarC, "inflate(...)");
        return h0VarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b1() {
        AppCompatTextView appCompatTextView;
        long jA = com.blankj.utilcode.util.w.a();
        if (jA > 0) {
            String strA = zg.b.a(jA, 1);
            bx.h0 h0Var = (bx.h0) getMViewBinding();
            if (h0Var == null || (appCompatTextView = h0Var.f16075g) == null) {
                return;
            }
            appCompatTextView.setText(strA);
        }
    }

    @Override
    public Fragment d0(int position) {
        Fragment fragmentA;
        if (position == 0) {
            fragmentA = DownloadedListFragment.INSTANCE.a();
            this.fragmentMap.put(Integer.valueOf(position), fragmentA);
        } else if (position == 1) {
            fragmentA = LocalFileListFragment.INSTANCE.a();
            this.fragmentMap.put(Integer.valueOf(position), fragmentA);
        } else {
            if (position != 2) {
                return DownloadedListFragment.INSTANCE.a();
            }
            fragmentA = TransferReceivedFragment.INSTANCE.a();
            this.fragmentMap.put(Integer.valueOf(position), fragmentA);
        }
        return fragmentA;
    }

    @Override
    public List f0() {
        return (List) j0().K().f();
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        b1();
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
        DownloadSDCardUtil.f57674a.b();
        initViewModel();
        S0();
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initView(view, savedInstanceState);
        initAd();
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            com.transsion.baselib.report.e.f42196a.n("downloadpage", Long.valueOf(SystemClock.elapsedRealtime() - this.resumeTimeStamp), getContext());
        }
    }

    @Override
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        y0(arguments != null ? arguments.getInt("extra_page_index") : 0);
        if (com.transsnet.downloader.manager.p.f57282a.a(Utils.a()).i()) {
            y0(0);
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.D(this);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.v(this);
        }
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        Fragment fragment = this.topCardAdFragment;
        TopCardAdFragment topCardAdFragment = fragment instanceof TopCardAdFragment ? (TopCardAdFragment) fragment : null;
        if (topCardAdFragment != null) {
            topCardAdFragment.k0();
        }
        Fragment fragment2 = this.appDownloadAdFragment;
        AppDownloadAdFragment appDownloadAdFragment = fragment2 instanceof AppDownloadAdFragment ? (AppDownloadAdFragment) fragment2 : null;
        if (appDownloadAdFragment != null) {
            appDownloadAdFragment.o0();
        }
        L0();
    }

    @Override
    public void onMemberStateChange() {
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        boolean zE = bVar != null ? bVar.e() : false;
        wf.a.C0922a.f(wf.a.f74274a, "co_mem", "下载管理页面收到回调 --> skipShowAd = " + zE, false, 4, null);
        ax.b bVar2 = new ax.b();
        qx.a aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
        UserInfo userInfoI = aVar != null ? aVar.i() : null;
        if (userInfoI == null || userInfoI.getUserType() != 0) {
            im.b bVar3 = (im.b) TheRouter.d(im.b.class, new Object[0]);
            bVar2.i(bVar3 != null ? bVar3.B() : 1);
        } else {
            bVar2.i(1);
        }
        com.transsnet.downloader.manager.p.a aVar2 = com.transsnet.downloader.manager.p.f57282a;
        com.transsnet.downloader.manager.p.a.b(aVar2, null, 1, null).G(bVar2);
        com.transsnet.downloader.manager.p.a.b(aVar2, null, 1, null).v();
    }

    @Override
    public void onPause() {
        super.onPause();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
    }

    @Override
    public void onResume() {
        super.onResume();
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
    }

    @Override
    public void onStart() {
        super.onStart();
        if (isVisible()) {
            if (this.isFirstStart) {
                this.isFirstStart = false;
            } else {
                L0();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public MagicIndicator r0() {
        bx.h0 h0Var = (bx.h0) getMViewBinding();
        if (h0Var != null) {
            return h0Var.f16074f;
        }
        return null;
    }

    @Override
    public void s0(int state) {
    }

    @Override
    public void t0(int position) {
        this.currentFragment = (DownloadListBaseFragment) this.fragmentMap.get(Integer.valueOf(position));
    }

    @Override
    public void u0(List list) {
        j0().K().q(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public ViewPager2 z0() {
        bx.h0 h0Var = (bx.h0) getMViewBinding();
        if (h0Var != null) {
            return h0Var.f16076h;
        }
        return null;
    }
}
