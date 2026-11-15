package com.transsnet.login.phone;

import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.login.phone.LoginPhoneViewModel$handleLoginSuccess$1", f = "LoginPhoneViewModel.kt", l = {424}, m = "invokeSuspend")
final class LoginPhoneViewModel$handleLoginSuccess$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final UserInfo $data;
    final androidx.p009lifecycle.b0 $liveData;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LoginPhoneViewModel$handleLoginSuccess$1(UserInfo userInfo, androidx.p009lifecycle.b0 b0Var, Continuation<? super LoginPhoneViewModel$handleLoginSuccess$1> continuation) {
        super(2, continuation);
        this.$data = userInfo;
        this.$liveData = b0Var;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LoginPhoneViewModel$handleLoginSuccess$1(this.$data, this.$liveData, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            if (this.$data != null) {
                qx.a aVarA = com.transsnet.login.q.f58319f.a();
                if (aVarA != null) {
                    UserInfo userInfo = this.$data;
                    this.label = 1;
                    if (aVarA.m(userInfo, this) == objF) {
                        return objF;
                    }
                }
            }
            return Unit.f64096a;
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        this.$liveData.q(this.$data);
        ix.f.f62815a.b().clearAll();
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LoginPhoneViewModel$handleLoginSuccess$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
