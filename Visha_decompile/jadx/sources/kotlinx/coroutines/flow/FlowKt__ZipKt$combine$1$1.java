package kotlinx.coroutines.flow;

import defpackage.nt1;
import defpackage.oz3;
import defpackage.u74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "Loz3;", "", "", "it", "Lzfb;", "<anonymous>", "(Loz3;Lkotlin/Array;)V"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1", f = "Zip.kt", l = {29, 29}, m = "invokeSuspend")
public final class FlowKt__ZipKt$combine$1$1 extends SuspendLambda implements u74 {
    final u74 $transform;
    private Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ZipKt$combine$1$1(u74 u74Var, wh1<? super FlowKt__ZipKt$combine$1$1> wh1Var) {
        super(3, wh1Var);
        this.$transform = u74Var;
    }

    @Override
    public final Object invoke(oz3 oz3Var, Object[] objArr, wh1<? super zfb> wh1Var) {
        FlowKt__ZipKt$combine$1$1 flowKt__ZipKt$combine$1$1 = new FlowKt__ZipKt$combine$1$1(this.$transform, wh1Var);
        flowKt__ZipKt$combine$1$1.L$0 = oz3Var;
        flowKt__ZipKt$combine$1$1.L$1 = objArr;
        return flowKt__ZipKt$combine$1$1.invokeSuspend(zfb.a);
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
        Object[] objArr = (Object[]) this.L$1;
        u74 u74Var = this.$transform;
        Object obj2 = objArr[0];
        Object obj3 = objArr[1];
        this.L$0 = oz3Var;
        this.label = 1;
        obj = u74Var.invoke(obj2, obj3, this);
        if (obj == objF) {
            return objF;
        }
        this.L$0 = null;
        this.label = 2;
        if (oz3Var.emit(obj, this) == objF) {
            return objF;
        }
        return zfb.a;
    }
}
