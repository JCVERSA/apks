package com.transsion.usercenter.setting;

import com.blankj.utilcode.util.Utils;
import com.transsion.baseui.R$string;
import com.transsion.usercenter.R$layout;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
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
@DebugMetadata(c = "com.transsion.usercenter.setting.SettingActivity$clickFamilyMode$1", f = "SettingActivity.kt", l = {682}, m = "invokeSuspend")
@SourceDebugExtension
final class SettingActivity$clickFamilyMode$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    boolean Z$0;
    int label;
    final SettingActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SettingActivity$clickFamilyMode$1(SettingActivity settingActivity, Continuation<? super SettingActivity$clickFamilyMode$1> continuation) {
        super(2, continuation);
        this.this$0 = settingActivity;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SettingActivity$clickFamilyMode$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        boolean z10;
        SettingActivity settingActivity;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            boolean z11 = bVar.b().getBoolean("k_is_family_mode", false);
            SettingActivity settingActivity2 = this.this$0;
            bVar.b().putBoolean("k_is_family_mode", !z11);
            settingActivity2.I0().p(!z11);
            settingActivity2.q1(settingActivity2.I0());
            jg.b.f63119a.b("X-Family-Mode", !z11 ? "1" : "0");
            qv.a aVar = new qv.a(z11);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = qv.a.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, aVar, 0L);
            settingActivity2.showLoading();
            this.L$0 = settingActivity2;
            this.Z$0 = z11;
            this.label = 1;
            if (u0.a(2000L, this) == objF) {
                return objF;
            }
            z10 = z11;
            settingActivity = settingActivity2;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z10 = this.Z$0;
            settingActivity = (SettingActivity) this.L$0;
            ResultKt.b(obj);
        }
        settingActivity.E0();
        int i11 = z10 ? R$string.family_mode_off_toast : R$string.family_mode_on_toast;
        fh.b.a aVar2 = fh.b.f60176a;
        int i12 = R$layout.toast_family_mode;
        String string = Utils.a().getString(i11);
        Intrinsics.g(string, "getString(...)");
        aVar2.g(i12, string, (24 & 4) != 0 ? 0 : 0, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : 0);
        qi.h.f69682a.o(settingActivity.getPageName(), MapsKt.l(TuplesKt.a("state", z10 ? "on" : "off"), TuplesKt.a("opt_type", "family_mode_switch")));
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SettingActivity$clickFamilyMode$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
