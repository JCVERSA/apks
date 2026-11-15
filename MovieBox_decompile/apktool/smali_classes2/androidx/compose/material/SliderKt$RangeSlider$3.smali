.class final Landroidx/compose/material/SliderKt$RangeSlider$3;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->b(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/f;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/j;Landroidx/compose/runtime/i;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/i;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $colors:Landroidx/compose/material/j;

.field final synthetic $enabled:Z

.field final synthetic $modifier:Landroidx/compose/ui/f;

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $steps:I

.field final synthetic $value:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $valueRange:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/f;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/j;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/f;",
            "Z",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material/j;",
            "II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$modifier:Landroidx/compose/ui/f;

    .line 6
    .line 7
    iput-boolean p4, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$enabled:Z

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 10
    .line 11
    iput p6, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$steps:I

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$colors:Landroidx/compose/material/j;

    .line 16
    .line 17
    iput p9, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$$changed:I

    .line 18
    .line 19
    iput p10, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$$default:I

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/i;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$RangeSlider$3;->invoke(Landroidx/compose/runtime/i;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/i;I)V
    .locals 11

    .line 2
    iget-object v0, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    iget-object v1, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$modifier:Landroidx/compose/ui/f;

    iget-boolean v3, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$enabled:Z

    iget-object v4, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    iget v5, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$steps:I

    iget-object v6, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$colors:Landroidx/compose/material/j;

    iget p2, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/v1;->a(I)I

    move-result v9

    iget v10, p0, Landroidx/compose/material/SliderKt$RangeSlider$3;->$$default:I

    move-object v8, p1

    invoke-static/range {v0 .. v10}, Landroidx/compose/material/SliderKt;->b(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/f;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/j;Landroidx/compose/runtime/i;II)V

    return-void
.end method
