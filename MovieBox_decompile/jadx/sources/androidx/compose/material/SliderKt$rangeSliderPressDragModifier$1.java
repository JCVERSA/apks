package androidx.compose.material;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.runtime.a3;
import androidx.compose.ui.input.pointer.e0;
import androidx.compose.ui.input.pointer.w;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/ui/input/pointer/e0;", "", "<anonymous>", "(Landroidx/compose/ui/input/pointer/e0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1", f = "Slider.kt", l = {992}, m = "invokeSuspend")
final class SliderKt$rangeSliderPressDragModifier$1 extends SuspendLambda implements Function2<e0, Continuation<? super Unit>, Object> {
    final p.i $endInteractionSource;
    final a3 $gestureEndAction;
    final boolean $isRtl;
    final float $maxPx;
    final a3 $onDrag;
    final a3 $rawOffsetEnd;
    final a3 $rawOffsetStart;
    final p.i $startInteractionSource;
    private Object L$0;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1", f = "Slider.kt", l = {993}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final e0 $$this$pointerInput;
        final a3 $gestureEndAction;
        final boolean $isRtl;
        final float $maxPx;
        final a3 $onDrag;
        final RangeSliderLogic $rangeSliderLogic;
        final a3 $rawOffsetEnd;
        final a3 $rawOffsetStart;
        private Object L$0;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Landroidx/compose/ui/input/pointer/c;", "", "<anonymous>", "(Landroidx/compose/ui/input/pointer/c;)V"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1", f = "Slider.kt", l = {994, 1004, 1023}, m = "invokeSuspend")
        static final class C00301 extends RestrictedSuspendLambda implements Function2<androidx.compose.ui.input.pointer.c, Continuation<? super Unit>, Object> {
            final n0 $$this$coroutineScope;
            final a3 $gestureEndAction;
            final boolean $isRtl;
            final float $maxPx;
            final a3 $onDrag;
            final RangeSliderLogic $rangeSliderLogic;
            final a3 $rawOffsetEnd;
            final a3 $rawOffsetStart;
            private Object L$0;
            Object L$1;
            Object L$2;
            Object L$3;
            Object L$4;
            int label;

            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
            @DebugMetadata(c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1$1$2", f = "Slider.kt", l = {1040}, m = "invokeSuspend")
            static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                final Ref.BooleanRef $draggingStart;
                final p.a $finishInteraction;
                final RangeSliderLogic $rangeSliderLogic;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass2(RangeSliderLogic rangeSliderLogic, Ref.BooleanRef booleanRef, p.a aVar, Continuation<? super AnonymousClass2> continuation) {
                    super(2, continuation);
                    this.$rangeSliderLogic = rangeSliderLogic;
                    this.$draggingStart = booleanRef;
                    this.$finishInteraction = aVar;
                }

                @Override
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass2(this.$rangeSliderLogic, this.$draggingStart, this.$finishInteraction, continuation);
                }

                @Override
                public final Object invokeSuspend(Object obj) {
                    Object objF = IntrinsicsKt.f();
                    int i10 = this.label;
                    if (i10 == 0) {
                        ResultKt.b(obj);
                        p.i iVarA = this.$rangeSliderLogic.a(this.$draggingStart.element);
                        p.a aVar = this.$finishInteraction;
                        this.label = 1;
                        if (iVarA.c(aVar, this) == objF) {
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
                    return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00301(boolean z10, float f10, RangeSliderLogic rangeSliderLogic, a3 a3Var, n0 n0Var, a3 a3Var2, a3 a3Var3, a3 a3Var4, Continuation<? super C00301> continuation) {
                super(2, continuation);
                this.$isRtl = z10;
                this.$maxPx = f10;
                this.$rangeSliderLogic = rangeSliderLogic;
                this.$rawOffsetStart = a3Var;
                this.$$this$coroutineScope = n0Var;
                this.$gestureEndAction = a3Var2;
                this.$rawOffsetEnd = a3Var3;
                this.$onDrag = a3Var4;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C00301 c00301 = new C00301(this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, this.$$this$coroutineScope, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, continuation);
                c00301.L$0 = obj;
                return c00301;
            }

            @Override
            public final Object invoke(androidx.compose.ui.input.pointer.c cVar, Continuation<? super Unit> continuation) {
                return ((C00301) create(cVar, continuation)).invokeSuspend(Unit.f64096a);
            }

            /* JADX WARN: Code duplicated, block: B:36:0x00e5  */
            /* JADX WARN: Code duplicated, block: B:53:0x017a A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:56:0x0183 A[Catch: CancellationException -> 0x0189, TryCatch #1 {CancellationException -> 0x0189, blocks: (B:54:0x017b, B:56:0x0183, B:58:0x018b, B:51:0x015b), top: B:66:0x015b }] */
            /* JADX WARN: Code duplicated, block: B:58:0x018b A[Catch: CancellationException -> 0x0189, TRY_LEAVE, TryCatch #1 {CancellationException -> 0x0189, blocks: (B:54:0x017b, B:56:0x0183, B:58:0x018b, B:51:0x015b), top: B:66:0x015b }] */
            @Override
            public final Object invokeSuspend(Object obj) {
                Object objE;
                androidx.compose.ui.input.pointer.c cVar;
                Ref.FloatRef floatRef;
                Object objR;
                p.a.b bVar;
                final Ref.BooleanRef booleanRef;
                androidx.compose.ui.input.pointer.c cVar2;
                w wVar;
                Pair pair;
                p.a.b bVar2;
                Object objC;
                a3 a3Var;
                boolean z10;
                float fC;
                p.a c0847a;
                Object objF = IntrinsicsKt.f();
                int i10 = this.label;
                if (i10 == 0) {
                    ResultKt.b(obj);
                    androidx.compose.ui.input.pointer.c cVar3 = (androidx.compose.ui.input.pointer.c) this.L$0;
                    this.L$0 = cVar3;
                    this.label = 1;
                    objE = TapGestureDetectorKt.e(cVar3, false, null, this, 2, null);
                    if (objE == objF) {
                        return objF;
                    }
                    cVar = cVar3;
                } else {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            booleanRef = (Ref.BooleanRef) this.L$1;
                            bVar2 = (p.a.b) this.L$0;
                            try {
                                ResultKt.b(obj);
                                bVar = bVar2;
                                objC = obj;
                                if (((Boolean) objC).booleanValue()) {
                                    c0847a = new p.a.c(bVar);
                                } else {
                                    c0847a = new p.a.C0847a(bVar);
                                }
                            } catch (CancellationException unused) {
                                c0847a = new p.a.C0847a(bVar2);
                            }
                            ((Function1) this.$gestureEndAction.getValue()).invoke(Boxing.a(booleanRef.element));
                            kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass2(this.$rangeSliderLogic, booleanRef, c0847a, null), 3, null);
                            return Unit.f64096a;
                        }
                        booleanRef = (Ref.BooleanRef) this.L$4;
                        floatRef = (Ref.FloatRef) this.L$3;
                        p.a.b bVar3 = (p.a.b) this.L$2;
                        w wVar2 = (w) this.L$1;
                        androidx.compose.ui.input.pointer.c cVar4 = (androidx.compose.ui.input.pointer.c) this.L$0;
                        ResultKt.b(obj);
                        cVar2 = cVar4;
                        wVar = wVar2;
                        bVar = bVar3;
                        objR = obj;
                        pair = (Pair) objR;
                        if (pair != null) {
                            a3Var = this.$rawOffsetEnd;
                            a3 a3Var2 = this.$rawOffsetStart;
                            z10 = this.$isRtl;
                            fC = DragGestureDetectorCopyKt.c(cVar2.getViewConfiguration(), wVar.n());
                            if (Math.abs(((Number) a3Var.getValue()).floatValue() - floatRef.element) < fC && Math.abs(((Number) a3Var2.getValue()).floatValue() - floatRef.element) < fC) {
                                float fFloatValue = ((Number) pair.getSecond()).floatValue();
                                booleanRef.element = z10 ? fFloatValue < 0.0f : fFloatValue >= 0.0f;
                                floatRef.element += y.g.m(androidx.compose.ui.input.pointer.p.g((w) pair.getFirst()));
                            }
                        }
                        this.$rangeSliderLogic.b(booleanRef.element, floatRef.element, bVar, this.$$this$coroutineScope);
                        try {
                            long jF = wVar.f();
                            final a3 a3Var3 = this.$onDrag;
                            final boolean z11 = this.$isRtl;
                            Function1<w, Unit> function1 = new Function1<w, Unit>() {
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override
                                public Object invoke(Object obj2) {
                                    invoke((w) obj2);
                                    return Unit.f64096a;
                                }

                                public final void invoke(w wVar3) {
                                    float fM = y.g.m(androidx.compose.ui.input.pointer.p.g(wVar3));
                                    Function2 function2 = (Function2) a3Var3.getValue();
                                    Boolean boolValueOf = Boolean.valueOf(booleanRef.element);
                                    if (z11) {
                                        fM = -fM;
                                    }
                                    function2.invoke(boolValueOf, Float.valueOf(fM));
                                }
                            };
                            this.L$0 = bVar;
                            this.L$1 = booleanRef;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.L$4 = null;
                            this.label = 3;
                            objC = DragGestureDetectorKt.c(cVar2, jF, function1, this);
                            if (objC == objF) {
                                return objF;
                            }
                            if (((Boolean) objC).booleanValue()) {
                                c0847a = new p.a.c(bVar);
                            } else {
                                c0847a = new p.a.C0847a(bVar);
                            }
                        } catch (CancellationException unused2) {
                            bVar2 = bVar;
                            c0847a = new p.a.C0847a(bVar2);
                        }
                        ((Function1) this.$gestureEndAction.getValue()).invoke(Boxing.a(booleanRef.element));
                        kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass2(this.$rangeSliderLogic, booleanRef, c0847a, null), 3, null);
                        return Unit.f64096a;
                    }
                    androidx.compose.ui.input.pointer.c cVar5 = (androidx.compose.ui.input.pointer.c) this.L$0;
                    ResultKt.b(obj);
                    cVar = cVar5;
                    objE = obj;
                }
                w wVar3 = (w) objE;
                p.a.b bVar4 = new p.a.b();
                floatRef = new Ref.FloatRef();
                float fM = this.$isRtl ? this.$maxPx - y.g.m(wVar3.h()) : y.g.m(wVar3.h());
                floatRef.element = fM;
                int iC = this.$rangeSliderLogic.c(fM);
                Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
                booleanRef2.element = iC == 0 ? ((Number) this.$rawOffsetStart.getValue()).floatValue() > floatRef.element : iC < 0;
                long jF2 = wVar3.f();
                int iN = wVar3.n();
                this.L$0 = cVar;
                this.L$1 = wVar3;
                this.L$2 = bVar4;
                this.L$3 = floatRef;
                this.L$4 = booleanRef2;
                this.label = 2;
                objR = SliderKt.r(cVar, jF2, iN, this);
                if (objR == objF) {
                    return objF;
                }
                bVar = bVar4;
                booleanRef = booleanRef2;
                cVar2 = cVar;
                wVar = wVar3;
                pair = (Pair) objR;
                if (pair != null) {
                    a3Var = this.$rawOffsetEnd;
                    a3 a3Var4 = this.$rawOffsetStart;
                    z10 = this.$isRtl;
                    fC = DragGestureDetectorCopyKt.c(cVar2.getViewConfiguration(), wVar.n());
                    if (Math.abs(((Number) a3Var.getValue()).floatValue() - floatRef.element) < fC) {
                        float fFloatValue2 = ((Number) pair.getSecond()).floatValue();
                        booleanRef.element = z10 ? fFloatValue2 < 0.0f : fFloatValue2 >= 0.0f;
                        floatRef.element += y.g.m(androidx.compose.ui.input.pointer.p.g((w) pair.getFirst()));
                    }
                }
                this.$rangeSliderLogic.b(booleanRef.element, floatRef.element, bVar, this.$$this$coroutineScope);
                long jF3 = wVar.f();
                final a3 a3Var5 = this.$onDrag;
                final boolean z12 = this.$isRtl;
                Function1<w, Unit> function2 = new Function1<w, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj2) {
                        invoke((w) obj2);
                        return Unit.f64096a;
                    }

                    public final void invoke(w wVar4) {
                        float fM2 = y.g.m(androidx.compose.ui.input.pointer.p.g(wVar4));
                        Function2 function3 = (Function2) a3Var5.getValue();
                        Boolean boolValueOf = Boolean.valueOf(booleanRef.element);
                        if (z12) {
                            fM2 = -fM2;
                        }
                        function3.invoke(boolValueOf, Float.valueOf(fM2));
                    }
                };
                this.L$0 = bVar;
                this.L$1 = booleanRef;
                this.L$2 = null;
                this.L$3 = null;
                this.L$4 = null;
                this.label = 3;
                objC = DragGestureDetectorKt.c(cVar2, jF3, function2, this);
                if (objC == objF) {
                    return objF;
                }
                if (((Boolean) objC).booleanValue()) {
                    c0847a = new p.a.c(bVar);
                } else {
                    c0847a = new p.a.C0847a(bVar);
                }
                ((Function1) this.$gestureEndAction.getValue()).invoke(Boxing.a(booleanRef.element));
                kotlinx.coroutines.k.d(this.$$this$coroutineScope, null, null, new AnonymousClass2(this.$rangeSliderLogic, booleanRef, c0847a, null), 3, null);
                return Unit.f64096a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(e0 e0Var, boolean z10, float f10, RangeSliderLogic rangeSliderLogic, a3 a3Var, a3 a3Var2, a3 a3Var3, a3 a3Var4, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$$this$pointerInput = e0Var;
            this.$isRtl = z10;
            this.$maxPx = f10;
            this.$rangeSliderLogic = rangeSliderLogic;
            this.$rawOffsetStart = a3Var;
            this.$gestureEndAction = a3Var2;
            this.$rawOffsetEnd = a3Var3;
            this.$onDrag = a3Var4;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$pointerInput, this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                n0 n0Var = (n0) this.L$0;
                e0 e0Var = this.$$this$pointerInput;
                C00301 c00301 = new C00301(this.$isRtl, this.$maxPx, this.$rangeSliderLogic, this.$rawOffsetStart, n0Var, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, null);
                this.label = 1;
                if (ForEachGestureKt.c(e0Var, c00301, this) == objF) {
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
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SliderKt$rangeSliderPressDragModifier$1(p.i iVar, p.i iVar2, a3 a3Var, a3 a3Var2, a3 a3Var3, boolean z10, float f10, a3 a3Var4, Continuation<? super SliderKt$rangeSliderPressDragModifier$1> continuation) {
        super(2, continuation);
        this.$startInteractionSource = iVar;
        this.$endInteractionSource = iVar2;
        this.$rawOffsetStart = a3Var;
        this.$rawOffsetEnd = a3Var2;
        this.$onDrag = a3Var3;
        this.$isRtl = z10;
        this.$maxPx = f10;
        this.$gestureEndAction = a3Var4;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SliderKt$rangeSliderPressDragModifier$1 sliderKt$rangeSliderPressDragModifier$1 = new SliderKt$rangeSliderPressDragModifier$1(this.$startInteractionSource, this.$endInteractionSource, this.$rawOffsetStart, this.$rawOffsetEnd, this.$onDrag, this.$isRtl, this.$maxPx, this.$gestureEndAction, continuation);
        sliderKt$rangeSliderPressDragModifier$1.L$0 = obj;
        return sliderKt$rangeSliderPressDragModifier$1;
    }

    @Override
    public final Object invoke(e0 e0Var, Continuation<? super Unit> continuation) {
        return ((SliderKt$rangeSliderPressDragModifier$1) create(e0Var, continuation)).invokeSuspend(Unit.f64096a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1((e0) this.L$0, this.$isRtl, this.$maxPx, new RangeSliderLogic(this.$startInteractionSource, this.$endInteractionSource, this.$rawOffsetStart, this.$rawOffsetEnd, this.$onDrag), this.$rawOffsetStart, this.$gestureEndAction, this.$rawOffsetEnd, this.$onDrag, null);
            this.label = 1;
            if (o0.e(anonymousClass1, this) == objF) {
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
}
