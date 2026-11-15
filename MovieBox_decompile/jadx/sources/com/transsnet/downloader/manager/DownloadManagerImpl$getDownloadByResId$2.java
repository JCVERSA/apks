package com.transsnet.downloader.manager;

import com.transsion.baselib.db.download.DownloadBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$getDownloadByResId$2", f = "DownloadManagerImpl.kt", l = {951}, m = "invokeSuspend")
final class DownloadManagerImpl$getDownloadByResId$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function1<DownloadBean, Unit> $callback;
    final Ref.ObjectRef<DownloadBean> $downloadInfo;
    final String $resourceId;
    Object L$0;
    int label;
    final DownloadManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DownloadManagerImpl$getDownloadByResId$2(Ref.ObjectRef<DownloadBean> objectRef, String str, Function1<? super DownloadBean, Unit> function1, DownloadManagerImpl downloadManagerImpl, Continuation<? super DownloadManagerImpl$getDownloadByResId$2> continuation) {
        super(2, continuation);
        this.$downloadInfo = objectRef;
        this.$resourceId = str;
        this.$callback = function1;
        this.this$0 = downloadManagerImpl;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerImpl$getDownloadByResId$2(this.$downloadInfo, this.$resourceId, this.$callback, this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004c  */
    /* JADX WARN: Code duplicated, block: B:22:0x0058  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object invokeSuspend(Object obj) {
        Ref.ObjectRef<DownloadBean> objectRef;
        T t10;
        Ref.ObjectRef<DownloadBean> objectRef2;
        DownloadBean downloadBean;
        DownloadManagerImpl downloadManagerImpl;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            objectRef = this.$downloadInfo;
            if (objectRef.element == null) {
                String str = this.$resourceId;
                if (str != null) {
                    DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
                    this.L$0 = objectRef;
                    this.label = 1;
                    Object objP = downloadEsHelperA.p(str, this);
                    if (objP == objF) {
                        return objF;
                    }
                    objectRef2 = objectRef;
                    obj = objP;
                } else {
                    t10 = 0;
                }
                objectRef.element = t10;
                downloadBean = this.$downloadInfo.element;
                if (downloadBean != null) {
                    downloadManagerImpl = this.this$0;
                    if (!downloadManagerImpl.f57219c.contains(downloadBean)) {
                        downloadManagerImpl.f57219c.add(downloadBean);
                    }
                }
            }
            this.$callback.invoke(this.$downloadInfo.element);
            return Unit.f64096a;
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        objectRef2 = (Ref.ObjectRef) this.L$0;
        ResultKt.b(obj);
        Ref.ObjectRef<DownloadBean> objectRef3 = objectRef2;
        t10 = (DownloadBean) obj;
        objectRef = objectRef3;
        objectRef.element = t10;
        downloadBean = this.$downloadInfo.element;
        if (downloadBean != null) {
            downloadManagerImpl = this.this$0;
            if (!downloadManagerImpl.f57219c.contains(downloadBean)) {
                downloadManagerImpl.f57219c.add(downloadBean);
            }
        }
        this.$callback.invoke(this.$downloadInfo.element);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadManagerImpl$getDownloadByResId$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
