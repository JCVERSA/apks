package com.transsnet.downloader.widget;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.PlayUrl;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.api.DownloadPageType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0005\u0010\tB#\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0014\u0010\u000fJ\u000f\u0010\u0015\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0015\u0010\u000fJ\u000f\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\r¢\u0006\u0004\b\u0019\u0010\u000fJ\u001b\u0010\u001c\u001a\u00020\r2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00100\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010 \u001a\u00020\r2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\r0\u001e¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\r2\b\u0010#\u001a\u0004\u0018\u00010\"¢\u0006\u0004\b$\u0010%J\r\u0010&\u001a\u00020\r¢\u0006\u0004\b&\u0010\u000fJ\u000f\u0010'\u001a\u00020\rH\u0014¢\u0006\u0004\b'\u0010\u000fJ\u000f\u0010(\u001a\u00020\rH\u0014¢\u0006\u0004\b(\u0010\u000fJ\r\u0010)\u001a\u00020\r¢\u0006\u0004\b)\u0010\u000fJ\u001f\u0010.\u001a\u00020\r2\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\rH\u0016¢\u0006\u0004\b0\u0010\u000fR\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u001b\u0010:\u001a\u0002058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u001e\u0010A\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010G¨\u0006I"}, d2 = {"Lcom/transsnet/downloader/widget/DownloadPanelForYouFootView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lyg/m;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", TmcStartParams.KEY_URL_SHORT, "()V", "Lcom/transsion/moviedetailapi/bean/Subject;", WebConstants.FIELD_ITEM, "s", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "w", TtmlNode.TAG_P, "Landroid/view/View;", "getForYouNoNetView", "()Landroid/view/View;", "configChange", "", "data", "setData", "(Ljava/util/List;)V", "Lkotlin/Function0;", "callback", "setRefreshClickCallback", "(Lkotlin/jvm/functions/Function0;)V", "Landroidx/recyclerview/widget/RecyclerView;", "parentRecyclerView", "initBrowseReport", "(Landroidx/recyclerview/widget/RecyclerView;)V", "onPageResume", "onAttachedToWindow", "onDetachedFromWindow", "showNoNetView", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "onDisconnected", "Lbx/u0;", "a", "Lbx/u0;", "viewBinding", "Lex/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "getDownloadReport", "()Lex/a;", "downloadReport", "Lcom/transsnet/downloader/adapter/w0;", "c", "Lcom/transsnet/downloader/adapter/w0;", "movieRecAdapter", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/jvm/functions/Function0;", "refreshCallback", "Lij/e;", "e", "Lij/e;", "exposureTracker", "f", "Landroid/view/View;", "noNetView", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadPanelForYouFootView extends ConstraintLayout implements yg.m {

    private final bx.u0 viewBinding;

    private final Lazy downloadReport;

    private com.transsnet.downloader.adapter.w0 movieRecAdapter;

    private Function0 refreshCallback;

    private ij.e exposureTracker;

    private View noNetView;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadPanelForYouFootView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    private final ex.a getDownloadReport() {
        return (ex.a) this.downloadReport.getValue();
    }

    private final View getForYouNoNetView() {
        if (this.noNetView == null) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            StateView stateView = new StateView(context);
            stateView.showData(1, 6, false, "", "");
            stateView.retry(new Function0() {
                @Override
                public final Object invoke() {
                    return DownloadPanelForYouFootView.r(this.f57991a);
                }
            });
            this.noNetView = stateView;
        }
        View view = this.noNetView;
        Intrinsics.e(view);
        return view;
    }

    public static final void o(DownloadPanelForYouFootView downloadPanelForYouFootView, View view) {
        downloadPanelForYouFootView.w();
        Function0 function0 = downloadPanelForYouFootView.refreshCallback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final void p() {
        ViewPropertyAnimator viewPropertyAnimatorAnimate = this.viewBinding.f16261c.animate();
        if (viewPropertyAnimatorAnimate != null) {
            viewPropertyAnimatorAnimate.cancel();
        }
    }

    public static final ex.a q() {
        return new ex.a();
    }

    public static final Unit r(DownloadPanelForYouFootView downloadPanelForYouFootView) {
        Function0 function0 = downloadPanelForYouFootView.refreshCallback;
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f64096a;
    }

    private final void s(Subject item) {
        String playUrl;
        String playUrl2;
        Integer subjectType = item.getSubjectType();
        int value = SubjectType.SHORT_TV.getValue();
        if (subjectType != null && subjectType.intValue() == value) {
            DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            downloadManagerApiA.d0((FragmentActivity) context, DownloadPageType.DOWNLOAD.getPageName(), (384 & 4) != 0 ? "" : "", item.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : item, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
            return;
        }
        if (item.isJumpBrowser()) {
            PlayUrl playUrl3 = item.getPlayUrl();
            if (playUrl3 == null || (playUrl2 = playUrl3.getPlayUrl()) == null) {
                return;
            }
            ij.k.i(playUrl2);
            return;
        }
        if (!item.isJumpWebview()) {
            Navigator navigatorC = TheRouter.c("/movie/detail");
            Integer subjectType2 = item.getSubjectType();
            Navigator.x(navigatorC.F("subject_type", subjectType2 != null ? subjectType2.intValue() : SubjectType.MOVIE.getValue()).K("id", item.getSubjectId()).K("ops", item.getOps()), getContext(), null, 2, null);
        } else {
            PlayUrl playUrl4 = item.getPlayUrl();
            if (playUrl4 == null || (playUrl = playUrl4.getPlayUrl()) == null) {
                return;
            }
            ij.k.h(playUrl, null, 1, null);
        }
    }

    public static final void setData$lambda$6(DownloadPanelForYouFootView downloadPanelForYouFootView) {
        ij.e eVar = downloadPanelForYouFootView.exposureTracker;
        if (eVar != null) {
            eVar.e();
        }
    }

    public static final Unit t(DownloadPanelForYouFootView downloadPanelForYouFootView, int i10) {
        Subject subject;
        com.transsnet.downloader.adapter.w0 w0Var = downloadPanelForYouFootView.movieRecAdapter;
        if (w0Var == null || (subject = (Subject) w0Var.f0(i10)) == null) {
            return Unit.f64096a;
        }
        downloadPanelForYouFootView.getDownloadReport().a(DownloadPageType.DOWNLOAD.getPageName(), subject, i10, -1L);
        return Unit.f64096a;
    }

    private final void u() {
        RecyclerView recyclerView = this.viewBinding.f16262d;
        recyclerView.setNestedScrollingEnabled(false);
        Context context = recyclerView.getContext();
        Context context2 = recyclerView.getContext();
        Intrinsics.g(context2, "getContext(...)");
        recyclerView.setLayoutManager(new NpaGridLayoutManager(context, com.transsion.baseui.util.b.a(context2) ? 4 : 3));
        recyclerView.addItemDecoration(new tf.a(lj.a.b(8), lj.a.b(12), 0, 0));
        com.transsnet.downloader.adapter.w0 w0Var = new com.transsnet.downloader.adapter.w0(new ArrayList());
        w0Var.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                DownloadPanelForYouFootView.v(this.f57998a, baseQuickAdapter, view, i10);
            }
        });
        this.movieRecAdapter = w0Var;
        recyclerView.setAdapter(w0Var);
    }

    public static final void v(DownloadPanelForYouFootView downloadPanelForYouFootView, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i10);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            downloadPanelForYouFootView.s(subject);
            downloadPanelForYouFootView.getDownloadReport().b(DownloadPageType.DOWNLOAD.getPageName(), subject, i10);
        }
    }

    private final void w() {
        final AppCompatImageView appCompatImageView = this.viewBinding.f16261c;
        appCompatImageView.animate().cancel();
        ViewPropertyAnimator viewPropertyAnimatorAnimate = appCompatImageView.animate();
        viewPropertyAnimatorAnimate.setDuration(1000L);
        viewPropertyAnimatorAnimate.rotation(appCompatImageView.getRotation() + 360.0f);
        viewPropertyAnimatorAnimate.setInterpolator(new AccelerateDecelerateInterpolator());
        ViewPropertyAnimator viewPropertyAnimatorWithEndAction = viewPropertyAnimatorAnimate.withEndAction(new Runnable() {
            @Override
            public final void run() {
                DownloadPanelForYouFootView.x(appCompatImageView, this);
            }
        });
        if (viewPropertyAnimatorWithEndAction != null) {
            viewPropertyAnimatorWithEndAction.start();
        }
    }

    public static final void x(AppCompatImageView appCompatImageView, DownloadPanelForYouFootView downloadPanelForYouFootView) {
        if (appCompatImageView.getRotation() >= 360.0f) {
            appCompatImageView.setRotation(appCompatImageView.getRotation() - 360);
        }
        downloadPanelForYouFootView.w();
    }

    public final void configChange() {
        com.transsnet.downloader.adapter.w0 w0Var = this.movieRecAdapter;
        if (w0Var != null) {
            w0Var.notifyDataSetChanged();
        }
    }

    public final void initBrowseReport(RecyclerView parentRecyclerView) {
        this.exposureTracker = new ij.e(parentRecyclerView, this.viewBinding.f16262d, 0.5f, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return DownloadPanelForYouFootView.t(this.f57986a, ((Integer) obj).intValue());
            }
        });
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.transsnet.downloader.adapter.w0 w0Var = this.movieRecAdapter;
        if (w0Var == null || !w0Var.q0()) {
            yg.l.f76264a.l(this);
        }
    }

    @Override
    public void onConnected() {
        yg.m.a.a(this);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        yg.l.f76264a.m(this);
    }

    @Override
    public void onDisconnected() {
    }

    public final void onPageResume() {
        ij.e eVar = this.exposureTracker;
        if (eVar != null) {
            eVar.e();
        }
    }

    public final void setData(List<? extends Subject> data) {
        Intrinsics.h(data, "data");
        p();
        int size = data.size();
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        List listK0 = CollectionsKt.K0(data, size - RangesKt.e(size % (com.transsion.baseui.util.b.a(context) ? 4 : 3), 0));
        com.transsnet.downloader.adapter.w0 w0Var = this.movieRecAdapter;
        if (w0Var != null) {
            w0Var.n1(listK0);
        }
        Group groupRefresh = this.viewBinding.f16260b;
        Intrinsics.g(groupRefresh, "groupRefresh");
        uf.c.k(groupRefresh);
        yg.l.f76264a.m(this);
        postDelayed(new Runnable() {
            @Override
            public final void run() {
                DownloadPanelForYouFootView.setData$lambda$6(this.f57993a);
            }
        }, 500L);
    }

    public final void setRefreshClickCallback(Function0<Unit> callback) {
        Intrinsics.h(callback, "callback");
        this.refreshCallback = callback;
    }

    public final void showNoNetView() {
        p();
        com.transsnet.downloader.adapter.w0 w0Var = this.movieRecAdapter;
        List<Object> data = w0Var != null ? w0Var.getData() : null;
        if (data == null || data.isEmpty()) {
            yg.l.f76264a.l(this);
            Group groupRefresh = this.viewBinding.f16260b;
            Intrinsics.g(groupRefresh, "groupRefresh");
            uf.c.g(groupRefresh);
            com.transsnet.downloader.adapter.w0 w0Var2 = this.movieRecAdapter;
            if (w0Var2 != null) {
                w0Var2.Y0(getForYouNoNetView());
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DownloadPanelForYouFootView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        Function0 function0 = this.refreshCallback;
        if (function0 != null) {
            function0.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadPanelForYouFootView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.downloadReport = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadPanelForYouFootView.q();
            }
        });
        View.inflate(getContext(), R$layout.layout_download_for_you_footview, this);
        bx.u0 u0VarA = bx.u0.a(this);
        Intrinsics.g(u0VarA, "bind(...)");
        this.viewBinding = u0VarA;
        Object context2 = getContext();
        setPadding(0, 0, 0, lj.a.b(((context2 instanceof dl.b) && ((dl.b) context2).g()) ? 88 : 80));
        u();
        u0VarA.f16265g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                DownloadPanelForYouFootView.o(this.f57989a, view);
            }
        });
    }
}
