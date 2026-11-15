.class final Landroidx/compose/material/RangeSliderLogic;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lp/i;

.field private final b:Lp/i;

.field private final c:Landroidx/compose/runtime/a3;

.field private final d:Landroidx/compose/runtime/a3;

.field private final e:Landroidx/compose/runtime/a3;


# direct methods
.method public constructor <init>(Lp/i;Lp/i;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/RangeSliderLogic;->a:Lp/i;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/RangeSliderLogic;->b:Lp/i;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material/RangeSliderLogic;->c:Landroidx/compose/runtime/a3;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material/RangeSliderLogic;->d:Landroidx/compose/runtime/a3;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material/RangeSliderLogic;->e:Landroidx/compose/runtime/a3;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Z)Lp/i;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/compose/material/RangeSliderLogic;->a:Lp/i;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/compose/material/RangeSliderLogic;->b:Lp/i;

    .line 7
    .line 8
    :goto_0
    return-object p1
.end method

.method public final b(ZFLp/f;Lkotlinx/coroutines/n0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->e:Landroidx/compose/runtime/a3;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/material/RangeSliderLogic;->c:Landroidx/compose/runtime/a3;

    .line 16
    .line 17
    :goto_0
    invoke-interface {v2}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v2, p0, Landroidx/compose/material/RangeSliderLogic;->d:Landroidx/compose/runtime/a3;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    sub-float/2addr p2, v2

    .line 32
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {v0, v1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    new-instance v5, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-direct {v5, p0, p1, p3, p2}, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;-><init>(Landroidx/compose/material/RangeSliderLogic;ZLp/f;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    const/4 v6, 0x3

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    move-object v2, p4

    .line 50
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final c(F)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->c:Landroidx/compose/runtime/a3;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sub-float/2addr v0, p1

    .line 14
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Landroidx/compose/material/RangeSliderLogic;->d:Landroidx/compose/runtime/a3;

    .line 19
    .line 20
    invoke-interface {v1}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    sub-float/2addr v1, p1

    .line 31
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method
