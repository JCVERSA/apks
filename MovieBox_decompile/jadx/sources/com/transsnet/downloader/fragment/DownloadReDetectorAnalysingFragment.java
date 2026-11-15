package com.transsnet.downloader.fragment;

import android.animation.Animator;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.airbnb.lottie.LottieAnimationView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebPageIdentity;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.bean.DownloadUrlBean;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\b\u0007*\u0001?\b\u0016\u0018\u0000 C2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001DB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u0019\u0010\u000b\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J!\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J)\u0010%\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010#¢\u0006\u0004\b%\u0010&R\u0018\u0010)\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u00100\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00102\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010(R\u0016\u00104\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010(R\u0018\u00106\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010(R\u0018\u00108\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u0010(R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010>\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010/R\u0014\u0010B\u001a\u00020?8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010A¨\u0006E"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;", "Lcom/transsnet/downloader/fragment/DownloadReDetectorSingleResBaseFragment;", "Lbx/y;", "<init>", "()V", "", "a1", "initView", "i1", "Lcom/transsnet/downloader/bean/DownloadUrlBean;", "urlBean", "e1", "(Lcom/transsnet/downloader/bean/DownloadUrlBean;)V", "h1", "initViewData", "Landroid/view/LayoutInflater;", "inflater", "Z0", "(Landroid/view/LayoutInflater;)Lbx/y;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewModel", "initListener", "retryLoadData", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "hidden", "onHiddenChanged", "(Z)V", "Lkotlin/Function0;", "animaCallback", "c1", "(Lcom/transsnet/downloader/bean/DownloadUrlBean;Lkotlin/jvm/functions/Function0;)V", TtmlNode.TAG_P, "Ljava/lang/String;", "linkUrl", "Lcom/transsion/moviedetailapi/bean/Subject;", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", CampaignEx.JSON_KEY_AD_R, "Z", "isCheckingLinkUrl", "s", "pageFrom", "t", "lastPageFrom", TmcStartParams.KEY_URL_SHORT, "ops", "v", "resourceFrom", "", "w", "I", "localProgress", "x", "isResetLinkUrl", "com/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$runnable$1", "y", "Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$runnable$1;", "runnable", "z", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class DownloadReDetectorAnalysingFragment extends DownloadReDetectorSingleResBaseFragment<bx.y> {

    public static final Companion INSTANCE = new Companion(null);

    private String linkUrl;

    private Subject subject;

    private boolean isCheckingLinkUrl;

    private String ops;

    private String resourceFrom;

    private int localProgress;

    private boolean isResetLinkUrl;

    private String pageFrom = "";

    private String lastPageFrom = "";

    private final DownloadReDetectorAnalysingFragment$runnable$1 runnable = new Runnable() {
        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void run() {
            AppCompatTextView appCompatTextView;
            AppCompatTextView appCompatTextView2;
            ProgressBar progressBar;
            this.this$0.localProgress++;
            bx.y yVar = (bx.y) this.this$0.getMViewBinding();
            if (yVar != null && (progressBar = yVar.f16305c) != null) {
                progressBar.setProgress(this.this$0.localProgress);
            }
            if (this.this$0.localProgress < 100) {
                bx.y yVar2 = (bx.y) this.this$0.getMViewBinding();
                if (yVar2 == null || (appCompatTextView = yVar2.f16307e) == null) {
                    return;
                }
                appCompatTextView.postDelayed(this, 20L);
                return;
            }
            bx.y yVar3 = (bx.y) this.this$0.getMViewBinding();
            if (yVar3 != null && (appCompatTextView2 = yVar3.f16307e) != null) {
                appCompatTextView2.removeCallbacks(this);
            }
            if (this.this$0.isCheckingLinkUrl) {
                return;
            }
            DownloadReDetectorAnalysingFragment.d1(this.this$0, null, null, 2, null);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadReDetectorAnalysingFragment a(String str, Subject subject, String str2, String str3, String str4, String str5, Boolean bool, String str6) {
            DownloadReDetectorAnalysingFragment downloadReDetectorAnalysingFragment = new DownloadReDetectorAnalysingFragment();
            downloadReDetectorAnalysingFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_page_from", str2), TuplesKt.a("extra_last_page_from", str3), TuplesKt.a("extra_subject", subject), TuplesKt.a("extra_link_url", str), TuplesKt.a("extra_ops", str4), TuplesKt.a("extra_resource", str5), TuplesKt.a("extra_download_execute_download", bool), TuplesKt.a("extra_module_name", str6)));
            return downloadReDetectorAnalysingFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements Animator.AnimatorListener {

        final Function0 f56668b;

        final DownloadUrlBean f56669c;

        b(Function0 function0, DownloadUrlBean downloadUrlBean) {
            this.f56668b = function0;
            this.f56669c = downloadUrlBean;
        }

        @Override
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onAnimationEnd(Animator animation) {
            androidx.p009lifecycle.b0 b0VarM;
            LottieAnimationView lottieAnimationView;
            Intrinsics.h(animation, "animation");
            bx.y yVar = (bx.y) DownloadReDetectorAnalysingFragment.this.getMViewBinding();
            if (yVar != null && (lottieAnimationView = yVar.f16304b) != null) {
                lottieAnimationView.removeAnimatorListener(this);
            }
            if (!DownloadReDetectorAnalysingFragment.this.isAdded() || DownloadReDetectorAnalysingFragment.this.isStateSaved()) {
                return;
            }
            Function0 function0 = this.f56668b;
            if (function0 != null) {
                function0.invoke();
            }
            if (this.f56669c == null) {
                wf.a.C0922a c0922a = wf.a.f74274a;
                String tag = DownloadReDetectorAnalysingFragment.this.getTAG();
                Intrinsics.g(tag, "<get-TAG>(...)");
                wf.a.C0922a.f(c0922a, tag, "onAnalyzeSuccess ,  close 2", false, 4, null);
                DownloadResourcesDetectorViewModel viewModel = DownloadReDetectorAnalysingFragment.this.getViewModel();
                if (viewModel != null && (b0VarM = viewModel.m()) != null) {
                    b0VarM.q(Boolean.TRUE);
                }
                DownloadReDetectorAnalysingFragment.this.m0();
            }
        }

        @Override
        public void onAnimationRepeat(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override
        public void onAnimationStart(Animator animation) {
            Intrinsics.h(animation, "animation");
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f56670a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56670a = function;
        }

        @Override
        public final Function a() {
            return this.f56670a;
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
            this.f56670a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a1() {
        bx.y yVar;
        AppCompatTextView appCompatTextView;
        if (this.resourceFrom != null && (yVar = (bx.y) getMViewBinding()) != null && (appCompatTextView = yVar.f16306d) != null) {
            appCompatTextView.setText(getString(R$string.download_analyzing) + " from " + this.resourceFrom);
        }
        String str = this.linkUrl;
        if (str == null || str.length() <= 0) {
            return;
        }
        this.isCheckingLinkUrl = true;
        DownloadListManager.a aVar = DownloadListManager.f57771m;
        DownloadListManager downloadListManagerA = aVar.a();
        Subject subject = this.subject;
        String subjectId = subject != null ? subject.getSubjectId() : null;
        String str2 = this.linkUrl;
        Intrinsics.e(str2);
        downloadListManagerA.P(subjectId, str2);
        androidx.p009lifecycle.b0 b0VarQ = aVar.a().Q();
        if (b0VarQ != null) {
            b0VarQ.j(this, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return DownloadReDetectorAnalysingFragment.b1(this.f57049a, (DownloadUrlBean) obj);
                }
            }));
        }
    }

    public static final Unit b1(DownloadReDetectorAnalysingFragment downloadReDetectorAnalysingFragment, DownloadUrlBean downloadUrlBean) {
        downloadReDetectorAnalysingFragment.isCheckingLinkUrl = false;
        downloadReDetectorAnalysingFragment.e1(downloadUrlBean);
        return Unit.f64096a;
    }

    public static void d1(DownloadReDetectorAnalysingFragment downloadReDetectorAnalysingFragment, DownloadUrlBean downloadUrlBean, Function0 function0, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onAnalyzeSuccess");
        }
        if ((i10 & 2) != 0) {
            function0 = null;
        }
        downloadReDetectorAnalysingFragment.c1(downloadUrlBean, function0);
    }

    private final void e1(final DownloadUrlBean urlBean) {
        if ((urlBean != null ? urlBean.getResource() : null) != null) {
            DownloadItem resource = urlBean.getResource();
            String url = resource != null ? resource.getUrl() : null;
            if (url != null && url.length() != 0) {
                c1(urlBean, new Function0() {
                    @Override
                    public final Object invoke() {
                        return DownloadReDetectorAnalysingFragment.g1(urlBean, this);
                    }
                });
                return;
            }
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "url has no resource, open url", false, 4, null);
        c1(null, new Function0() {
            @Override
            public final Object invoke() {
                return DownloadReDetectorAnalysingFragment.f1(this.f57059a);
            }
        });
    }

    public static final Unit f1(DownloadReDetectorAnalysingFragment downloadReDetectorAnalysingFragment) {
        Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", downloadReDetectorAnalysingFragment.linkUrl), downloadReDetectorAnalysingFragment.getContext(), null, 2, null);
        return Unit.f64096a;
    }

    public static final Unit g1(DownloadUrlBean downloadUrlBean, DownloadReDetectorAnalysingFragment downloadReDetectorAnalysingFragment) {
        androidx.p009lifecycle.b0 b0VarP;
        DownloadListManager.f57771m.a().p(DownloadUtil.f57680a.k(downloadUrlBean, downloadReDetectorAnalysingFragment.subject, downloadReDetectorAnalysingFragment.pageFrom, downloadReDetectorAnalysingFragment.lastPageFrom, downloadReDetectorAnalysingFragment.ops));
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorAnalysingFragment.getViewModel();
        if (viewModel != null && (b0VarP = viewModel.p()) != null) {
            b0VarP.q(1);
        }
        downloadReDetectorAnalysingFragment.h1();
        return Unit.f64096a;
    }

    private final void h1() {
        this.isResetLinkUrl = true;
        this.linkUrl = "";
        this.isCheckingLinkUrl = false;
        this.localProgress = 0;
        DownloadListManager.f57771m.a().b0(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void i1() {
        AppCompatTextView appCompatTextView;
        LottieAnimationView lottieAnimationView;
        bx.y yVar = (bx.y) getMViewBinding();
        if (yVar != null && (lottieAnimationView = yVar.f16304b) != null) {
            lottieAnimationView.setRepeatCount(-1);
            lottieAnimationView.setAnimation(ij.y.f62128a.a() ? "download_analyzing_anima_night.json" : "download_analyzing_anima.json");
            lottieAnimationView.playAnimation();
        }
        bx.y yVar2 = (bx.y) getMViewBinding();
        if (yVar2 == null || (appCompatTextView = yVar2.f16307e) == null) {
            return;
        }
        appCompatTextView.post(this.runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void initView() {
        LottieAnimationView lottieAnimationView;
        ProgressBar progressBar;
        bx.y yVar = (bx.y) getMViewBinding();
        if (yVar != null && (progressBar = yVar.f16305c) != null) {
            progressBar.setMax(100);
        }
        bx.y yVar2 = (bx.y) getMViewBinding();
        if (yVar2 != null && (lottieAnimationView = yVar2.f16304b) != null) {
            lottieAnimationView.playAnimation();
            lottieAnimationView.setRepeatCount(-1);
        }
        i1();
    }

    @Override
    public bx.y getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bx.y yVarC = bx.y.c(inflater);
        Intrinsics.g(yVarC, "inflate(...)");
        return yVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c1(DownloadUrlBean urlBean, Function0 animaCallback) {
        LottieAnimationView lottieAnimationView;
        ProgressBar progressBar;
        AppCompatTextView appCompatTextView;
        bx.y yVar = (bx.y) getMViewBinding();
        if (yVar != null && (appCompatTextView = yVar.f16307e) != null) {
            appCompatTextView.removeCallbacks(this.runnable);
        }
        bx.y yVar2 = (bx.y) getMViewBinding();
        if (yVar2 != null && (progressBar = yVar2.f16305c) != null) {
            progressBar.setProgress(100);
        }
        bx.y yVar3 = (bx.y) getMViewBinding();
        if (yVar3 == null || (lottieAnimationView = yVar3.f16304b) == null) {
            return;
        }
        lottieAnimationView.setAnimation(ij.y.f62128a.a() ? "download_analyzing_success_anima_night.json" : "download_analyzing_success_anima.json");
        lottieAnimationView.setRepeatCount(0);
        lottieAnimationView.addAnimatorListener(new b(animaCallback, urlBean));
        lottieAnimationView.playAnimation();
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
    }

    @Override
    public void initViewData() {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        Bundle arguments = getArguments();
        String str = "";
        if (arguments == null || (string = arguments.getString("extra_page_from")) == null) {
            string = "";
        }
        this.pageFrom = string;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (string2 = arguments2.getString("extra_last_page_from")) == null) {
            string2 = "";
        }
        this.lastPageFrom = string2;
        Bundle arguments3 = getArguments();
        this.subject = (Subject) (arguments3 != null ? arguments3.getSerializable("extra_subject") : null);
        Bundle arguments4 = getArguments();
        if (arguments4 == null || (string3 = arguments4.getString("extra_link_url")) == null) {
            string3 = "";
        }
        this.linkUrl = string3;
        Bundle arguments5 = getArguments();
        if (arguments5 == null || (string4 = arguments5.getString("extra_ops")) == null) {
            string4 = "";
        }
        this.ops = string4;
        Bundle arguments6 = getArguments();
        if (arguments6 == null || (string5 = arguments6.getString("extra_resource")) == null) {
            string5 = "";
        }
        this.resourceFrom = string5;
        Bundle arguments7 = getArguments();
        O0(arguments7 != null ? arguments7.getBoolean("extra_download_execute_download") : false);
        Bundle arguments8 = getArguments();
        if (arguments8 != null && (string6 = arguments8.getString("extra_module_name")) != null) {
            str = string6;
        }
        P0(str);
    }

    @Override
    public void initViewModel() {
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        wf.a.C0922a.f(c0922a, tag, "onHiddenChanged, hidden = " + hidden, false, 4, null);
        if (hidden || !this.isResetLinkUrl) {
            return;
        }
        this.isResetLinkUrl = false;
        i1();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        initView();
        a1();
    }

    @Override
    public void retryLoadData() {
    }
}
