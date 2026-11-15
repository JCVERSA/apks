package com.transsion.usercenter.setting;

import com.transsion.usercenter.R$string;
import com.transsion.version.update.UpdateManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.usercenter.setting.SettingActivity$checkUpdateByUser$1", f = "SettingActivity.kt", l = {252}, m = "invokeSuspend")
final class SettingActivity$checkUpdateByUser$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final SettingActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SettingActivity$checkUpdateByUser$1(SettingActivity settingActivity, Continuation<? super SettingActivity$checkUpdateByUser$1> continuation) {
        super(2, continuation);
        this.this$0 = settingActivity;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SettingActivity$checkUpdateByUser$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            UpdateManager updateManagerA = UpdateManager.f55354f.a();
            SettingActivity settingActivity = this.this$0;
            this.label = 1;
            obj = updateManagerA.i(settingActivity, "setting_page", "wefeed-mobile-bff", "", true, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        this.this$0.E0();
        if (!zBooleanValue) {
            com.tn.lib.widget.toast.core.h.f40484a.l(this.this$0.getString(R$string.profile_setting_check_update_tip));
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SettingActivity$checkUpdateByUser$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
