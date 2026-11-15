package androidx.slidingpanelayout.widget;

import android.app.Activity;
import androidx.window.layout.a0;
import androidx.window.layout.r;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.b;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1", f = "FoldingFeatureObserver.kt", l = {97}, m = "invokeSuspend")
final class FoldingFeatureObserver$registerLayoutStateChangeCallback$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Activity $activity;
    int label;
    final FoldingFeatureObserver this$0;

    public static final class a implements b {

        final FoldingFeatureObserver f14513a;

        public a(FoldingFeatureObserver foldingFeatureObserver) {
            this.f14513a = foldingFeatureObserver;
        }

        @Override
        public Object emit(Object obj, Continuation continuation) {
            Unit unit;
            r rVar = (r) obj;
            FoldingFeatureObserver.a aVar = this.f14513a.f14512d;
            if (aVar == null) {
                unit = null;
            } else {
                aVar.a(rVar);
                unit = Unit.f64096a;
            }
            return unit == IntrinsicsKt.f() ? unit : Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FoldingFeatureObserver$registerLayoutStateChangeCallback$1(FoldingFeatureObserver foldingFeatureObserver, Activity activity, Continuation<? super FoldingFeatureObserver$registerLayoutStateChangeCallback$1> continuation) {
        super(2, continuation);
        this.this$0 = foldingFeatureObserver;
        this.$activity = activity;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FoldingFeatureObserver$registerLayoutStateChangeCallback$1(this.this$0, this.$activity, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            final kotlinx.coroutines.flow.a aVarA = this.this$0.f14509a.a(this.$activity);
            final FoldingFeatureObserver foldingFeatureObserver = this.this$0;
            kotlinx.coroutines.flow.a aVarJ = c.j(new kotlinx.coroutines.flow.a() {

                public static final class AnonymousClass2 implements b {

                    final b f14516a;

                    final FoldingFeatureObserver f14517b;

                    @Metadata(k = 3, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                    @DebugMetadata(c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2", f = "FoldingFeatureObserver.kt", l = {138}, m = "emit")
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
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

                    public AnonymousClass2(b bVar, FoldingFeatureObserver foldingFeatureObserver) {
                        this.f14516a = bVar;
                        this.f14517b = foldingFeatureObserver;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override
                    public Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
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
                        Object obj2 = anonymousClass1.result;
                        Object objF = IntrinsicsKt.f();
                        int i11 = anonymousClass1.label;
                        if (i11 == 0) {
                            ResultKt.b(obj2);
                            b bVar = this.f14516a;
                            r rVarD = this.f14517b.d((a0) obj);
                            if (rVarD != null) {
                                anonymousClass1.label = 1;
                                if (bVar.emit(rVarD, anonymousClass1) == objF) {
                                    return objF;
                                }
                            }
                        } else {
                            if (i11 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.b(obj2);
                        }
                        return Unit.f64096a;
                    }
                }

                @Override
                public Object a(b bVar, Continuation continuation) {
                    Object objA = aVarA.a(new AnonymousClass2(bVar, foldingFeatureObserver), continuation);
                    return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
                }
            });
            a aVar = new a(this.this$0);
            this.label = 1;
            if (aVarJ.a(aVar, this) == objF) {
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
        return ((FoldingFeatureObserver$registerLayoutStateChangeCallback$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
