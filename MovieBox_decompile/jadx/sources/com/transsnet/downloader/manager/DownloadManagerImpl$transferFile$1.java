package com.transsnet.downloader.manager;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.util.DownloadUtil;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$transferFile$1", f = "DownloadManagerImpl.kt", l = {1201}, m = "invokeSuspend")
final class DownloadManagerImpl$transferFile$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final DownloadBean $downloadInfo;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadManagerImpl$transferFile$1(DownloadBean downloadBean, Continuation<? super DownloadManagerImpl$transferFile$1> continuation) {
        super(2, continuation);
        this.$downloadInfo = downloadBean;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerImpl$transferFile$1(this.$downloadInfo, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            DownloadUtil downloadUtil = DownloadUtil.f57680a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            DownloadBean downloadBean = this.$downloadInfo;
            ui.b.a aVar = ui.b.f73084a;
            String strE = aVar.e();
            String rootPath = this.$downloadInfo.getRootPath();
            if (rootPath == null) {
                rootPath = aVar.e();
            }
            int rootPathType = this.$downloadInfo.getRootPathType();
            this.label = 1;
            if (downloadUtil.J(applicationA, true, downloadBean, strE, 1, rootPath, rootPathType, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? null : null, (384 & 512) != 0 ? false : true, this) == objF) {
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
        return ((DownloadManagerImpl$transferFile$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
