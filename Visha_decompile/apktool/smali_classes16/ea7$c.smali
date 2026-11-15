.class public Lea7$c;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lea7;->q(Landroid/view/View;Ljava/lang/String;III)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:I

.field public final synthetic i:Landroid/widget/PopupWindow;

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Z

.field public final synthetic o:I

.field public final synthetic p:Landroid/content/Context;

.field public final synthetic q:I


# direct methods
.method public constructor <init>(ILandroid/view/View;Landroid/widget/TextView;Landroid/view/View;IILandroid/view/View;ILandroid/widget/PopupWindow;IIIIZILandroid/content/Context;I)V
    .locals 2

    move-object v0, p0

    move v1, p1

    iput v1, v0, Lea7$c;->a:I

    move-object v1, p2

    iput-object v1, v0, Lea7$c;->b:Landroid/view/View;

    move-object v1, p3

    iput-object v1, v0, Lea7$c;->c:Landroid/widget/TextView;

    move-object v1, p4

    iput-object v1, v0, Lea7$c;->d:Landroid/view/View;

    move v1, p5

    iput v1, v0, Lea7$c;->e:I

    move v1, p6

    iput v1, v0, Lea7$c;->f:I

    move-object v1, p7

    iput-object v1, v0, Lea7$c;->g:Landroid/view/View;

    move v1, p8

    iput v1, v0, Lea7$c;->h:I

    move-object v1, p9

    iput-object v1, v0, Lea7$c;->i:Landroid/widget/PopupWindow;

    move v1, p10

    iput v1, v0, Lea7$c;->j:I

    move v1, p11

    iput v1, v0, Lea7$c;->k:I

    move v1, p12

    iput v1, v0, Lea7$c;->l:I

    move v1, p13

    iput v1, v0, Lea7$c;->m:I

    move/from16 v1, p14

    iput-boolean v1, v0, Lea7$c;->n:Z

    move/from16 v1, p15

    iput v1, v0, Lea7$c;->o:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lea7$c;->p:Landroid/content/Context;

    move/from16 v1, p17

    iput v1, v0, Lea7$c;->q:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, p0, Lea7$c;->a:I

    int-to-float v5, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/4 p2, 0x2

    new-array v0, p2, [I

    iget-object v1, p0, Lea7$c;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    iget-object v1, p0, Lea7$c;->c:Landroid/widget/TextView;

    invoke-static {v1}, Lea7;->e(Landroid/widget/TextView;)I

    move-result v1

    iget-object v3, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lea7$c;->e:I

    if-le v1, v3, :cond_1

    move v1, v3

    :cond_1
    iget v3, p0, Lea7$c;->f:I

    const/16 v4, 0x50

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v0, v11

    iget v4, p0, Lea7$c;->h:I

    if-ge v3, v4, :cond_2

    sub-int/2addr v4, v3

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v11

    :goto_1
    iget-object v4, p0, Lea7$c;->i:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lea7$c;->g:Landroid/view/View;

    iget v6, p0, Lea7$c;->j:I

    add-int/2addr v6, v3

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, p0, Lea7$c;->k:I

    add-int/2addr v7, v8

    iget v8, p0, Lea7$c;->l:I

    add-int/2addr v7, v8

    iget v8, p0, Lea7$c;->m:I

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    iget-object v4, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, p2

    sub-int/2addr v4, v3

    iget v3, p0, Lea7$c;->a:I

    if-ge v4, v3, :cond_3

    move v4, v3

    :cond_3
    iget-boolean v3, p0, Lea7$c;->n:Z

    if-eqz v3, :cond_4

    neg-int v4, v4

    :cond_4
    iget-object v3, p0, Lea7$c;->d:Landroid/view/View;

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lea7$c;->b:Landroid/view/View;

    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    invoke-static {v4}, Lea7;->a(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lea7$c;->b:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setPivotY(F)V

    :cond_5
    iget v3, p0, Lea7$c;->f:I

    const/16 v4, 0x51

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lea7$c;->m:I

    sub-int/2addr v3, v4

    div-int/2addr v3, p2

    iget-boolean v4, p0, Lea7$c;->n:Z

    if-eqz v4, :cond_6

    neg-int v3, v3

    :cond_6
    iget-object v4, p0, Lea7$c;->i:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lea7$c;->g:Landroid/view/View;

    iget v6, p0, Lea7$c;->j:I

    add-int/2addr v6, v3

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v7, p0, Lea7$c;->k:I

    add-int/2addr v3, v7

    iget v7, p0, Lea7$c;->l:I

    add-int/2addr v7, v3

    iget v8, p0, Lea7$c;->m:I

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    iget-object v3, p0, Lea7$c;->b:Landroid/view/View;

    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    invoke-static {v4}, Lea7;->a(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lea7$c;->b:Landroid/view/View;

    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    invoke-static {v4}, Lea7;->b(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    :cond_7
    iget v3, p0, Lea7$c;->f:I

    const v4, 0x800055

    if-ne v3, v4, :cond_a

    iget-object v3, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    iget v3, p0, Lea7$c;->m:I

    iget-object v4, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-boolean v4, p0, Lea7$c;->n:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lea7$c;->i:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lea7$c;->g:Landroid/view/View;

    iget v6, p0, Lea7$c;->j:I

    add-int/2addr v6, v3

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v7, p0, Lea7$c;->k:I

    add-int/2addr v3, v7

    iget v7, p0, Lea7$c;->l:I

    add-int/2addr v7, v3

    iget v8, p0, Lea7$c;->m:I

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lea7$c;->i:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lea7$c;->g:Landroid/view/View;

    iget v6, p0, Lea7$c;->j:I

    sub-int/2addr v6, v3

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v7, p0, Lea7$c;->k:I

    add-int/2addr v3, v7

    iget v7, p0, Lea7$c;->l:I

    add-int/2addr v7, v3

    iget v8, p0, Lea7$c;->m:I

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :goto_2
    iget v3, p0, Lea7$c;->m:I

    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, p2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lea7$c;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lea7$c;->a:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-boolean v4, p0, Lea7$c;->n:Z

    if-eqz v4, :cond_9

    neg-int v3, v3

    :cond_9
    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lea7$c;->b:Landroid/view/View;

    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    invoke-static {v4}, Lea7;->a(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lea7$c;->b:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setPivotY(F)V

    :cond_a
    iget v3, p0, Lea7$c;->f:I

    const/16 v4, 0x30

    if-ne v3, v4, :cond_13

    iget-object v3, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v0, v11

    aget v4, v0, v2

    iget-boolean v5, p0, Lea7$c;->n:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    iget v6, p0, Lea7$c;->m:I

    sub-int/2addr v5, v6

    iget v6, p0, Lea7$c;->j:I

    add-int/2addr v5, v6

    goto :goto_3

    :cond_b
    iget v5, p0, Lea7$c;->j:I

    add-int/2addr v5, v3

    :goto_3
    iget v6, p0, Lea7$c;->h:I

    if-ge v5, v6, :cond_c

    move v5, v6

    :cond_c
    iget v7, p0, Lea7$c;->m:I

    add-int v8, v5, v7

    iget v9, p0, Lea7$c;->o:I

    sub-int v10, v9, v6

    if-le v8, v10, :cond_d

    sub-int/2addr v9, v6

    sub-int v5, v9, v7

    :cond_d
    iget v6, p0, Lea7$c;->k:I

    add-int/2addr v6, v1

    sub-int/2addr v4, v6

    iget v6, p0, Lea7$c;->l:I

    add-int/2addr v4, v6

    iget-object v6, p0, Lea7$c;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5, v4, v7, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v4, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v6, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/2addr v4, p2

    iget-boolean v6, p0, Lea7$c;->n:Z

    if-eqz v6, :cond_e

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    iget v4, p0, Lea7$c;->m:I

    iget-object v5, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    goto :goto_4

    :cond_e
    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    :goto_4
    iget-boolean v4, p0, Lea7$c;->n:Z

    if-eqz v4, :cond_10

    iget v4, p0, Lea7$c;->m:I

    iget-object v5, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lea7$c;->a:I

    sub-int/2addr v4, v5

    neg-int v4, v4

    neg-int v5, v5

    if-ge v3, v4, :cond_f

    move v3, v4

    :cond_f
    if-le v3, v5, :cond_12

    goto :goto_5

    :cond_10
    iget v4, p0, Lea7$c;->a:I

    iget v5, p0, Lea7$c;->m:I

    iget-object v6, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lea7$c;->a:I

    sub-int/2addr v5, v6

    if-ge v3, v4, :cond_11

    move v3, v4

    :cond_11
    if-le v3, v5, :cond_12

    goto :goto_5

    :cond_12
    move v5, v3

    :goto_5
    iget-object v3, p0, Lea7$c;->d:Landroid/view/View;

    int-to-float v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lea7$c;->b:Landroid/view/View;

    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    invoke-static {v4}, Lea7;->a(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lea7$c;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    :cond_13
    iget v3, p0, Lea7$c;->f:I

    const/16 v4, 0x31

    if-ne v3, v4, :cond_16

    iget-object v3, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v0, v11

    aget v4, v0, v2

    iget-object v5, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lea7$c;->m:I

    sub-int/2addr v5, v6

    div-int/2addr v5, p2

    iget v7, p0, Lea7$c;->j:I

    add-int/2addr v7, v3

    add-int/2addr v7, v5

    iget v5, p0, Lea7$c;->h:I

    if-ge v7, v5, :cond_14

    move v7, v5

    :cond_14
    add-int v8, v7, v6

    iget v9, p0, Lea7$c;->o:I

    sub-int v10, v9, v5

    if-le v8, v10, :cond_15

    sub-int/2addr v9, v5

    sub-int v7, v9, v6

    :cond_15
    iget v5, p0, Lea7$c;->k:I

    add-int/2addr v5, v1

    sub-int/2addr v4, v5

    iget v5, p0, Lea7$c;->l:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lea7$c;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7, v4, v6, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v4, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, p2

    add-int/2addr v3, v4

    iget v4, p0, Lea7$c;->m:I

    div-int/lit8 v5, v4, 0x2

    add-int/2addr v7, v5

    sub-int/2addr v3, v7

    div-int/2addr v4, p2

    iget-object v5, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, p2

    sub-int/2addr v4, v5

    iget v5, p0, Lea7$c;->a:I

    sub-int/2addr v4, v5

    neg-int v5, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lea7$c;->b:Landroid/view/View;

    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    invoke-static {v4}, Lea7;->a(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lea7$c;->b:Landroid/view/View;

    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    invoke-static {v4}, Lea7;->b(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    :cond_16
    iget v3, p0, Lea7$c;->f:I

    const v4, 0x800035

    if-ne v3, v4, :cond_20

    iget-object v3, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v0, v11

    aget v2, v0, v2

    iget-object v4, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget v5, p0, Lea7$c;->h:I

    add-int/2addr v4, v5

    iget v5, p0, Lea7$c;->o:I

    if-le v4, v5, :cond_17

    iget-object v5, p0, Lea7$c;->p:Landroid/content/Context;

    invoke-static {v5}, Lolb;->Q(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_17

    iget v5, p0, Lea7$c;->o:I

    sub-int/2addr v4, v5

    goto :goto_6

    :cond_17
    move v4, v11

    :goto_6
    iget v5, p0, Lea7$c;->m:I

    iget-object v6, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v4

    iget-boolean v4, p0, Lea7$c;->n:Z

    if-eqz v4, :cond_18

    iget v4, p0, Lea7$c;->j:I

    add-int/2addr v4, v3

    goto :goto_7

    :cond_18
    iget v4, p0, Lea7$c;->j:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v5

    :goto_7
    iget v5, p0, Lea7$c;->h:I

    if-ge v4, v5, :cond_19

    move v4, v5

    :cond_19
    iget v6, p0, Lea7$c;->m:I

    add-int v7, v4, v6

    iget v8, p0, Lea7$c;->o:I

    sub-int v9, v8, v5

    if-le v7, v9, :cond_1a

    sub-int/2addr v8, v5

    sub-int v4, v8, v6

    :cond_1a
    iget v5, p0, Lea7$c;->k:I

    add-int/2addr v5, v1

    sub-int/2addr v2, v5

    iget v5, p0, Lea7$c;->l:I

    add-int/2addr v2, v5

    iget-object v5, p0, Lea7$c;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4, v2, v6, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v2, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v5, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v2, v5

    div-int/2addr v2, p2

    iget-boolean v5, p0, Lea7$c;->n:Z

    if-eqz v5, :cond_1b

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    iget v2, p0, Lea7$c;->m:I

    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v3, v2

    goto :goto_8

    :cond_1b
    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    :goto_8
    iget-boolean v2, p0, Lea7$c;->n:Z

    if-eqz v2, :cond_1d

    iget v2, p0, Lea7$c;->m:I

    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, p0, Lea7$c;->a:I

    sub-int/2addr v2, v4

    neg-int v2, v2

    neg-int v4, v4

    if-ge v3, v2, :cond_1c

    move v3, v2

    :cond_1c
    if-le v3, v4, :cond_1f

    goto :goto_9

    :cond_1d
    iget v2, p0, Lea7$c;->a:I

    iget v4, p0, Lea7$c;->m:I

    iget-object v5, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lea7$c;->a:I

    sub-int/2addr v4, v5

    if-ge v3, v2, :cond_1e

    move v3, v2

    :cond_1e
    if-le v3, v4, :cond_1f

    goto :goto_9

    :cond_1f
    move v4, v3

    :goto_9
    iget-object v2, p0, Lea7$c;->d:Landroid/view/View;

    int-to-float v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lea7$c;->b:Landroid/view/View;

    iget-object v3, p0, Lea7$c;->d:Landroid/view/View;

    invoke-static {v3}, Lea7;->a(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lea7$c;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    :cond_20
    iget v2, p0, Lea7$c;->f:I

    const v3, 0x800013

    const/high16 v10, 0x3f000000    # 0.5f

    if-ne v2, v3, :cond_21

    iget-object v2, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {p1}, Lea7;->c(Landroid/view/View;)I

    move-result v2

    aget v3, v0, v11

    iget v4, p0, Lea7$c;->h:I

    mul-int/2addr v4, p2

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    iget v2, p0, Lea7$c;->q:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lea7$c;->h:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lea7$c;->m:I

    iget-object v4, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v4, p0, Lea7$c;->i:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lea7$c;->g:Landroid/view/View;

    iget v2, p0, Lea7$c;->k:I

    add-int/2addr v2, v8

    neg-int v2, v2

    iget v3, p0, Lea7$c;->j:I

    add-int v6, v2, v3

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/2addr v2, p2

    iget v3, p0, Lea7$c;->l:I

    add-int v7, v2, v3

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    iget-object v2, p0, Lea7$c;->b:Landroid/view/View;

    iget-object v3, p0, Lea7$c;->d:Landroid/view/View;

    invoke-static {v3}, Lea7;->a(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lea7$c;->b:Landroid/view/View;

    iget-object v3, p0, Lea7$c;->d:Landroid/view/View;

    invoke-static {v3}, Lea7;->b(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    :cond_21
    iget v2, p0, Lea7$c;->f:I

    const v3, 0x800015

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {p1}, Lea7;->c(Landroid/view/View;)I

    move-result v2

    invoke-static {p1}, Lea7;->d(Landroid/view/View;)I

    move-result p1

    iget v3, p0, Lea7$c;->o:I

    aget v0, v0, v11

    iget-object v4, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    sub-int/2addr v3, v0

    iget v0, p0, Lea7$c;->h:I

    mul-int/2addr v0, p2

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    add-int/2addr v3, p1

    iget p1, p0, Lea7$c;->q:I

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lea7$c;->h:I

    int-to-float v0, v0

    mul-float/2addr v0, v10

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lea7$c;->m:I

    iget-object v2, p0, Lea7$c;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v4, p0, Lea7$c;->i:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, p0, Lea7$c;->k:I

    add-int/2addr p1, v0

    iget v0, p0, Lea7$c;->j:I

    add-int v6, p1, v0

    iget-object p1, p0, Lea7$c;->g:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, v1

    div-int/2addr p1, p2

    iget p2, p0, Lea7$c;->l:I

    add-int v7, p1, p2

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    iget-object p1, p0, Lea7$c;->b:Landroid/view/View;

    iget-object p2, p0, Lea7$c;->d:Landroid/view/View;

    invoke-static {p2}, Lea7;->a(Landroid/view/View;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lea7$c;->b:Landroid/view/View;

    iget-object p0, p0, Lea7$c;->d:Landroid/view/View;

    invoke-static {p0}, Lea7;->b(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    :cond_22
    return-void
.end method
