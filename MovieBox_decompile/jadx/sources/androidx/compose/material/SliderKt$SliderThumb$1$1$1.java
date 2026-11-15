package androidx.compose.material;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.material.SliderKt$SliderThumb$1$1$1", f = "Slider.kt", l = {704}, m = "invokeSuspend")
final class SliderKt$SliderThumb$1$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final p.i $interactionSource;
    final SnapshotStateList $interactions;
    int label;

    static final class a implements kotlinx.coroutines.flow.b {

        final SnapshotStateList f3075a;

        a(SnapshotStateList snapshotStateList) {
            this.f3075a = snapshotStateList;
        }

        @Override
        public final Object emit(p.f fVar, Continuation continuation) {
            if (fVar instanceof p.k.b) {
                this.f3075a.add(fVar);
            } else if (fVar instanceof p.k.c) {
                this.f3075a.remove(((p.k.c) fVar).a());
            } else if (fVar instanceof p.k.a) {
                this.f3075a.remove(((p.k.a) fVar).a());
            } else if (fVar instanceof p.a.b) {
                this.f3075a.add(fVar);
            } else if (fVar instanceof p.a.c) {
                this.f3075a.remove(((p.a.c) fVar).a());
            } else if (fVar instanceof p.a.C0847a) {
                this.f3075a.remove(((p.a.C0847a) fVar).a());
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SliderKt$SliderThumb$1$1$1(p.i iVar, SnapshotStateList snapshotStateList, Continuation<? super SliderKt$SliderThumb$1$1$1> continuation) {
        super(2, continuation);
        this.$interactionSource = iVar;
        this.$interactions = snapshotStateList;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SliderKt$SliderThumb$1$1$1(this.$interactionSource, this.$interactions, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarB = this.$interactionSource.b();
            a aVar = new a(this.$interactions);
            this.label = 1;
            if (aVarB.a(aVar, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SliderKt$SliderThumb$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
