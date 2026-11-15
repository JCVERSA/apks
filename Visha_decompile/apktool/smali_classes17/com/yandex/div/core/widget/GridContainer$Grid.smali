.class public final Lcom/yandex/div/core/widget/GridContainer$Grid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/widget/GridContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Grid"
.end annotation


# instance fields
.field public a:I

.field public final b:Llt8;

.field public final c:Llt8;

.field public final d:Llt8;

.field public final e:Lcom/yandex/div/core/widget/GridContainer$e;

.field public final f:Lcom/yandex/div/core/widget/GridContainer$e;

.field public final synthetic g:Lcom/yandex/div/core/widget/GridContainer;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/widget/GridContainer;)V
    .locals 3

    iput-object p1, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->g:Lcom/yandex/div/core/widget/GridContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->a:I

    new-instance p1, Llt8;

    new-instance v0, Lcom/yandex/div/core/widget/GridContainer$Grid$_cells$1;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/widget/GridContainer$Grid$_cells$1;-><init>(Lcom/yandex/div/core/widget/GridContainer$Grid;)V

    invoke-direct {p1, v0}, Llt8;-><init>(Lc74;)V

    iput-object p1, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->b:Llt8;

    new-instance p1, Llt8;

    new-instance v0, Lcom/yandex/div/core/widget/GridContainer$Grid$_columns$1;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/widget/GridContainer$Grid$_columns$1;-><init>(Lcom/yandex/div/core/widget/GridContainer$Grid;)V

    invoke-direct {p1, v0}, Llt8;-><init>(Lc74;)V

    iput-object p1, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->c:Llt8;

    new-instance p1, Llt8;

    new-instance v0, Lcom/yandex/div/core/widget/GridContainer$Grid$_rows$1;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/widget/GridContainer$Grid$_rows$1;-><init>(Lcom/yandex/div/core/widget/GridContainer$Grid;)V

    invoke-direct {p1, v0}, Llt8;-><init>(Lc74;)V

    iput-object p1, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->d:Llt8;

    new-instance p1, Lcom/yandex/div/core/widget/GridContainer$e;

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p1, v0, v0, v1, v2}, Lcom/yandex/div/core/widget/GridContainer$e;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->e:Lcom/yandex/div/core/widget/GridContainer$e;

    new-instance p1, Lcom/yandex/div/core/widget/GridContainer$e;

    invoke-direct {p1, v0, v0, v1, v2}, Lcom/yandex/div/core/widget/GridContainer$e;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->f:Lcom/yandex/div/core/widget/GridContainer$e;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/widget/GridContainer$Grid;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->g()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/div/core/widget/GridContainer$Grid;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->s()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div/core/widget/GridContainer$Grid;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->u()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Ljava/util/List;Lcom/yandex/div/core/widget/GridContainer$e;)V
    .locals 8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v4, v3

    move v2, v1

    :goto_0
    if-ge v3, p0, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-virtual {v5}, Lcom/yandex/div/core/widget/GridContainer$d;->h()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/yandex/div/core/widget/GridContainer$d;->e()F

    move-result v6

    add-float/2addr v1, v6

    invoke-virtual {v5}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Lcom/yandex/div/core/widget/GridContainer$d;->e()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result v6

    add-int/2addr v4, v6

    :goto_1
    invoke-virtual {v5}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    move v3, v0

    move v5, v3

    :goto_2
    if-ge v3, p0, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-virtual {v6}, Lcom/yandex/div/core/widget/GridContainer$d;->h()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/yandex/div/core/widget/GridContainer$d;->e()F

    move-result v6

    mul-float/2addr v6, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-int v6, v6

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result v6

    :goto_3
    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/yandex/div/core/widget/GridContainer$e;->b()I

    move-result p0

    invoke-static {p0, v5}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, v4

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    :goto_4
    if-ge v0, p2, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-virtual {v2}, Lcom/yandex/div/core/widget/GridContainer$d;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/yandex/div/core/widget/GridContainer$d;->e()F

    move-result v1

    mul-float/2addr v1, p0

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v1, v3

    float-to-int v4, v1

    invoke-virtual {v2}, Lcom/yandex/div/core/widget/GridContainer$d;->b()I

    move-result v1

    sub-int v3, v4, v1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/yandex/div/core/widget/GridContainer$d;->g(Lcom/yandex/div/core/widget/GridContainer$d;IIFILjava/lang/Object;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-virtual {v2, v1}, Lcom/yandex/div/core/widget/GridContainer$d;->i(I)V

    invoke-virtual {v2}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Ljava/util/List;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$d;->c()I

    move-result p1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public final g()Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->g:Lcom/yandex/div/core/widget/GridContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget v2, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->a:I

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->g:Lcom/yandex/div/core/widget/GridContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-array v4, v2, [I

    new-array v5, v2, [I

    iget-object v0, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->g:Lcom/yandex/div/core/widget/GridContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    move v14, v8

    :goto_0
    if-ge v14, v6, :cond_7

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_6

    const-string v10, "child"

    invoke-static {v9, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lhi;->A0([I)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1

    :cond_1
    move v10, v7

    :goto_1
    invoke-static {v5, v10}, Lhi;->i0([II)I

    move-result v15

    add-int v16, v8, v10

    invoke-static {v7, v2}, Lwn8;->q(II)Lu15;

    move-result-object v8

    invoke-virtual {v8}, Ls15;->b()I

    move-result v11

    invoke-virtual {v8}, Ls15;->c()I

    move-result v8

    if-gt v11, v8, :cond_2

    :goto_2
    aget v12, v5, v11

    sub-int/2addr v12, v10

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    aput v12, v5, v11

    if-eq v11, v8, :cond_2

    add-int/2addr v11, v1

    goto :goto_2

    :cond_2
    sget-object v8, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    invoke-static {v8, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/yandex/div/internal/widget/DivLayoutParams;

    invoke-virtual {v8}, Lcom/yandex/div/internal/widget/DivLayoutParams;->a()I

    move-result v9

    sub-int v10, v2, v15

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-virtual {v8}, Lcom/yandex/div/internal/widget/DivLayoutParams;->g()I

    move-result v18

    new-instance v13, Lcom/yandex/div/core/widget/GridContainer$a;

    move-object v8, v13

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    move/from16 v12, v17

    move-object v1, v13

    move/from16 v13, v18

    invoke-direct/range {v8 .. v13}, Lcom/yandex/div/core/widget/GridContainer$a;-><init>(IIIII)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v1, v15, v17

    :goto_3
    if-ge v15, v1, :cond_5

    aget v8, v5, v15

    if-lez v8, :cond_4

    aget v8, v4, v15

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "cells[cellIndices[i]]"

    invoke-static {v8, v9}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lcom/yandex/div/core/widget/GridContainer$a;

    invoke-virtual {v8}, Lcom/yandex/div/core/widget/GridContainer$a;->a()I

    move-result v9

    invoke-virtual {v8}, Lcom/yandex/div/core/widget/GridContainer$a;->b()I

    move-result v10

    add-int/2addr v10, v9

    :goto_4
    if-ge v9, v10, :cond_3

    aget v11, v5, v9

    aput v7, v5, v9

    const/4 v11, 0x1

    add-int/2addr v9, v11

    goto :goto_4

    :cond_3
    const/4 v11, 0x1

    invoke-virtual {v8}, Lcom/yandex/div/core/widget/GridContainer$a;->c()I

    move-result v9

    sub-int v9, v16, v9

    invoke-virtual {v8, v9}, Lcom/yandex/div/core/widget/GridContainer$a;->f(I)V

    goto :goto_5

    :cond_4
    const/4 v11, 0x1

    :goto_5
    aput v14, v4, v15

    aput v18, v5, v15

    add-int/2addr v15, v11

    goto :goto_3

    :cond_5
    const/4 v11, 0x1

    move/from16 v8, v16

    goto :goto_6

    :cond_6
    move v11, v1

    :goto_6
    add-int/2addr v14, v11

    move v1, v11

    goto/16 :goto_0

    :cond_7
    move v11, v1

    if-nez v2, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :cond_8
    aget v0, v5, v7

    invoke-static {v5}, Lhi;->b0([I)I

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :cond_9
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v4, Lu15;

    invoke-direct {v4, v11, v1}, Lu15;-><init>(II)V

    invoke-virtual {v4}, Ls15;->k()Lq15;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lq15;->nextInt()I

    move-result v4

    aget v4, v5, v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-le v2, v6, :cond_a

    move v0, v4

    move v2, v6

    :cond_a
    const/4 v11, 0x1

    goto :goto_7

    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_9

    :cond_c
    const/4 v11, 0x1

    :goto_9
    invoke-static {v3}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/core/widget/GridContainer$a;

    invoke-virtual {v0}, Lcom/yandex/div/core/widget/GridContainer$a;->c()I

    move-result v0

    add-int/2addr v0, v11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_a
    if-ge v7, v1, :cond_e

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/core/widget/GridContainer$a;

    invoke-virtual {v2}, Lcom/yandex/div/core/widget/GridContainer$a;->c()I

    move-result v4

    invoke-virtual {v2}, Lcom/yandex/div/core/widget/GridContainer$a;->d()I

    move-result v5

    add-int/2addr v4, v5

    if-le v4, v0, :cond_d

    invoke-virtual {v2}, Lcom/yandex/div/core/widget/GridContainer$a;->c()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v2, v4}, Lcom/yandex/div/core/widget/GridContainer$a;->f(I)V

    :cond_d
    const/4 v2, 0x1

    add-int/2addr v7, v2

    goto :goto_a

    :cond_e
    return-object v3
.end method

.method public final h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->b:Llt8;

    invoke-virtual {p0}, Llt8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->a:I

    return p0
.end method

.method public final j()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->c:Llt8;

    invoke-virtual {p0}, Llt8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->o()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->f(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->d:Llt8;

    invoke-virtual {v0}, Llt8;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->d:Llt8;

    invoke-virtual {v0}, Llt8;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->f(Ljava/util/List;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final m()I
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->c:Llt8;

    invoke-virtual {v0}, Llt8;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->c:Llt8;

    invoke-virtual {v0}, Llt8;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->f(Ljava/util/List;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n()I
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->w(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->d:Llt8;

    invoke-virtual {p0}, Llt8;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final p()I
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->j()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->f(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->c:Llt8;

    invoke-virtual {v0}, Llt8;->c()V

    iget-object p0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->d:Llt8;

    invoke-virtual {p0}, Llt8;->c()V

    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->b:Llt8;

    invoke-virtual {v0}, Llt8;->c()V

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->q()V

    return-void
.end method

.method public final s()Ljava/util/List;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget v2, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->a:I

    iget-object v3, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->e:Lcom/yandex/div/core/widget/GridContainer$e;

    iget-object v4, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->b:Llt8;

    invoke-virtual {v4}, Llt8;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_0

    new-instance v8, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-direct {v8}, Lcom/yandex/div/core/widget/GridContainer$d;-><init>()V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->g:Lcom/yandex/div/core/widget/GridContainer;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    const-string v9, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    const-string v10, "child"

    if-ge v8, v7, :cond_3

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/yandex/div/core/widget/GridContainer$a;

    invoke-virtual {v11}, Lcom/yandex/div/core/widget/GridContainer$a;->e()I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-static {v10, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/yandex/div/internal/widget/DivLayoutParams;

    new-instance v9, Lcom/yandex/div/core/widget/GridContainer$b;

    invoke-virtual {v11}, Lcom/yandex/div/core/widget/GridContainer$a;->a()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v11}, Lcom/yandex/div/core/widget/GridContainer$a;->b()I

    move-result v18

    invoke-static {v10}, Ltj4;->a(Lcom/yandex/div/internal/widget/DivLayoutParams;)F

    move-result v19

    move v10, v13

    move-object v13, v9

    move/from16 v16, v12

    move/from16 v17, v10

    invoke-direct/range {v13 .. v19}, Lcom/yandex/div/core/widget/GridContainer$b;-><init>(IIIIIF)V

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->d()I

    move-result v10

    if-ne v10, v1, :cond_1

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->b()I

    move-result v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->a()I

    move-result v11

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->c()I

    move-result v12

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->f()F

    move-result v9

    invoke-virtual {v10, v11, v12, v9}, Lcom/yandex/div/core/widget/GridContainer$d;->f(IIF)V

    goto :goto_3

    :cond_1
    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->d()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->f()F

    move-result v11

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->d()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    if-ltz v10, :cond_2

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->b()I

    move-result v13

    add-int/2addr v13, v12

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/yandex/div/core/widget/GridContainer$d;

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v11

    invoke-static/range {v13 .. v18}, Lcom/yandex/div/core/widget/GridContainer$d;->g(Lcom/yandex/div/core/widget/GridContainer$d;IIFILjava/lang/Object;)V

    if-eq v12, v10, :cond_2

    add-int/2addr v12, v1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/2addr v8, v1

    goto/16 :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->g:Lcom/yandex/div/core/widget/GridContainer;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v8, :cond_5

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/yandex/div/core/widget/GridContainer$a;

    invoke-virtual {v12}, Lcom/yandex/div/core/widget/GridContainer$a;->e()I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-static {v14, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Lcom/yandex/div/internal/widget/DivLayoutParams;

    new-instance v15, Lcom/yandex/div/core/widget/GridContainer$b;

    invoke-virtual {v12}, Lcom/yandex/div/core/widget/GridContainer$a;->a()I

    move-result v16

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    iget v13, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v12}, Lcom/yandex/div/core/widget/GridContainer$a;->b()I

    move-result v20

    invoke-static {v14}, Ltj4;->a(Lcom/yandex/div/internal/widget/DivLayoutParams;)F

    move-result v21

    move-object v12, v15

    move/from16 v18, v13

    move/from16 v19, v6

    invoke-direct/range {v15 .. v21}, Lcom/yandex/div/core/widget/GridContainer$b;-><init>(IIIIIF)V

    invoke-virtual {v12}, Lcom/yandex/div/core/widget/GridContainer$b;->d()I

    move-result v6

    if-le v6, v1, :cond_4

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/2addr v11, v1

    goto :goto_4

    :cond_5
    sget-object v4, Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;->INSTANCE:Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;

    invoke-static {v2, v4}, Lc81;->B(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_f

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yandex/div/core/widget/GridContainer$b;

    invoke-virtual {v7}, Lcom/yandex/div/core/widget/GridContainer$b;->b()I

    move-result v8

    invoke-virtual {v7}, Lcom/yandex/div/core/widget/GridContainer$b;->b()I

    move-result v9

    invoke-virtual {v7}, Lcom/yandex/div/core/widget/GridContainer$b;->d()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v9, v1

    invoke-virtual {v7}, Lcom/yandex/div/core/widget/GridContainer$b;->c()I

    move-result v10

    const/4 v11, 0x0

    if-gt v8, v9, :cond_8

    move v13, v8

    move v12, v10

    move v14, v11

    const/4 v15, 0x0

    :goto_6
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result v17

    sub-int v10, v10, v17

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->h()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->e()F

    move-result v16

    add-float v14, v14, v16

    goto :goto_7

    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->a()I

    move-result v17

    if-nez v17, :cond_7

    add-int/2addr v15, v1

    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result v16

    sub-int v12, v12, v16

    :goto_7
    if-eq v13, v9, :cond_9

    add-int/2addr v13, v1

    goto :goto_6

    :cond_8
    move v12, v10

    move v14, v11

    const/4 v15, 0x0

    :cond_9
    cmpl-float v11, v14, v11

    if-lez v11, :cond_b

    if-gt v8, v9, :cond_e

    :goto_8
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-virtual {v15}, Lcom/yandex/div/core/widget/GridContainer$d;->h()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v15}, Lcom/yandex/div/core/widget/GridContainer$d;->e()F

    move-result v7

    div-float/2addr v7, v14

    int-to-float v10, v12

    mul-float/2addr v7, v10

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v7, v10

    float-to-int v7, v7

    invoke-virtual {v15}, Lcom/yandex/div/core/widget/GridContainer$d;->b()I

    move-result v10

    sub-int v16, v7, v10

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    move/from16 v17, v7

    invoke-static/range {v15 .. v20}, Lcom/yandex/div/core/widget/GridContainer$d;->g(Lcom/yandex/div/core/widget/GridContainer$d;IIFILjava/lang/Object;)V

    :cond_a
    if-eq v8, v9, :cond_e

    add-int/2addr v8, v1

    goto :goto_8

    :cond_b
    if-lez v10, :cond_e

    if-gt v8, v9, :cond_e

    :goto_9
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Lcom/yandex/div/core/widget/GridContainer$d;

    if-lez v15, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->a()I

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->h()Z

    move-result v11

    if-nez v11, :cond_d

    div-int v11, v10, v15

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->a()I

    move-result v12

    add-int v17, v12, v11

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result v12

    add-int v18, v12, v11

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lcom/yandex/div/core/widget/GridContainer$d;->g(Lcom/yandex/div/core/widget/GridContainer$d;IIFILjava/lang/Object;)V

    goto :goto_a

    :cond_c
    invoke-virtual {v7}, Lcom/yandex/div/core/widget/GridContainer$b;->d()I

    move-result v11

    div-int v11, v10, v11

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->a()I

    move-result v12

    add-int v17, v12, v11

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result v12

    add-int v18, v12, v11

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lcom/yandex/div/core/widget/GridContainer$d;->g(Lcom/yandex/div/core/widget/GridContainer$d;IIFILjava/lang/Object;)V

    :cond_d
    :goto_a
    if-eq v8, v9, :cond_e

    add-int/2addr v8, v1

    goto :goto_9

    :cond_e
    add-int/2addr v6, v1

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v0, v5, v3}, Lcom/yandex/div/core/widget/GridContainer$Grid;->d(Ljava/util/List;Lcom/yandex/div/core/widget/GridContainer$e;)V

    invoke-virtual {v0, v5}, Lcom/yandex/div/core/widget/GridContainer$Grid;->e(Ljava/util/List;)V

    return-object v5
.end method

.method public final t(I)I
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->f:Lcom/yandex/div/core/widget/GridContainer$e;

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/widget/GridContainer$e;->c(I)V

    iget-object p1, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->f:Lcom/yandex/div/core/widget/GridContainer$e;

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/GridContainer$e;->b()I

    move-result p1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->k()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->f:Lcom/yandex/div/core/widget/GridContainer$e;

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$e;->a()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final u()Ljava/util/List;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->n()I

    move-result v2

    iget-object v3, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->f:Lcom/yandex/div/core/widget/GridContainer$e;

    iget-object v4, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->b:Llt8;

    invoke-virtual {v4}, Llt8;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_0

    new-instance v8, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-direct {v8}, Lcom/yandex/div/core/widget/GridContainer$d;-><init>()V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->g:Lcom/yandex/div/core/widget/GridContainer;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    const-string v9, "null cannot be cast to non-null type com.yandex.div.internal.widget.DivLayoutParams"

    const-string v10, "child"

    if-ge v8, v7, :cond_3

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/yandex/div/core/widget/GridContainer$a;

    invoke-virtual {v11}, Lcom/yandex/div/core/widget/GridContainer$a;->e()I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-static {v10, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/yandex/div/internal/widget/DivLayoutParams;

    new-instance v9, Lcom/yandex/div/core/widget/GridContainer$b;

    invoke-virtual {v11}, Lcom/yandex/div/core/widget/GridContainer$a;->c()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v11}, Lcom/yandex/div/core/widget/GridContainer$a;->d()I

    move-result v18

    invoke-static {v10}, Ltj4;->b(Lcom/yandex/div/internal/widget/DivLayoutParams;)F

    move-result v19

    move v10, v13

    move-object v13, v9

    move/from16 v16, v12

    move/from16 v17, v10

    invoke-direct/range {v13 .. v19}, Lcom/yandex/div/core/widget/GridContainer$b;-><init>(IIIIIF)V

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->d()I

    move-result v10

    if-ne v10, v1, :cond_1

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->b()I

    move-result v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->a()I

    move-result v11

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->c()I

    move-result v12

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->f()F

    move-result v9

    invoke-virtual {v10, v11, v12, v9}, Lcom/yandex/div/core/widget/GridContainer$d;->f(IIF)V

    goto :goto_3

    :cond_1
    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->d()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->f()F

    move-result v11

    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->d()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    if-ltz v10, :cond_2

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v9}, Lcom/yandex/div/core/widget/GridContainer$b;->b()I

    move-result v13

    add-int/2addr v13, v12

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/yandex/div/core/widget/GridContainer$d;

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v11

    invoke-static/range {v13 .. v18}, Lcom/yandex/div/core/widget/GridContainer$d;->g(Lcom/yandex/div/core/widget/GridContainer$d;IIFILjava/lang/Object;)V

    if-eq v12, v10, :cond_2

    add-int/2addr v12, v1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/2addr v8, v1

    goto/16 :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v0, Lcom/yandex/div/core/widget/GridContainer$Grid;->g:Lcom/yandex/div/core/widget/GridContainer;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v8, :cond_5

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/yandex/div/core/widget/GridContainer$a;

    invoke-virtual {v12}, Lcom/yandex/div/core/widget/GridContainer$a;->e()I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Lcom/yandex/div/internal/widget/DivViewGroup;->Companion:Lcom/yandex/div/internal/widget/DivViewGroup$a;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-static {v14, v9}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Lcom/yandex/div/internal/widget/DivLayoutParams;

    new-instance v15, Lcom/yandex/div/core/widget/GridContainer$b;

    invoke-virtual {v12}, Lcom/yandex/div/core/widget/GridContainer$a;->c()I

    move-result v16

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    iget v13, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v12}, Lcom/yandex/div/core/widget/GridContainer$a;->d()I

    move-result v20

    invoke-static {v14}, Ltj4;->b(Lcom/yandex/div/internal/widget/DivLayoutParams;)F

    move-result v21

    move-object v12, v15

    move/from16 v18, v13

    move/from16 v19, v6

    invoke-direct/range {v15 .. v21}, Lcom/yandex/div/core/widget/GridContainer$b;-><init>(IIIIIF)V

    invoke-virtual {v12}, Lcom/yandex/div/core/widget/GridContainer$b;->d()I

    move-result v6

    if-le v6, v1, :cond_4

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/2addr v11, v1

    goto :goto_4

    :cond_5
    sget-object v4, Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;->INSTANCE:Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;

    invoke-static {v2, v4}, Lc81;->B(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_f

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yandex/div/core/widget/GridContainer$b;

    invoke-virtual {v7}, Lcom/yandex/div/core/widget/GridContainer$b;->b()I

    move-result v8

    invoke-virtual {v7}, Lcom/yandex/div/core/widget/GridContainer$b;->b()I

    move-result v9

    invoke-virtual {v7}, Lcom/yandex/div/core/widget/GridContainer$b;->d()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v9, v1

    invoke-virtual {v7}, Lcom/yandex/div/core/widget/GridContainer$b;->c()I

    move-result v10

    const/4 v11, 0x0

    if-gt v8, v9, :cond_8

    move v13, v8

    move v12, v10

    move v14, v11

    const/4 v15, 0x0

    :goto_6
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result v17

    sub-int v10, v10, v17

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->h()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->e()F

    move-result v16

    add-float v14, v14, v16

    goto :goto_7

    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->a()I

    move-result v17

    if-nez v17, :cond_7

    add-int/2addr v15, v1

    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result v16

    sub-int v12, v12, v16

    :goto_7
    if-eq v13, v9, :cond_9

    add-int/2addr v13, v1

    goto :goto_6

    :cond_8
    move v12, v10

    move v14, v11

    const/4 v15, 0x0

    :cond_9
    cmpl-float v11, v14, v11

    if-lez v11, :cond_b

    if-gt v8, v9, :cond_e

    :goto_8
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/yandex/div/core/widget/GridContainer$d;

    invoke-virtual {v15}, Lcom/yandex/div/core/widget/GridContainer$d;->h()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v15}, Lcom/yandex/div/core/widget/GridContainer$d;->e()F

    move-result v7

    div-float/2addr v7, v14

    int-to-float v10, v12

    mul-float/2addr v7, v10

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v7, v10

    float-to-int v7, v7

    invoke-virtual {v15}, Lcom/yandex/div/core/widget/GridContainer$d;->b()I

    move-result v10

    sub-int v16, v7, v10

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v18, 0x0

    move/from16 v17, v7

    invoke-static/range {v15 .. v20}, Lcom/yandex/div/core/widget/GridContainer$d;->g(Lcom/yandex/div/core/widget/GridContainer$d;IIFILjava/lang/Object;)V

    :cond_a
    if-eq v8, v9, :cond_e

    add-int/2addr v8, v1

    goto :goto_8

    :cond_b
    if-lez v10, :cond_e

    if-gt v8, v9, :cond_e

    :goto_9
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Lcom/yandex/div/core/widget/GridContainer$d;

    if-lez v15, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->a()I

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->h()Z

    move-result v11

    if-nez v11, :cond_d

    div-int v11, v10, v15

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->a()I

    move-result v12

    add-int v17, v12, v11

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result v12

    add-int v18, v12, v11

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lcom/yandex/div/core/widget/GridContainer$d;->g(Lcom/yandex/div/core/widget/GridContainer$d;IIFILjava/lang/Object;)V

    goto :goto_a

    :cond_c
    invoke-virtual {v7}, Lcom/yandex/div/core/widget/GridContainer$b;->d()I

    move-result v11

    div-int v11, v10, v11

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->a()I

    move-result v12

    add-int v17, v12, v11

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/widget/GridContainer$d;->d()I

    move-result v12

    add-int v18, v12, v11

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lcom/yandex/div/core/widget/GridContainer$d;->g(Lcom/yandex/div/core/widget/GridContainer$d;IIFILjava/lang/Object;)V

    :cond_d
    :goto_a
    if-eq v8, v9, :cond_e

    add-int/2addr v8, v1

    goto :goto_9

    :cond_e
    add-int/2addr v6, v1

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v0, v5, v3}, Lcom/yandex/div/core/widget/GridContainer$Grid;->d(Ljava/util/List;Lcom/yandex/div/core/widget/GridContainer$e;)V

    invoke-virtual {v0, v5}, Lcom/yandex/div/core/widget/GridContainer$Grid;->e(Ljava/util/List;)V

    return-object v5
.end method

.method public final v(I)I
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->e:Lcom/yandex/div/core/widget/GridContainer$e;

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/widget/GridContainer$e;->c(I)V

    iget-object p1, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->e:Lcom/yandex/div/core/widget/GridContainer$e;

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/GridContainer$e;->b()I

    move-result p1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->p()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->e:Lcom/yandex/div/core/widget/GridContainer$e;

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$e;->a()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final w(Ljava/util/List;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/core/widget/GridContainer$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$a;->c()I

    move-result p1

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$a;->d()I

    move-result p0

    add-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public final x(I)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/yandex/div/core/widget/GridContainer$Grid;->a:I

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/GridContainer$Grid;->r()V

    :cond_0
    return-void
.end method
