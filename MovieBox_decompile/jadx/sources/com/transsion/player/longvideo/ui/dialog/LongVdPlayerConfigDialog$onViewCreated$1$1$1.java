package com.transsion.player.longvideo.ui.dialog;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.TheRouter;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.LinkedHashMap;
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
@DebugMetadata(c = "com.transsion.player.longvideo.ui.dialog.LongVdPlayerConfigDialog$onViewCreated$1$1$1", f = "LongVdPlayerConfigDialog.kt", l = {Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE}, m = "invokeSuspend")
final class LongVdPlayerConfigDialog$onViewCreated$1$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final ln.b $config;
    int label;
    final LongVdPlayerConfigDialog this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVdPlayerConfigDialog$onViewCreated$1$1$1(ln.b bVar, LongVdPlayerConfigDialog longVdPlayerConfigDialog, Continuation<? super LongVdPlayerConfigDialog$onViewCreated$1$1$1> continuation) {
        super(2, continuation);
        this.$config = bVar;
        this.this$0 = longVdPlayerConfigDialog;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVdPlayerConfigDialog$onViewCreated$1$1$1(this.$config, this.this$0, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
            ?? M = bVar != null ? bVar.m() : 0;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("module_name", "clarity");
            linkedHashMap.put(NativeComponentConstants.KEY_COMPONENT_TYPE, this.$config.d());
            ln.a aVar = this.this$0.longVdPlayerBean;
            linkedHashMap.put("subject_id", aVar != null ? aVar.o() : null);
            linkedHashMap.put("is_member", String.valueOf((int) M));
            qi.h hVar = qi.h.f69682a;
            String str = this.this$0.pageName;
            if (str == null) {
                str = "vip_resolution";
            }
            hVar.o(str, linkedHashMap);
            LongVdPlayerConfigDialog longVdPlayerConfigDialog = this.this$0;
            ln.b bVar2 = this.$config;
            this.label = 1;
            obj = longVdPlayerConfigDialog.w0(bVar2, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            this.this$0.dismissAllowingStateLoss();
        } else {
            this.this$0.A0(this.$config);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVdPlayerConfigDialog$onViewCreated$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
