package com.transsion.startup;

import android.app.Application;
import com.transsion.mb.config.manager.ConfigBean;
import com.wecloud.load.lib.DySoLoadManager;
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
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.startup.StartupManager$scheduleDelayTask$1", f = "StartupManager.kt", l = {610}, m = "invokeSuspend")
final class StartupManager$scheduleDelayTask$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final StartupManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StartupManager$scheduleDelayTask$1(StartupManager startupManager, Continuation<? super StartupManager$scheduleDelayTask$1> continuation) {
        super(2, continuation);
        this.this$0 = startupManager;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StartupManager$scheduleDelayTask$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            this.label = 1;
            if (u0.a(10000L, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        Application application = null;
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "sa_dy_so_zip_info", false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        wf.a.C0922a.f(wf.a.f74274a, "SoLoadManager", "d valueJson " + value, false, 4, null);
        DySoLoadManager dySoLoadManager = DySoLoadManager.f58570a;
        Application application2 = this.this$0.f52498c;
        if (application2 == null) {
            Intrinsics.y("app");
        } else {
            application = application2;
        }
        dySoLoadManager.b(application, String.valueOf(value));
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((StartupManager$scheduleDelayTask$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
