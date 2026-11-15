package com.transsion.postdetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.postdetail.bean.CommentLikeBean;
import com.transsion.postdetail.bean.CommentLikeBody;
import com.vungle.ads.internal.protos.Sdk$SDKError;
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
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.CommentViewModel$likeComment$1", f = "CommentViewModel.kt", l = {Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE}, m = "invokeSuspend")
final class CommentViewModel$likeComment$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final CommentLikeBody $commentBody;
    int label;
    final CommentViewModel this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/postdetail/bean/CommentLikeBean;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.CommentViewModel$likeComment$1$1", f = "CommentViewModel.kt", l = {Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final CommentLikeBody $commentBody;
        private Object L$0;
        Object L$1;
        int label;
        final CommentViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(CommentLikeBody commentLikeBody, CommentViewModel commentViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$commentBody = commentLikeBody;
            this.this$0 = commentViewModel;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$commentBody, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0073 A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            RequestBody requestBodyA;
            kotlinx.coroutines.flow.b bVar;
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
                    ao.a aVarI = this.this$0.i();
                    String strA = gg.a.f61067a.a();
                    this.L$0 = bVar2;
                    this.L$1 = requestBodyA;
                    this.label = 1;
                    Object objF2 = aVarI.f(strA, requestBodyA, this);
                    if (objF2 == objF) {
                        return objF;
                    }
                    bVar = bVar2;
                    obj = objF2;
                    data = ((BaseDto) obj).getData();
                    this.L$0 = requestBodyA;
                    this.L$1 = null;
                    this.label = 2;
                    if (bVar.emit(data, this) == objF) {
                        return objF;
                    }
                }
            } else if (i10 == 1) {
                requestBodyA = (RequestBody) this.L$1;
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                ResultKt.b(obj);
                data = ((BaseDto) obj).getData();
                this.L$0 = requestBodyA;
                this.L$1 = null;
                this.label = 2;
                if (bVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 2) {
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

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lcom/transsion/postdetail/bean/CommentLikeBean;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.viewmodel.CommentViewModel$likeComment$1$2", f = "CommentViewModel.kt", l = {Sdk$SDKError.Reason.TPAT_ERROR_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        private Object L$0;
        int label;
        final CommentViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(CommentViewModel commentViewModel, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.this$0 = commentViewModel;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar = (kotlinx.coroutines.flow.b) this.L$0;
                this.this$0.r("like comment error");
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
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
            anonymousClass2.L$0 = bVar;
            return anonymousClass2.invokeSuspend(Unit.f64096a);
        }
    }

    static final class a implements kotlinx.coroutines.flow.b {

        final CommentViewModel f48106a;

        a(CommentViewModel commentViewModel) {
            this.f48106a = commentViewModel;
        }

        @Override
        public final Object emit(CommentLikeBean commentLikeBean, Continuation continuation) {
            this.f48106a.m().q(commentLikeBean);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CommentViewModel$likeComment$1(CommentLikeBody commentLikeBody, CommentViewModel commentViewModel, Continuation<? super CommentViewModel$likeComment$1> continuation) {
        super(2, continuation);
        this.$commentBody = commentLikeBody;
        this.this$0 = commentViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CommentViewModel$likeComment$1(this.$commentBody, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$commentBody, this.this$0, null)), y0.b()), new AnonymousClass2(this.this$0, null));
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
        return ((CommentViewModel$likeComment$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
