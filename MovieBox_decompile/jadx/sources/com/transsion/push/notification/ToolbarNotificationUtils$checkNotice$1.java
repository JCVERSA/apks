package com.transsion.push.notification;

import com.blankj.utilcode.util.o;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.push.bean.ToolbarNoticeConfig;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.notification.ToolbarNotificationUtils$checkNotice$1", f = "ToolbarNotificationUtils.kt", l = {111}, m = "invokeSuspend")
final class ToolbarNotificationUtils$checkNotice$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;

    ToolbarNotificationUtils$checkNotice$1(Continuation<? super ToolbarNotificationUtils$checkNotice$1> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ToolbarNotificationUtils$checkNotice$1(continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        ToolbarNoticeConfig toolbarNoticeConfig;
        String value;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                wf.a.C0922a.v(wf.a.f74274a, "ToolbarNo", "checkNotice-----", false, 4, null);
                try {
                    ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "sa_toolbar_notice", false, 2, null);
                    toolbarNoticeConfig = (configBeanD == null || (value = configBeanD.getValue()) == null) ? null : (ToolbarNoticeConfig) o.d(value, ToolbarNoticeConfig.class);
                } catch (Exception unused) {
                }
                int days = toolbarNoticeConfig != null ? toolbarNoticeConfig.getDays() : 3;
                ToolbarNotificationUtils.f48780e = toolbarNoticeConfig;
                ToolbarNotificationUtils toolbarNotificationUtils = ToolbarNotificationUtils.f48776a;
                toolbarNotificationUtils.w(toolbarNoticeConfig);
                if (toolbarNotificationUtils.s(days)) {
                    a2 a2VarC = y0.c();
                    ToolbarNotificationUtils$checkNotice$1$1$1 toolbarNotificationUtils$checkNotice$1$1$1 = new ToolbarNotificationUtils$checkNotice$1$1$1(null);
                    this.label = 1;
                    if (kotlinx.coroutines.i.g(a2VarC, toolbarNotificationUtils$checkNotice$1$1$1, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ToolbarNotificationUtils$checkNotice$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
