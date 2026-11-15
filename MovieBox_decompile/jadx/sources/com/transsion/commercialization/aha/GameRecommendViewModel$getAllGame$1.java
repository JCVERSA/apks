package com.transsion.commercialization.aha;

import com.transsion.bean.AhaGameResponse;
import java.util.Map;
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
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.commercialization.aha.GameRecommendViewModel$getAllGame$1", f = "GameRecommendViewModel.kt", l = {37}, m = "invokeSuspend")
final class GameRecommendViewModel$getAllGame$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final GameRecommendViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GameRecommendViewModel$getAllGame$1(GameRecommendViewModel gameRecommendViewModel, Continuation<? super GameRecommendViewModel$getAllGame$1> continuation) {
        super(2, continuation);
        this.this$0 = gameRecommendViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new GameRecommendViewModel$getAllGame$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        GameRecommendViewModel gameRecommendViewModel;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                GameRecommendViewModel gameRecommendViewModel2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                g gVarK = gameRecommendViewModel2.k();
                Map mapA = g.INSTANCE.a();
                RequestBody requestBodyA = mg.b.f66404a.a(new AhaGameRequest(new AhaGameQuery(gameRecommendViewModel2.f42571c, 10)));
                this.L$0 = gameRecommendViewModel2;
                this.label = 1;
                Object objA = gVarK.a(mapA, requestBodyA, this);
                if (objA == objF) {
                    return objF;
                }
                gameRecommendViewModel = gameRecommendViewModel2;
                obj = objA;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                gameRecommendViewModel = (GameRecommendViewModel) this.L$0;
                ResultKt.b(obj);
            }
            AhaGameResponse ahaGameResponse = (AhaGameResponse) obj;
            Integer code = ahaGameResponse.getCode();
            if (code != null && code.intValue() == 1000) {
                gameRecommendViewModel.f42571c++;
            }
            gameRecommendViewModel.f42569a.n(ahaGameResponse);
            wf.a.f74274a.c(gameRecommendViewModel.j(), gameRecommendViewModel.j() + " --> getAllGame() --> postAhaGameRecommendList = " + ahaGameResponse, true);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        GameRecommendViewModel gameRecommendViewModel3 = this.this$0;
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.f74274a.c(gameRecommendViewModel3.j(), gameRecommendViewModel3.j() + " --> getAllGame() --> 加载失败了 it = " + thM456exceptionOrNullimpl, true);
            gameRecommendViewModel3.f42569a.n(null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((GameRecommendViewModel$getAllGame$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
