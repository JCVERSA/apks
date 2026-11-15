.class final Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.material.SliderKt$rangeSliderPressDragModifier$1$1"
    f = "Slider.kt"
    l = {
        0x3e1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$pointerInput:Landroidx/compose/ui/input/pointer/e0;

.field final synthetic $gestureEndAction:Landroidx/compose/runtime/a3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/a3;"
        }
    .end annotation
.end field

.field final synthetic $isRtl:Z

.field final synthetic $maxPx:F

.field final synthetic $onDrag:Landroidx/compose/runtime/a3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/a3;"
        }
    .end annotation
.end field

.field final synthetic $rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

.field final synthetic $rawOffsetEnd:Landroidx/compose/runtime/a3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/a3;"
        }
    .end annotation
.end field

.field final synthetic $rawOffsetStart:Landroidx/compose/runtime/a3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/a3;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/e0;ZFLandroidx/compose/material/RangeSliderLogic;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/e0;",
            "ZF",
            "Landroidx/compose/material/RangeSliderLogic;",
            "Landroidx/compose/runtime/a3;",
            "Landroidx/compose/runtime/a3;",
            "Landroidx/compose/runtime/a3;",
            "Landroidx/compose/runtime/a3;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$$this$pointerInput:Landroidx/compose/ui/input/pointer/e0;

    .line 2
    .line 3
    iput-boolean p2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$isRtl:Z

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$maxPx:F

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$rawOffsetStart:Landroidx/compose/runtime/a3;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$gestureEndAction:Landroidx/compose/runtime/a3;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/a3;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$onDrag:Landroidx/compose/runtime/a3;

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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
    new-instance v10, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$$this$pointerInput:Landroidx/compose/ui/input/pointer/e0;

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$isRtl:Z

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$maxPx:F

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$rawOffsetStart:Landroidx/compose/runtime/a3;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$gestureEndAction:Landroidx/compose/runtime/a3;

    .line 14
    .line 15
    iget-object v7, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/a3;

    .line 16
    .line 17
    iget-object v8, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$onDrag:Landroidx/compose/runtime/a3;

    .line 18
    .line 19
    move-object v0, v10

    .line 20
    move-object v9, p2

    .line 21
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;-><init>(Landroidx/compose/ui/input/pointer/e0;ZFLandroidx/compose/material/RangeSliderLogic;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v10, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    return-object v10
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v8, p1

    .line 30
    check-cast v8, Lkotlinx/coroutines/n0;

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$$this$pointerInput:Landroidx/compose/ui/input/pointer/e0;

    .line 33
    .line 34
    new-instance v1, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;

    .line 35
    .line 36
    iget-boolean v4, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$isRtl:Z

    .line 37
    .line 38
    iget v5, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$maxPx:F

    .line 39
    .line 40
    iget-object v6, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$rangeSliderLogic:Landroidx/compose/material/RangeSliderLogic;

    .line 41
    .line 42
    iget-object v7, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$rawOffsetStart:Landroidx/compose/runtime/a3;

    .line 43
    .line 44
    iget-object v9, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$gestureEndAction:Landroidx/compose/runtime/a3;

    .line 45
    .line 46
    iget-object v10, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/a3;

    .line 47
    .line 48
    iget-object v11, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->$onDrag:Landroidx/compose/runtime/a3;

    .line 49
    .line 50
    const/4 v12, 0x0

    .line 51
    move-object v3, v1

    .line 52
    invoke-direct/range {v3 .. v12}, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1$1;-><init>(ZFLandroidx/compose/material/RangeSliderLogic;Landroidx/compose/runtime/a3;Lkotlinx/coroutines/n0;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Lkotlin/coroutines/Continuation;)V

    .line 53
    .line 54
    .line 55
    iput v2, p0, Landroidx/compose/material/SliderKt$rangeSliderPressDragModifier$1$1;->label:I

    .line 56
    .line 57
    invoke-static {p1, v1, p0}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->c(Landroidx/compose/ui/input/pointer/e0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v0, :cond_2

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p1
.end method
