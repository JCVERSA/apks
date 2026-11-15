package com.transsnet.downloader.manager;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsnet.downloader.bean.DownloadListBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$requestNewSource$1", f = "DownloadManagerImpl.kt", l = {1514}, m = "invokeSuspend")
final class DownloadManagerImpl$requestNewSource$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final DownloadBean $bean;
    int label;
    final DownloadManagerImpl this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsnet/downloader/bean/DownloadListBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$requestNewSource$1$1", f = "DownloadManagerImpl.kt", l = {1503, 1508, 1510}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final DownloadBean $bean;
        private Object L$0;
        int label;
        final DownloadManagerImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DownloadManagerImpl downloadManagerImpl, DownloadBean downloadBean, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = downloadManagerImpl;
            this.$bean = downloadBean;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$bean, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objD;
            kotlinx.coroutines.flow.b bVar;
            DownloadListBean downloadListBean;
            List<DownloadItem> items;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlinx.coroutines.flow.b bVar2 = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                    bVar = bVar2;
                    objD = obj;
                } else {
                    if (i10 != 2 && i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVar3 = (kotlinx.coroutines.flow.b) this.L$0;
            wf.a.C0922a c0922a = wf.a.f74274a;
            String str = this.this$0.f57217a;
            DownloadException exception = this.$bean.getException();
            c0922a.c(str, "download, resource error~ request new resource， responseCode = " + (exception != null ? Boxing.d(exception.getResponseCode()) : null), true);
            String url = this.$bean.getUrl();
            DownloadException exception2 = this.$bean.getException();
            String strValueOf = String.valueOf(exception2 != null ? Boxing.d(exception2.getResponseCode()) : null);
            cx.a aVarS0 = this.this$0.s0();
            String strA = gg.a.f61067a.a();
            String subjectId = this.$bean.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            String resourceId = this.$bean.getResourceId();
            String str2 = resourceId != null ? resourceId : "";
            this.L$0 = bVar3;
            this.label = 1;
            objD = cx.a.C0695a.d(aVarS0, strA, subjectId, str2, url, strValueOf, 0, this, 32, null);
            if (objD == objF) {
                return objF;
            }
            bVar = bVar3;
            BaseDto baseDto = (BaseDto) objD;
            if (Intrinsics.c(baseDto.getCode(), "0") && ((downloadListBean = (DownloadListBean) baseDto.getData()) == null || (items = downloadListBean.getItems()) == null || !items.isEmpty())) {
                Object data = baseDto.getData();
                this.L$0 = null;
                this.label = 3;
                if (bVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                this.L$0 = null;
                this.label = 2;
                if (bVar.emit(null, this) == objF) {
                    return objF;
                }
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsnet/downloader/bean/DownloadListBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.manager.DownloadManagerImpl$requestNewSource$1$2", f = "DownloadManagerImpl.kt", l = {1513}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        private Object L$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar = (kotlinx.coroutines.flow.b) this.L$0;
                this.label = 1;
                if (bVar.emit(null, this) == objF) {
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
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = bVar;
            return anonymousClass2.invokeSuspend(Unit.f64096a);
        }
    }

    static final class AnonymousClass3 implements kotlinx.coroutines.flow.b {

        final DownloadManagerImpl f57242a;

        final DownloadBean f57243b;

        AnonymousClass3(DownloadManagerImpl downloadManagerImpl, DownloadBean downloadBean) {
            this.f57242a = downloadManagerImpl;
            this.f57243b = downloadBean;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override
        public final Object emit(DownloadListBean downloadListBean, Continuation continuation) {
            DownloadManagerImpl$requestNewSource$1$3$emit$1 downloadManagerImpl$requestNewSource$1$3$emit$1;
            List<DownloadItem> items;
            String url;
            if (continuation instanceof DownloadManagerImpl$requestNewSource$1$3$emit$1) {
                downloadManagerImpl$requestNewSource$1$3$emit$1 = (DownloadManagerImpl$requestNewSource$1$3$emit$1) continuation;
                int i10 = downloadManagerImpl$requestNewSource$1$3$emit$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    downloadManagerImpl$requestNewSource$1$3$emit$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    downloadManagerImpl$requestNewSource$1$3$emit$1 = new DownloadManagerImpl$requestNewSource$1$3$emit$1(this, continuation);
                }
            } else {
                downloadManagerImpl$requestNewSource$1$3$emit$1 = new DownloadManagerImpl$requestNewSource$1$3$emit$1(this, continuation);
            }
            Object obj = downloadManagerImpl$requestNewSource$1$3$emit$1.result;
            Object objF = IntrinsicsKt.f();
            int i11 = downloadManagerImpl$requestNewSource$1$3$emit$1.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                this.f57242a.V0(this.f57243b);
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            if (downloadListBean == null || ((items = downloadListBean.getItems()) != null && items.isEmpty())) {
                wf.a.f74274a.x("download", "get new resource failed~~", true);
                this.f57242a.U0(this.f57243b);
            } else {
                List<DownloadItem> items2 = downloadListBean.getItems();
                DownloadItem downloadItem = items2 != null ? items2.get(0) : null;
                String url2 = this.f57243b.getUrl();
                if (Intrinsics.c(url2, downloadItem != null ? downloadItem.getUrl() : null)) {
                    wf.a.f74274a.x("download", "get new resource success, but url is same, download next task~~", true);
                    this.f57242a.U0(this.f57243b);
                    return Unit.f64096a;
                }
                DownloadBean downloadBean = this.f57243b;
                if (downloadItem == null || (url = downloadItem.getUrl()) == null) {
                    url = url2;
                }
                downloadBean.setUrl(url);
                this.f57243b.setUrlCreateAt(System.currentTimeMillis());
                DownloadBean downloadBean2 = this.f57243b;
                downloadBean2.setRequestNewSourceCount(downloadBean2.getRequestNewSourceCount() + 1);
                wf.a.f74274a.u("download", "get new resource success!!!, update url, lastUrl = " + url2 + ", newUrl = " + this.f57243b.getUrl(), true);
                DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
                String resourceId = this.f57243b.getResourceId();
                if (resourceId == null) {
                    resourceId = url2;
                }
                downloadManagerImpl$requestNewSource$1$3$emit$1.label = 1;
                if (downloadEsHelperA.k(url2, resourceId, downloadManagerImpl$requestNewSource$1$3$emit$1) == objF) {
                    return objF;
                }
            }
            return Unit.f64096a;
            DownloadEsHelper downloadEsHelperA2 = DownloadEsHelper.f57201m.a();
            DownloadBean downloadBean3 = this.f57243b;
            downloadManagerImpl$requestNewSource$1$3$emit$1.label = 2;
            if (downloadEsHelperA2.T(downloadBean3, downloadManagerImpl$requestNewSource$1$3$emit$1) == objF) {
                return objF;
            }
            this.f57242a.V0(this.f57243b);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadManagerImpl$requestNewSource$1(DownloadManagerImpl downloadManagerImpl, DownloadBean downloadBean, Continuation<? super DownloadManagerImpl$requestNewSource$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadManagerImpl;
        this.$bean = downloadBean;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerImpl$requestNewSource$1(this.this$0, this.$bean, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$bean, null)), new AnonymousClass2(null));
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, this.$bean);
            this.label = 1;
            if (aVarE.a(anonymousClass3, this) == objF) {
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
        return ((DownloadManagerImpl$requestNewSource$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
