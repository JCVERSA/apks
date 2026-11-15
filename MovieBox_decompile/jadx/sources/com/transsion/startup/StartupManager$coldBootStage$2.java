package com.transsion.startup;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.startup.StartupManager$coldBootStage$2", f = "StartupManager.kt", l = {299, 300, 303, Sdk$SDKError.Reason.EVALUATE_JAVASCRIPT_FAILED_VALUE, Sdk$SDKError.Reason.GENERATE_JSON_DATA_ERROR_VALUE, Sdk$SDKError.Reason.AD_CLOSED_TEMPLATE_ERROR_VALUE}, m = "invokeSuspend")
final class StartupManager$coldBootStage$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int I$0;
    int I$1;
    Object L$0;
    int label;
    final StartupManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StartupManager$coldBootStage$2(StartupManager startupManager, Continuation<? super StartupManager$coldBootStage$2> continuation) {
        super(2, continuation);
        this.this$0 = startupManager;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StartupManager$coldBootStage$2(this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0164  */
    /* JADX WARN: Code duplicated, block: B:49:0x0176 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x0177  */
    /* JADX WARN: Code duplicated, block: B:53:0x0183  */
    /* JADX WARN: Code duplicated, block: B:56:0x019a A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0198 -> B:7:0x0021). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.startup.StartupManager$coldBootStage$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((StartupManager$coldBootStage$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
