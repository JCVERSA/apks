package com.transsion.home.viewmodel;

import com.transsion.home.bean.HomePreferencesState;
import com.transsion.home.repository.HomePreferencesRepository;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.HomePreferencesViewModel$loadHomePreferencesConfig$1", f = "HomePreferencesViewModel.kt", l = {126}, m = "invokeSuspend")
@SourceDebugExtension
final class HomePreferencesViewModel$loadHomePreferencesConfig$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private Object L$0;
    int label;
    final HomePreferencesViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HomePreferencesViewModel$loadHomePreferencesConfig$1(HomePreferencesViewModel homePreferencesViewModel, Continuation<? super HomePreferencesViewModel$loadHomePreferencesConfig$1> continuation) {
        super(2, continuation);
        this.this$0 = homePreferencesViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        HomePreferencesViewModel$loadHomePreferencesConfig$1 homePreferencesViewModel$loadHomePreferencesConfig$1 = new HomePreferencesViewModel$loadHomePreferencesConfig$1(this.this$0, continuation);
        homePreferencesViewModel$loadHomePreferencesConfig$1.L$0 = obj;
        return homePreferencesViewModel$loadHomePreferencesConfig$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        HomePreferencesViewModel homePreferencesViewModel;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                HomePreferencesViewModel homePreferencesViewModel2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                HomePreferencesRepository homePreferencesRepositoryY = homePreferencesViewModel2.y();
                this.L$0 = homePreferencesViewModel2;
                this.label = 1;
                Object objF2 = homePreferencesRepositoryY.f(null, this);
                if (objF2 == objF) {
                    return objF;
                }
                homePreferencesViewModel = homePreferencesViewModel2;
                obj = objF2;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                homePreferencesViewModel = (HomePreferencesViewModel) this.L$0;
                ResultKt.b(obj);
            }
            HomePreferencesState homePreferencesState = (HomePreferencesState) obj;
            homePreferencesViewModel.f44452h = homePreferencesState;
            homePreferencesViewModel.w().n(homePreferencesState);
            Iterator it = homePreferencesViewModel.f44453i.keySet().iterator();
            while (it.hasNext()) {
                homePreferencesViewModel.p((String) it.next());
            }
            homePreferencesViewModel.N(homePreferencesState);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        HomePreferencesViewModel homePreferencesViewModel3 = this.this$0;
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.l(wf.a.f74274a, "HomePreferencesViewModel", "loadHomePreferencesConfig error: " + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
            homePreferencesViewModel3.w().n(null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((HomePreferencesViewModel$loadHomePreferencesConfig$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
