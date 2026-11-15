package com.transsion.audio.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsnet.downloader.bean.DownloadListBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.audio.viewmodel.HistoryListManager$getResourcePosition$1", f = "HistoryListManager.kt", l = {145}, m = "invokeSuspend")
final class HistoryListManager$getResourcePosition$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $postId;
    final int $resourceNum;
    final String $subjectId;
    int label;
    final HistoryListManager this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsnet/downloader/bean/DownloadListBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.audio.viewmodel.HistoryListManager$getResourcePosition$1$1", f = "HistoryListManager.kt", l = {Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE, 139, 141}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final String $postId;
        final int $resourceNum;
        final String $subjectId;
        private Object L$0;
        int label;
        final HistoryListManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(HistoryListManager historyListManager, String str, String str2, int i10, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = historyListManager;
            this.$subjectId = str;
            this.$postId = str2;
            this.$resourceNum = i10;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$subjectId, this.$postId, this.$resourceNum, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            DownloadListBean downloadListBean;
            List<DownloadItem> items;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2 && i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            bVar = (kotlinx.coroutines.flow.b) this.L$0;
            li.a aVarU = this.this$0.u();
            String strA = gg.a.f61067a.a();
            String str = this.$subjectId;
            String str2 = this.$postId;
            int i11 = this.$resourceNum;
            this.L$0 = bVar;
            this.label = 1;
            obj = aVarU.a(strA, str, str2, i11, this);
            if (obj == objF) {
                return objF;
            }
            BaseDto baseDto = (BaseDto) obj;
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
    @DebugMetadata(c = "com.transsion.audio.viewmodel.HistoryListManager$getResourcePosition$1$2", f = "HistoryListManager.kt", l = {144}, m = "invokeSuspend")
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

        final HistoryListManager f41843a;

        final String f41844b;

        final String f41845c;

        AnonymousClass3(HistoryListManager historyListManager, String str, String str2) {
            this.f41843a = historyListManager;
            this.f41844b = str;
            this.f41845c = str2;
        }

        /* JADX WARN: Code duplicated, block: B:35:0x0090  */
        /* JADX WARN: Code duplicated, block: B:37:0x009f  */
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override
        public final Object emit(DownloadListBean downloadListBean, Continuation continuation) {
            HistoryListManager$getResourcePosition$1$3$emit$1 historyListManager$getResourcePosition$1$3$emit$1;
            AudioBean audioBean;
            si.a aVarQ;
            List<DownloadItem> items;
            if (continuation instanceof HistoryListManager$getResourcePosition$1$3$emit$1) {
                historyListManager$getResourcePosition$1$3$emit$1 = (HistoryListManager$getResourcePosition$1$3$emit$1) continuation;
                int i10 = historyListManager$getResourcePosition$1$3$emit$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    historyListManager$getResourcePosition$1$3$emit$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    historyListManager$getResourcePosition$1$3$emit$1 = new HistoryListManager$getResourcePosition$1$3$emit$1(this, continuation);
                }
            } else {
                historyListManager$getResourcePosition$1$3$emit$1 = new HistoryListManager$getResourcePosition$1$3$emit$1(this, continuation);
            }
            Object objG = historyListManager$getResourcePosition$1$3$emit$1.result;
            Object objF = IntrinsicsKt.f();
            int i11 = historyListManager$getResourcePosition$1$3$emit$1.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    downloadListBean = (DownloadListBean) historyListManager$getResourcePosition$1$3$emit$1.L$0;
                    ResultKt.b(objG);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objG);
                }
                return Unit.f64096a;
            }
            ResultKt.b(objG);
            HistoryListManager.a aVar = HistoryListManager.f41836e;
            if (!aVar.a()) {
                this.f41843a.v().n(downloadListBean);
                aVar.c(true);
            } else if (downloadListBean != null) {
                this.f41843a.v().n(downloadListBean);
            }
            si.a aVarQ2 = this.f41843a.q();
            if (aVarQ2 != null) {
                String str = this.f41844b;
                String str2 = this.f41845c;
                historyListManager$getResourcePosition$1$3$emit$1.L$0 = downloadListBean;
                historyListManager$getResourcePosition$1$3$emit$1.label = 1;
                objG = aVarQ2.g(str, str2, historyListManager$getResourcePosition$1$3$emit$1);
                if (objG == objF) {
                    return objF;
                }
            } else {
                audioBean = null;
            }
            if (downloadListBean != null && (items = downloadListBean.getItems()) != null && !items.isEmpty()) {
                if (audioBean != null) {
                    audioBean.setSe(items.get(0).getSe());
                }
                if (audioBean != null) {
                    audioBean.setEp(items.get(0).getEp());
                }
            }
            if (audioBean != null || (aVarQ = this.f41843a.q()) == null) {
                return Unit.f64096a;
            }
            historyListManager$getResourcePosition$1$3$emit$1.L$0 = null;
            historyListManager$getResourcePosition$1$3$emit$1.label = 2;
            if (aVarQ.f(audioBean, historyListManager$getResourcePosition$1$3$emit$1) == objF) {
                return objF;
            }
            return Unit.f64096a;
            audioBean = (AudioBean) objG;
            if (downloadListBean != null) {
                if (audioBean != null) {
                    audioBean.setSe(items.get(0).getSe());
                }
                if (audioBean != null) {
                    audioBean.setEp(items.get(0).getEp());
                }
            }
            if (audioBean != null) {
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HistoryListManager$getResourcePosition$1(HistoryListManager historyListManager, String str, String str2, int i10, Continuation<? super HistoryListManager$getResourcePosition$1> continuation) {
        super(2, continuation);
        this.this$0 = historyListManager;
        this.$subjectId = str;
        this.$postId = str2;
        this.$resourceNum = i10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HistoryListManager$getResourcePosition$1(this.this$0, this.$subjectId, this.$postId, this.$resourceNum, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.this$0, this.$subjectId, this.$postId, this.$resourceNum, null)), new AnonymousClass2(null));
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, this.$subjectId, this.$postId);
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
        return ((HistoryListManager$getResourcePosition$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
