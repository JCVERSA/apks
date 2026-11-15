package kotlinx.coroutines.flow;

import defpackage.gx9;
import defpackage.nt1;
import defpackage.oz3;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$BooleanRef;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Loz3;", "Lkotlinx/coroutines/flow/SharingCommand;", "Lzfb;", "<anonymous>", "(Loz3;)V"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.flow.StartedLazily$command$1", f = "SharingStarted.kt", l = {151}, m = "invokeSuspend")
public final class StartedLazily$command$1 extends SuspendLambda implements s74 {
    final gx9 $subscriptionCount;
    private Object L$0;
    int label;

    public static final class AnonymousClass1 implements oz3 {
        public final Ref$BooleanRef b;
        public final oz3 c;

        public AnonymousClass1(Ref$BooleanRef ref$BooleanRef, oz3 oz3Var) {
            this.b = ref$BooleanRef;
            this.c = oz3Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public final Object d(int i, wh1 wh1Var) {
            StartedLazily$command$1$1$emit$1 startedLazily$command$1$1$emit$1;
            if (wh1Var instanceof StartedLazily$command$1$1$emit$1) {
                startedLazily$command$1$1$emit$1 = (StartedLazily$command$1$1$emit$1) wh1Var;
                int i2 = startedLazily$command$1$1$emit$1.label;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    startedLazily$command$1$1$emit$1.label = i2 - Integer.MIN_VALUE;
                } else {
                    startedLazily$command$1$1$emit$1 = new StartedLazily$command$1$1$emit$1(this, wh1Var);
                }
            } else {
                startedLazily$command$1$1$emit$1 = new StartedLazily$command$1$1$emit$1(this, wh1Var);
            }
            Object obj = startedLazily$command$1$1$emit$1.result;
            Object objF = z45.f();
            int i3 = startedLazily$command$1$1$emit$1.label;
            if (i3 == 0) {
                c.b(obj);
                if (i > 0) {
                    Ref$BooleanRef ref$BooleanRef = this.b;
                    if (!ref$BooleanRef.element) {
                        ref$BooleanRef.element = true;
                        oz3 oz3Var = this.c;
                        SharingCommand sharingCommand = SharingCommand.START;
                        startedLazily$command$1$1$emit$1.label = 1;
                        if (oz3Var.emit(sharingCommand, startedLazily$command$1$1$emit$1) == objF) {
                            return objF;
                        }
                    }
                }
                return zfb.a;
            }
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            return zfb.a;
        }

        @Override
        public Object emit(Object obj, wh1 wh1Var) {
            return d(((Number) obj).intValue(), wh1Var);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartedLazily$command$1(gx9 gx9Var, wh1<? super StartedLazily$command$1> wh1Var) {
        super(2, wh1Var);
        this.$subscriptionCount = gx9Var;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        StartedLazily$command$1 startedLazily$command$1 = new StartedLazily$command$1(this.$subscriptionCount, wh1Var);
        startedLazily$command$1.L$0 = obj;
        return startedLazily$command$1;
    }

    @Override
    public final Object invoke(oz3 oz3Var, wh1<? super zfb> wh1Var) {
        return ((StartedLazily$command$1) create(oz3Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            oz3 oz3Var = (oz3) this.L$0;
            Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            gx9 gx9Var = this.$subscriptionCount;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(ref$BooleanRef, oz3Var);
            this.label = 1;
            if (gx9Var.collect(anonymousClass1, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        throw new KotlinNothingValueException();
    }
}
