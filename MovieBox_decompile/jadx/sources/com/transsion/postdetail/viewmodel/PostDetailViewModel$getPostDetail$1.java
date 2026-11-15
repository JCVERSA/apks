package com.transsion.postdetail.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import retrofit2.HttpException;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.viewmodel.PostDetailViewModel$getPostDetail$1", f = "PostDetailViewModel.kt", l = {75}, m = "invokeSuspend")
final class PostDetailViewModel$getPostDetail$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $postId;
    Object L$0;
    int label;
    final PostDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PostDetailViewModel$getPostDetail$1(PostDetailViewModel postDetailViewModel, String str, Continuation<? super PostDetailViewModel$getPostDetail$1> continuation) {
        super(2, continuation);
        this.this$0 = postDetailViewModel;
        this.$postId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PostDetailViewModel$getPostDetail$1(this.this$0, this.$postId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        PostDetailViewModel postDetailViewModel;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                PostDetailViewModel postDetailViewModel2 = this.this$0;
                String str = this.$postId;
                Result.Companion companion = Result.INSTANCE;
                ao.b bVarD = postDetailViewModel2.D();
                String strA = gg.a.f61067a.a();
                this.L$0 = postDetailViewModel2;
                this.label = 1;
                Object objA = bVarD.a(strA, str, this);
                if (objA == objF) {
                    return objF;
                }
                postDetailViewModel = postDetailViewModel2;
                obj = objA;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                postDetailViewModel = (PostDetailViewModel) this.L$0;
                ResultKt.b(obj);
            }
            postDetailViewModel.z().q(((BaseDto) obj).getData());
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        PostDetailViewModel postDetailViewModel3 = this.this$0;
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            if (thM456exceptionOrNullimpl instanceof HttpException) {
                HttpException httpException = (HttpException) thM456exceptionOrNullimpl;
                if (httpException.code() == 404) {
                    postDetailViewModel3.y().q(String.valueOf(httpException.code()));
                }
            }
            postDetailViewModel3.z().q(null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PostDetailViewModel$getPostDetail$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
