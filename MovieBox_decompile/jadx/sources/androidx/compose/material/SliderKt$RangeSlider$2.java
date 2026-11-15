package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.r0;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.c1;
import androidx.compose.runtime.g0;
import androidx.compose.runtime.p1;
import androidx.compose.runtime.r2;
import androidx.compose.runtime.v;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u000b¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/foundation/layout/g;", "", "invoke", "(Landroidx/compose/foundation/layout/g;Landroidx/compose/runtime/i;I)V", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
final class SliderKt$RangeSlider$2 extends Lambda implements Function3<androidx.compose.foundation.layout.g, androidx.compose.runtime.i, Integer, Unit> {
    final j $colors;
    final boolean $enabled;
    final p.i $endInteractionSource;
    final Function0<Unit> $onValueChangeFinished;
    final a3 $onValueChangeState;
    final p.i $startInteractionSource;
    final int $steps;
    final List<Float> $tickFractions;
    final ClosedFloatingPointRange<Float> $value;
    final ClosedFloatingPointRange<Float> $valueRange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SliderKt$RangeSlider$2(ClosedFloatingPointRange<Float> closedFloatingPointRange, ClosedFloatingPointRange<Float> closedFloatingPointRange2, List<Float> list, Function0<Unit> function0, a3 a3Var, p.i iVar, p.i iVar2, boolean z10, int i10, j jVar) {
        super(3);
        this.$valueRange = closedFloatingPointRange;
        this.$value = closedFloatingPointRange2;
        this.$tickFractions = list;
        this.$onValueChangeFinished = function0;
        this.$onValueChangeState = a3Var;
        this.$startInteractionSource = iVar;
        this.$endInteractionSource = iVar2;
        this.$enabled = z10;
        this.$steps = i10;
        this.$colors = jVar;
    }

    public static final float a(ClosedFloatingPointRange closedFloatingPointRange, Ref.FloatRef floatRef, Ref.FloatRef floatRef2, float f10) {
        return SliderKt.v(((Number) closedFloatingPointRange.j()).floatValue(), ((Number) closedFloatingPointRange.e()).floatValue(), f10, floatRef.element, floatRef2.element);
    }

    public static final ClosedFloatingPointRange b(Ref.FloatRef floatRef, Ref.FloatRef floatRef2, ClosedFloatingPointRange closedFloatingPointRange, ClosedFloatingPointRange closedFloatingPointRange2) {
        return SliderKt.w(floatRef.element, floatRef2.element, closedFloatingPointRange2, ((Number) closedFloatingPointRange.j()).floatValue(), ((Number) closedFloatingPointRange.e()).floatValue());
    }

