package com.transsnet.downloader.fragment;

import android.animation.Animator;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.airbnb.lottie.LottieAnimationView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$style;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebPageIdentity;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.bean.DownloadUrlBean;
import com.transsnet.downloader.manager.StartDownloadHelper;
import com.transsnet.downloader.viewmodel.DownloadListManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

@Deprecated
@Metadata(d1 = {"\u0000\u0095\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0007*\u0001f\b\u0017\u0018\u0000 j2\u00020\u0001:\u0001kB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012JQ\u0010\u001b\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00132\b\u0010\u0017\u001a\u0004\u0018\u00010\u00132\b\u0010\u0018\u001a\u0004\u0018\u00010\u00132\b\u0010\u0019\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001a\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\u00042\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010\"\u001a\u00020!2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\"\u0010#J!\u0010$\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b$\u0010%J\u001f\u0010(\u001a\u00020\u00042\u0010\b\u0002\u0010'\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010&¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0004H\u0016¢\u0006\u0004\b*\u0010\u0003R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u0010\u0015\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00102\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00100R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u00108\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00100R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u00100R\u0016\u0010@\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010;R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u00100R\u0018\u0010C\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u00100R\u0018\u0010E\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u00100R\u0018\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010K\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0016\u0010M\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010;R\u001b\u0010S\u001a\u00020N8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010RR\u001b\u0010X\u001a\u00020T8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bU\u0010P\u001a\u0004\bV\u0010WRr\u0010`\u001a^\u0012\u0013\u0012\u00110H¢\u0006\f\bZ\u0012\b\b[\u0012\u0004\b\b(\\\u0012\u0013\u0012\u00110\u0013¢\u0006\f\bZ\u0012\b\b[\u0012\u0004\b\b(]\u0012\u0013\u0012\u00110\u000b¢\u0006\f\bZ\u0012\b\b[\u0012\u0004\b\b(\f\u0012\u0013\u0012\u001109¢\u0006\f\bZ\u0012\b\b[\u0012\u0004\b\b(M\u0012\u0004\u0012\u00020\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R3\u0010e\u001a\u001f\u0012\u0013\u0012\u001109¢\u0006\f\bZ\u0012\b\b[\u0012\u0004\b\b(b\u0012\u0004\u0012\u00020\u0004\u0018\u00010a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0014\u0010i\u001a\u00020f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bg\u0010h¨\u0006l"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "", "M0", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "P0", "(Landroid/view/View;)V", "V0", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "U0", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "Lcom/transsnet/downloader/bean/DownloadUrlBean;", "urlBean", "S0", "(Lcom/transsnet/downloader/bean/DownloadUrlBean;)V", "", "pageName", "pageFrom", "subjectId", "postId", "ops", "resourceId", "taskId", "J0", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lkotlin/Function0;", "animaCallback", "Q0", "(Lkotlin/jvm/functions/Function0;)V", "onDestroy", "Lbx/y;", "c", "Lbx/y;", "viewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "e", "lastPageFrom", "Lcom/transsion/moviedetailapi/bean/Subject;", "f", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "g", "groupId", "", "h", "Z", "animaOnly", "i", "linkUrl", "j", "isCheckingLinkUrl", CampaignEx.JSON_KEY_AD_K, "l", "resource", "m", "moduleName", "n", "Lcom/transsion/baselib/db/download/DownloadBean;", "", "o", "I", "localProgress", TtmlNode.TAG_P, "isCancel", "Lcom/transsnet/downloader/manager/g;", CampaignEx.JSON_KEY_AD_Q, "Lkotlin/Lazy;", "K0", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "Lcom/transsnet/downloader/manager/StartDownloadHelper;", CampaignEx.JSON_KEY_AD_R, "L0", "()Lcom/transsnet/downloader/manager/StartDownloadHelper;", "startDownloadHelper", "Lkotlin/Function4;", "Lkotlin/ParameterName;", "name", "count", "formatSize", "s", "Lkotlin/jvm/functions/Function4;", "itemSelectListener", "Lkotlin/Function1;", "isClose", "t", "Lkotlin/jvm/functions/Function1;", "closeListener", "com/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1", TmcStartParams.KEY_URL_SHORT, "Lcom/transsnet/downloader/fragment/DownloadBottomAnalyzeFragment$runnable$1;", "runnable", "v", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class DownloadBottomAnalyzeFragment extends BaseDialog {

    private bx.y viewBinding;

    private String pageFrom;

    private String lastPageFrom;

    private Subject subject;

    private String groupId;

    private boolean animaOnly;

    private String linkUrl;

    private boolean isCheckingLinkUrl;

    private String ops;

    private String resource;

    private String moduleName;

    private DownloadBean downloadBean;

    private int localProgress;

    private boolean isCancel;

    private final Lazy downloadManager;

    private final Lazy startDownloadHelper;

    private Function4 itemSelectListener;

    private Function1 closeListener;

    private final DownloadBottomAnalyzeFragment$runnable$1 runnable;

    public static final class b implements Animator.AnimatorListener {

        final Function0 f56592b;

        b(Function0 function0) {
            this.f56592b = function0;
        }

        @Override
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            if (DownloadBottomAnalyzeFragment.this.isAdded() && !DownloadBottomAnalyzeFragment.this.isStateSaved()) {
                Function0 function0 = this.f56592b;
                if (function0 != null) {
                    function0.invoke();
                }
                DownloadBottomAnalyzeFragment.this.dismiss();
            }
            Function1 function1 = DownloadBottomAnalyzeFragment.this.closeListener;
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
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

        private final Function1 f56593a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56593a = function;
        }

        @Override
        public final Function a() {
            return this.f56593a;
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
            this.f56593a.invoke(obj);
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.transsnet.downloader.fragment.DownloadBottomAnalyzeFragment$runnable$1] */
    public DownloadBottomAnalyzeFragment() {
        super(R$layout.fragment_download_res_ana);
        this.pageFrom = "";
        this.lastPageFrom = "";
        this.downloadManager = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadBottomAnalyzeFragment.I0();
            }
        });
        this.startDownloadHelper = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadBottomAnalyzeFragment.W0();
            }
        });
        this.runnable = new Runnable() {
            @Override
            public void run() {
                AppCompatTextView appCompatTextView;
                AppCompatTextView appCompatTextView2;
                ProgressBar progressBar;
                this.this$0.localProgress++;
                bx.y yVar = this.this$0.viewBinding;
                if (yVar != null && (progressBar = yVar.f16305c) != null) {
                    progressBar.setProgress(this.this$0.localProgress);
                }
                if (this.this$0.localProgress < 100) {
                    bx.y yVar2 = this.this$0.viewBinding;
                    if (yVar2 == null || (appCompatTextView = yVar2.f16307e) == null) {
                        return;
                    }
                    appCompatTextView.postDelayed(this, 20L);
                    return;
                }
                bx.y yVar3 = this.this$0.viewBinding;
                if (yVar3 != null && (appCompatTextView2 = yVar3.f16307e) != null) {
                    appCompatTextView2.removeCallbacks(this);
                }
                if (this.this$0.isCheckingLinkUrl) {
                    return;
                }
                DownloadBottomAnalyzeFragment.R0(this.this$0, null, 1, null);
            }
        };
    }

    public static final com.transsnet.downloader.manager.g I0() {
        return com.transsnet.downloader.manager.p.f57282a.a(Utils.a());
    }

    public final void J0(String pageName, String pageFrom, String subjectId, String postId, String ops, String resourceId, String taskId) {
        HashMap map = new HashMap();
        map.put(WebConstants.PAGE_FROM, pageFrom);
        map.put("subject_id", subjectId);
        map.put("post_id", postId);
        map.put("ops", ops);
        map.put("resource_id", resourceId);
        map.put("task_id", taskId);
        map.put("module_name", this.moduleName);
        qi.h hVar = qi.h.f69682a;
        if (pageName == null) {
            pageName = "download_click";
        }
        hVar.q(pageName, "download_click", map);
        Bundle bundle = new Bundle();
        bundle.putString("resource_id", resourceId);
        bundle.putString("subject_id", subjectId);
        com.transsion.baselib.report.e.f42196a.l("download_click", bundle, getContext());
    }

    public final com.transsnet.downloader.manager.g K0() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    public final StartDownloadHelper L0() {
        return (StartDownloadHelper) this.startDownloadHelper.getValue();
    }

    private final void M0() {
        HashMap mapG;
        AppCompatTextView appCompatTextView;
        bx.y yVar = this.viewBinding;
        if (yVar != null && (appCompatTextView = yVar.f16306d) != null) {
            appCompatTextView.setText(getString(R$string.download_analyzing) + " from " + this.resource);
        }
        if (this.animaOnly) {
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
                mapG.put("anima_only", "true");
            }
            wf.a.C0922a.f(wf.a.f74274a, "downloadAna", "anima only~}", false, 4, null);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "downloadAna", "single， initData subject is null = " + (this.subject == null) + ", ", false, 4, null);
        String str = this.linkUrl;
        if (str == null || str.length() <= 0) {
            Subject subject = this.subject;
            if (subject != null) {
                if (subject != null) {
                    kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new DownloadBottomAnalyzeFragment$initData$3$1(subject, this, null), 3, null);
                    return;
                }
                return;
            } else {
                androidx.p009lifecycle.b0 b0VarZ = DownloadListManager.f57771m.a().z();
                if (b0VarZ != null) {
                    b0VarZ.j(this, new c(new Function1() {
                        @Override
                        public final Object invoke(Object obj) {
                            return DownloadBottomAnalyzeFragment.O0(this.f57094a, (List) obj);
                        }
                    }));
                    return;
                }
                return;
            }
        }
        this.isCheckingLinkUrl = true;
        DownloadListManager.a aVar = DownloadListManager.f57771m;
        DownloadListManager downloadListManagerA = aVar.a();
        Subject subject2 = this.subject;
        String subjectId = subject2 != null ? subject2.getSubjectId() : null;
        String str2 = this.linkUrl;
        Intrinsics.e(str2);
        downloadListManagerA.P(subjectId, str2);
        androidx.p009lifecycle.b0 b0VarQ = aVar.a().Q();
        if (b0VarQ != null) {
            b0VarQ.j(this, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return DownloadBottomAnalyzeFragment.N0(this.f57085a, (DownloadUrlBean) obj);
                }
            }));
        }
    }

    public static final Unit N0(DownloadBottomAnalyzeFragment downloadBottomAnalyzeFragment, DownloadUrlBean downloadUrlBean) {
        downloadBottomAnalyzeFragment.isCheckingLinkUrl = false;
        downloadBottomAnalyzeFragment.S0(downloadUrlBean);
        return Unit.f64096a;
    }

    public static final Unit O0(DownloadBottomAnalyzeFragment downloadBottomAnalyzeFragment, List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return Unit.f64096a;
        }
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(downloadBottomAnalyzeFragment), null, null, new DownloadBottomAnalyzeFragment$initData$2$1(list, downloadBottomAnalyzeFragment, null), 3, null);
        return Unit.f64096a;
    }

    private final void P0(View view) {
        LottieAnimationView lottieAnimationView;
        ProgressBar progressBar;
        bx.y yVarA = bx.y.a(view);
        this.viewBinding = yVarA;
        if (yVarA != null && (progressBar = yVarA.f16305c) != null) {
            progressBar.setMax(100);
        }
        bx.y yVar = this.viewBinding;
        if (yVar != null && (lottieAnimationView = yVar.f16304b) != null) {
            lottieAnimationView.playAnimation();
            lottieAnimationView.setRepeatCount(-1);
        }
        V0();
    }

    public static void R0(DownloadBottomAnalyzeFragment downloadBottomAnalyzeFragment, Function0 function0, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onAnalyzeSuccess");
        }
        if ((i10 & 1) != 0) {
            function0 = null;
        }
        downloadBottomAnalyzeFragment.Q0(function0);
    }

    private final void S0(DownloadUrlBean urlBean) {
        if ((urlBean != null ? urlBean.getResource() : null) != null) {
            DownloadItem resource = urlBean.getResource();
            String url = resource != null ? resource.getUrl() : null;
            if (url != null && url.length() != 0) {
                DownloadItem resource2 = urlBean.getResource();
                Ref.IntRef intRef = new Ref.IntRef();
                intRef.element = urlBean.getTotalEpisode();
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new DownloadBottomAnalyzeFragment$onGetUrlDownloadConfig$2(resource2, this, intRef, urlBean, null), 3, null);
                return;
            }
        }
        wf.a.C0922a.f(wf.a.f74274a, "downloadAna", "url has no resource, open url", false, 4, null);
        Q0(new Function0() {
            @Override
            public final Object invoke() {
                return DownloadBottomAnalyzeFragment.T0(this.f57116a);
            }
        });
    }

    public static final Unit T0(DownloadBottomAnalyzeFragment downloadBottomAnalyzeFragment) {
        Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", downloadBottomAnalyzeFragment.linkUrl), downloadBottomAnalyzeFragment.getContext(), null, 2, null);
        return Unit.f64096a;
    }

    public final void U0(DownloadBean downloadBean) {
    }

    private final void V0() {
        AppCompatTextView appCompatTextView;
        LottieAnimationView lottieAnimationView;
        bx.y yVar = this.viewBinding;
        if (yVar != null && (lottieAnimationView = yVar.f16304b) != null) {
            lottieAnimationView.setRepeatCount(-1);
            lottieAnimationView.setAnimation(ij.y.f62128a.a() ? "download_analyzing_anima_night.json" : "download_analyzing_anima.json");
            lottieAnimationView.playAnimation();
        }
        bx.y yVar2 = this.viewBinding;
        if (yVar2 == null || (appCompatTextView = yVar2.f16307e) == null) {
            return;
        }
        appCompatTextView.post(this.runnable);
    }

    public static final StartDownloadHelper W0() {
        return new StartDownloadHelper();
    }

    public final void Q0(Function0 animaCallback) {
        LottieAnimationView lottieAnimationView;
        ProgressBar progressBar;
        AppCompatTextView appCompatTextView;
        bx.y yVar = this.viewBinding;
        if (yVar != null && (appCompatTextView = yVar.f16307e) != null) {
            appCompatTextView.removeCallbacks(this.runnable);
        }
        bx.y yVar2 = this.viewBinding;
        if (yVar2 != null && (progressBar = yVar2.f16305c) != null) {
            progressBar.setProgress(100);
        }
        bx.y yVar3 = this.viewBinding;
        if (yVar3 == null || (lottieAnimationView = yVar3.f16304b) == null) {
            return;
        }
        lottieAnimationView.setAnimation(ij.y.f62128a.a() ? "download_analyzing_success_anima_night.json" : "download_analyzing_success_anima.json");
        lottieAnimationView.setRepeatCount(0);
        lottieAnimationView.addAnimatorListener(new b(animaCallback));
        lottieAnimationView.playAnimation();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        HashMap mapG4;
        String string7;
        super.onCreate(savedInstanceState);
        setCancelable(false);
        setStyle(0, R$style.BottomDialogTheme);
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
        if (arguments4 == null || (string3 = arguments4.getString("extra_group_id")) == null) {
            string3 = "";
        }
        this.groupId = string3;
        Bundle arguments5 = getArguments();
        this.animaOnly = arguments5 != null ? arguments5.getBoolean("extra_anima_only") : false;
        Bundle arguments6 = getArguments();
        if (arguments6 == null || (string4 = arguments6.getString("extra_link_url")) == null) {
            string4 = "";
        }
        this.linkUrl = string4;
        Bundle arguments7 = getArguments();
        if (arguments7 == null || (string5 = arguments7.getString("extra_ops")) == null) {
            string5 = "";
        }
        this.ops = string5;
        Bundle arguments8 = getArguments();
        if (arguments8 == null || (string6 = arguments8.getString("extra_resource")) == null) {
            string6 = "";
        }
        this.resource = string6;
        Bundle arguments9 = getArguments();
        if (arguments9 != null && (string7 = arguments9.getString("extra_module_name")) != null) {
            str = string7;
        }
        this.moduleName = str;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG4 = logViewConfig.g()) != null) {
            mapG4.put(WebConstants.PAGE_FROM, this.pageFrom);
        }
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG3 = logViewConfig2.g()) != null) {
            mapG3.put("last_page_from", this.lastPageFrom);
        }
        qi.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG2 = logViewConfig3.g()) != null) {
            mapG2.put("ops", this.ops);
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 == null || (mapG = logViewConfig4.g()) == null) {
            return;
        }
        mapG.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "1");
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        wf.a.C0922a.f(wf.a.f74274a, "TAG", "onCreateDialog: ", false, 4, null);
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(contextRequireContext, getTheme());
        Window window = cVar.getWindow();
        if (window != null) {
            window.setWindowAnimations(R$style.BaseBottomDialogAnimation);
        }
        Window window2 = cVar.getWindow();
        if (window2 != null) {
            window2.setGravity(80);
            window2.setDimAmount(0.5f);
            WindowManager.LayoutParams attributes = window2.getAttributes();
            if (attributes == null) {
                attributes = new WindowManager.LayoutParams();
            }
            attributes.width = com.transsion.baseui.util.a.f42330a.b(contextRequireContext);
            attributes.height = com.blankj.utilcode.util.a0.a(168.0f);
            window2.setBackgroundDrawable(null);
            window2.setAttributes(attributes);
        }
        return cVar;
    }

    @Override
    public void onDestroy() {
        String strA;
        DownloadListManager.a aVar = DownloadListManager.f57771m;
        aVar.a().Y(null);
        aVar.a().b0(null);
        super.onDestroy();
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean != null) {
            Long size = downloadBean.getSize();
            if (size == null || (strA = zg.b.a(size.longValue(), 1)) == null) {
                strA = "";
            }
            Function4 function4 = this.itemSelectListener;
            if (function4 != null) {
                function4.invoke(1, strA, downloadBean, Boolean.valueOf(this.isCancel));
            }
        }
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        P0(view);
        M0();
    }
}
