package com.transsion.home.viewmodel;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.CategoryBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.CategoryViewModel$getCategoryList$1", f = "CategoryViewModel.kt", l = {32}, m = "invokeSuspend")
final class CategoryViewModel$getCategoryList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $type;
    Object L$0;
    int label;
    final CategoryViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CategoryViewModel$getCategoryList$1(String str, CategoryViewModel categoryViewModel, Continuation<? super CategoryViewModel$getCategoryList$1> continuation) {
        super(2, continuation);
        this.$type = str;
        this.this$0 = categoryViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CategoryViewModel$getCategoryList$1(this.$type, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        CategoryViewModel categoryViewModel;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, this.$type);
                jsonObject.addProperty("page", Boxing.d(this.this$0.k()));
                jsonObject.addProperty("perPage", Boxing.d(this.this$0.f44440c));
                mg.b.a aVar = mg.b.f66404a;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA != null) {
                    CategoryViewModel categoryViewModel2 = this.this$0;
                    yk.b bVarL = categoryViewModel2.l();
                    String strA = gg.a.f61067a.a();
                    this.L$0 = categoryViewModel2;
                    this.label = 1;
                    obj = bVarL.c(strA, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                    categoryViewModel = categoryViewModel2;
                }
                return Unit.f64096a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            categoryViewModel = (CategoryViewModel) this.L$0;
            ResultKt.b(obj);
            BaseDto baseDto = (BaseDto) obj;
            categoryViewModel.m((CategoryBean) baseDto.getData());
            categoryViewModel.j().n(baseDto);
            int iK = categoryViewModel.k();
            categoryViewModel.o(iK + 1);
            Boxing.d(iK);
        } catch (Exception e10) {
            this.this$0.j().n(new BaseDto());
            e10.printStackTrace();
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((CategoryViewModel$getCategoryList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