    @Override
    public Object invoke(Object obj, Object obj2, Object obj3) {
        invoke((androidx.compose.foundation.layout.g) obj, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
        return Unit.f64096a;
    }

    public final void invoke(androidx.compose.foundation.layout.g gVar, androidx.compose.runtime.i iVar, int i10) {
        int i11;
        if ((i10 & 6) == 0) {
            i11 = i10 | (iVar.O(gVar) ? 4 : 2);
        } else {
            i11 = i10;
        }
        if ((i11 & 19) == 18 && iVar.h()) {
            iVar.G();
            return;
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(652589923, i11, -1, "androidx.compose.material.RangeSlider.<anonymous> (Slider.kt:320)");
        }
        boolean z10 = iVar.l(CompositionLocalsKt.g()) == LayoutDirection.Rtl;
        float fL = o0.b.l(gVar.a());
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        final Ref.FloatRef floatRef2 = new Ref.FloatRef();
        o0.e eVar = (o0.e) iVar.l(CompositionLocalsKt.c());
        floatRef.element = fL - eVar.D0(SliderKt.t());
        floatRef2.element = eVar.D0(SliderKt.t());
        ClosedFloatingPointRange<Float> closedFloatingPointRange = this.$value;
        ClosedFloatingPointRange<Float> closedFloatingPointRange2 = this.$valueRange;
        Object objY = iVar.y();
        androidx.compose.runtime.i.a aVar = androidx.compose.runtime.i.f3427a;
        if (objY == aVar.a()) {
            objY = p1.a(a(closedFloatingPointRange2, floatRef2, floatRef, ((Number) closedFloatingPointRange.j()).floatValue()));
            iVar.p(objY);
        }
        final c1 c1Var = (c1) objY;
        ClosedFloatingPointRange<Float> closedFloatingPointRange3 = this.$value;
        ClosedFloatingPointRange<Float> closedFloatingPointRange4 = this.$valueRange;
        Object objY2 = iVar.y();
        if (objY2 == aVar.a()) {
            objY2 = p1.a(a(closedFloatingPointRange4, floatRef2, floatRef, ((Number) closedFloatingPointRange3.e()).floatValue()));
            iVar.p(objY2);
        }
        final c1 c1Var2 = (c1) objY2;
        boolean zO = iVar.O(this.$valueRange) | iVar.b(floatRef2.element) | iVar.b(floatRef.element);
        ClosedFloatingPointRange<Float> closedFloatingPointRange5 = this.$valueRange;
        Object objY3 = iVar.y();
        if (zO || objY3 == aVar.a()) {
            objY3 = new SliderKt$RangeSlider$2$2$1(closedFloatingPointRange5, floatRef2, floatRef);
            iVar.p(objY3);
        }
        SliderKt.a((Function1) ((KFunction) objY3), this.$valueRange, RangesKt.b(floatRef2.element, floatRef.element), c1Var, ((Number) this.$value.j()).floatValue(), iVar, 3072);
        boolean zO2 = iVar.O(this.$valueRange) | iVar.b(floatRef2.element) | iVar.b(floatRef.element);
        ClosedFloatingPointRange<Float> closedFloatingPointRange6 = this.$valueRange;
        Object objY4 = iVar.y();
        if (zO2 || objY4 == aVar.a()) {
            objY4 = new SliderKt$RangeSlider$2$3$1(closedFloatingPointRange6, floatRef2, floatRef);
            iVar.p(objY4);
        }
        SliderKt.a((Function1) ((KFunction) objY4), this.$valueRange, RangesKt.b(floatRef2.element, floatRef.element), c1Var2, ((Number) this.$value.e()).floatValue(), iVar, 3072);
        Object objY5 = iVar.y();
        if (objY5 == aVar.a()) {
            Object vVar = new v(g0.g(EmptyCoroutineContext.INSTANCE, iVar));
            iVar.p(vVar);
            objY5 = vVar;
        }
        final n0 n0VarA = ((v) objY5).a();
        boolean zA = iVar.A(this.$tickFractions) | iVar.b(floatRef2.element) | iVar.b(floatRef.element) | iVar.O(this.$onValueChangeFinished) | iVar.A(n0VarA) | iVar.O(this.$onValueChangeState) | iVar.O(this.$valueRange);
        final List<Float> list = this.$tickFractions;
        final Function0<Unit> function0 = this.$onValueChangeFinished;
        final a3 a3Var = this.$onValueChangeState;
        final ClosedFloatingPointRange<Float> closedFloatingPointRange7 = this.$valueRange;
        Object objY6 = iVar.y();
        if (zA || objY6 == aVar.a()) {
            objY6 = new Function1<Boolean, Unit>() {

                @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
                @DebugMetadata(c = "androidx.compose.material.SliderKt$RangeSlider$2$gestureEndAction$1$1$1", f = "Slider.kt", l = {366}, m = "invokeSuspend")
                static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                    final float $current;
                    final boolean $isStart;
                    final Ref.FloatRef $maxPx;
                    final Ref.FloatRef $minPx;
                    final Function0<Unit> $onValueChangeFinished;
                    final a3 $onValueChangeState;
                    final c1 $rawOffsetEnd;
                    final c1 $rawOffsetStart;
                    final float $target;
                    final ClosedFloatingPointRange<Float> $valueRange;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass1(float f10, float f11, Function0<Unit> function0, boolean z10, c1 c1Var, c1 c1Var2, a3 a3Var, Ref.FloatRef floatRef, Ref.FloatRef floatRef2, ClosedFloatingPointRange<Float> closedFloatingPointRange, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.$current = f10;
                        this.$target = f11;
                        this.$onValueChangeFinished = function0;
                        this.$isStart = z10;
                        this.$rawOffsetStart = c1Var;
                        this.$rawOffsetEnd = c1Var2;
                        this.$onValueChangeState = a3Var;
                        this.$minPx = floatRef;
                        this.$maxPx = floatRef2;
                        this.$valueRange = closedFloatingPointRange;
                    }

                    @Override
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass1(this.$current, this.$target, this.$onValueChangeFinished, this.$isStart, this.$rawOffsetStart, this.$rawOffsetEnd, this.$onValueChangeState, this.$minPx, this.$maxPx, this.$valueRange, continuation);
                    }

                    @Override
                    public final Object invokeSuspend(Object obj) {
                        Object objF = IntrinsicsKt.f();
                        int i10 = this.label;
                        if (i10 == 0) {
                            ResultKt.b(obj);
                            Animatable animatableB = androidx.compose.animation.core.a.b(this.$current, 0.0f, 2, null);
                            Float fC = Boxing.c(this.$target);
                            r0 r0Var = SliderKt.f3074i;
                            Float fC2 = Boxing.c(0.0f);
                            final boolean z10 = this.$isStart;
                            final c1 c1Var = this.$rawOffsetStart;
                            final c1 c1Var2 = this.$rawOffsetEnd;
                            final a3 a3Var = this.$onValueChangeState;
                            final Ref.FloatRef floatRef = this.$minPx;
                            final Ref.FloatRef floatRef2 = this.$maxPx;
                            final ClosedFloatingPointRange<Float> closedFloatingPointRange = this.$valueRange;
                            Function1<Animatable, Unit> function1 = new Function1<Animatable, Unit>() {
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override
                                public Object invoke(Object obj2) {
                                    invoke((Animatable) obj2);
                                    return Unit.f64096a;
                                }

                                public final void invoke(Animatable animatable) {
                                    (z10 ? c1Var : c1Var2).setFloatValue(((Number) animatable.k()).floatValue());
                                    ((Function1) a3Var.getValue()).invoke(SliderKt$RangeSlider$2.b(floatRef, floatRef2, closedFloatingPointRange, RangesKt.b(c1Var.getFloatValue(), c1Var2.getFloatValue())));
                                }
                            };
                            this.label = 1;
                            if (animatableB.e(fC, r0Var, fC2, function1, this) == objF) {
                                return objF;
                            }
                        } else {
                            if (i10 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.b(obj);
                        }
                        Function0<Unit> function0 = this.$onValueChangeFinished;
                        if (function0 != null) {
                            function0.invoke();
                        }
                        return Unit.f64096a;
                    }

                    @Override
                    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke(((Boolean) obj).booleanValue());
                    return Unit.f64096a;
                }

                public final void invoke(boolean z11) {
                    float floatValue = (z11 ? c1Var : c1Var2).getFloatValue();
                    float fY = SliderKt.y(floatValue, list, floatRef2.element, floatRef.element);
                    if (floatValue != fY) {
                        kotlinx.coroutines.k.d(n0VarA, null, null, new AnonymousClass1(floatValue, fY, function0, z11, c1Var, c1Var2, a3Var, floatRef2, floatRef, closedFloatingPointRange7, null), 3, null);
                        return;
                    }
                    Function0<Unit> function1 = function0;
                    if (function1 != null) {
                        function1.invoke();
                    }
                }
            };
            iVar.p(objY6);
        }
        a3 a3VarI = r2.i((Function1) objY6, iVar, 0);
        boolean zO3 = iVar.O(this.$valueRange) | iVar.b(floatRef2.element) | iVar.b(floatRef.element) | iVar.O(this.$value) | iVar.O(this.$onValueChangeState);
        final ClosedFloatingPointRange<Float> closedFloatingPointRange8 = this.$value;
        final a3 a3Var2 = this.$onValueChangeState;
        final ClosedFloatingPointRange<Float> closedFloatingPointRange9 = this.$valueRange;
        Object objY7 = iVar.y();
        if (zO3 || objY7 == aVar.a()) {
            objY7 = new Function2<Boolean, Float, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke(((Boolean) obj).booleanValue(), ((Number) obj2).floatValue());
                    return Unit.f64096a;
                }

                public final void invoke(boolean z11, float f10) {
                    ClosedFloatingPointRange closedFloatingPointRangeB;
                    if (z11) {
                        c1 c1Var3 = c1Var;
                        c1Var3.setFloatValue(c1Var3.getFloatValue() + f10);
                        c1Var2.setFloatValue(SliderKt$RangeSlider$2.a(closedFloatingPointRange9, floatRef2, floatRef, ((Number) closedFloatingPointRange8.e()).floatValue()));
                        float floatValue = c1Var2.getFloatValue();
                        closedFloatingPointRangeB = RangesKt.b(RangesKt.k(c1Var.getFloatValue(), floatRef2.element, floatValue), floatValue);
                    } else {
                        c1 c1Var4 = c1Var2;
                        c1Var4.setFloatValue(c1Var4.getFloatValue() + f10);
                        c1Var.setFloatValue(SliderKt$RangeSlider$2.a(closedFloatingPointRange9, floatRef2, floatRef, ((Number) closedFloatingPointRange8.j()).floatValue()));
                        float floatValue2 = c1Var.getFloatValue();
                        closedFloatingPointRangeB = RangesKt.b(floatValue2, RangesKt.k(c1Var2.getFloatValue(), floatValue2, floatRef.element));
                    }
                    ((Function1) a3Var2.getValue()).invoke(SliderKt$RangeSlider$2.b(floatRef2, floatRef, closedFloatingPointRange9, closedFloatingPointRangeB));
                }
            };
            iVar.p(objY7);
        }
        a3 a3VarI2 = r2.i((Function2) objY7, iVar, 0);
        androidx.compose.ui.f.a aVar2 = androidx.compose.ui.f.f3869a;
        androidx.compose.ui.f fVarU = SliderKt.u(aVar2, this.$startInteractionSource, this.$endInteractionSource, c1Var, c1Var2, this.$enabled, z10, fL, this.$valueRange, a3VarI, a3VarI2);
        final float fK = RangesKt.k(((Number) this.$value.j()).floatValue(), ((Number) this.$valueRange.j()).floatValue(), ((Number) this.$value.e()).floatValue());
        final float fK2 = RangesKt.k(((Number) this.$value.e()).floatValue(), ((Number) this.$value.j()).floatValue(), ((Number) this.$valueRange.e()).floatValue());
        float fS = SliderKt.s(((Number) this.$valueRange.j()).floatValue(), ((Number) this.$valueRange.e()).floatValue(), fK);
        float fS2 = SliderKt.s(((Number) this.$valueRange.j()).floatValue(), ((Number) this.$valueRange.e()).floatValue(), fK2);
        int iFloor = (int) Math.floor(this.$steps * fS2);
        int iFloor2 = (int) Math.floor(this.$steps * (1.0f - fS));
        boolean z11 = this.$enabled;
        boolean zO4 = iVar.O(this.$onValueChangeState) | iVar.b(fK2);
        final a3 a3Var3 = this.$onValueChangeState;
        Object objY8 = iVar.y();
        if (zO4 || objY8 == aVar.a()) {
            objY8 = new Function1<Float, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke(((Number) obj).floatValue());
                    return Unit.f64096a;
                }

                public final void invoke(float f10) {
                    ((Function1) a3Var3.getValue()).invoke(RangesKt.b(f10, fK2));
                }
            };
            iVar.p(objY8);
        }
        androidx.compose.ui.f fVarX = SliderKt.x(aVar2, fK, z11, (Function1) objY8, this.$onValueChangeFinished, RangesKt.b(((Number) this.$valueRange.j()).floatValue(), fK2), iFloor);
        boolean z12 = this.$enabled;
        boolean zO5 = iVar.O(this.$onValueChangeState) | iVar.b(fK);
        final a3 a3Var4 = this.$onValueChangeState;
        Object objY9 = iVar.y();
        if (zO5 || objY9 == aVar.a()) {
            objY9 = new Function1<Float, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override
                public Object invoke(Object obj) {
                    invoke(((Number) obj).floatValue());
                    return Unit.f64096a;
                }

                public final void invoke(float f10) {
                    ((Function1) a3Var4.getValue()).invoke(RangesKt.b(fK, f10));
                }
            };
            iVar.p(objY9);
        }
        SliderKt.c(this.$enabled, fS, fS2, this.$tickFractions, this.$colors, floatRef.element - floatRef2.element, this.$startInteractionSource, this.$endInteractionSource, fVarU, fVarX, SliderKt.x(aVar2, fK2, z12, (Function1) objY9, this.$onValueChangeFinished, RangesKt.b(fK, ((Number) this.$valueRange.e()).floatValue()), iFloor2), iVar, 14155776, 0);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
    }
}
