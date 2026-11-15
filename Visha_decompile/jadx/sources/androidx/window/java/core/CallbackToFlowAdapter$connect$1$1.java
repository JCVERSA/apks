package androidx.window.java.core;

import androidx.core.util.Consumer;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "T", "Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.window.java.core.CallbackToFlowAdapter$connect$1$1", f = "CallbackToFlowAdapter.kt", l = {46}, m = "invokeSuspend")
public final class CallbackToFlowAdapter$connect$1$1 extends SuspendLambda implements s74 {
    final Consumer<T> $consumer;
    final nz3 $flow;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallbackToFlowAdapter$connect$1$1(nz3 nz3Var, Consumer<T> consumer, wh1<? super CallbackToFlowAdapter$connect$1$1> wh1Var) {
        super(2, wh1Var);
        this.$flow = nz3Var;
        this.$consumer = consumer;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CallbackToFlowAdapter$connect$1$1(this.$flow, this.$consumer, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CallbackToFlowAdapter$connect$1$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            nz3 nz3Var = this.$flow;
            final Consumer<T> consumer = this.$consumer;
            oz3 oz3Var = new oz3() {
                @Override
                public final Object emit(T t, wh1<? super zfb> wh1Var) {
                    consumer.accept(t);
                    return zfb.a;
                }
            };
            this.label = 1;
            if (nz3Var.collect(oz3Var, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return zfb.a;
    }
}
