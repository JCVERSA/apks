package androidx.room;

import java.util.Arrays;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.w0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "androidx.room.MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1", f = "MultiInstanceInvalidationClient.android.kt", l = {87}, m = "invokeSuspend")
final class MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final String[] $tables;
    Object L$0;
    int label;
    final MultiInstanceInvalidationClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(String[] strArr, MultiInstanceInvalidationClient multiInstanceInvalidationClient, Continuation<? super MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1> continuation) {
        super(2, continuation);
        this.$tables = strArr;
        this.this$0 = multiInstanceInvalidationClient;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1(this.$tables, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Set set;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            String[] strArr = this.$tables;
            Set setJ = SetsKt.j(Arrays.copyOf(strArr, strArr.length));
            w0 w0Var = this.this$0.f14155h;
            this.L$0 = setJ;
            this.label = 1;
            if (w0Var.emit(setJ, this) == objF) {
                return objF;
            }
            set = setJ;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            set = (Set) this.L$0;
            ResultKt.b(obj);
        }
        this.this$0.h().s(set);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MultiInstanceInvalidationClient$invalidationCallback$1$onInvalidation$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
