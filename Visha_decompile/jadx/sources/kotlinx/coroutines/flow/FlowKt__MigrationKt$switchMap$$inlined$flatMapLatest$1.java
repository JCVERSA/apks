package kotlinx.coroutines.flow;

import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.u74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0003\u001a\u00028\u0001H\n¨\u0006\u0005"}, d2 = {"R", "T", "Loz3;", "it", "Lzfb;", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1", "<anonymous>"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.flow.FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1", f = "Migration.kt", l = {189, 189}, m = "invokeSuspend")
public final class FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1 extends SuspendLambda implements u74 {
    final s74 $transform;
    private Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1(s74 s74Var, wh1 wh1Var) {
        super(3, wh1Var);
        this.$transform = s74Var;
    }

    @Override
    public final Object invoke(oz3 oz3Var, Object obj, wh1<? super zfb> wh1Var) {
        FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1 flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1 = new FlowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1(this.$transform, wh1Var);
        flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1.L$0 = oz3Var;
        flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1.L$1 = obj;
        return flowKt__MigrationKt$switchMap$$inlined$flatMapLatest$1.invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        oz3 oz3Var;
        Object objF = z45.f();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                oz3Var = (oz3) this.L$0;
                c.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
        c.b(obj);
        oz3Var = (oz3) this.L$0;
        Object obj2 = this.L$1;
        s74 s74Var = this.$transform;
        this.L$0 = oz3Var;
        this.label = 1;
        obj = s74Var.invoke(obj2, this);
        if (obj == objF) {
            return objF;
        }
        this.L$0 = null;
        this.label = 2;
        if (sz3.l(oz3Var, (nz3) obj, this) == objF) {
            return objF;
        }
        return zfb.a;
    }
}
