package com.transsnet.flow.event;

import androidx.annotation.Keep;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.u0;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.c1;
import kotlinx.coroutines.flow.h1;
import kotlinx.coroutines.flow.w0;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

@Keep
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u000bJ5\u0010\u0011\u001a\u00020\u000f\"\b\b\u0000\u0010\f*\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012JS\u0010\u001a\u001a\u00020\u0019\"\b\b\u0000\u0010\f*\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u001a\u0010\u001bJ>\u0010\u001c\u001a\u00020\u000f\"\b\b\u0000\u0010\f*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000eH\u0086@¢\u0006\u0004\b\u001c\u0010\u001dJ%\u0010 \u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u0015\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\"\u0010#J\u0015\u0010$\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b$\u0010#J\u0015\u0010&\u001a\u00020%2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b&\u0010'R<\u0010*\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0(j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b`)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R<\u0010,\u001a*\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0(j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b`)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010+¨\u0006-"}, d2 = {"Lcom/transsnet/flow/event/FlowEventBus;", "Landroidx/lifecycle/t0;", "<init>", "()V", "", EventConstants.KEY_EVENT_NAME, "", "isSticky", "Lkotlinx/coroutines/flow/w0;", "", "getEventFlow", "(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/w0;", "T", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Lkotlin/Function1;", "", "onReceived", "invokeReceived", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "Landroidx/lifecycle/u;", "lifecycleOwner", "Landroidx/lifecycle/Lifecycle$State;", "minState", "Lkotlinx/coroutines/i0;", "dispatcher", "Lkotlinx/coroutines/t1;", "observeEvent", "(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;", "observeWithoutLifecycle", "(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "timeMillis", "postEvent", "(Ljava/lang/String;Ljava/lang/Object;J)V", "removeStickEvent", "(Ljava/lang/String;)V", "clearStickEvent", "", "getEventObserverCount", "(Ljava/lang/String;)I", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "eventFlows", "Ljava/util/HashMap;", "stickyEventFlows", "FlowEvent_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FlowEventBus extends t0 {
    private final HashMap<String, w0> eventFlows = new HashMap<>();
    private final HashMap<String, w0> stickyEventFlows = new HashMap<>();

    static final class a implements kotlinx.coroutines.flow.b {

        final Function1 f58025b;

        a(Function1 function1) {
            this.f58025b = function1;
        }

        @Override
        public final Object emit(Object obj, Continuation continuation) {
            FlowEventBus.this.invokeReceived(obj, this.f58025b);
            return Unit.f64096a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/Void;"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.flow.event.FlowEventBus$observeEvent$1", f = "FlowEventBus.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<?>, Object> {
        final i0 $dispatcher;
        final String $eventName;
        final boolean $isSticky;
        final Function1<T, Unit> $onReceived;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(String str, boolean z10, i0 i0Var, Function1<? super T, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$eventName = str;
            this.$isSticky = z10;
            this.$dispatcher = i0Var;
            this.$onReceived = function1;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = FlowEventBus.this.new AnonymousClass1(this.$eventName, this.$isSticky, this.$dispatcher, this.$onReceived, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                final n0 n0Var = (n0) this.L$0;
                w0 eventFlow = FlowEventBus.this.getEventFlow(this.$eventName, this.$isSticky);
                final i0 i0Var = this.$dispatcher;
                final FlowEventBus flowEventBus = FlowEventBus.this;
                final Function1<T, Unit> function1 = this.$onReceived;
                kotlinx.coroutines.flow.b bVar = new kotlinx.coroutines.flow.b() {

                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
                    @DebugMetadata(c = "com.transsnet.flow.event.FlowEventBus$observeEvent$1$1$1", f = "FlowEventBus.kt", l = {}, m = "invokeSuspend")
                    static final class C06691 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                        final Function1<Object, Unit> $onReceived;
                        final Object $value;
                        int label;
                        final FlowEventBus this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C06691(FlowEventBus flowEventBus, Object obj, Function1<Object, Unit> function1, Continuation<? super C06691> continuation) {
                            super(2, continuation);
                            this.this$0 = flowEventBus;
                            this.$value = obj;
                            this.$onReceived = function1;
                        }

                        @Override
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new C06691(this.this$0, this.$value, this.$onReceived, continuation);
                        }

                        @Override
                        public final Object invokeSuspend(Object obj) {
                            IntrinsicsKt.f();
                            if (this.label != 0) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.b(obj);
                            this.this$0.invokeReceived(this.$value, this.$onReceived);
                            return Unit.f64096a;
                        }

                        @Override
                        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                            return ((C06691) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
                        }
                    }

                    @Override
                    public final Object emit(Object obj2, Continuation continuation) {
                        k.d(n0Var, i0Var, null, new C06691(flowEventBus, obj2, function1, null), 2, null);
                        return Unit.f64096a;
                    }
                };
                this.label = 1;
                if (eventFlow.a(bVar, this) == objF) {
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
        public final Object invoke(n0 n0Var, Continuation<?> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.transsnet.flow.event.FlowEventBus", f = "FlowEventBus.kt", l = {64}, m = "observeWithoutLifecycle")
    static final class C10551<T> extends ContinuationImpl {
        int label;
        Object result;

        C10551(Continuation<? super C10551> continuation) {
            super(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowEventBus.this.observeWithoutLifecycle(null, false, null, this);
        }
    }

    public final w0 getEventFlow(String eventName, boolean isSticky) {
        w0 w0VarB = isSticky ? this.stickyEventFlows.get(eventName) : this.eventFlows.get(eventName);
        if (w0VarB == null) {
            w0VarB = c1.b(isSticky ? 1 : 0, Integer.MAX_VALUE, null, 4, null);
            if (isSticky) {
                this.stickyEventFlows.put(eventName, w0VarB);
            } else {
                this.eventFlows.put(eventName, w0VarB);
            }
        }
        return w0VarB;
    }

    public final <T> void invokeReceived(Object value, Function1<? super T, Unit> onReceived) {
        c cVarB;
        c cVarB2;
        try {
            Intrinsics.f(value, "null cannot be cast to non-null type T of com.transsnet.flow.event.FlowEventBus.invokeReceived");
            onReceived.invoke(value);
        } catch (ClassCastException e10) {
            String message = e10.getMessage();
            if (message == null || (cVarB2 = b.f58030a.b()) == null) {
                return;
            }
            cVarB2.log("class cast error on message received: " + value, message);
        } catch (Exception e11) {
            String message2 = e11.getMessage();
            if (message2 == null || (cVarB = b.f58030a.b()) == null) {
                return;
            }
            cVarB.log("error on message received: " + value, message2);
        }
    }

    public final void clearStickEvent(String eventName) {
        Intrinsics.h(eventName, "eventName");
        w0 w0Var = this.stickyEventFlows.get(eventName);
        if (w0Var != null) {
            w0Var.f();
        }
    }

    public final int getEventObserverCount(String eventName) {
        h1 h1VarC;
        h1 h1VarC2;
        Intrinsics.h(eventName, "eventName");
        w0 w0Var = this.stickyEventFlows.get(eventName);
        int iIntValue = 0;
        int iIntValue2 = (w0Var == null || (h1VarC2 = w0Var.c()) == null) ? 0 : ((Number) h1VarC2.getValue()).intValue();
        w0 w0Var2 = this.eventFlows.get(eventName);
        if (w0Var2 != null && (h1VarC = w0Var2.c()) != null) {
            iIntValue = ((Number) h1VarC.getValue()).intValue();
        }
        return iIntValue2 + iIntValue;
    }

    public final <T> t1 observeEvent(u lifecycleOwner, String eventName, Lifecycle.State minState, i0 dispatcher, boolean isSticky, Function1<? super T, Unit> onReceived) {
        Intrinsics.h(lifecycleOwner, "lifecycleOwner");
        Intrinsics.h(eventName, "eventName");
        Intrinsics.h(minState, "minState");
        Intrinsics.h(dispatcher, "dispatcher");
        Intrinsics.h(onReceived, "onReceived");
        return EventUtilsKt.launchWhenStateAtLeast(lifecycleOwner, minState, new AnonymousClass1(eventName, isSticky, dispatcher, onReceived, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final <T> Object observeWithoutLifecycle(String str, boolean z10, Function1<? super T, Unit> function1, Continuation<? super Unit> continuation) {
        C10551 c10551;
        if (continuation instanceof C10551) {
            c10551 = (C10551) continuation;
            int i10 = c10551.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c10551.label = i10 - Integer.MIN_VALUE;
            } else {
                c10551 = new C10551(continuation);
            }
        } else {
            c10551 = new C10551(continuation);
        }
        Object obj = c10551.result;
        Object objF = IntrinsicsKt.f();
        int i11 = c10551.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            w0 eventFlow = getEventFlow(str, z10);
            a aVar = new a(function1);
            c10551.label = 1;
            if (eventFlow.a(aVar, c10551) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        throw new KotlinNothingValueException();
    }

    public final void postEvent(String eventName, Object value, long timeMillis) {
        Intrinsics.h(eventName, "eventName");
        Intrinsics.h(value, "value");
        c cVarB = b.f58030a.b();
        if (cVarB != null) {
            cVarB.log("post Event:" + eventName);
        }
        Iterator it = CollectionsKt.p(getEventFlow(eventName, false), getEventFlow(eventName, true)).iterator();
        while (it.hasNext()) {
            k.d(u0.a(this), null, null, new FlowEventBus$postEvent$1$1(timeMillis, (w0) it.next(), value, null), 3, null);
        }
    }

    public final void removeStickEvent(String eventName) {
        Intrinsics.h(eventName, "eventName");
        this.stickyEventFlows.remove(eventName);
    }
}
