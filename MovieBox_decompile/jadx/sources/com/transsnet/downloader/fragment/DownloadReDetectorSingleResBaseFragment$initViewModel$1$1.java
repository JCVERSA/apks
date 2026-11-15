package com.transsnet.downloader.fragment;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.HashMap;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadReDetectorSingleResBaseFragment$initViewModel$1$1", f = "DownloadReDetectorSingleResBaseFragment.kt", l = {41}, m = "invokeSuspend")
final class DownloadReDetectorSingleResBaseFragment$initViewModel$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final DownloadBean $it;
    int label;
    final DownloadReDetectorSingleResBaseFragment<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadReDetectorSingleResBaseFragment$initViewModel$1$1(DownloadBean downloadBean, DownloadReDetectorSingleResBaseFragment<T> downloadReDetectorSingleResBaseFragment, Continuation<? super DownloadReDetectorSingleResBaseFragment$initViewModel$1$1> continuation) {
        super(2, continuation);
        this.$it = downloadBean;
        this.this$0 = downloadReDetectorSingleResBaseFragment;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadReDetectorSingleResBaseFragment$initViewModel$1$1(this.$it, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            String resourceId = this.$it.getResourceId();
            if (resourceId == null) {
                resourceId = this.$it.getUrl();
            }
            this.label = 1;
            obj = downloadEsHelperA.p(resourceId, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        DownloadBean downloadBean = (DownloadBean) obj;
        DownloadReDetectorSingleResBaseFragment<T> downloadReDetectorSingleResBaseFragment = this.this$0;
        if (downloadBean != null) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            String tag = downloadReDetectorSingleResBaseFragment.getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            wf.a.C0922a.f(c0922a, tag, "single， get download bean from database", false, 4, null);
        } else {
            wf.a.C0922a c0922a2 = wf.a.f74274a;
            String tag2 = downloadReDetectorSingleResBaseFragment.getTAG();
            Intrinsics.g(tag2, "<get-TAG>(...)");
            wf.a.C0922a.f(c0922a2, tag2, "single， create download bean from observe", false, 4, null);
            downloadBean = this.$it;
        }
        downloadReDetectorSingleResBaseFragment.N0(downloadBean);
        DownloadBean downloadBeanK0 = this.this$0.getDownloadBean();
        if (downloadBeanK0 != null) {
            DownloadReDetectorSingleResBaseFragment<T> downloadReDetectorSingleResBaseFragment2 = this.this$0;
            wf.a.C0922a c0922a3 = wf.a.f74274a;
            String tag3 = downloadReDetectorSingleResBaseFragment2.getTAG();
            Intrinsics.g(tag3, "<get-TAG>(...)");
            wf.a.C0922a.f(c0922a3, tag3, "single， add download task， " + downloadBeanK0, false, 4, null);
            downloadReDetectorSingleResBaseFragment2.Q0(downloadBeanK0);
            downloadBeanK0.setCreateAt(System.currentTimeMillis());
            downloadBeanK0.setUpdateTimeStamp(Boxing.e(System.currentTimeMillis()));
            downloadBeanK0.setTaskId(UUID.randomUUID().toString());
            qi.b logViewConfig = downloadReDetectorSingleResBaseFragment2.getLogViewConfig();
            if (logViewConfig != null && (mapG3 = logViewConfig.g()) != null) {
                mapG3.put(WebConstants.PAGE_FROM, downloadBeanK0.getPageFrom());
            }
            qi.b logViewConfig2 = downloadReDetectorSingleResBaseFragment2.getLogViewConfig();
            if (logViewConfig2 != null && (mapG2 = logViewConfig2.g()) != null) {
                mapG2.put("last_page_from", downloadBeanK0.getLastPageFrom());
            }
            qi.b logViewConfig3 = downloadReDetectorSingleResBaseFragment2.getLogViewConfig();
            if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
                mapG.put("ops", downloadBeanK0.getOps());
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadReDetectorSingleResBaseFragment$initViewModel$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
