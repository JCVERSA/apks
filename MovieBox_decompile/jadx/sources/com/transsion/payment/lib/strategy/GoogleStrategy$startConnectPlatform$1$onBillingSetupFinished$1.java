package com.transsion.payment.lib.strategy;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.payment.lib.strategy.GoogleStrategy$startConnectPlatform$1$onBillingSetupFinished$1", f = "GoogleStrategy.kt", l = {149}, m = "invokeSuspend")
final class GoogleStrategy$startConnectPlatform$1$onBillingSetupFinished$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final long $delay;
    final Function0<Unit> $function;
    int label;
    final GoogleStrategy this$0;

    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.transsion.payment.lib.strategy.GoogleStrategy$startConnectPlatform$1$onBillingSetupFinished$1$1", f = "GoogleStrategy.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final Function0<Unit> $function;
        int label;
        final GoogleStrategy this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(GoogleStrategy googleStrategy, Function0<Unit> function0, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.this$0 = googleStrategy;
            this.$function = function0;
        }

        @Override
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$function, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            g.a.b(this.this$0, null, null, this.$function, 3, null);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GoogleStrategy$startConnectPlatform$1$onBillingSetupFinished$1(GoogleStrategy googleStrategy, long j10, Function0<Unit> function0, Continuation<? super GoogleStrategy$startConnectPlatform$1$onBillingSetupFinished$1> continuation) {
        super(2, continuation);
        this.this$0 = googleStrategy;
        this.$delay = j10;
        this.$function = function0;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new GoogleStrategy$startConnectPlatform$1$onBillingSetupFinished$1(this.this$0, this.$delay, this.$function, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            GoogleStrategy googleStrategy = this.this$0;
            long j10 = this.$delay;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(googleStrategy, this.$function, null);
            this.label = 1;
            if (googleStrategy.J(j10, anonymousClass1, this) == objF) {
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
        return ((GoogleStrategy$startConnectPlatform$1$onBillingSetupFinished$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
