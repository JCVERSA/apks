package com.transsion.subroom.activity;

import android.app.Application;
import com.transsion.push.helper.PushPermanentManager;
import com.transsion.push.utils.NotificationUtil;
import com.transsion.usercenter.setting.labelsfeedback.sender.FBSender;
import com.transsion.usercenterapi.UpdateResultEvent;
import com.transsion.version.update.UpdateManager;
import com.transsnet.downloader.notification.DownloadNotificationUtils;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subroom.activity.MainActivity$createDelayTask$1", f = "MainActivity.kt", l = {1138, 1139, 1149}, m = "invokeSuspend")
@SourceDebugExtension
final class MainActivity$createDelayTask$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final MainActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivity$createDelayTask$1(MainActivity mainActivity, Continuation<? super MainActivity$createDelayTask$1> continuation) {
        super(2, continuation);
        this.this$0 = mainActivity;
    }

    public static final void g() {
        DownloadNotificationUtils.f57288a.G();
    }

    public static final void h(MainActivity mainActivity) {
        PushPermanentManager.f48745a.o();
        NotificationUtil.A(NotificationUtil.f48898a, mainActivity, null, null, false, 14, null);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivity$createDelayTask$1(this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0058  */
    /* JADX WARN: Code duplicated, block: B:23:0x008d A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else if (i10 == 2) {
                ResultKt.b(obj);
                if (((Boolean) obj).booleanValue()) {
                    UpdateResultEvent updateResultEvent = new UpdateResultEvent(true);
                    FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                    String name = UpdateResultEvent.class.getName();
                    Intrinsics.g(name, "getName(...)");
                    flowEventBus.postEvent(name, updateResultEvent, 0L);
                    wf.a.C0922a.f(wf.a.f74274a, "update", "NeedUpdate", false, 4, null);
                }
                this.label = 3;
                if (u0.a(3000L, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            com.tn.lib.thread.b bVar = com.tn.lib.thread.b.f39900a;
            bVar.a(new Runnable() {
                @Override
                public final void run() {
                    MainActivity$createDelayTask$1.g();
                }
            });
            final MainActivity mainActivity = this.this$0;
            bVar.a(new Runnable() {
                @Override
                public final void run() {
                    MainActivity$createDelayTask$1.h(mainActivity);
                }
            });
            FBSender fBSender = FBSender.f55319a;
            Application application = this.this$0.getApplication();
            Intrinsics.g(application, "getApplication(...)");
            fBSender.h(application);
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        this.label = 1;
        if (u0.a(2000L, this) == objF) {
            return objF;
        }
        UpdateManager updateManagerA = UpdateManager.f55354f.a();
        MainActivity mainActivity2 = this.this$0;
        this.label = 2;
        obj = UpdateManager.j(updateManagerA, mainActivity2, "main_page", "wefeed-mobile-bff", "", false, this, 16, null);
        if (obj == objF) {
            return objF;
        }
        if (((Boolean) obj).booleanValue()) {
            UpdateResultEvent updateResultEvent2 = new UpdateResultEvent(true);
            FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name2 = UpdateResultEvent.class.getName();
            Intrinsics.g(name2, "getName(...)");
            flowEventBus2.postEvent(name2, updateResultEvent2, 0L);
            wf.a.C0922a.f(wf.a.f74274a, "update", "NeedUpdate", false, 4, null);
        }
        this.label = 3;
        if (u0.a(3000L, this) == objF) {
            return objF;
        }
        com.tn.lib.thread.b bVar2 = com.tn.lib.thread.b.f39900a;
        bVar2.a(new Runnable() {
            @Override
            public final void run() {
                MainActivity$createDelayTask$1.g();
            }
        });
        final MainActivity mainActivity3 = this.this$0;
        bVar2.a(new Runnable() {
            @Override
            public final void run() {
                MainActivity$createDelayTask$1.h(mainActivity3);
            }
        });
        FBSender fBSender2 = FBSender.f55319a;
        Application application2 = this.this$0.getApplication();
        Intrinsics.g(application2, "getApplication(...)");
        fBSender2.h(application2);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MainActivity$createDelayTask$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
