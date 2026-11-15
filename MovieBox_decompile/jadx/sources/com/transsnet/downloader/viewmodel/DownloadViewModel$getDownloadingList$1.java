package com.transsnet.downloader.viewmodel;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadViewModel$getDownloadingList$1", f = "DownloadViewModel.kt", l = {197}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadViewModel$getDownloadingList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final DownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadViewModel$getDownloadingList$1(DownloadViewModel downloadViewModel, Continuation<? super DownloadViewModel$getDownloadingList$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadViewModel$getDownloadingList$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            this.label = 1;
            obj = downloadEsHelperA.C(this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        List list = (List) obj;
        ArrayList arrayList = new ArrayList();
        List list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            Iterator it = list.iterator();
            int i11 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i11 = -1;
                    break;
                }
                DownloadBean downloadBean = (DownloadBean) it.next();
                if (downloadBean.isDownloading() && !downloadBean.getIsPreDownload()) {
                    break;
                }
                i11++;
            }
            if (i11 > 0) {
                Collections.swap(list, i11, 0);
            }
            arrayList.addAll(list);
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.this$0.f57818a;
        Intrinsics.g(str, "access$getTAG$p(...)");
        wf.a.C0922a.f(c0922a, str, "getDownloadingList, size = " + arrayList.size(), false, 4, null);
        this.this$0.f57832o.n(arrayList);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadViewModel$getDownloadingList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
