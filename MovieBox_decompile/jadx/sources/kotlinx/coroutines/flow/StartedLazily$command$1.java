package kotlinx.coroutines.flow;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Lkotlinx/coroutines/flow/SharingCommand;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedLazily$command$1", f = "SharingStarted.kt", l = {151}, m = "invokeSuspend")
final class StartedLazily$command$1 extends SuspendLambda implements Function2<b, Continuation<? super Unit>, Object> {
    final h1 $subscriptionCount;
    private Object L$0;
    int label;

    static final class AnonymousClass1 implements b {

        final Ref.BooleanRef f64799a;

        final b f64800b;

        AnonymousClass1(Ref.BooleanRef booleanRef, b bVar) {
            this.f64799a = booleanRef;
            this.f64800b = bVar;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object a(int i10, Continuation continuation) {
            StartedLazily$command$1$1$emit$1 startedLazily$command$1$1$emit$1;
            if (continuation instanceof StartedLazily$command$1$1$emit$1) {
                startedLazily$command$1$1$emit$1 = (StartedLazily$command$1$1$emit$1) continuation;
                int i11 = startedLazily$command$1$1$emit$1.label;
                if ((i11 & Integer.MIN_VALUE) != 0) {
                    startedLazily$command$1$1$emit$1.label = i11 - Integer.MIN_VALUE;
                } else {
                    startedLazily$command$1$1$emit$1 = new StartedLazily$command$1$1$emit$1(this, continuation);
                }
            } else {
                startedLazily$command$1$1$emit$1 = new StartedLazily$command$1$1$emit$1(this, continuation);
            }
            Object obj = startedLazily$command$1$1$emit$1.result;
            Object objF = IntrinsicsKt.f();
            int i12 = startedLazily$command$1$1$emit$1.label;
            if (i12 == 0) {
                ResultKt.b(obj);
                if (i10 > 0) {
                    Ref.BooleanRef booleanRef = this.f64799a;
                    if (!booleanRef.element) {
                        booleanRef.element = true;
                        b bVar = this.f64800b;
                        SharingCommand sharingCommand = SharingCommand.START;
                        startedLazily$command$1$1$emit$1.label = 1;
                        if (bVar.emit(sharingCommand, startedLazily$command$1$1$emit$1) == objF) {
                            return objF;
                        }
                    }
                }
                return Unit.f64096a;
            }
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            return Unit.f64096a;
        }

        @Override
        public Object emit(Object obj, Continuation continuation) {
            return a(((Number) obj).intValue(), continuation);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StartedLazily$command$1(h1 h1Var, Continuation<? super StartedLazily$command$1> continuation) {
        super(2, continuation);
        this.$subscriptionCount = h1Var;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        StartedLazily$command$1 startedLazily$command$1 = new StartedLazily$command$1(this.$subscriptionCount, continuation);
        startedLazily$command$1.L$0 = obj;
        return startedLazily$command$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            b bVar = (b) this.L$0;
            Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            h1 h1Var = this.$subscriptionCount;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(booleanRef, bVar);
            this.label = 1;
            if (h1Var.a(anonymousClass1, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        throw new KotlinNothingValueException();
    }

    @Override
    public final Object invoke(b bVar, Continuation<? super Unit> continuation) {
        return ((StartedLazily$command$1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
    }
}
