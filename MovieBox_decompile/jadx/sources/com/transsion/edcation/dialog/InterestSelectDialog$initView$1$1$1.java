package com.transsion.edcation.dialog;

import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.toast.core.h;
import com.transsion.edcation.bean.InterestBody;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.edcation.dialog.InterestSelectDialog$initView$1$1$1", f = "InterestSelectDialog.kt", l = {60}, m = "invokeSuspend")
final class InterestSelectDialog$initView$1$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private Object L$0;
    int label;
    final InterestSelectDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InterestSelectDialog$initView$1$1$1(InterestSelectDialog interestSelectDialog, Continuation<? super InterestSelectDialog$initView$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = interestSelectDialog;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        InterestSelectDialog$initView$1$1$1 interestSelectDialog$initView$1$1$1 = new InterestSelectDialog$initView$1$1$1(this.this$0, continuation);
        interestSelectDialog$initView$1$1$1.L$0 = obj;
        return interestSelectDialog$initView$1$1$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        InterestSelectDialog interestSelectDialog;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                InterestSelectDialog interestSelectDialog2 = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                com.transsion.edcation.c cVarW0 = interestSelectDialog2.w0();
                InterestBody interestBody = new InterestBody(interestSelectDialog2.selectIds);
                this.L$0 = interestSelectDialog2;
                this.label = 1;
                Object objC = com.transsion.edcation.c.a.c(cVarW0, null, interestBody, this, 1, null);
                if (objC == objF) {
                    return objF;
                }
                interestSelectDialog = interestSelectDialog2;
                obj = objC;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                interestSelectDialog = (InterestSelectDialog) this.L$0;
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            String unused = interestSelectDialog.TAG;
            List list = interestSelectDialog.selectIds;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("res: ");
            sb2.append(baseDto);
            sb2.append(", ids: ");
            sb2.append(list);
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                interestSelectDialog.a0();
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        InterestSelectDialog interestSelectDialog3 = this.this$0;
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null && interestSelectDialog3.isAdded() && !interestSelectDialog3.isDetached() && !interestSelectDialog3.isRemoving()) {
            h.f40484a.l(Utils.a().getString(R$string.no_error_content));
            String unused2 = interestSelectDialog3.TAG;
            String message = thM456exceptionOrNullimpl.getMessage();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("error: ");
            sb3.append(message);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((InterestSelectDialog$initView$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
