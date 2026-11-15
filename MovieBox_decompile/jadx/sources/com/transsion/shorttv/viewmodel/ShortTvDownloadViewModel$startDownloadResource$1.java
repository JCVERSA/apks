package com.transsion.shorttv.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.DownloadItem;
import com.transsion.shorttv.bean.StartDownloadBean;
import com.transsion.shorttv.bean.StartDownloadResponseBean;
import com.transsion.shorttv.bean.StartRequestBean;
import java.util.ArrayList;
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
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$startDownloadResource$1", f = "ShortTvDownloadViewModel.kt", l = {237}, m = "invokeSuspend")
final class ShortTvDownloadViewModel$startDownloadResource$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final List<DownloadItem> $beanList;
    final String $subjectId;
    int label;
    final ShortTvDownloadViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/shorttv/bean/StartDownloadResponseBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$startDownloadResource$1$1", f = "ShortTvDownloadViewModel.kt", l = {234, 235}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final List<DownloadItem> $beanList;
        final String $subjectId;
        private Object L$0;
        int label;
        final ShortTvDownloadViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<DownloadItem> list, ShortTvDownloadViewModel shortTvDownloadViewModel, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$beanList = list;
            this.this$0 = shortTvDownloadViewModel;
            this.$subjectId = str;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$beanList, this.this$0, this.$subjectId, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            bVar = (kotlinx.coroutines.flow.b) this.L$0;
            ArrayList arrayList = new ArrayList();
            List<DownloadItem> list = this.$beanList;
            String str = this.$subjectId;
            for (DownloadItem downloadItem : list) {
                arrayList.add(new StartDownloadBean(str, downloadItem.getResourceId(), downloadItem.getEpse()));
            }
            sr.a aVarK = this.this$0.k();
            String strA = gg.a.f61067a.a();
            mg.b.a aVar = mg.b.f66404a;
            String strJ = com.blankj.utilcode.util.o.j(new StartRequestBean(arrayList));
            Intrinsics.g(strJ, "toJson(...)");
            RequestBody requestBodyA = aVar.a(strJ);
            this.L$0 = bVar;
            this.label = 1;
            obj = aVarK.b(strA, requestBodyA, this);
            if (obj == objF) {
                return objF;
            }
            Object data = ((BaseDto) obj).getData();
            this.L$0 = null;
            this.label = 2;
            if (bVar.emit(data, this) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/shorttv/bean/StartDownloadResponseBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$startDownloadResource$1$2", f = "ShortTvDownloadViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            return new AnonymousClass2(continuation).invokeSuspend(Unit.f64096a);
        }
    }

    static final class a implements kotlinx.coroutines.flow.b {

        public static final a f51665a = new a();

        a() {
        }

        @Override
        public final Object emit(StartDownloadResponseBean startDownloadResponseBean, Continuation continuation) {
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvDownloadViewModel$startDownloadResource$1(List<DownloadItem> list, ShortTvDownloadViewModel shortTvDownloadViewModel, String str, Continuation<? super ShortTvDownloadViewModel$startDownloadResource$1> continuation) {
        super(2, continuation);
        this.$beanList = list;
        this.this$0 = shortTvDownloadViewModel;
        this.$subjectId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvDownloadViewModel$startDownloadResource$1(this.$beanList, this.this$0, this.$subjectId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$beanList, this.this$0, this.$subjectId, null)), new AnonymousClass2(null));
            a aVar = a.f51665a;
            this.label = 1;
            if (aVarE.a(aVar, this) == objF) {
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
        return ((ShortTvDownloadViewModel$startDownloadResource$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
