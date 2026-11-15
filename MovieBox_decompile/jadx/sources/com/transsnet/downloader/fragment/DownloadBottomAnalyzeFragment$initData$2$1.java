package com.transsnet.downloader.fragment;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadBottomAnalyzeFragment$initData$2$1", f = "DownloadBottomAnalyzeFragment.kt", l = {194}, m = "invokeSuspend")
final class DownloadBottomAnalyzeFragment$initData$2$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final List<DownloadBean> $it;
    int label;
    final DownloadBottomAnalyzeFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DownloadBottomAnalyzeFragment$initData$2$1(List<? extends DownloadBean> list, DownloadBottomAnalyzeFragment downloadBottomAnalyzeFragment, Continuation<? super DownloadBottomAnalyzeFragment$initData$2$1> continuation) {
        super(2, continuation);
        this.$it = list;
        this.this$0 = downloadBottomAnalyzeFragment;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadBottomAnalyzeFragment$initData$2$1(this.$it, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            List<DownloadBean> list = this.$it;
            if (list == null || list.isEmpty()) {
                return Unit.f64096a;
            }
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            String resourceId = this.$it.get(0).getResourceId();
            if (resourceId == null) {
                resourceId = this.$it.get(0).getUrl();
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
        if (downloadBean != null) {
            wf.a.C0922a.f(wf.a.f74274a, "downloadAna", "single， get download bean from database", false, 4, null);
            this.this$0.downloadBean = downloadBean;
        } else {
            wf.a.C0922a.f(wf.a.f74274a, "downloadAna", "single， create download bean from subject", false, 4, null);
            if (!this.$it.isEmpty()) {
                this.this$0.downloadBean = this.$it.get(0);
            }
        }
        DownloadBean downloadBean2 = this.this$0.downloadBean;
        if (downloadBean2 != null) {
            DownloadBottomAnalyzeFragment downloadBottomAnalyzeFragment = this.this$0;
            wf.a.C0922a.f(wf.a.f74274a, "downloadAna", "single， add download task， " + downloadBean2, false, 4, null);
            downloadBottomAnalyzeFragment.U0(downloadBean2);
            downloadBean2.setCreateAt(System.currentTimeMillis());
            downloadBean2.setUpdateTimeStamp(Boxing.e(System.currentTimeMillis()));
            downloadBean2.setPageFrom(downloadBottomAnalyzeFragment.pageFrom);
            downloadBean2.setLastPageFrom(downloadBottomAnalyzeFragment.lastPageFrom);
            downloadBean2.setOps(downloadBottomAnalyzeFragment.ops);
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "toString(...)");
            downloadBean2.setTaskId(string);
            downloadBottomAnalyzeFragment.J0(downloadBottomAnalyzeFragment.pageFrom, downloadBottomAnalyzeFragment.lastPageFrom, downloadBean2.getSubjectId(), downloadBean2.getPostId(), downloadBottomAnalyzeFragment.ops, downloadBean2.getResourceId(), string);
            downloadBottomAnalyzeFragment.K0().p(downloadBean2);
            downloadBottomAnalyzeFragment.L0().f(CollectionsKt.h(downloadBean2));
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadBottomAnalyzeFragment$initData$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
