package kotlinx.coroutines.flow;

import com.hunantv.media.drm.IDrmSession;
import defpackage.nt1;
import defpackage.wh1;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@nt1(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt", f = "Emitters.kt", l = {IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_ERROR}, m = "invokeSafely$FlowKt__EmittersKt")
public final class FlowKt__EmittersKt$invokeSafely$1<T> extends ContinuationImpl {
    Object L$0;
    int label;
    Object result;

    public FlowKt__EmittersKt$invokeSafely$1(wh1<? super FlowKt__EmittersKt$invokeSafely$1> wh1Var) {
        super(wh1Var);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FlowKt__EmittersKt.c(null, null, null, this);
    }
}
