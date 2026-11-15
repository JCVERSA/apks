package com.transsnet.downloader.fragment;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.api.DownloadPageType;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.DownloadRefreshEvent;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadReDetectorGroupMainFragment$onDownload$2", f = "DownloadReDetectorGroupMainFragment.kt", l = {877}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadReDetectorGroupMainFragment$onDownload$2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final DownloadReDetectorGroupMainFragment this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadReDetectorGroupMainFragment$onDownload$2$2", f = "DownloadReDetectorGroupMainFragment.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;
        final DownloadReDetectorGroupMainFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = downloadReDetectorGroupMainFragment;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            ResourceDetectors resourceDetector;
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            String str = this.this$0.curSubjectId;
            Subject subject = this.this$0.subject;
            String resourceId = (subject == null || (resourceDetector = subject.getResourceDetector()) == null) ? null : resourceDetector.getResourceId();
            Subject subject2 = this.this$0.subject;
            DownloadRefreshEvent downloadRefreshEvent = new DownloadRefreshEvent(str, resourceId, true, subject2 != null ? subject2.isSeries() : true);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = DownloadRefreshEvent.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, downloadRefreshEvent, 0L);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadReDetectorGroupMainFragment$onDownload$2(DownloadReDetectorGroupMainFragment downloadReDetectorGroupMainFragment, Continuation<? super DownloadReDetectorGroupMainFragment$onDownload$2> continuation) {
        super(2, continuation);
        this.this$0 = downloadReDetectorGroupMainFragment;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadReDetectorGroupMainFragment$onDownload$2(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            int i11 = 0;
            for (Object obj2 : this.this$0.checkedList) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                DownloadBean downloadBean = (DownloadBean) obj2;
                DownloadManagerApi.f56187j.a().T(downloadBean.getSubjectId(), downloadBean.getResourceId(), downloadBean.isSeries(), downloadBean.getTotalEpisode(), downloadBean.isMultiresolution(), downloadBean.isMultiresolution());
                i11 = i12;
            }
            if (Intrinsics.c(this.this$0.pageFrom, DownloadPageType.SERIES.getPageName())) {
                kotlinx.coroutines.a2 a2VarC = kotlinx.coroutines.y0.c();
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, null);
                this.label = 1;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass2, this) == objF) {
                    return objF;
                }
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
        return ((DownloadReDetectorGroupMainFragment$onDownload$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
