package androidx.p009lifecycle;

import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"T", "Lkotlinx/coroutines/n0;", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.lifecycle.PausingDispatcherKt$whenStateAtLeast$2", f = "PausingDispatcher.jvm.kt", l = {Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE}, m = "invokeSuspend")
final class PausingDispatcherKt$whenStateAtLeast$2 extends SuspendLambda implements Function2<n0, Continuation<Object>, Object> {
    final Function2<n0, Continuation<Object>, Object> $block;
    final Lifecycle.State $minState;
    final Lifecycle $this_whenStateAtLeast;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PausingDispatcherKt$whenStateAtLeast$2(Lifecycle lifecycle, Lifecycle.State state, Function2<? super n0, ? super Continuation<Object>, ? extends Object> function2, Continuation<? super PausingDispatcherKt$whenStateAtLeast$2> continuation) {
        super(2, continuation);
        this.$this_whenStateAtLeast = lifecycle;
        this.$minState = state;
        this.$block = function2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        PausingDispatcherKt$whenStateAtLeast$2 pausingDispatcherKt$whenStateAtLeast$2 = new PausingDispatcherKt$whenStateAtLeast$2(this.$this_whenStateAtLeast, this.$minState, this.$block, continuation);
        pausingDispatcherKt$whenStateAtLeast$2.L$0 = obj;
        return pausingDispatcherKt$whenStateAtLeast$2;
    }

    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        p pVar;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            pVar = (p) this.L$0;
            try {
                ResultKt.b(obj);
                pVar.b();
                return obj;
            } catch (Throwable th2) {
                th = th2;
                pVar.b();
                throw th;
            }
        }
        ResultKt.b(obj);
        t1 t1Var = (t1) ((n0) this.L$0).getCoroutineContext().get(t1.f65027m1);
        if (t1Var == null) {
            throw new IllegalStateException("when[State] methods should have a parent job");
        }
        e0 e0Var = new e0();
        p pVar2 = new p(this.$this_whenStateAtLeast, this.$minState, e0Var.f9275a, t1Var);
        try {
            Function2<n0, Continuation<Object>, Object> function2 = this.$block;
            this.L$0 = pVar2;
            this.label = 1;
            obj = i.g(e0Var, function2, this);
            if (obj == objF) {
                return objF;
            }
            pVar = pVar2;
            pVar.b();
            return obj;
        } catch (Throwable th3) {
            th = th3;
            pVar = pVar2;
            pVar.b();
            throw th;
        }
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<Object> continuation) {
        return ((PausingDispatcherKt$whenStateAtLeast$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
