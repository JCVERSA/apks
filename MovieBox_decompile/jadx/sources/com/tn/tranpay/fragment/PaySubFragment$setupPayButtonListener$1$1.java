package com.tn.tranpay.fragment;

import com.tn.tranpay.helper.PaymentMMKV;
import com.tn.tranpay.viewmodel.PaymentViewModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.tn.tranpay.fragment.PaySubFragment$setupPayButtonListener$1$1", f = "PaySubFragment.kt", l = {}, m = "invokeSuspend")
final class PaySubFragment$setupPayButtonListener$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final PaySubFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaySubFragment$setupPayButtonListener$1$1(PaySubFragment paySubFragment, Continuation<? super PaySubFragment$setupPayButtonListener$1$1> continuation) {
        super(2, continuation);
        this.this$0 = paySubFragment;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaySubFragment$setupPayButtonListener$1$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        if (!this.this$0.isPayable) {
            return Unit.f64096a;
        }
        this.this$0.isPayable = false;
        rg.b bVar = this.this$0.viewBinding;
        rg.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.y("viewBinding");
            bVar = null;
        }
        String strValueOf = String.valueOf(bVar.f71194e.getText());
        rg.b bVar3 = this.this$0.viewBinding;
        if (bVar3 == null) {
            Intrinsics.y("viewBinding");
        } else {
            bVar2 = bVar3;
        }
        String strValueOf2 = String.valueOf(bVar2.f71193d.getText());
        PaymentMMKV paymentMMKV = PaymentMMKV.f40642a;
        paymentMMKV.h().putString("k_phone_number", strValueOf);
        paymentMMKV.h().putString("k_cnic_number", strValueOf2);
        PaymentViewModel.k(this.this$0.i0(), this.this$0.getPayMethodCode(), strValueOf, strValueOf2, false, 8, null);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PaySubFragment$setupPayButtonListener$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
