package com.transsnet.downloader.viewmodel;

import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.List;
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
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.viewmodel.DownloadViewModel$getUGCCollectionList$1", f = "DownloadViewModel.kt", l = {353}, m = "invokeSuspend")
final class DownloadViewModel$getUGCCollectionList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $collectionId;
    int label;
    final DownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadViewModel$getUGCCollectionList$1(String str, DownloadViewModel downloadViewModel, Continuation<? super DownloadViewModel$getUGCCollectionList$1> continuation) {
        super(2, continuation);
        this.$collectionId = str;
        this.this$0 = downloadViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadViewModel$getUGCCollectionList$1(this.$collectionId, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            String str = this.$collectionId;
            if (str == null) {
                str = "";
            }
            this.label = 1;
            obj = downloadEsHelperA.P(str, this);
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
        List listU0 = list != null ? CollectionsKt.U0(list) : null;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str2 = this.this$0.f57818a;
        Intrinsics.g(str2, "access$getTAG$p(...)");
        wf.a.C0922a.v(c0922a, str2, "getUGCCollectionList, size = " + (listU0 != null ? Boxing.d(listU0.size()) : null), false, 4, null);
        this.this$0.p0(listU0);
        this.this$0.f57836s.n(listU0);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadViewModel$getUGCCollectionList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
