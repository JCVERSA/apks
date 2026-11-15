package com.transsnet.downloader.util;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.transfer.impl.entity.FileData;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.util.DownloadTransferUtils$getTransferDataList$2$1", f = "DownloadTransferUtils.kt", l = {TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadTransferUtils$getTransferDataList$2$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function1<List<FileData>, Unit> $callback;
    final int $coverWidth;
    final Map<String, String> $pathMap;
    final List<DownloadBean> $selectedList;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.util.DownloadTransferUtils$getTransferDataList$2$1$2", f = "DownloadTransferUtils.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final Function1<List<FileData>, Unit> $callback;
        final List<FileData> $fileDataList;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function1<? super List<FileData>, Unit> function1, List<FileData> list, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$callback = function1;
            this.$fileDataList = list;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$callback, this.$fileDataList, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            wf.a.C0922a.f(wf.a.f74274a, TransferBottomToolsView.TAG, "getTransferDataList-----3", false, 4, null);
            this.$callback.invoke(this.$fileDataList);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DownloadTransferUtils$getTransferDataList$2$1(List<DownloadBean> list, Map<String, String> map, int i10, Function1<? super List<FileData>, Unit> function1, Continuation<? super DownloadTransferUtils$getTransferDataList$2$1> continuation) {
        super(2, continuation);
        this.$selectedList = list;
        this.$pathMap = map;
        this.$coverWidth = i10;
        this.$callback = function1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadTransferUtils$getTransferDataList$2$1(this.$selectedList, this.$pathMap, this.$coverWidth, this.$callback, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            List<DownloadBean> list = this.$selectedList;
            Map<String, String> map = this.$pathMap;
            int i11 = this.$coverWidth;
            for (DownloadBean downloadBean : list) {
                if (downloadBean.isSeriesCollection()) {
                    for (DownloadBean downloadBean2 : downloadBean.getSeriesList()) {
                        if (downloadBean2.getIsCheck()) {
                            DownloadTransferUtils downloadTransferUtils = DownloadTransferUtils.f57679a;
                            arrayList.add(downloadTransferUtils.h(downloadTransferUtils.d(map, i11, downloadBean), downloadBean2));
                        }
                    }
                } else {
                    DownloadTransferUtils downloadTransferUtils2 = DownloadTransferUtils.f57679a;
                    Boxing.a(arrayList.add(downloadTransferUtils2.h(downloadTransferUtils2.d(map, i11, downloadBean), downloadBean)));
                }
            }
            a2 a2VarC = y0.c();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$callback, arrayList, null);
            this.label = 1;
            if (kotlinx.coroutines.i.g(a2VarC, anonymousClass2, this) == objF) {
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
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadTransferUtils$getTransferDataList$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
