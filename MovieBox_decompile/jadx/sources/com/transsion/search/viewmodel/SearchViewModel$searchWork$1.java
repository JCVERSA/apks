package com.transsion.search.viewmodel;

import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.toast.core.h;
import com.transsion.search.net.RequestSearchEntity;
import cq.j;
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
import yg.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.search.viewmodel.SearchViewModel$searchWork$1", f = "SearchViewModel.kt", l = {73}, m = "invokeSuspend")
final class SearchViewModel$searchWork$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final RequestSearchEntity $request;
    int label;
    final SearchViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SearchViewModel$searchWork$1(SearchViewModel searchViewModel, RequestSearchEntity requestSearchEntity, Continuation<? super SearchViewModel$searchWork$1> continuation) {
        super(2, continuation);
        this.this$0 = searchViewModel;
        this.$request = requestSearchEntity;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SearchViewModel$searchWork$1(this.this$0, this.$request, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                SearchViewModel searchViewModel = this.this$0;
                RequestSearchEntity requestSearchEntity = this.$request;
                Result.Companion companion = Result.INSTANCE;
                j jVarN = searchViewModel.n();
                this.label = 1;
                obj = jVarN.i(requestSearchEntity, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) obj);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        SearchViewModel searchViewModel2 = this.this$0;
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            searchViewModel2.f50223c.n(((BaseDto) objM453constructorimpl).getData());
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.z(wf.a.f74274a, "liup", String.valueOf(thM456exceptionOrNullimpl.getMessage()), false, 4, null);
            if (l.f76264a.e()) {
                h.f40484a.l(Utils.a().getString(R$string.no_error_content));
            } else {
                h.f40484a.l(Utils.a().getString(R$string.no_network_toast));
            }
            searchViewModel2.f50223c.n(null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SearchViewModel$searchWork$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
