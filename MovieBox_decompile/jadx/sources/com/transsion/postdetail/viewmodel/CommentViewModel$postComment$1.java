package com.transsion.postdetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.postdetail.bean.CommentBody;
import com.transsion.postdetailapi.CommentTopicType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
import kotlinx.coroutines.y0;
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.CommentViewModel$postComment$1", f = "CommentViewModel.kt", l = {60}, m = "invokeSuspend")
final class CommentViewModel$postComment$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final CommentBody $commentBody;
    final String $topicType;
    int label;
    final CommentViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.CommentViewModel$postComment$1$1", f = "CommentViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE, Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE, Sdk$SDKMetric.SDKMetricType.AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final CommentBody $commentBody;
        final String $topicType;
        private Object L$0;
        Object L$1;
        int label;
        final CommentViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(CommentBody commentBody, String str, CommentViewModel commentViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$commentBody = commentBody;
            this.$topicType = str;
            this.this$0 = commentViewModel;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$commentBody, this.$topicType, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:28:0x00af A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            RequestBody requestBodyA;
            kotlinx.coroutines.flow.b bVar;
            BaseDto baseDto;
            Object data;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar2 = (kotlinx.coroutines.flow.b) this.L$0;
                mg.b.a aVar = mg.b.f66404a;
                String strJ = com.blankj.utilcode.util.o.j(this.$commentBody);
                Intrinsics.g(strJ, "toJson(...)");
                requestBodyA = aVar.a(strJ);
                if (requestBodyA != null) {
                    String str = this.$topicType;
                    CommentViewModel commentViewModel = this.this$0;
                    if (Intrinsics.c(str, CommentTopicType.POST.getValue())) {
                        ao.a aVarI = commentViewModel.i();
                        String strA = gg.a.f61067a.a();
                        this.L$0 = bVar2;
                        this.L$1 = requestBodyA;
                        this.label = 1;
                        Object objB = aVarI.b(strA, requestBodyA, this);
                        if (objB == objF) {
                            return objF;
                        }
                        bVar = bVar2;
                        obj = objB;
                        baseDto = (BaseDto) obj;
                        data = baseDto.getData();
                        this.L$0 = requestBodyA;
                        this.L$1 = null;
                        this.label = 3;
                        if (bVar.emit(data, this) == objF) {
                            return objF;
                        }
                    } else {
                        ao.a aVarI2 = commentViewModel.i();
                        String strA2 = gg.a.f61067a.a();
                        this.L$0 = bVar2;
                        this.L$1 = requestBodyA;
                        this.label = 2;
                        Object objE = aVarI2.e(strA2, requestBodyA, this);
                        if (objE == objF) {
                            return objF;
                        }
                        bVar = bVar2;
                        obj = objE;
                        baseDto = (BaseDto) obj;
                        data = baseDto.getData();
                        this.L$0 = requestBodyA;
                        this.L$1 = null;
                        this.label = 3;
                        if (bVar.emit(data, this) == objF) {
                            return objF;
                        }
                    }
                }
            } else if (i10 == 1) {
                requestBodyA = (RequestBody) this.L$1;
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                ResultKt.b(obj);
                baseDto = (BaseDto) obj;
                data = baseDto.getData();
                this.L$0 = requestBodyA;
                this.L$1 = null;
                this.label = 3;
                if (bVar.emit(data, this) == objF) {
                    return objF;
                }
            } else if (i10 == 2) {
                requestBodyA = (RequestBody) this.L$1;
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                ResultKt.b(obj);
                baseDto = (BaseDto) obj;
                data = baseDto.getData();
                this.L$0 = requestBodyA;
                this.L$1 = null;
                this.label = 3;
                if (bVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.CommentViewModel$postComment$1$2", f = "CommentViewModel.kt", l = {Sdk$SDKMetric.SDKMetricType.INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE}, m = "invokeSuspend")
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
                wf.a.C0922a.f(wf.a.f74274a, "CommentViewModel", "post comment error", false, 4, null);
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

    static final class a implements kotlinx.coroutines.flow.b {

        final CommentViewModel f48107a;

        a(CommentViewModel commentViewModel) {
            this.f48107a = commentViewModel;
        }

        @Override
        public final Object emit(CommentBean commentBean, Continuation continuation) {
            this.f48107a.n().q(commentBean);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CommentViewModel$postComment$1(CommentBody commentBody, String str, CommentViewModel commentViewModel, Continuation<? super CommentViewModel$postComment$1> continuation) {
        super(2, continuation);
        this.$commentBody = commentBody;
        this.$topicType = str;
        this.this$0 = commentViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CommentViewModel$postComment$1(this.$commentBody, this.$topicType, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$commentBody, this.$topicType, this.this$0, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.this$0);
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
        return ((CommentViewModel$postComment$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
