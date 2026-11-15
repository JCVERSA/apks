package com.transsion.usercenter.profile.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.profile.viewmodel.UserProfileViewModel$fetchUserProfileV3$1", f = "UserProfileViewModel.kt", l = {104}, m = "invokeSuspend")
final class UserProfileViewModel$fetchUserProfileV3$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $userId;
    int label;
    final UserProfileViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UserProfileViewModel$fetchUserProfileV3$1(UserProfileViewModel userProfileViewModel, String str, Continuation<? super UserProfileViewModel$fetchUserProfileV3$1> continuation) {
        super(2, continuation);
        this.this$0 = userProfileViewModel;
        this.$userId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UserProfileViewModel$fetchUserProfileV3$1(this.this$0, this.$userId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                i0 i0VarB = y0.b();
                UserProfileViewModel$fetchUserProfileV3$1$dto$1 userProfileViewModel$fetchUserProfileV3$1$dto$1 = new UserProfileViewModel$fetchUserProfileV3$1$dto$1(this.this$0, this.$userId, null);
                this.label = 1;
                obj = i.g(i0VarB, userProfileViewModel$fetchUserProfileV3$1$dto$1, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            BaseDto baseDto = (BaseDto) obj;
            if (!Intrinsics.c(baseDto.getCode(), "0") || baseDto.getData() == null) {
                this.this$0.f55181j.q(null);
            } else {
                this.this$0.f55181j.q(baseDto.getData());
            }
        } catch (Exception e10) {
            wf.a.f74274a.i("UserProfileVM", "fetchUserProfileV3 error: " + e10.getMessage(), false);
            this.this$0.f55181j.q(null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((UserProfileViewModel$fetchUserProfileV3$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
