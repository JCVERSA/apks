package com.transsion.publish.ui;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.PermissionUtils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.publish.R$id;
import com.transsion.publish.R$string;
import com.transsion.publish.api.VsMediaInfo;
import com.transsion.publish.bean.PreviewMediaConfirmEvent;
import com.transsion.publish.bean.PreviewVideoBean;
import com.transsion.publish.view.CustomHeader;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u0019\u0010\u0018\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00101\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010.R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00108\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0017\u0010<\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b9\u00107\u001a\u0004\b:\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010C¨\u0006E"}, d2 = {"Lcom/transsion/publish/ui/SelectVideoActivity;", "Lcom/transsion/baseui/activity/BaseActivity;", "Llo/k;", "<init>", "()V", "", "initData", "A0", "initView", "q0", "y0", "showLoading", "s0", "", "size", "p0", "(I)V", "", "isTranslucent", "()Z", "isStatusDark", "isChangeStatusBar", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "r0", "()Llo/k;", "onDestroy", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Landroidx/recyclerview/widget/RecyclerView;", "a", "Landroidx/recyclerview/widget/RecyclerView;", "videoRecycler", "Lcom/transsion/publish/adapter/k0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/publish/adapter/k0;", "videoAdapter", "Lno/c;", "c", "Lno/c;", "selectVideoManager", "Landroid/widget/LinearLayout;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/widget/LinearLayout;", "noContentView", "e", "lockView", "Landroid/widget/ProgressBar;", "f", "Landroid/widget/ProgressBar;", "selectVideoLoading", "g", "I", "maxLimit", "h", "getScreenWidth", "()I", "screenWidth", "Lio/reactivex/rxjava3/disposables/c;", "i", "Lio/reactivex/rxjava3/disposables/c;", "disposable", "", "j", "J", "showDuration", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SelectVideoActivity extends BaseActivity<lo.k> {

    private RecyclerView videoRecycler;

    private com.transsion.publish.adapter.k0 videoAdapter;

    private no.c selectVideoManager;

    private LinearLayout noContentView;

    private LinearLayout lockView;

    private ProgressBar selectVideoLoading;

    private int maxLimit = 1;

    private final int screenWidth = com.blankj.utilcode.util.y.e();

    private io.reactivex.rxjava3.disposables.c disposable;

    private long showDuration;

    public static final class a implements io.reactivex.rxjava3.core.o {
        a() {
        }

        @Override
        public void onNext(List t10) {
            Intrinsics.h(t10, "t");
            if (t10.isEmpty()) {
                LinearLayout linearLayout = SelectVideoActivity.this.noContentView;
                if (linearLayout != null) {
                    linearLayout.setVisibility(0);
                }
            } else {
                com.transsion.publish.adapter.k0 k0Var = SelectVideoActivity.this.videoAdapter;
                if (k0Var != null) {
                    k0Var.addData(t10);
                }
            }
            SelectVideoActivity.this.s0();
        }

        @Override
        public void onComplete() {
            LinearLayout linearLayout;
            com.transsion.publish.adapter.k0 k0Var;
            io.reactivex.rxjava3.disposables.c cVar = SelectVideoActivity.this.disposable;
            if (cVar != null) {
                cVar.dispose();
            }
            SelectVideoActivity.this.s0();
            if ((SelectVideoActivity.this.videoAdapter == null || ((k0Var = SelectVideoActivity.this.videoAdapter) != null && k0Var.getItemCount() == 0)) && (linearLayout = SelectVideoActivity.this.noContentView) != null) {
                linearLayout.setVisibility(0);
            }
        }

        @Override
        public void onError(Throwable e10) {
            Intrinsics.h(e10, "e");
            wf.a.C0922a.f(wf.a.f74274a, "SelectVideoManager", "onError e:" + e10, false, 4, null);
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c d10) {
            Intrinsics.h(d10, "d");
            SelectVideoActivity.this.disposable = d10;
        }
    }

    public static final class b implements PermissionUtils.b {
        b() {
        }

        @Override
        public void onDenied() {
            LinearLayout linearLayout = SelectVideoActivity.this.lockView;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
        }

        @Override
        public void onGranted() {
            LinearLayout linearLayout = SelectVideoActivity.this.lockView;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            SelectVideoActivity.this.y0();
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    class AnonymousClass4 extends FunctionReferenceImpl implements Function1<Integer, Unit> {
        AnonymousClass4(Object obj) {
            super(1, obj, SelectVideoActivity.class, "checkSelect", "checkSelect(I)V", 0);
        }

        @Override
        public Object invoke(Object obj) {
            invoke(((Number) obj).intValue());
            return Unit.f64096a;
        }

        public final void invoke(int i10) {
            ((SelectVideoActivity) this.receiver).p0(i10);
        }
    }

    private final void A0() {
        if (PermissionUtils.s("android.permission.READ_EXTERNAL_STORAGE")) {
            y0();
        } else {
            PermissionUtils.x("android.permission.READ_EXTERNAL_STORAGE").m(new b()).y();
        }
    }

    private final void initData() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SelectVideoActivity.t0(this.f48477a, (PreviewMediaConfirmEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PreviewMediaConfirmEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        ((CustomHeader) findViewById(R$id.sv_title_bar)).setOnBackClick(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SelectVideoActivity.u0(this.f48483a, view);
            }
        });
        p0(0);
        TextView confirmTV = ((lo.k) getMViewBinding()).f66083b;
        Intrinsics.g(confirmTV, "confirmTV");
        uf.c.c(confirmTV, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SelectVideoActivity.v0(this.f48485a, (View) obj);
            }
        }, 1, null);
        this.selectVideoLoading = (ProgressBar) findViewById(R$id.select_video_loading);
        this.noContentView = (LinearLayout) findViewById(R$id.sv_no_content_view);
        this.lockView = (LinearLayout) findViewById(R$id.sv_lock_view);
        TextView textView = (TextView) findViewById(R$id.sv_tv_grant);
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SelectVideoActivity.w0(view);
                }
            });
        }
        this.videoRecycler = (RecyclerView) findViewById(R$id.select_video_recycler);
        this.videoAdapter = new com.transsion.publish.adapter.k0(new AnonymousClass4(this));
        RecyclerView recyclerView = this.videoRecycler;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new GridLayoutManager((Context) this, 4, 1, false));
        }
        RecyclerView recyclerView2 = this.videoRecycler;
        if (recyclerView2 != null) {
            recyclerView2.addItemDecoration(new qo.f(com.blankj.utilcode.util.a0.a(2.0f)));
        }
        RecyclerView recyclerView3 = this.videoRecycler;
        if (recyclerView3 != null) {
            recyclerView3.setAdapter(this.videoAdapter);
        }
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SelectVideoActivity.x0(this.f48489a, (PreviewVideoBean) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = PreviewVideoBean.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void p0(int size) {
        int iE = RangesKt.e(size, 0);
        TextView selectNumTV = ((lo.k) getMViewBinding()).f66084c;
        Intrinsics.g(selectNumTV, "selectNumTV");
        selectNumTV.setVisibility(iE > 0 ? 0 : 8);
        ((lo.k) getMViewBinding()).f66084c.setText(getString(R$string.video_select_num_tips, Integer.valueOf(iE), Integer.valueOf(this.maxLimit)));
    }

    private final void q0() {
        List listM;
        com.transsion.publish.adapter.k0 k0Var = this.videoAdapter;
        VsMediaInfo vsMediaInfo = (k0Var == null || (listM = k0Var.m()) == null) ? null : (VsMediaInfo) CollectionsKt.k0(listM);
        if (vsMediaInfo != null) {
            jo.b bVar = new jo.b();
            bVar.o(1);
            bVar.n(1);
            bVar.u(vsMediaInfo);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = jo.b.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, bVar, 0L);
        }
        finish();
    }

    public final void s0() {
        ProgressBar progressBar = this.selectVideoLoading;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
    }

    private final void showLoading() {
        ProgressBar progressBar = this.selectVideoLoading;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
    }

    public static final Unit t0(SelectVideoActivity selectVideoActivity, PreviewMediaConfirmEvent it) {
        Intrinsics.h(it, "it");
        selectVideoActivity.q0();
        return Unit.f64096a;
    }

    public static final void u0(SelectVideoActivity selectVideoActivity, View view) {
        selectVideoActivity.finish();
    }

    public static final Unit v0(SelectVideoActivity selectVideoActivity, View it) {
        Intrinsics.h(it, "it");
        selectVideoActivity.q0();
        return Unit.f64096a;
    }

    public static final void w0(View view) {
        PermissionUtils.v();
    }

    public static final Unit x0(SelectVideoActivity selectVideoActivity, PreviewVideoBean it) {
        Intrinsics.h(it, "it");
        VsMediaInfo select = it.getSelect();
        if (select == null) {
            return Unit.f64096a;
        }
        com.transsion.publish.adapter.k0 k0Var = selectVideoActivity.videoAdapter;
        if (k0Var != null) {
            k0Var.x(select);
        }
        return Unit.f64096a;
    }

    public final void y0() {
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        showLoading();
        this.selectVideoManager = new no.c(this);
        io.reactivex.rxjava3.core.j.g(new io.reactivex.rxjava3.core.l() {
            @Override
            public final void a(io.reactivex.rxjava3.core.k kVar) throws Throwable {
                SelectVideoActivity.z0(this.f48480a, kVar);
            }
        }).b(12).v(io.reactivex.rxjava3.android.schedulers.b.c()).E(ey.a.c()).subscribe(new a());
    }

    public static final void z0(SelectVideoActivity selectVideoActivity, io.reactivex.rxjava3.core.k emitter) throws Throwable {
        Intrinsics.h(emitter, "emitter");
        wf.a.C0922a.f(wf.a.f74274a, "SelectVideoManager", "loadLocalVideo success", false, 4, null);
        no.c cVar = selectVideoActivity.selectVideoManager;
        if (cVar != null) {
            cVar.a(emitter);
        }
        if (emitter.isDisposed()) {
            return;
        }
        emitter.onComplete();
    }

    @Override
    public boolean isChangeStatusBar() {
        return false;
    }

    @Override
    public boolean isStatusDark() {
        return true;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("select_video", false, 2, null);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.showDuration = System.currentTimeMillis();
        initView();
        initData();
        A0();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        io.reactivex.rxjava3.disposables.c cVar = this.disposable;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    @Override
    public lo.k getViewBinding() {
        lo.k kVarC = lo.k.c(getLayoutInflater());
        Intrinsics.g(kVarC, "inflate(...)");
        return kVarC;
    }
}
