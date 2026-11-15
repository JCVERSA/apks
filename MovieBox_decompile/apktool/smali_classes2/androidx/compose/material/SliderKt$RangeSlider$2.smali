.class final Landroidx/compose/material/SliderKt$RangeSlider$2;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


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
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/g;",
        "Landroidx/compose/runtime/i;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/g;",
        "",
        "invoke",
        "(Landroidx/compose/foundation/layout/g;Landroidx/compose/runtime/i;I)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $colors:Landroidx/compose/material/j;

.field final synthetic $enabled:Z

.field final synthetic $endInteractionSource:Lp/i;

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

.field final synthetic $startInteractionSource:Lp/i;

.field final synthetic $steps:I

.field final synthetic $tickFractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Ljava/util/List;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/a3;Lp/i;Lp/i;ZILandroidx/compose/material/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/a3;",
            "Lp/i;",
            "Lp/i;",
            "ZI",
            "Landroidx/compose/material/j;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/a3;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$startInteractionSource:Lp/i;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$endInteractionSource:Lp/i;

    .line 14
    .line 15
    iput-boolean p8, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 16
    .line 17
    iput p9, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$steps:I

    .line 18
    .line 19
    iput-object p10, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$colors:Landroidx/compose/material/j;

    .line 20
    .line 21
    const/4 p1, 0x3

    .line 22
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final a(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p0}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 22
    .line 23
    iget p2, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 24
    .line 25
    invoke-static {v0, p0, p3, p1, p2}, Landroidx/compose/material/SliderKt;->n(FFFFF)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public static final synthetic access$invoke$scaleToOffset(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$RangeSlider$2;->a(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$invoke$scaleToUserValue(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$RangeSlider$2;->b(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;)Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 1

    .line 1
    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 2
    .line 3
    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 4
    .line 5
    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-interface {p2}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p0, p1, p3, v0, p2}, Landroidx/compose/material/SliderKt;->o(FFLkotlin/ranges/ClosedFloatingPointRange;FF)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/g;

    check-cast p2, Landroidx/compose/runtime/i;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$RangeSlider$2;->invoke(Landroidx/compose/foundation/layout/g;Landroidx/compose/runtime/i;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/g;Landroidx/compose/runtime/i;I)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v12, p2

    and-int/lit8 v1, p3, 0x6

    if-nez v1, :cond_1

    move-object/from16 v1, p1

    invoke-interface {v12, v1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v1, p1

    move/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    .line 2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->h()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->G()V

    goto/16 :goto_4

    .line 4
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    const-string v4, "androidx.compose.material.RangeSlider.<anonymous> (Slider.kt:320)"

    const v5, 0x26e5bb63

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_4
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->g()Landroidx/compose/runtime/s1;

    move-result-object v2

    .line 5
    invoke-interface {v12, v2}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v8, 0x0

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    move/from16 v19, v2

    goto :goto_3

    :cond_5
    move/from16 v19, v8

    .line 7
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/g;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo0/b;->l(J)I

    move-result v1

    int-to-float v9, v1

    .line 8
    new-instance v10, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 9
    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 10
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->c()Landroidx/compose/runtime/s1;

    move-result-object v1

    .line 11
    invoke-interface {v12, v1}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Lo0/e;

    .line 13
    invoke-static {}, Landroidx/compose/material/SliderKt;->t()F

    move-result v2

    invoke-interface {v1, v2}, Lo0/e;->D0(F)F

    move-result v2

    sub-float v2, v9, v2

    iput v2, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 14
    invoke-static {}, Landroidx/compose/material/SliderKt;->t()F

    move-result v2

    invoke-interface {v1, v2}, Lo0/e;->D0(F)F

    move-result v1

    iput v1, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 15
    iget-object v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 16
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v3

    .line 17
    sget-object v30, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_6

    .line 18
    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v2, v11, v10, v1}, Landroidx/compose/material/SliderKt$RangeSlider$2;->a(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F

    move-result v1

    invoke-static {v1}, Landroidx/compose/runtime/p1;->a(F)Landroidx/compose/runtime/c1;

    move-result-object v3

    .line 19
    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 20
    :cond_6
    move-object/from16 v16, v3

    check-cast v16, Landroidx/compose/runtime/c1;

    .line 21
    iget-object v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 22
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v3

    .line 23
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_7

    .line 24
    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v2, v11, v10, v1}, Landroidx/compose/material/SliderKt$RangeSlider$2;->a(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F

    move-result v1

    invoke-static {v1}, Landroidx/compose/runtime/p1;->a(F)Landroidx/compose/runtime/c1;

    move-result-object v3

    .line 25
    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 26
    :cond_7
    move-object/from16 v17, v3

    check-cast v17, Landroidx/compose/runtime/c1;

    .line 27
    iget-object v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v12, v1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v1

    iget v2, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {v12, v2}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v2

    or-int/2addr v1, v2

    iget v2, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {v12, v2}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 28
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_8

    .line 29
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_9

    .line 30
    :cond_8
    new-instance v3, Landroidx/compose/material/SliderKt$RangeSlider$2$2$1;

    invoke-direct {v3, v2, v11, v10}, Landroidx/compose/material/SliderKt$RangeSlider$2$2$1;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    .line 31
    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 32
    :cond_9
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object v1, v3

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 33
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 34
    iget v3, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v4, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    .line 35
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v4}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/16 v7, 0xc00

    move-object/from16 v4, v16

    move-object/from16 v6, p2

    .line 36
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/SliderKt;->f(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/i1;FLandroidx/compose/runtime/i;I)V

    .line 37
    iget-object v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v12, v1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v1

    iget v2, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {v12, v2}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v2

    or-int/2addr v1, v2

    iget v2, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {v12, v2}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 38
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_a

    .line 39
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_b

    .line 40
    :cond_a
    new-instance v3, Landroidx/compose/material/SliderKt$RangeSlider$2$3$1;

    invoke-direct {v3, v2, v11, v10}, Landroidx/compose/material/SliderKt$RangeSlider$2$3$1;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    .line 41
    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 42
    :cond_b
    check-cast v3, Lkotlin/reflect/KFunction;

    move-object v1, v3

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 43
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 44
    iget v3, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v4, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    .line 45
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v4}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/16 v7, 0xc00

    move-object/from16 v4, v17

    move-object/from16 v6, p2

    .line 46
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/SliderKt;->f(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/i1;FLandroidx/compose/runtime/i;I)V

    .line 47
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_c

    .line 49
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 50
    invoke-static {v1, v12}, Landroidx/compose/runtime/g0;->g(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/i;)Lkotlinx/coroutines/n0;

    move-result-object v1

    .line 51
    new-instance v2, Landroidx/compose/runtime/v;

    invoke-direct {v2, v1}, Landroidx/compose/runtime/v;-><init>(Lkotlinx/coroutines/n0;)V

    .line 52
    invoke-interface {v12, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    move-object v1, v2

    .line 53
    :cond_c
    check-cast v1, Landroidx/compose/runtime/v;

    .line 54
    invoke-virtual {v1}, Landroidx/compose/runtime/v;->a()Lkotlinx/coroutines/n0;

    move-result-object v1

    .line 55
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v2

    iget v3, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v3

    or-int/2addr v2, v3

    iget v3, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v12, v1}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/a3;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iget-object v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/a3;

    iget-object v6, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 56
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_d

    .line 57
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v7, v2, :cond_e

    .line 58
    :cond_d
    new-instance v7, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1;

    move-object/from16 v20, v7

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v23, v3

    move-object/from16 v24, v11

    move-object/from16 v25, v10

    move-object/from16 v26, v4

    move-object/from16 v27, v1

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    invoke-direct/range {v20 .. v29}, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1$1;-><init>(Landroidx/compose/runtime/c1;Landroidx/compose/runtime/c1;Ljava/util/List;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/n0;Landroidx/compose/runtime/a3;Lkotlin/ranges/ClosedFloatingPointRange;)V

    .line 59
    invoke-interface {v12, v7}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 60
    :cond_e
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v12, v8}, Landroidx/compose/runtime/r2;->i(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    move-result-object v1

    .line 61
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    iget v3, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v3

    or-int/2addr v2, v3

    iget v3, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/a3;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/a3;

    iget-object v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 62
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_f

    .line 63
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v6, v2, :cond_10

    .line 64
    :cond_f
    new-instance v6, Landroidx/compose/material/SliderKt$RangeSlider$2$onDrag$1$1;

    move-object/from16 v20, v6

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v23, v3

    move-object/from16 v24, v11

    move-object/from16 v25, v10

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    invoke-direct/range {v20 .. v27}, Landroidx/compose/material/SliderKt$RangeSlider$2$onDrag$1$1;-><init>(Landroidx/compose/runtime/c1;Landroidx/compose/runtime/c1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/runtime/a3;Lkotlin/ranges/ClosedFloatingPointRange;)V

    .line 65
    invoke-interface {v12, v6}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 66
    :cond_10
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v12, v8}, Landroidx/compose/runtime/r2;->i(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    move-result-object v23

    .line 67
    sget-object v24, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    .line 68
    iget-object v14, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$startInteractionSource:Lp/i;

    .line 69
    iget-object v15, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$endInteractionSource:Lp/i;

    .line 70
    iget-boolean v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 71
    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    move-object/from16 v13, v24

    move/from16 v18, v2

    move/from16 v20, v9

    move-object/from16 v21, v3

    move-object/from16 v22, v1

    .line 72
    invoke-static/range {v13 .. v23}, Landroidx/compose/material/SliderKt;->m(Landroidx/compose/ui/f;Lp/i;Lp/i;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;ZZFLkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;)Landroidx/compose/ui/f;

    move-result-object v9

    .line 73
    iget-object v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v1}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v2}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v3}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->k(FFF)F

    move-result v1

    .line 74
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v2}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$value:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v3}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v4}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v2, v3, v4}, Lkotlin/ranges/RangesKt;->k(FFF)F

    move-result v13

    .line 75
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v2}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v3}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v2, v3, v1}, Landroidx/compose/material/SliderKt;->k(FFF)F

    move-result v14

    .line 76
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v2}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v3}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v2, v3, v13}, Landroidx/compose/material/SliderKt;->k(FFF)F

    move-result v15

    .line 77
    iget v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$steps:I

    int-to-float v2, v2

    mul-float/2addr v2, v15

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-int v8, v2

    .line 78
    iget v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$steps:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v14

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-int v7, v2

    .line 79
    iget-boolean v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 80
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/a3;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v12, v13}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/a3;

    .line 81
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_11

    .line 82
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v5, v2, :cond_12

    .line 83
    :cond_11
    new-instance v5, Landroidx/compose/material/SliderKt$RangeSlider$2$startThumbSemantics$1$1;

    invoke-direct {v5, v3, v13}, Landroidx/compose/material/SliderKt$RangeSlider$2$startThumbSemantics$1$1;-><init>(Landroidx/compose/runtime/a3;F)V

    .line 84
    invoke-interface {v12, v5}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 85
    :cond_12
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 86
    iget-object v6, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 87
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v2}, Lkotlin/ranges/ClosedRange;->j()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2, v13}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v16

    move-object/from16 v2, v24

    move v3, v1

    move/from16 v17, v7

    move-object/from16 v7, v16

    .line 88
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/SliderKt;->p(Landroidx/compose/ui/f;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/f;

    move-result-object v16

    .line 89
    iget-boolean v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 90
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/a3;

    invoke-interface {v12, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v12, v1}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/a3;

    .line 91
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_13

    .line 92
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v2

    if-ne v5, v2, :cond_14

    .line 93
    :cond_13
    new-instance v5, Landroidx/compose/material/SliderKt$RangeSlider$2$endThumbSemantics$1$1;

    invoke-direct {v5, v3, v1}, Landroidx/compose/material/SliderKt$RangeSlider$2$endThumbSemantics$1$1;-><init>(Landroidx/compose/runtime/a3;F)V

    .line 94
    invoke-interface {v12, v5}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    .line 95
    :cond_14
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 96
    iget-object v6, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 97
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Lkotlin/ranges/ClosedFloatingPointRange;

    invoke-interface {v2}, Lkotlin/ranges/ClosedRange;->e()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->b(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v7

    move-object/from16 v2, v24

    move v3, v13

    move/from16 v8, v17

    .line 98
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/SliderKt;->p(Landroidx/compose/ui/f;FZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/f;

    move-result-object v13

    .line 99
    iget-boolean v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 100
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    .line 101
    iget-object v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$colors:Landroidx/compose/material/j;

    .line 102
    iget v2, v10, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v3, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float v6, v2, v3

    .line 103
    iget-object v7, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$startInteractionSource:Lp/i;

    .line 104
    iget-object v8, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$endInteractionSource:Lp/i;

    const/high16 v17, 0xd80000

    const/16 v18, 0x0

    move v2, v14

    move v3, v15

    move-object/from16 v10, v16

    move-object v11, v13

    move-object/from16 v12, p2

    move/from16 v13, v17

    move/from16 v14, v18

    .line 105
    invoke-static/range {v1 .. v14}, Landroidx/compose/material/SliderKt;->g(ZFFLjava/util/List;Landroidx/compose/material/j;FLp/i;Lp/i;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/ui/f;Landroidx/compose/runtime/i;II)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_15
    :goto_4
    return-void
.end method
