package com.transsion.baseui.fragment;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.v;
import com.mbridge.msdk.MBridgeConstans;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.StateView;
import com.tn.lib.view.o;
import com.transsion.baselib.utils.DeviceKeyMonitor;
import com.transsion.baseui.R$id;
import com.transsion.baseui.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import f4.a;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import yg.l;
import yg.m;

@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000 r*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0001sB\u0007¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J-\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00152\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001b\u0010\bJ\u000f\u0010\u001c\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001c\u0010\bJ\u000f\u0010\u001d\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001d\u0010\bJ\u000f\u0010\u001e\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001e\u0010\bJ\u000f\u0010\u001f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001f\u0010\bJ\u001f\u0010$\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u000eH\u0016¢\u0006\u0004\b&\u0010\bJ\u000f\u0010'\u001a\u00020\u000eH\u0016¢\u0006\u0004\b'\u0010\bJ\u000f\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020(H\u0016¢\u0006\u0004\b+\u0010*J\u000f\u0010,\u001a\u00020(H\u0016¢\u0006\u0004\b,\u0010*J\u000f\u0010-\u001a\u00020(H\u0016¢\u0006\u0004\b-\u0010*J\u000f\u0010.\u001a\u00020\tH\u0016¢\u0006\u0004\b.\u0010\u000bJ\u0019\u00100\u001a\u00020\u00152\b\b\u0002\u0010/\u001a\u00020(H\u0016¢\u0006\u0004\b0\u00101J\u0019\u00102\u001a\u00020\u00152\b\b\u0002\u0010/\u001a\u00020(H\u0016¢\u0006\u0004\b2\u00101J\u000f\u00103\u001a\u00020\u0015H\u0016¢\u0006\u0004\b3\u00104J\u0017\u00105\u001a\u00020\u00152\u0006\u0010/\u001a\u00020(H\u0016¢\u0006\u0004\b5\u00101J\u000f\u00107\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J\u0011\u00109\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b9\u00104J\r\u0010:\u001a\u00020\u000e¢\u0006\u0004\b:\u0010\bJ\r\u0010;\u001a\u00020\u000e¢\u0006\u0004\b;\u0010\bJ\u0017\u0010<\u001a\u00020\u000e2\b\b\u0002\u0010/\u001a\u00020(¢\u0006\u0004\b<\u0010=J\u0017\u0010>\u001a\u00020\u000e2\b\b\u0002\u0010/\u001a\u00020(¢\u0006\u0004\b>\u0010=J\r\u0010?\u001a\u00020\u000e¢\u0006\u0004\b?\u0010\bJ\u0017\u0010@\u001a\u00020\u000e2\b\b\u0002\u0010/\u001a\u00020(¢\u0006\u0004\b@\u0010=J\u0017\u0010A\u001a\u00020\u000e2\b\b\u0002\u0010/\u001a\u00020(¢\u0006\u0004\bA\u0010=J\u0015\u0010C\u001a\u00020\u000e2\u0006\u0010B\u001a\u00020(¢\u0006\u0004\bC\u0010=J\r\u0010D\u001a\u00020\u000e¢\u0006\u0004\bD\u0010\bJ\u000f\u0010E\u001a\u00020\u000eH\u0016¢\u0006\u0004\bE\u0010\bJ\u000f\u0010F\u001a\u00020\u000eH\u0016¢\u0006\u0004\bF\u0010\bJ\u000f\u0010G\u001a\u00020\u000eH\u0016¢\u0006\u0004\bG\u0010\bJ\u0017\u0010H\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u0011H&¢\u0006\u0004\bH\u0010IJ\u000f\u0010J\u001a\u00020\tH&¢\u0006\u0004\bJ\u0010\u000bJ!\u0010K\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00152\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\bK\u0010\u001aJ\u000f\u0010K\u001a\u00020\u000eH&¢\u0006\u0004\bK\u0010\bJ\u000f\u0010L\u001a\u00020\u000eH&¢\u0006\u0004\bL\u0010\bJ\u000f\u0010M\u001a\u00020\u000eH&¢\u0006\u0004\bM\u0010\bJ\u000f\u0010N\u001a\u00020\u000eH\u0016¢\u0006\u0004\bN\u0010\bJ\u000f\u0010O\u001a\u00020\u000eH&¢\u0006\u0004\bO\u0010\bR$\u0010Q\u001a\u0004\u0018\u00010P8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR$\u0010W\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\R$\u0010^\u001a\u0004\u0018\u00010]8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b^\u0010_\u001a\u0004\b`\u0010a\"\u0004\bb\u0010cR\u0018\u0010d\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u0018\u0010g\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u001d\u0010n\u001a\u0004\u0018\u00010i8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bj\u0010k\u001a\u0004\bl\u0010mR\u0018\u0010p\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010q¨\u0006t"}, d2 = {"Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lf4/a;", "T", "Landroidx/fragment/app/Fragment;", "Lcom/transsion/baselib/report/g;", "Lyg/m;", "Lcom/transsion/baselib/utils/DeviceKeyMonitor$b;", "<init>", "()V", "", "getClassTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "onPause", "logResume", "logPause", "onDestroy", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "onDisconnected", "receiveArguments", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "isShowPageStateLayoutTitle", "isRegisteDeviceKeyMonitor", "getEmptyDescText", "isShowTitleLayout", "getEmptyView", "(Z)Landroid/view/View;", "getErrorView", "getNoNetworkView", "()Landroid/view/View;", "getLocalNoNetworkView", "", "getScreenType", "()I", "getLoadingView", "pageStateFitStatusBar", "showContentView", "showEmptyView", "(Z)V", "showErrorView", "showLoadingView", "showNoNetworkView", "showLocalNoNetworkView", "isShow", "changeLoadingState", "showNoNetworkViewDelayed", "onDestroyView", "onHomeClick", "onRecentClick", "getViewBinding", "(Landroid/view/LayoutInflater;)Lf4/a;", "getPageStateLayoutTitle", "initViewData", "initViewModel", "initListener", "loadDefaultData", "retryLoadData", "Landroid/widget/ProgressBar;", "progressBar", "Landroid/widget/ProgressBar;", "getProgressBar", "()Landroid/widget/ProgressBar;", "setProgressBar", "(Landroid/widget/ProgressBar;)V", "mViewBinding", "Lf4/a;", "getMViewBinding", "()Lf4/a;", "setMViewBinding", "(Lf4/a;)V", "Landroid/widget/FrameLayout;", "flStateView", "Landroid/widget/FrameLayout;", "getFlStateView", "()Landroid/widget/FrameLayout;", "setFlStateView", "(Landroid/widget/FrameLayout;)V", "loadingView", "Landroid/view/View;", "Lcom/transsion/baselib/utils/DeviceKeyMonitor;", "deviceKeyMonitor", "Lcom/transsion/baselib/utils/DeviceKeyMonitor;", "Lqi/b;", "logViewConfig$delegate", "Lkotlin/Lazy;", "getLogViewConfig", "()Lqi/b;", "logViewConfig", "Ljava/lang/Runnable;", "showNoNetworkViewRunnable", "Ljava/lang/Runnable;", "Companion", "a", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class PageStatusFragment<T extends f4.a> extends Fragment implements com.transsion.baselib.report.g, m, DeviceKeyMonitor.b {
    public static final String TAG = "zxb_fragment";
    private DeviceKeyMonitor deviceKeyMonitor;
    private FrameLayout flStateView;
    private View loadingView;
    private T mViewBinding;
    private ProgressBar progressBar;
    public static final int $stable = 8;

    private final Lazy logViewConfig = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return PageStatusFragment.h0(this.f42275a);
        }
    });
    private Runnable showNoNetworkViewRunnable = new Runnable() {
        @Override
        public final void run() {
            PageStatusFragment.i0(this.f42276a);
        }
    };

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.baseui.fragment.PageStatusFragment$onConnected$1", f = "PageStatusFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;
        final PageStatusFragment<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PageStatusFragment<T> pageStatusFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = pageStatusFragment;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.this$0.showContentView();
            PageStatusFragment<T> pageStatusFragment = this.this$0;
            try {
                Result.Companion companion = Result.INSTANCE;
                pageStatusFragment.retryLoadData();
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public static final Unit c0(PageStatusFragment pageStatusFragment) {
        pageStatusFragment.retryLoadData();
        return Unit.f64096a;
    }

    public static final void d0(PageStatusFragment pageStatusFragment, View view) {
        pageStatusFragment.requireActivity().finish();
    }

    public static final Unit e0(PageStatusFragment pageStatusFragment) {
        pageStatusFragment.retryLoadData();
        return Unit.f64096a;
    }

    public static final Unit f0(PageStatusFragment pageStatusFragment) {
        String strF;
        qi.b logViewConfig = pageStatusFragment.getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            o.c(strF);
        }
        return Unit.f64096a;
    }

    public static final Unit g0(PageStatusFragment pageStatusFragment) {
        String strF;
        pageStatusFragment.retryLoadData();
        qi.b logViewConfig = pageStatusFragment.getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            o.b(strF);
        }
        return Unit.f64096a;
    }

    public static View getEmptyView$default(PageStatusFragment pageStatusFragment, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getEmptyView");
        }
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return pageStatusFragment.getEmptyView(z10);
    }

    public static View getErrorView$default(PageStatusFragment pageStatusFragment, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getErrorView");
        }
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return pageStatusFragment.getErrorView(z10);
    }

    public static final qi.b h0(PageStatusFragment pageStatusFragment) {
        return pageStatusFragment.newLogViewConfig();
    }

    public static final void i0(PageStatusFragment pageStatusFragment) {
        showNoNetworkView$default(pageStatusFragment, false, 1, null);
    }

    public static void showEmptyView$default(PageStatusFragment pageStatusFragment, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showEmptyView");
        }
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        pageStatusFragment.showEmptyView(z10);
    }

    public static void showErrorView$default(PageStatusFragment pageStatusFragment, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showErrorView");
        }
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        pageStatusFragment.showErrorView(z10);
    }

    public static void showLocalNoNetworkView$default(PageStatusFragment pageStatusFragment, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showLocalNoNetworkView");
        }
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        pageStatusFragment.showLocalNoNetworkView(z10);
    }

    public static void showNoNetworkView$default(PageStatusFragment pageStatusFragment, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showNoNetworkView");
        }
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        pageStatusFragment.showNoNetworkView(z10);
    }

    public final void changeLoadingState(boolean isShow) {
        ProgressBar progressBar = this.progressBar;
        if (progressBar != null) {
            uf.c.j(progressBar, isShow);
        }
    }

    public final String getClassTag() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public String getEmptyDescText() {
        return "";
    }

    public View getEmptyView(boolean isShowTitleLayout) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(2, getScreenType(), isShowTitleLayout, getPageStateLayoutTitle(), getEmptyDescText());
        return stateView;
    }

    public View getErrorView(boolean isShowTitleLayout) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(3, getScreenType(), isShowTitleLayout, getPageStateLayoutTitle(), getEmptyDescText());
        stateView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return PageStatusFragment.c0(this.f42277a);
            }
        });
        return stateView;
    }

    protected final FrameLayout getFlStateView() {
        return this.flStateView;
    }

    public View getLoadingView() {
        if (this.loadingView == null) {
            View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.default_base_loading_layout, (ViewGroup) this.flStateView, false);
            ((AppCompatImageView) viewInflate.findViewById(R$id.ivBack)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    PageStatusFragment.d0(this.f42281a, view);
                }
            });
            this.loadingView = viewInflate;
        }
        return this.loadingView;
    }

    public View getLocalNoNetworkView(boolean isShowTitleLayout) {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(1, getScreenType(), isShowTitleLayout, "", "");
        stateView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return PageStatusFragment.e0(this.f42278a);
            }
        });
        return stateView;
    }

    @Override
    public qi.b getLogViewConfig() {
        return (qi.b) this.logViewConfig.getValue();
    }

    public final T getMViewBinding() {
        return this.mViewBinding;
    }

    public View getNoNetworkView() {
        String strF;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        NoNetworkBigView noNetworkBigView = new NoNetworkBigView(contextRequireContext, isShowPageStateLayoutTitle());
        noNetworkBigView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return PageStatusFragment.g0(this.f42279a);
            }
        });
        noNetworkBigView.goToSetting(new Function0() {
            @Override
            public final Object invoke() {
                return PageStatusFragment.f0(this.f42280a);
            }
        });
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            o.a(strF);
        }
        return noNetworkBigView;
    }

    public abstract String getPageStateLayoutTitle();

    public final ProgressBar getProgressBar() {
        return this.progressBar;
    }

    public int getScreenType() {
        return 1;
    }

    public abstract f4.a getViewBinding(LayoutInflater inflater);

    public abstract void initListener();

    public abstract void initViewData();

    public void initViewData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
    }

    public abstract void initViewModel();

    public boolean isAudioShowNoNetworkLayout() {
        return true;
    }

    public boolean isMonitorNetworkState() {
        return true;
    }

    public boolean isRegisteDeviceKeyMonitor() {
        return false;
    }

    public boolean isShowPageStateLayoutTitle() {
        return true;
    }

    public void loadDefaultData() {
    }

    public void logPause() {
        com.transsion.baselib.report.g.a.b(this);
    }

    public void logResume() {
        com.transsion.baselib.report.g.a.c(this);
    }

    public qi.b newLogViewConfig() {
        return com.transsion.baselib.report.g.a.a(this);
    }

    @Override
    public void onConnected() {
        m.a.a(this);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        Context context;
        super.onCreate(savedInstanceState);
        receiveArguments();
        if (isMonitorNetworkState()) {
            l.f76264a.l(this);
        }
        if (!isRegisteDeviceKeyMonitor() || (context = getContext()) == null) {
            return;
        }
        this.deviceKeyMonitor = new DeviceKeyMonitor(context, this);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        Intrinsics.h(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        View viewInflate = inflater.inflate(R$layout.fragment_default_base_layout, container, false);
        this.mViewBinding = (T) getViewBinding(inflater);
        if (viewInflate != null && (frameLayout2 = (FrameLayout) viewInflate.findViewById(R$id.flContent)) != null) {
            T t10 = this.mViewBinding;
            frameLayout2.addView(t10 != null ? t10.getRoot() : null);
        }
        if (viewInflate == null || (frameLayout = (FrameLayout) viewInflate.findViewById(R$id.flStateView)) == null) {
            frameLayout = null;
        } else if (isAudioShowNoNetworkLayout() && !l.f76264a.e()) {
            frameLayout.setVisibility(0);
            frameLayout.addView(getNoNetworkView());
        }
        this.flStateView = frameLayout;
        this.progressBar = viewInflate != null ? (ProgressBar) viewInflate.findViewById(R$id.progressBar) : null;
        return viewInflate;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (isMonitorNetworkState()) {
            l.f76264a.m(this);
        }
        DeviceKeyMonitor deviceKeyMonitor = this.deviceKeyMonitor;
        if (deviceKeyMonitor != null) {
            deviceKeyMonitor.b();
        }
    }

    @Override
    public void onDestroyView() {
        View root;
        super.onDestroyView();
        T t10 = this.mViewBinding;
        if (t10 != null && (root = t10.getRoot()) != null) {
            root.removeCallbacks(this.showNoNetworkViewRunnable);
        }
        this.showNoNetworkViewRunnable = null;
    }

    @Override
    public void onDisconnected() {
    }

    @Override
    public void onHomeClick() {
    }

    @Override
    public void onPause() {
        super.onPause();
        if (isHidden()) {
            return;
        }
        logPause();
    }

    @Override
    public void onRecentClick() {
    }

    @Override
    public void onResume() {
        super.onResume();
        logResume();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initViewData();
        initViewData(view, savedInstanceState);
        initViewModel();
        initListener();
        loadDefaultData();
    }

    public final void pageStateFitStatusBar() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            uf.c.e(frameLayout);
        }
    }

    public void receiveArguments() {
    }

    public abstract void retryLoadData();

    protected final void setFlStateView(FrameLayout frameLayout) {
        this.flStateView = frameLayout;
    }

    public final void setMViewBinding(T t10) {
        this.mViewBinding = t10;
    }

    public final void setProgressBar(ProgressBar progressBar) {
        this.progressBar = progressBar;
    }

    public final void showContentView() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    public final void showEmptyView(boolean isShowTitleLayout) {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(getEmptyView(isShowTitleLayout));
        }
    }

    public final void showErrorView(boolean isShowTitleLayout) {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(getErrorView(isShowTitleLayout));
        }
    }

    public final void showLoadingView() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(getLoadingView());
        }
    }

    public final void showLocalNoNetworkView(boolean isShowTitleLayout) {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(getLocalNoNetworkView(isShowTitleLayout));
        }
    }

    public final void showNoNetworkView(boolean isShowTitleLayout) {
        FrameLayout frameLayout;
        if (getContext() == null || (frameLayout = this.flStateView) == null) {
            return;
        }
        frameLayout.removeAllViews();
        frameLayout.setVisibility(0);
        View noNetworkView = getNoNetworkView();
        if (noNetworkView instanceof NoNetworkBigView) {
            NoNetworkBigView.showTitle$default((NoNetworkBigView) noNetworkView, isShowTitleLayout, null, 2, null);
        }
        frameLayout.addView(noNetworkView);
    }

    public final void showNoNetworkViewDelayed() {
        View root;
        T t10 = this.mViewBinding;
        if (t10 == null || (root = t10.getRoot()) == null) {
            return;
        }
        root.postDelayed(this.showNoNetworkViewRunnable, 200L);
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        v.a(this).b(new AnonymousClass1(this, null));
    }
}
