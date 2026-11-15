package kotlinx.coroutines.flow;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", l = {Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.AD_RESPONSE_EMPTY_VALUE, Sdk$SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE}, m = "invokeSuspend")
final class FlowKt__ShareKt$launchSharing$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final Object $initialValue;
    final w0 $shared;
    final f1 $started;
    final a $upstream;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<Integer, Continuation<? super Boolean>, Object> {
        int I$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.I$0 = ((Number) obj).intValue();
            return anonymousClass1;
        }

        public final Object invoke(int i10, Continuation<? super Boolean> continuation) {
            return ((AnonymousClass1) create(Integer.valueOf(i10), continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            return Boxing.a(this.I$0 > 0);
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            return invoke(((Number) obj).intValue(), (Continuation<? super Boolean>) obj2);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0015\u0010\u0002\u001a\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/flow/SharingCommand;", "Lkotlin/ParameterName;", "name", AppMeasurementSdk.ConditionalUserProperty.VALUE}, k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", l = {Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<SharingCommand, Continuation<? super Unit>, Object> {
        final Object $initialValue;
        final w0 $shared;
        final kotlinx.coroutines.flow.a $upstream;
        Object L$0;
        int label;

        public class a {

            public static final int[] f64779a;

            static {
                int[] iArr = new int[SharingCommand.values().length];
                try {
                    iArr[SharingCommand.START.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SharingCommand.STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SharingCommand.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f64779a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(kotlinx.coroutines.flow.a aVar, w0 w0Var, Object obj, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$upstream = aVar;
            this.$shared = w0Var;
            this.$initialValue = obj;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$upstream, this.$shared, this.$initialValue, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                int i11 = a.f64779a[((SharingCommand) this.L$0).ordinal()];
                if (i11 == 1) {
                    kotlinx.coroutines.flow.a aVar = this.$upstream;
                    w0 w0Var = this.$shared;
                    this.label = 1;
                    if (aVar.a(w0Var, this) == objF) {
                        return objF;
                    }
                } else if (i11 != 2) {
                    if (i11 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Object obj2 = this.$initialValue;
                    if (obj2 == c1.f64806a) {
                        this.$shared.f();
                    } else {
                        Boxing.a(this.$shared.b(obj2));
                    }
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
        public final Object invoke(SharingCommand sharingCommand, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(sharingCommand, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__ShareKt$launchSharing$1(f1 f1Var, a aVar, w0 w0Var, Object obj, Continuation<? super FlowKt__ShareKt$launchSharing$1> continuation) {
        super(2, continuation);
        this.$started = f1Var;
        this.$upstream = aVar;
        this.$shared = w0Var;
        this.$initialValue = obj;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FlowKt__ShareKt$launchSharing$1(this.$started, this.$upstream, this.$shared, this.$initialValue, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0068 A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) {
        a aVar;
        w0 w0Var;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    ResultKt.b(obj);
                    aVar = this.$upstream;
                    w0Var = this.$shared;
                    this.label = 3;
                    if (aVar.a(w0Var, this) == objF) {
                        return objF;
                    }
                } else if (i10 != 3 && i10 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            f1 f1Var = this.$started;
            f1.a aVar2 = f1.f64813a;
            if (f1Var == aVar2.c()) {
                a aVar3 = this.$upstream;
                w0 w0Var2 = this.$shared;
                this.label = 1;
                if (aVar3.a(w0Var2, this) == objF) {
                    return objF;
                }
            } else if (this.$started == aVar2.d()) {
                h1 h1VarC = this.$shared.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
                this.label = 2;
                if (c.p(h1VarC, anonymousClass1, this) == objF) {
                    return objF;
                }
                aVar = this.$upstream;
                w0Var = this.$shared;
                this.label = 3;
                if (aVar.a(w0Var, this) == objF) {
                    return objF;
                }
            } else {
                a aVarJ = c.j(this.$started.a(this.$shared.c()));
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$upstream, this.$shared, this.$initialValue, null);
                this.label = 4;
                if (c.h(aVarJ, anonymousClass2, this) == objF) {
                    return objF;
                }
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((FlowKt__ShareKt$launchSharing$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
