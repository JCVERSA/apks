package com.transsion.baseui.activity;

import android.app.Activity;
import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.app.NotificationCompat;
import androidx.p009lifecycle.v;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.view.NoNetworkBigView;
import com.tn.lib.view.StateView;
import com.tn.lib.view.o;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.R$id;
import com.transsion.baseui.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import f4.a;
import java.lang.ref.WeakReference;
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

@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b'\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0006J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0006J\u000f\u0010\u0013\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0013\u0010\u0006J\u000f\u0010\u0014\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0014\u0010\u0006J\u0019\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u001a\u0010\u0006J\u0017\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0007¢\u0006\u0004\b\u001f\u0010\u0006J\u000f\u0010 \u001a\u00020\u0017H\u0016¢\u0006\u0004\b \u0010!J\u0019\u0010$\u001a\u00020\u00072\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0007H\u0016¢\u0006\u0004\b&\u0010\u0006J\u001f\u0010+\u001a\u00020\u00072\u0006\u0010(\u001a\u00020'2\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0017H\u0016¢\u0006\u0004\b-\u0010!J\u000f\u0010.\u001a\u00020\u0017H\u0016¢\u0006\u0004\b.\u0010!J\u000f\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0017H\u0016¢\u0006\u0004\b2\u0010!J\u000f\u00103\u001a\u00020\u0017H\u0016¢\u0006\u0004\b3\u0010!J\u000f\u00104\u001a\u00020\u0017H\u0016¢\u0006\u0004\b4\u0010!J\u000f\u00105\u001a\u00020\u0017H\u0016¢\u0006\u0004\b5\u0010!J\u000f\u00106\u001a\u00020\u0017H\u0016¢\u0006\u0004\b6\u0010!J\u000f\u00107\u001a\u00020\u0007H\u0016¢\u0006\u0004\b7\u0010\u0006J\u000f\u00109\u001a\u000208H\u0016¢\u0006\u0004\b9\u0010:J\u0011\u0010<\u001a\u0004\u0018\u00010;H\u0016¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u00020;H\u0016¢\u0006\u0004\b>\u0010=J\u0011\u0010?\u001a\u0004\u0018\u00010;H\u0016¢\u0006\u0004\b?\u0010=J\r\u0010@\u001a\u00020\u0007¢\u0006\u0004\b@\u0010\u0006J\r\u0010A\u001a\u00020\u0007¢\u0006\u0004\bA\u0010\u0006J\r\u0010B\u001a\u00020\u0007¢\u0006\u0004\bB\u0010\u0006J\r\u0010C\u001a\u00020\u0007¢\u0006\u0004\bC\u0010\u0006J\r\u0010D\u001a\u00020\u0007¢\u0006\u0004\bD\u0010\u0006J\r\u0010E\u001a\u00020\u0007¢\u0006\u0004\bE\u0010\u0006J\u000f\u0010F\u001a\u000208H&¢\u0006\u0004\bF\u0010:J\u000f\u0010G\u001a\u00020\u0007H&¢\u0006\u0004\bG\u0010\u0006J\u000f\u0010H\u001a\u00020\u0007H&¢\u0006\u0004\bH\u0010\u0006J\u000f\u0010I\u001a\u00020\u0007H&¢\u0006\u0004\bI\u0010\u0006J\u000f\u0010J\u001a\u00020\u0007H&¢\u0006\u0004\bJ\u0010\u0006J\u000f\u0010K\u001a\u00020\u0007H&¢\u0006\u0004\bK\u0010\u0006R$\u0010S\u001a\u0004\u0018\u00010L8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bM\u0010N\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010RR$\u0010W\u001a\u0004\u0018\u00010L8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010N\u001a\u0004\bU\u0010P\"\u0004\bV\u0010RR\u0018\u0010[\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u0018\u0010^\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0016\u0010b\u001a\u00020_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010d\u001a\u00020_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010aR\u001d\u0010j\u001a\u0004\u0018\u00010e8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bf\u0010g\u001a\u0004\bh\u0010i¨\u0006k"}, d2 = {"Lcom/transsion/baseui/activity/BaseNewActivity;", "Lf4/a;", "T", "Lcom/transsion/baseui/activity/BaseMusicFloatActivity;", "Lcom/transsion/baselib/report/g;", "<init>", "()V", "", "setStatusBar", "Landroid/content/Context;", "newBase", "attachBaseContext", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onPause", "onStop", "onDestroy", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "setView", "Lcom/gyf/immersionbar/ImmersionBar;", "with", "B0", "(Lcom/gyf/immersionbar/ImmersionBar;)V", "t0", "setImmersionStatusBar", "()Z", "Landroid/app/Activity;", "context", "j0", "(Landroid/app/Activity;)V", "onDisconnected", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "n0", "isChangeStatusBar", "", "statusColor", "()I", "isStatusDark", "isTranslucent", "o0", "isAttach", "A0", "q0", "", "a0", "()Ljava/lang/String;", "Landroid/view/View;", "b0", "()Landroid/view/View;", "g0", "d0", "s0", "u0", "v0", "w0", "x0", "y0", "f0", "l0", "m0", "k0", "p0", "retryLoadData", "Landroid/widget/FrameLayout;", "a", "Landroid/widget/FrameLayout;", "c0", "()Landroid/widget/FrameLayout;", "setLlRootView", "(Landroid/widget/FrameLayout;)V", "llRootView", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getFlStateView", "setFlStateView", "flStateView", "Landroid/widget/ProgressBar;", "c", "Landroid/widget/ProgressBar;", "progressBar", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/view/View;", "loadingView", "", "e", "F", "downY", "f", "moveY", "Lqi/b;", "g", "Lkotlin/Lazy;", "getLogViewConfig", "()Lqi/b;", "logViewConfig", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseNewActivity<T extends f4.a> extends BaseMusicFloatActivity<T> implements com.transsion.baselib.report.g {

    public static final int f42240h = 8;

    private FrameLayout llRootView;

    private FrameLayout flStateView;

    private ProgressBar progressBar;

    private View loadingView;

    private float downY;

    private float moveY;

    private final Lazy logViewConfig = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return BaseNewActivity.r0(this.f42258a);
        }
    });

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.baseui.activity.BaseNewActivity$onConnected$1", f = "BaseNewActivity.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;
        final BaseNewActivity<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BaseNewActivity<T> baseNewActivity, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = baseNewActivity;
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
            this.this$0.u0();
            BaseNewActivity<T> baseNewActivity = this.this$0;
            try {
                Result.Companion companion = Result.INSTANCE;
                baseNewActivity.retryLoadData();
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

    public static final void e0(BaseNewActivity baseNewActivity, View view) {
        baseNewActivity.finish();
    }

    public static final Unit h0(BaseNewActivity baseNewActivity) {
        baseNewActivity.retryLoadData();
        o.b(baseNewActivity.getPageName());
        return Unit.f64096a;
    }

    public static final Unit i0(BaseNewActivity baseNewActivity) {
        o.c(baseNewActivity.getPageName());
        return Unit.f64096a;
    }

    public static final qi.b r0(BaseNewActivity baseNewActivity) {
        return baseNewActivity.newLogViewConfig();
    }

    private final void setStatusBar() {
        if (setImmersionStatusBar()) {
            ImmersionBar immersionBarWith = ImmersionBar.with(this);
            if (isChangeStatusBar()) {
                immersionBarWith.statusBarColor(statusColor());
            }
            if (isTranslucent()) {
                immersionBarWith.statusBarAlpha(0.0f);
            } else {
                immersionBarWith.statusBarAlpha(1.0f);
            }
            if (isStatusDark()) {
                immersionBarWith.statusBarDarkFont(true);
            } else {
                immersionBarWith.statusBarDarkFont(false);
            }
            immersionBarWith.fitsSystemWindows(o0());
            Intrinsics.e(immersionBarWith);
            B0(immersionBarWith);
            immersionBarWith.init();
        }
    }

    public static final void z0(BaseNewActivity baseNewActivity) {
        baseNewActivity.x0();
    }

    public boolean A0() {
        return false;
    }

    public void B0(ImmersionBar with) {
        Intrinsics.h(with, "with");
    }

    public String getEmptyDesc() {
        return "";
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        if (newBase == null) {
            super.attachBaseContext(newBase);
        } else {
            com.transsion.baselib.locale.d.b bVar = com.transsion.baselib.locale.d.f42155f;
            super.attachBaseContext(bVar.k(newBase, bVar.e().j()));
        }
    }

    public View b0() {
        StateView stateView = new StateView(this);
        if (A0()) {
            stateView.setFitsSystemWindows(true);
        }
        stateView.showData(2, 1, true, f0(), getEmptyDesc());
        return stateView;
    }

    public final FrameLayout getLlRootView() {
        return this.llRootView;
    }

    public View d0() {
        if (this.loadingView == null) {
            View viewInflate = LayoutInflater.from(this).inflate(R$layout.default_base_loading_layout, (ViewGroup) this.flStateView, false);
            ((AppCompatImageView) viewInflate.findViewById(R$id.ivBack)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    BaseNewActivity.e0(this.f42260a, view);
                }
            });
            this.loadingView = viewInflate;
        }
        return this.loadingView;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        Integer numValueOf = event != null ? Integer.valueOf(event.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.downY = event.getRawY();
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            float rawY = event.getRawY();
            this.moveY = rawY;
            if (Math.abs(rawY - this.downY) > 50.0f) {
                ep.b bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0]);
                if (bVar != null) {
                    bVar.b();
                }
                j0(this);
            }
        }
        return super.dispatchTouchEvent(event);
    }

    public abstract String f0();

    public View g0() {
        NoNetworkBigView noNetworkBigView = new NoNetworkBigView(this);
        noNetworkBigView.showTitle(true, f0());
        noNetworkBigView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return BaseNewActivity.h0(this.f42256a);
            }
        });
        noNetworkBigView.goToSetting(new Function0() {
            @Override
            public final Object invoke() {
                return BaseNewActivity.i0(this.f42257a);
            }
        });
        o.a(getPageName());
        return noNetworkBigView;
    }

    @Override
    public qi.b getLogViewConfig() {
        return (qi.b) this.logViewConfig.getValue();
    }

    public boolean isAttach() {
        return true;
    }

    public boolean isChangeStatusBar() {
        return false;
    }

    public boolean isStatusDark() {
        return true;
    }

    public boolean isTranslucent() {
        return false;
    }

    public void j0(Activity context) {
        try {
            Result.Companion companion = Result.INSTANCE;
            Object systemService = context != null ? context.getSystemService("input_method") : null;
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            Result.m453constructorimpl(Boolean.valueOf(((InputMethodManager) systemService).hideSoftInputFromWindow(context.getWindow().getDecorView().getWindowToken(), 0)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public abstract void k0();

    public abstract void l0();

    public abstract void m0();

    public boolean n0() {
        return true;
    }

    public qi.b newLogViewConfig() {
        return com.transsion.baselib.report.g.a.a(this);
    }

    public boolean o0() {
        return true;
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        super.onConnected(network, networkCapabilities);
        v.a(this).b(new AnonymousClass1(this, null));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStatusBar();
        l0();
        m0();
        k0();
        if (l.f76264a.e()) {
            p0();
        }
        q0();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void onDisconnected() {
        super.onDisconnected();
    }

    @Override
    public void onPause() {
        super.onPause();
        com.transsion.baselib.report.g.a.b(this);
    }

    @Override
    public void onResume() {
        ep.b bVar;
        super.onResume();
        com.transsion.baselib.report.g.a.c(this);
        if (!isAttach() || (bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0])) == null) {
            return;
        }
        bVar.g(new WeakReference(this));
    }

    @Override
    protected void onStop() {
        ep.b bVar;
        super.onStop();
        if (!isAttach() || (bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0])) == null) {
            return;
        }
        bVar.i(new WeakReference(this));
    }

    public abstract void p0();

    public void q0() {
    }

    public abstract void retryLoadData();

    public final void s0() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            uf.c.e(frameLayout);
        }
    }

    public boolean setImmersionStatusBar() {
        return true;
    }

    @Override
    protected void setView() {
        setContentView(R$layout.default_base_layout);
        this.llRootView = (FrameLayout) findViewById(R$id.llRootView);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.flContent);
        if (frameLayout != null) {
            frameLayout.addView(getMViewBinding().getRoot());
        }
        FrameLayout frameLayout2 = (FrameLayout) findViewById(R$id.flStateView);
        if (frameLayout2 == null) {
            frameLayout2 = null;
        } else if (n0() && !l.f76264a.e()) {
            frameLayout2.setVisibility(0);
            frameLayout2.addView(g0());
        }
        this.flStateView = frameLayout2;
        this.progressBar = (ProgressBar) findViewById(R$id.progressBar);
    }

    public int statusColor() {
        return R$color.bg_01;
    }

    public final void t0() {
        setStatusBar();
    }

    public final void u0() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    public final void v0() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(b0());
        }
    }

    public final void w0() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(d0());
        }
    }

    public final void x0() {
        FrameLayout frameLayout = this.flStateView;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            frameLayout.setVisibility(0);
            frameLayout.addView(g0());
        }
    }

    public final void y0() {
        getMViewBinding().getRoot().postDelayed(new Runnable() {
            @Override
            public final void run() {
                BaseNewActivity.z0(this.f42259a);
            }
        }, 200L);
    }
}
