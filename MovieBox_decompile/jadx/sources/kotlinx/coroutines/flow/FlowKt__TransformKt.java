package kotlinx.coroutines.flow;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;

abstract class FlowKt__TransformKt {
    public static final a a(final a aVar, final Function2 function2) {
        return new a() {

            public static final class AnonymousClass2 implements b {

                final b f64782a;

                final Function2 f64783b;

                @Metadata(k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {50, Sdk$SDKMetric.SDKMetricType.AD_REWARD_USER_VALUE}, m = "emit")
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(b bVar, Function2 function2) {
                    this.f64782a = bVar;
                    this.f64783b = function2;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    Object obj2;
                    b bVar;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i10 = anonymousClass1.label;
                        if ((i10 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i10 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj3 = anonymousClass1.result;
                    Object objF = IntrinsicsKt.f();
                    int i11 = anonymousClass1.label;
                    if (i11 != 0) {
                        if (i11 == 1) {
                            bVar = (b) anonymousClass1.L$1;
                            obj2 = anonymousClass1.L$0;
                            ResultKt.b(obj3);
                        } else {
                            if (i11 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.b(obj3);
                        }
                        return Unit.f64096a;
                    }
                    ResultKt.b(obj3);
                    b bVar2 = this.f64782a;
                    Function2 function2 = this.f64783b;
                    anonymousClass1.L$0 = obj;
                    anonymousClass1.L$1 = bVar2;
                    anonymousClass1.label = 1;
                    InlineMarker.c(6);
                    Object objInvoke = function2.invoke(obj, anonymousClass1);
                    InlineMarker.c(7);
                    if (objInvoke == objF) {
                        return objF;
                    }
                    obj2 = obj;
                    bVar = bVar2;
                    anonymousClass1.L$0 = null;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.label = 2;
                    if (bVar.emit(obj2, anonymousClass1) == objF) {
                        return objF;
                    }
                    return Unit.f64096a;
                }
            }

            @Override
            public Object a(b bVar, Continuation continuation) {
                Object objA = aVar.a(new AnonymousClass2(bVar, function2), continuation);
                return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
            }
        };
    }
}
