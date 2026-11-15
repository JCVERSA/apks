.class final Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1;->invoke(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.material.SliderKt$RangeSlider$2$gestureEndAction$1$1$1"
    f = "Slider.kt"
    l = {
        0x16e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $current:F

.field final synthetic $isStart:Z

.field final synthetic $maxPx:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $minPx:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onValueChangeState:Landroidx/compose/runtime/a3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/a3;"
        }
    .end annotation
.end field

.field final synthetic $rawOffsetEnd:Landroidx/compose/runtime/c1;

.field final synthetic $rawOffsetStart:Landroidx/compose/runtime/c1;

.field final synthetic $target:F

.field final synthetic $valueRange:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(FFLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/c1;Landroidx/compose/runtime/c1;Landroidx/compose/runtime/a3;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/runtime/c1;",
            "Landroidx/compose/runtime/c1;",
            "Landroidx/compose/runtime/a3;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$current:F

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$target:F

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iput-boolean p4, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$isStart:Z

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/c1;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/c1;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$onValueChangeState:Landroidx/compose/runtime/a3;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$minPx:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 16
    .line 17
    iput-object p9, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$maxPx:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 18
    .line 19
    iput-object p10, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$current:F

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$target:F

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iget-boolean v4, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$isStart:Z

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/c1;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/c1;

    .line 14
    .line 15
    iget-object v7, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$onValueChangeState:Landroidx/compose/runtime/a3;

    .line 16
    .line 17
    iget-object v8, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$minPx:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 18
    .line 19
    iget-object v9, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$maxPx:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 20
    .line 21
    iget-object v10, p0, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 22
    .line 23
    move-object v0, p1

    .line 24
    move-object v11, p2

    .line 25
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;-><init>(FFLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/c1;Landroidx/compose/runtime/c1;Landroidx/compose/runtime/a3;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v7

    .line 7
    iget v0, v6, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->label:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget v0, v6, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$current:F

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static {v0, v4, v2, v3}, Landroidx/compose/animation/core/a;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v2, v6, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$target:F

    .line 39
    .line 40
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->c(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {}, Landroidx/compose/material/SliderKt;->l()Landroidx/compose/animation/core/r0;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->c(F)Ljava/lang/Float;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    new-instance v5, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1$1;

    .line 53
    .line 54
    iget-boolean v9, v6, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$isStart:Z

    .line 55
    .line 56
    iget-object v10, v6, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/c1;

    .line 57
    .line 58
    iget-object v11, v6, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/c1;

    .line 59
    .line 60
    iget-object v12, v6, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$onValueChangeState:Landroidx/compose/runtime/a3;

    .line 61
    .line 62
    iget-object v13, v6, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$minPx:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 63
    .line 64
    iget-object v14, v6, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$maxPx:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 65
    .line 66
    iget-object v15, v6, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 67
    .line 68
    move-object v8, v5

    .line 69
    invoke-direct/range {v8 .. v15}, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1$1;-><init>(ZLandroidx/compose/runtime/c1;Landroidx/compose/runtime/c1;Landroidx/compose/runtime/a3;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/ranges/ClosedFloatingPointRange;)V

    .line 70
    .line 71
    .line 72
    iput v1, v6, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->label:I

    .line 73
    .line 74
    move-object v1, v2

    .line 75
    move-object v2, v3

    .line 76
    move-object v3, v4

    .line 77
    move-object v4, v5

    .line 78
    move-object/from16 v5, p0

    .line 79
    .line 80
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->e(Ljava/lang/Object;Landroidx/compose/animation/core/g;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-ne v0, v7, :cond_2

    .line 85
    .line 86
    return-object v7

    .line 87
    :cond_2
    :goto_0
    iget-object v0, v6, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1$1;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object v0
.end method
